LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY register_level IS
    GENERIC(n: INTEGER := 32);
    PORT(
        CLK, RST, EN    : IN  STD_LOGIC;
        Din             : IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        Dout            : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_register_level OF register_level IS
BEGIN

    PROCESS(CLK, RST, Din)
    BEGIN
        IF RST='1' THEN
            Dout <= (OTHERS => '0');
        ELSIF EN='1' AND CLK='1' THEN
            Dout <= Din;
        END IF;
    END PROCESS;
END ARCHITECTURE;