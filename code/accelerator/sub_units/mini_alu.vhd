LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY mini_alu IS
    GENERIC(n: INTEGER := 8);
    PORT(
        CLK, RST                        : IN  STD_LOGIC;
        Start                           : IN  STD_LOGIC;
        Instr                           : IN  STD_LOGIC;
        Size                            : IN  STD_LOGIC;
        ResultReady                     : IN  STD_LOGIC;
        CalculatingBooth                : IN  STD_LOGIC;
        FilterCell                      : IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        WindowCell                      : IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        AdderFirstOperand               : IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        AdderSecondOperand              : IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    
        AdderResult                     : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        OperationResult                 : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_mini_alu OF mini_alu IS

    --
    -- Booth Unit Signals.
    --
    SIGNAL AddPToBoothOperand           : STD_LOGIC;
    SIGNAL BoothOperand                 : STD_LOGIC_VECTOR(2*n DOWNTO 0);
    SIGNAL BoothPBeforeShift            : STD_LOGIC_VECTOR(2*n DOWNTO 0);
    SIGNAL BoothP                       : STD_LOGIC_VECTOR(2*n DOWNTO 0);
    SIGNAL WindowCellShiftedLeft        : STD_LOGIC_VECTOR(2*n DOWNTO 0);
    
    SIGNAL NewBoothP                    : STD_LOGIC_VECTOR(2*n DOWNTO 0);
    
    SIGNAL OperationResultBeforeShift   : STD_LOGIC_VECTOR(2*n DOWNTO 0);

BEGIN

    --
    -- Outputs.
    --
    OperationResult     <=  OperationResultBeforeShift(n DOWNTO 1);

    -- Booth Adder
    BoothPBeforeShift   <=  BoothP                  WHEN AddPToBoothOperand='0'  ELSE
                            BoothP + BoothOperand;
    NewBoothP           <=  BoothPBeforeShift(2*n) & BoothPBeforeShift(2*n DOWNTO 1);
    
    -- Pooling Adder
    AdderResult         <=  AdderFirstOperand + AdderSecondOperand;

    --
    -- Booth Unit.
    --
    BOOTH_UNIT:
    ENTITY work.booth_unit
    GENERIC MAP(n => n)
    PORT MAP(
        CLK                         => CLK,
        RST                         => RST, 
        Start                       => Start, 
        Instr                       => Instr, 
        CalculatingBooth            => CalculatingBooth, 
        FilterCell                  => FilterCell, 
        WindowCell                  => WindowCell,
        NewBoothP                   => NewBoothP, 
        AddPToBoothOperand          => AddPToBoothOperand, 
        BoothOperand                => BoothOperand,
        BoothP                      => BoothP, 
        WindowCellShiftedLeft       => WindowCellShiftedLeft
    );

    --
    -- Operation Result Mux.
    --
    OperationResultBeforeShift  <=  BoothP                  WHEN Instr='0' ELSE
                                    WindowCellShiftedLeft;

END ARCHITECTURE;