LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY decoder_3x8 IS
    PORT(
        EN      : IN  STD_LOGIC;
        S       : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
        Dout    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_decoder_3x8 OF decoder_3x8 IS
BEGIN

    WITH S SELECT
        Dout <= (0 => EN, OTHERS => '0') WHEN "000",
                (1 => EN, OTHERS => '0') WHEN "001",
                (2 => EN, OTHERS => '0') WHEN "010",
                (3 => EN, OTHERS => '0') WHEN "011",
                (4 => EN, OTHERS => '0') WHEN "100",
                (5 => EN, OTHERS => '0') WHEN "101",
                (6 => EN, OTHERS => '0') WHEN "110",
                (7 => EN, OTHERS => '0') WHEN OTHERS;
END ARCHITECTURE;
