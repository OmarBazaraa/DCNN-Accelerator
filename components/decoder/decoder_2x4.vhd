LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY decoder_2x4 IS
    PORT(
        EN      : IN  STD_LOGIC;
        S       : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
        Dout    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_decoder_2x4 OF decoder_2x4 IS
BEGIN

    WITH S SELECT
        Dout <= (0 => EN, OTHERS => '0') WHEN "00",
                (1 => EN, OTHERS => '0') WHEN "01",
                (2 => EN, OTHERS => '0') WHEN "10",
                (3 => EN, OTHERS => '0') WHEN OTHERS;
END ARCHITECTURE;