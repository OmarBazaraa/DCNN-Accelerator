LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE WORK.utilities.ALL;

ENTITY controller IS
    PORT(
        CLK, RST            : IN  STD_LOGIC;
        Start               : IN  STD_LOGIC;
        FilterSize          : IN  STD_LOGIC; -- 0: 3x3, 1: 5x5
        Stride              : IN  STD_LOGIC; -- Step = Stride + 1
        Instr               : IN  STD_LOGIC; -- 0: Convolution, 1: Pooling
        Done                : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE arch_controller OF controller IS

    --
    -- General Signal
    --
    SIGNAL SizePlusOne          : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL SizeVal              : STD_LOGIC_VECTOR(7 DOWNTO 0);    -- 3 OR 5
    SIGNAL SizeMaxIdx           : STD_LOGIC_VECTOR(7 DOWNTO 0);    -- 2 OR 4
    SIGNAL SizePlusCol          : STD_LOGIC_VECTOR(8 DOWNTO 0);

    --
    -- State Signals
    --
    SIGNAL CurState             : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL Load                 : STD_LOGIC;    -- Read from RAM
    SIGNAL LoadWind             : STD_LOGIC;    -- Read window
    SIGNAL Store                : STD_LOGIC;    -- Store in RAM
    SIGNAL StartCalc            : STD_LOGIC;    -- Calculate signal to start calculating the convolution or pooling

    SIGNAL NxtState             : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL NxtLoad              : STD_LOGIC;
    SIGNAL NxtLoadWind          : STD_LOGIC;
    SIGNAL NxtStore             : STD_LOGIC;
    SIGNAL NxtStartCalc         : STD_LOGIC;

    --
    -- Control Signals
    --
    SIGNAL IsRunning            : STD_LOGIC;
    SIGNAL IsDone               : STD_LOGIC;
    SIGNAL IsFilterLoaded       : STD_LOGIC;
    SIGNAL IsWindowLoaded       : STD_LOGIC;
    SIGNAL IsCalcTurn           : STD_LOGIC;
    SIGNAL IsCalcFinished       : STD_LOGIC;    -- Accelerator finish calculation
    SIGNAL CntRST, CntEN        : STD_LOGIC;

    --
    -- Row/Col Signals
    --
    SIGNAL NxtRow, NxtCol       : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL CurRow, CurCol       : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL RowCout              : STD_LOGIC;
    SIGNAL ColInc               : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL WindRow, WindCol     : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL StoreRow, StoreCol   : STD_LOGIC_VECTOR(7 DOWNTO 0);
    
    --
    -- Memory Addresses
    --
    SIGNAL MemAddr              : STD_LOGIC_VECTOR(17 DOWNTO 0);
    SIGNAL WindowAddr           : STD_LOGIC_VECTOR(17 DOWNTO 0);
    SIGNAL FilterAddr           : STD_LOGIC_VECTOR(17 DOWNTO 0);
    SIGNAL LoadAddr             : STD_LOGIC_VECTOR(17 DOWNTO 0);
    SIGNAL StoreAddr            : STD_LOGIC_VECTOR(17 DOWNTO 0);
    SIGNAL CacheAddr            : STD_LOGIC_VECTOR( 2 DOWNTO 0);

BEGIN

    --
    -- General Signal
    --
    SizeVal     <= (7 DOWNTO 3 => '0') & (('0' & FilterSize & '0') + "011"); -- SizeVal = (Size << 1) + 3; SizeVal = (Size='1') ? 5 : 3
    SizePlusOne <= (7 DOWNTO 2 => '0') & (FilterSize & (NOT FilterSize));
    SizeMaxIdx  <= (SizePlusOne(6 DOWNTO 0) & '0');
    SizePlusCol <= (('0' & CurCol) + ('0' & SizeVal));

    --===============================================================
    --
    -- State Transitions
    --

    -- State Register
    STATE:
    ENTITY work.register_edge
    GENERIC MAP(n => 5)
    PORT MAP(CLK => CLK, RST => RST, EN => '1', Din => NxtState, Dout => CurState);

    -- Current state
    Load            <= CurState(0);
    LoadWind        <= CurState(1);
    Store           <= CurState(2);
    StartCalc       <= CurState(3);
    Done            <= CurState(4);

    -- Next state
    NxtLoad         <= (Start AND (NOT IsRunning));
    NxtLoadWind     <= (NxtLoad AND Instr) OR (IsFilterLoaded) OR (Store AND (NOT IsDone));
    NxtStartCalc    <= (LoadWind AND IsWindowLoaded AND IsCalcTurn);
    NxtStore        <= (StartCalc AND IsCalcFinished);
    NxtState        <= (IsDone & NxtStartCalc & NxtStore & NxtLoadWind & NxtLoad);

    --===============================================================
    --
    -- Control Signals
    --

    IsRunning       <= Load OR Store OR StartCalc;
    IsDone          <= SizePlusCol(8);

    IsWindowLoaded  <= '1' WHEN (CurRow >= SizeMaxIdx) ELSE '0';
    IsFilterLoaded  <= (Load AND (NOT LoadWind) AND IsWindowLoaded); 
    IsCalcTurn      <= (Stride NAND CurRow(0)); -- IsCalcTurn= Stride=0 OR Even Row

    CntRST          <= RST OR Start; -- OR (LoadFilter -> LoadWind)
    CntEN           <= (Load AND (IsWindowLoaded NAND IsCalcTurn)) OR Store;

    --===============================================================
    --
    -- Row/Col Indices
    --
    
    -- Row Register
    ROW:
    ENTITY work.register_edge
    GENERIC MAP(n => 8)
    PORT MAP(CLK => CLK, RST => CntRST, EN => CntEN, Din => NxtRow, Dout => CurRow);

    -- Row Adder
    ROW_ADDER:
    ENTITY work.adder
    GENERIC MAP(n => 8)
    PORT MAP(A => CurRow, B => (OTHERS => '0'), Cin => '1', Sum => NxtRow, Cout => RowCout);
    ------------------------------

    -- Col Register
    COL:
    ENTITY work.register_edge
    GENERIC MAP(n => 8)
    PORT MAP(CLK => CLK, RST => CntRST, EN => CntEN, Din => NxtCol, Dout => CurCol);

    -- Col Adder
    COL_ADDER:
    ENTITY work.adder
    GENERIC MAP(n => 8)
    PORT MAP(A => CurCol, B => ColInc, Cin => RowCout, Sum => NxtCol);
    ------------------------------

    ColInc      <= ((7 DOWNTO 1 => '0') & (Stride AND RowCout));

    WindRow     <= (CurRow - SizePlusOne);
    WindCol     <= (CurCol + SizePlusOne);

    StoreRow    <= '0' & WindRow(6 DOWNTO 0) WHEN Stride='1' ELSE WindRow(7 DOWNTO 0);
    StoreCol    <= '0' & WindCol(6 DOWNTO 0) WHEN Stride='1' ELSE WindCol(7 DOWNTO 0);

    --===============================================================
    --
    -- RAM Addresses
    --

    WindowAddr  <= "00" & (CurRow & CurCol);
    StoreAddr   <= "01" & (StoreRow & StoreCol);
    FilterAddr  <= "10" & (15 DOWNTO 8 => '0') & CurRow;
    LoadAddr    <= WindowAddr   WHEN LoadWind='1'   ELSE    FilterAddr;
    MemAddr     <= LoadAddr     WHEN Load='1'       ELSE    StoreAddr;

    --===============================================================
    --
    -- Accelerator
    --

    --===============================================================
    --
    -- RAM
    --

    --===============================================================
    --
    -- Cache
    --

END ARCHITECTURE;
