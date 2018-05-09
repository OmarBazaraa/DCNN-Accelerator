LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY counter IS
    GENERIC(n : INTEGER := 4);
    PORT(
        CLK     : IN    STD_LOGIC;
        RST     : IN    STD_LOGIC;
        Dout    : INOUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_counter OF counter IS
BEGIN

    PROCESS(CLK, RST)
    BEGIN
        IF RST='1' THEN
            Dout <= (OTHERS => '0');
        ELSE
	    IF RISING_EDGE(CLK) THEN
                Dout <= STD_LOGIC_VECTOR(TO_UNSIGNED(TO_INTEGER(UNSIGNED(Dout)) + 1, n));
	    END IF;
        END IF;
    END PROCESS;

END ARCHITECTURE;
