LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.COMMON.ALL;

ENTITY accelerator IS
    PORT(
        CLK, RST            : IN  STD_LOGIC;
        Start               : IN  STD_LOGIC;
        FilterSize          : IN  STD_LOGIC;        -- 0: 3x3, 1: 5x5
        Instr               : IN  STD_LOGIC;        -- 0: Convolution, 1: Pooling

        FilterDin           : IN  MATRIX_BYTE(0 TO 4, 0 TO 4);
        WindowDin           : IN  MATRIX_BYTE(0 TO 4, 0 TO 4);
        
        Done                : OUT STD_LOGIC;        -- Finish calculating the current window (Result Ready)
        Result              : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_accelerator OF accelerator IS

    -- Counter Signals
    SIGNAL CounterEN              : STD_LOGIC;
    SIGNAL CounterRST             : STD_LOGIC;
    SIGNAL ResultReady            : STD_LOGIC;
    SIGNAL CalculatingBooth       : STD_LOGIC;
    SIGNAL CounterOut             : STD_LOGIC_VECTOR(3 DOWNTO 0);

    -- Level 1 Signals.  
    SIGNAL L1FirstOperands        : ARRAY_CLEN(0 TO 12);   
    SIGNAL L1SecondOperands       : ARRAY_CLEN(0 TO 12);   
    SIGNAL L1ResultsLarge         : ARRAY_CLEN(0 TO 12);
    SIGNAL L1OperationResults     : ARRAY_CLEN(0 TO 12);  

    -- Level 2 Signals.  
    SIGNAL L2FirstOperands        : ARRAY_CLEN(0 TO 5);   
    SIGNAL L2SecondOperands       : ARRAY_CLEN(0 TO 5);   
    SIGNAL L2ResultsLarge         : ARRAY_CLEN(0 TO 5); 
    SIGNAL L2OperationResults     : ARRAY_CLEN(0 TO 5); 

    -- Level 3 Signals. 
    SIGNAL L3FirstOperands        : ARRAY_CLEN(0 TO 2);   
    SIGNAL L3SecondOperands       : ARRAY_CLEN(0 TO 2);   
    SIGNAL L3ResultsLarge         : ARRAY_CLEN(0 TO 2); 
    SIGNAL L3OperationResults     : ARRAY_CLEN(0 TO 2); 

    -- Level 4 Signals. 
    SIGNAL L4FirstOperands        : ARRAY_CLEN(0 TO 0);   
    SIGNAL L4SecondOperands       : ARRAY_CLEN(0 TO 0); 
    SIGNAL L4ResultsLarge         : ARRAY_CLEN(0 TO 0);   
    SIGNAL L4OperationResults     : ARRAY_CLEN(0 TO 0);  

    -- Level 5 Signals.
    SIGNAL L5FirstOperands        : ARRAY_CLEN(0 TO 1); 
    SIGNAL L5SecondOperands       : ARRAY_CLEN(0 TO 1);     
    SIGNAL L5ResultsLarge         : ARRAY_CLEN(0 TO 1); 
    SIGNAL L5OperationResults     : ARRAY_CLEN(0 TO 1);    

    --  
    -- Result Shift Mux Signals.    
    --  
    SIGNAL ConvolutionResult      : STD_LOGIC_VECTOR(  7 DOWNTO 0);
    
    --  
    -- Pooling Shift Mux Signals. 
    --  
    SIGNAL PoolingSmallWindow     : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL PoolingLargeWindow     : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL PoolingResult          : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
BEGIN
    --
    -- Outputs
    --
    Done            	<= ResultReady OR Instr;
	
    ConvolutionResult   <= L5ResultsLarge(1)(7 DOWNTO 0);

    PoolingSmallWindow  <= "000"   & L5ResultsLarge(1)(7 DOWNTO 3);
    PoolingLargeWindow  <= "00000" & L5ResultsLarge(1)(7 DOWNTO 5);
	
    PoolingResult       <= PoolingSmallWindow      WHEN FilterSize='0' ELSE
                           PoolingLargeWindow;

    Result              <= ConvolutionResult       WHEN Instr='0' ELSE
                           PoolingResult;

    --
    -- Accelerator Counter
    --
    CounterEN       <= ResultReady NOR Instr;
    CounterRST      <= RST OR Start;

    ACCELERATOR_COUNTER:
    ENTITY work.counter
    GENERIC MAP(n => 4)
    PORT MAP(CLK, CounterRST, CounterEN, CounterOut);

    -- TODO: use EN instead of changing the clock
    
    ResultReady         <= '1' WHEN CounterOut="1001" ELSE '0';
    CalculatingBooth    <= (NOT ResultReady) AND (CounterOut(0) OR CounterOut(1) OR CounterOut(2) OR CounterOut(3));

    --
    -- Mini ALU Units in the Tree
    --
    L1:
    FOR i IN 0 TO 4 GENERATE
        L2:
        FOR j IN 0 TO 4 GENERATE
            G1:
            IF (i*5+j) <= 12 GENERATE
                MINI_ALU:
                ENTITY work.mini_alu
                GENERIC MAP(n => 17)
                PORT MAP(CLK, RST, Start, Instr, FilterSize, ResultReady, CalculatingBooth,
                         FilterDin(i, j), WindowDin(i, j), L1FirstOperands(i*5+j), L1SecondOperands(i*5+j),
                         L1ResultsLarge(i*5+j), L1OperationResults(i*5+j));    
            END GENERATE;

            G2:
            IF (i*5+j) > 12 AND (i*5+j) <= 18 GENERATE
                MINI_ALU:
                ENTITY work.mini_alu
                GENERIC MAP(n => 17)
                PORT MAP(CLK, RST, Start, Instr, FilterSize, ResultReady, CalculatingBooth,
                         FilterDin(i, j), WindowDin(i, j), L2FirstOperands(i*5+j-13), L2SecondOperands(i*5+j-13),
                         L2ResultsLarge(i*5+j-13), L2OperationResults(i*5+j-13));        
            END GENERATE;

            G3:
            IF (i*5+j) > 18 AND (i*5+j) <= 21 GENERATE
                MINI_ALU:
                ENTITY work.mini_alu
                GENERIC MAP(n => 17)
                PORT MAP(CLK, RST, Start, Instr, FilterSize, ResultReady, CalculatingBooth,
                         FilterDin(i, j), WindowDin(i, j), L3FirstOperands(i*5+j-19), L3SecondOperands(i*5+j-19),
                         L3ResultsLarge(i*5+j-19), L3OperationResults(i*5+j-19));  
            END GENERATE;

            G4:
            IF (i*5+j) = 22 GENERATE
                MINI_ALU:
                ENTITY work.mini_alu
                GENERIC MAP(n => 17)
                PORT MAP(CLK, RST, Start, Instr, FilterSize, ResultReady, CalculatingBooth,
                         FilterDin(i, j), WindowDin(i, j), L4FirstOperands(i*5+j-22), L4SecondOperands(i*5+j-22),
                         L4ResultsLarge(i*5+j-22), L4OperationResults(i*5+j-22));   
            END GENERATE;

            G5:
            IF (i*5+j) > 22 GENERATE
                MINI_ALU:
                ENTITY work.mini_alu
                GENERIC MAP(n => 17)
                PORT MAP(CLK, RST, Start, Instr, FilterSize, ResultReady, CalculatingBooth,
                         FilterDin(i, j), WindowDin(i, j), L5FirstOperands(i*5+j-23), L5SecondOperands(i*5+j-23),
                         L5ResultsLarge(i*5+j-23), L5OperationResults(i*5+j-23));    
            END GENERATE;
        END GENERATE;
    END GENERATE;

    -- Level 1 Connections in the Tree
    C1:
    FOR i IN 0 TO 11 GENERATE
        L1SecondOperands(i)     <= L1OperationResults(i);
    
        IF_1:
        IF (i mod 2) = 0 GENERATE
            L1FirstOperands(i)  <= L2OperationResults(i/2);
        END GENERATE;

        IF_2:
        IF i = 1 OR i = 5 OR i = 9 GENERATE
            L1FirstOperands(i)  <= L3OperationResults((i-1)/4);
        END GENERATE;

        IF_3:
        IF i = 3 GENERATE
            L1FirstOperands(i)  <= L4OperationResults(0);
        END GENERATE;

        IF_4:
        IF i = 7 GENERATE
            L1FirstOperands(i)  <= L5OperationResults(0);
        END GENERATE;

        IF_5:
        IF i = 11 GENERATE
            L1FirstOperands(i)  <= L1OperationResults(12);
        END GENERATE;
    END GENERATE;

    -- Level 2 Connections in the Tree
    C2:
    FOR i IN 0 TO 5 GENERATE
        L2FirstOperands(i)  <= L1ResultsLarge(i*2);
        L2SecondOperands(i) <= L1ResultsLarge(i*2+1);
    END GENERATE;

    -- Level 3 Connections in the Tree
    C3:
    FOR i IN 0 TO 2 GENERATE
        L3FirstOperands(i)  <= L2ResultsLarge(i*2);
        L3SecondOperands(i) <= L2ResultsLarge(i*2+1);
    END GENERATE;

    -- Level 4 Connections in the Tree
    C4:
    L4FirstOperands(0)      <= L3ResultsLarge(0);
    L4SecondOperands(0)     <= L3ResultsLarge(1);

    -- Level 5 Connections in the Tree
    C5:
    L5FirstOperands(0)      <= L4ResultsLarge(0);
    L5SecondOperands(0)     <= L3ResultsLarge(2);
    L5FirstOperands(1)      <= L5ResultsLarge(0);
    L5SecondOperands(1)     <= L5OperationResults(1);

END ARCHITECTURE;