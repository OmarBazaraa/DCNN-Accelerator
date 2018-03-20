LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE WORK.utilities.ALL;

ENTITY cache IS
    PORT(
        CLK             : IN  STD_LOGIC;
        FilterWR        : IN  STD_LOGIC;
        WindowWR        : IN  STD_LOGIC;
        ResultWR        : IN  STD_LOGIC;
        Din             : IN  STD_LOGIC_VECTOR(39 DOWNTO 0);
        Result          : OUT STD_LOGIC_VECTOR( 7 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_cache OF cache IS

    TYPE memory IS ARRAY(0 TO 4) OF STD_LOGIC_VECTOR(39 DOWNTO 0);
    
    SIGNAL filter, window : memory;
BEGIN
    
    PROCESS(CLK)
    BEGIN
        IF RISING_EDGE(CLK) THEN
            IF FilterWR='1' THEN
                filter(0) <= window(1);
                filter(1) <= window(2);
                filter(2) <= window(3);
                filter(3) <= window(4);
                filter(4) <= Din;
            END IF;

            IF WindowWR='1' THEN
                window(0) <= window(1);
                window(1) <= window(2);
                window(2) <= window(3);
                window(3) <= window(4);
                window(4) <= Din;
            END IF;

            IF ResultWR='1' THEN
                Result <= Din(7 DOWNTO 0);
            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE;
