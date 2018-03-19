LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux_4x1 IS
    GENERIC(n: INTEGER := 32);
    PORT(
        A, B, C, D  : IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        S           : IN  STD_LOGIC_VECTOR(  1 DOWNTO 0);
        Dout        : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_mux_4x1 OF mux_4x1 IS
BEGIN

    WITH S SELECT
        Dout <= A WHEN "00",
                B WHEN "01",
                C WHEN "10",
                D WHEN OTHERS;
END ARCHITECTURE;