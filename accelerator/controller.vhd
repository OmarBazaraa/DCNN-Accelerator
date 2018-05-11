LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY controller IS
    PORT(
        CLK, RST            : IN  STD_LOGIC;
        Start               : IN  STD_LOGIC;
        FilterSize          : IN  STD_LOGIC;    -- 0: 3x3, 1: 5x5
        Stride              : IN  STD_LOGIC;    -- Step = Stride + 1
        Instr               : IN  STD_LOGIC;    -- 0: Convolution, 1: Pooling
        
        CalcFinished        : IN  STD_LOGIC;    -- Calculation finished handshaking signal
        Calc                : OUT STD_LOGIC;    -- Start calculating the current loaded window

        MemRD               : OUT STD_LOGIC;
        MemWR               : OUT STD_LOGIC;
        MemAddr             : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);

        CacheFilterWR       : OUT STD_LOGIC;
        CacheWindowWR       : OUT STD_LOGIC;

        FirstCycle          : OUT STD_LOGIC;    -- True during only the first cycle of running
        Done                : OUT STD_LOGIC     -- Finish the whole operation
    );
END ENTITY;

ARCHITECTURE arch_controller OF controller IS

    --
    -- State Signals
    --
    SIGNAL CurState             : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL LoadFilterState      : STD_LOGIC;    -- Read filter from RAM
    SIGNAL LoadWindowState      : STD_LOGIC;    -- Read window from RAM
    SIGNAL CalcState            : STD_LOGIC;    -- Calculate signal to start calculating the convolution or pooling
    SIGNAL StoreState           : STD_LOGIC;    -- StoreState in RAM
    SIGNAL DoneState            : STD_LOGIC;    -- Finished the whole operations

    SIGNAL NxtState             : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL NxtLoadFilterState   : STD_LOGIC;
    SIGNAL NxtLoadWindowState   : STD_LOGIC;
    SIGNAL NxtCalcState         : STD_LOGIC;
    SIGNAL NxtStoreState        : STD_LOGIC;

    --
    -- General Signal
    --
    SIGNAL SizePlusOne          : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL SizeMaxIdx           : STD_LOGIC_VECTOR(7 DOWNTO 0);    -- 2 OR 4
    SIGNAL SizePlusCol          : STD_LOGIC_VECTOR(8 DOWNTO 0);

    --
    -- Control Signals
    --
    SIGNAL IsFirstCycle         : STD_LOGIC;
    SIGNAL IsRunning            : STD_LOGIC;
    SIGNAL IsDone               : STD_LOGIC;
    SIGNAL IsWindowLoaded       : STD_LOGIC;
    SIGNAL IsCalcTurn           : STD_LOGIC;
    SIGNAL Load                 : STD_LOGIC;    -- Memory Read Signal
    SIGNAL Restart              : STD_LOGIC;
    SIGNAL CntRST, CntEN        : STD_LOGIC;

    --
    -- Row/Col Signals
    --
    SIGNAL NxtRow               : STD_LOGIC_VECTOR(8 DOWNTO 0);
    SIGNAL NxtCol               : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL CurRow, CurCol       : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL RowCout              : STD_LOGIC;
    SIGNAL WindRow, WindCol     : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL StoreRow, StoreCol   : STD_LOGIC_VECTOR(7 DOWNTO 0);
    
    --
    -- Memory Addresses
    --
    SIGNAL WindowAddr           : STD_LOGIC_VECTOR(17 DOWNTO 0);
    SIGNAL FilterAddr           : STD_LOGIC_VECTOR(17 DOWNTO 0);
    SIGNAL LoadAddr             : STD_LOGIC_VECTOR(17 DOWNTO 0);
    SIGNAL StoreAddr            : STD_LOGIC_VECTOR(17 DOWNTO 0);

    SIGNAL ZeroByte             : STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN

    --===================================================================================
    --
    -- State Transitions
    --

    -- State Register
    STATE:
    ENTITY work.register_edge_falling
    GENERIC MAP(n => 5)
    PORT MAP(CLK => CLK, RST => Restart, EN => '1', Din => NxtState, Dout => CurState);

    -- Current state
    LoadFilterState     <=  CurState(0);
    LoadWindowState     <=  CurState(1);
    StoreState          <=  CurState(2);
    CalcState           <=  CurState(3);
    DoneState           <=  CurState(4);

    --
    -- Next state
    --
    NxtLoadFilterState  <=  (NOT IsDone) AND (
                                (IsFirstCycle AND (NOT Instr)) OR
                                (LoadFilterState AND (NOT IsWindowLoaded))
                            );

    NxtLoadWindowState  <=  (NOT IsDone) AND (
                                (IsFirstCycle AND Instr) OR
                                (LoadFilterState AND IsWindowLoaded) OR
                                (StoreState AND (NOT IsDone)) OR
                                (LoadWindowState AND (NOT IsCalcTurn))
                            );

    NxtCalcState        <=  (NOT IsDone) AND (
                                (LoadWindowState AND IsCalcTurn) OR
                                (CalcState AND (NOT CalcFinished))
                            );

    NxtStoreState       <=  (NOT IsDone) AND (
                                (CalcState AND CalcFinished)
                            );

    --
    -- Concatenate state bits
    --
    NxtState            <=  (IsDone & NxtCalcState & NxtStoreState & NxtLoadWindowState & NxtLoadFilterState);

    --===================================================================================
    --
    -- General Signal
    --

    SizePlusOne         <=  (7 DOWNTO 2 => '0') & (FilterSize & (NOT FilterSize));
    SizeMaxIdx          <=  (SizePlusOne(6 DOWNTO 0) & '0');
    SizePlusCol         <=  (('0' & CurCol) + ('0' & SizeMaxIdx));

    --===================================================================================
    --
    -- Control Signals
    --

    IsFirstCycle        <=  Start AND (NOT IsRunning);
    FirstCycle          <=  IsFirstCycle;
    IsDone              <=  SizePlusCol(8);
    IsRunning           <=  Load OR StoreState OR CalcState;
    IsWindowLoaded      <=  '1' WHEN (CurRow >= SizeMaxIdx) ELSE '0';
    IsCalcTurn          <=  IsWindowLoaded AND (Stride NAND CurRow(0)); -- IsCalcTurn = (Stride=0 OR Even Row)
    Load                <=  LoadFilterState OR LoadWindowState;
    Restart             <=  RST OR (Start AND DoneState);
    CntRST              <=  (Restart OR (LoadFilterState AND NxtLoadWindowState));
    CntEN               <=  (Load AND (NOT IsCalcTurn)) OR StoreState;

    --===================================================================================
    --
    -- Interfacing Signals
    --

    Done                <=  DoneState;
    Calc                <=  CalcState;
    MemRD               <=  Load;
    MemWR               <=  StoreState;
    CacheFilterWR       <=  LoadFilterState;
    CacheWindowWR       <=  LoadWindowState;

    --===================================================================================
    --
    -- Row/Col Indices
    --
    
    -- Row Register
    ROW:
    ENTITY work.register_edge_falling
    GENERIC MAP(n => 8)
    PORT MAP(CLK => CLK, RST => CntRST, EN => CntEN, Din => NxtRow(7 DOWNTO 0), Dout => CurRow);

    NxtRow      <=  ('0' & CurRow + 1);
    RowCout     <=  NxtRow(8);

    -------------------------------------------------------

    -- Col Register
    COL:
    ENTITY work.register_edge_falling
    GENERIC MAP(n => 8)
    PORT MAP(CLK => CLK, RST => CntRST, EN => CntEN, Din => NxtCol, Dout => CurCol);

    NxtCol      <=  (CurCol + (Stride AND RowCout) + RowCout);

    -------------------------------------------------------

    WindRow     <=  (CurRow - SizePlusOne);
    WindCol     <=  (CurCol + SizePlusOne);

    StoreRow    <=  '0' & WindRow(7 DOWNTO 1) WHEN Stride='1' ELSE WindRow(7 DOWNTO 0);
    StoreCol    <=  '0' & WindCol(7 DOWNTO 1) WHEN Stride='1' ELSE WindCol(7 DOWNTO 0);

    --===================================================================================
    --
    -- Memory Addresses
    --

    WindowAddr  <=  "00" & (CurRow & CurCol);
    StoreAddr   <=  "01" & (StoreRow & StoreCol);
    FilterAddr  <=  "10" & (15 DOWNTO 11 => '0') & CurRow & (2 DOWNTO 0 => '0');

    LoadAddr    <=  WindowAddr   WHEN LoadWindowState='1'    ELSE    FilterAddr;
    MemAddr     <=  StoreAddr    WHEN StoreState='1'         ELSE    LoadAddr;

END ARCHITECTURE;