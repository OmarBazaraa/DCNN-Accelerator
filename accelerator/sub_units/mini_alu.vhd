LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY mini_alu IS
    GENERIC(n: INTEGER := 17);
    PORT(
        CLK, RST                    : IN  STD_LOGIC;
        Start                       : IN  STD_LOGIC;
        Instr                       : IN  STD_LOGIC;
        Size                        : IN  STD_LOGIC;
        ResultReady                 : IN  STD_LOGIC;
        LoopingAndResultNotReady    : IN  STD_LOGIC;
        Filter                      : IN  STD_LOGIC_VECTOR(  7 DOWNTO 0);
        Window                      : IN  STD_LOGIC_VECTOR(  7 DOWNTO 0);
        AdderFirstOperand           : IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        AdderSecondOperand          : IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);

        Result                      : OUT STD_LOGIC_VECTOR(  7 DOWNTO 0);
        AdderResultLarge            : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        OperationResult             : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_mini_alu OF mini_alu IS

    --
    -- Booth Unit Signals.
    --
    SIGNAL BoothXORCheck            : STD_LOGIC;
    SIGNAL BoothResult              : STD_LOGIC_VECTOR(  7 DOWNTO 0);
    SIGNAL BoothOperand             : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL BoothP                   : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL LargeWindowShifted       : STD_LOGIC_VECTOR(n-1 DOWNTO 0);

    --
    -- Booth Adder Signals.
    --
    SIGNAL SelOperand               : STD_LOGIC;
    SIGNAL AdderBoothResult         : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL AdderResult              : STD_LOGIC_VECTOR(n-1 DOWNTO 0);

    --
    -- Operation Result Mux Signals.
    --
    SIGNAL OperationResultShifted   : STD_LOGIC_VECTOR(n-1 DOWNTO 0);

    --
    -- Result Shift Mux Signals.
    --
    SIGNAL ResultShiftMuxInputA     : STD_LOGIC_VECTOR(  7 DOWNTO 0);

    --
    -- Pooling Shift Mux Signals.
    --
    SIGNAL PoolingShiftMuxInputA    : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL PoolingShiftMuxInputB    : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL PoolingShiftMuxOutput    : STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN
    --
    -- Outputs.
    --
    OperationResult         <= '0' & OperationResultShifted(n-1 DOWNTO 1);
    AdderResultLarge        <= AdderResult;

    --
    -- Result Shift Mux.
    --
    ResultShiftMuxInputA    <= AdderResult(7 DOWNTO 0);

    --
    -- Pooling Shift Mux.
    --
    PoolingShiftMuxInputA   <= "000"   & AdderResult(7 DOWNTO 3);
    PoolingShiftMuxInputB   <= "00000" & AdderResult(7 DOWNTO 5);

    --
    -- Booth Adder.
    --
    SelOperand  <= (NOT Instr) AND (NOT ResultReady);


    BOOTH_ADDER:
    ENTITY work.booth_adder
    GENERIC MAP(n => 17)
    PORT MAP( 
        AdderFirstOperand           => AdderFirstOperand,
        AdderSecondOperand          => AdderSecondOperand,
        BoothOperand                => BoothOperand,
        BoothP                      => BoothP,

        SelOperand                  => SelOperand,
        Operation                   => BoothXORCheck,

        AdderResult                 => AdderResult,
        AdderBoothResult            => AdderBoothResult
    );

    --
    -- Booth Unit.
    --
    BOOTH_UNIT:
    ENTITY work.booth_unit
    GENERIC MAP(n => 17)
    PORT MAP(
        CLK                         => CLK,
        RST                         => RST, 
        Start                       => Start, 
        Instr                       => Instr, 
        LoopingAndResultNotReady    => LoopingAndResultNotReady, 
        Filter                      => Filter, 
        Window                      => Window,
        AdderBoothResult            => AdderBoothResult, 
        BoothXORCheck               => BoothXORCheck, 
        BoothResult                 => BoothResult, 
        BoothAddingOperand          => BoothOperand,
        BoothP                      => BoothP, 
        LargeWindowShifted          => LargeWindowShifted
    );

    --
    -- Operation Result Mux.
    --
    OperationResultShifted  <=  BoothP                  WHEN Instr='0' ELSE
                                LargeWindowShifted;
                                
    --
    -- Result Shift Mux.
    --
    Result                  <=  ResultShiftMuxInputA    WHEN Instr='0' ELSE
                                PoolingShiftMuxOutput;
    --
    -- Pooling Result Mux.
    --
    PoolingShiftMuxOutput   <=  PoolingShiftMuxInputA   WHEN Size='0' ELSE
                                PoolingShiftMuxInputB;

END ARCHITECTURE;
