LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE WORK.COMMON.ALL;

ENTITY cache IS
    PORT(
        CLK, RST        : IN  STD_LOGIC;

        FilterSize      : IN  STD_LOGIC;
        FilterWR        : IN  STD_LOGIC;
        WindowWR        : IN  STD_LOGIC;
        Din             : IN  STD_LOGIC_VECTOR(39 DOWNTO 0);

        FilterDout      : OUT MATRIX_BYTE(0 TO 4, 0 TO 4);
        WindowDout      : OUT MATRIX_BYTE(0 TO 4, 0 TO 4);

        ResultWR        : IN  STD_LOGIC;
        ResultDin       : IN  STD_LOGIC_VECTOR( 7 DOWNTO 0);
        ResultDout      : OUT STD_LOGIC_VECTOR( 7 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_cache OF cache IS

    SIGNAL FilterEN     : MATRIX_BIT(0 TO 4, 0 TO 4);
    SIGNAL FilterDin    : MATRIX_BYTE(0 TO 4, 0 TO 4);
    SIGNAL Filter       : MATRIX_BYTE(0 TO 4, 0 TO 4);

    SIGNAL WindowEN     : MATRIX_BIT(0 TO 4, 0 TO 4);
    SIGNAL WindowDin    : MATRIX_BYTE(0 TO 4, 0 TO 4);
    SIGNAL Window       : MATRIX_BYTE(0 TO 4, 0 TO 4);
    
BEGIN

    FilterDout  <= Filter;
    WindowDout  <= Window;
    
    L0:
    FOR i IN 0 TO 4 GENERATE
        L1:
        FOR j IN 0 TO 4 GENERATE

            -- Enable
            IF_EN_0:
            IF i>=2 OR j<=2 GENERATE
                FilterEN(i, j)  <= FilterWR;
                WindowEN(i, j)  <= WindowWR;
            END GENERATE;
            IF_EN_1:
            IF i<2 AND j>2 GENERATE
                FilterEN(i, j)  <= FilterWR AND FilterSize;
                WindowEN(i, j)  <= WindowWR AND FilterSize;
            END GENERATE;
            
            -- Din
            IF_Din_0:
            IF i<4 GENERATE
                FilterDin(i, j) <= Filter(i+1, j);
                WindowDin(i, j) <= Filter(i+1, j);
            END GENERATE;
            IF_Din_1:
            IF i>=4 GENERATE
                FilterDin(i, j) <= Din(((j+1)*8)-1 DOWNTO j*8);
                WindowDin(i, j) <= Din(((j+1)*8)-1 DOWNTO j*8);
            END GENERATE;


            -- Filter 
            Fij:
            ENTITY work.register_edge
            GENERIC MAP(n => 8)
            PORT MAP(CLK, RST, FilterEN(i, j), FilterDin(i, j), Filter(i, j));

            -- Window 
            Wij:
            ENTITY work.register_edge
            GENERIC MAP(n => 8)
            PORT MAP(CLK, RST, WindowEN(i, j), WindowDin(i, j), Window(i, j));

        END GENERATE;
    END GENERATE;

    -- Result 
    RESULT_REG:
    ENTITY work.register_edge
    GENERIC MAP(n => 8)
    PORT MAP(CLK, RST, ResultWR, ResultDin, ResultDout);

END ARCHITECTURE;