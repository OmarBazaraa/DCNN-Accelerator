LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY tri_state_buffer IS
    GENERIC(n: INTEGER := 32);
    PORT(
        Din     : IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        S       : IN  STD_LOGIC;
        Dout    : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_tri_state_buffer OF tri_state_buffer IS
BEGIN

    WITH S SELECT
        Dout <= Din             WHEN '1',
                (OTHERS => 'Z') WHEN OTHERS;
END ARCHITECTURE;