LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.COMMON.ALL;

ENTITY accelerator IS
    PORT(
        CLK, RST            : IN  STD_LOGIC;
        Start               : IN  STD_LOGIC;
        FilterSize          : IN  STD_LOGIC;    -- 0: 3x3, 1: 5x5
        Instr               : IN  STD_LOGIC;    -- 0: Convolution, 1: Pooling

        FilterDin           : IN  MATRIX_BYTE(0 TO 4, 0 TO 4);
        WindowDin           : IN  MATRIX_BYTE(0 TO 4, 0 TO 4);
        
        Done                : OUT STD_LOGIC;    -- Finish calculating the current window
        Result              : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_accelerator OF accelerator IS
    --
    -- Counter Signals
    --
    SIGNAL CounterCLK             	: STD_LOGIC;
    SIGNAL CounterRST             	: STD_LOGIC;
    SIGNAL CounterOut			: STD_LOGIC_VECTOR(4 DOWNTO 0);

    SIGNAL ResultReady             	: STD_LOGIC;
    SIGNAL LoopingAndResultNotReady     : STD_LOGIC;

BEGIN
    -------------------------------------------------------
    -- Accelerator Counter
    CounterCLK <= CLK AND NOT(ResultReady) AND NOT(Instr);
    CounterRST <= Start OR RST;
    ResultReady <= (CounterOut(0) AND NOT(CounterOut(1)) AND NOT(CounterOut(1)) AND CounterOut(3));
    LoopingAndResultNotReady <= NOT(ResultReady) AND (CounterOut(0) OR CounterOut(1) OR CounterOut(2) OR CounterOut(3));

    ACCELERATOR_COUNTER:
    ENTITY work.counter
    GENERIC MAP(n => 4)
    PORT MAP(CLK => CounterCLK, RST => CounterRST, Dout => CounterOut);


END ARCHITECTURE;
