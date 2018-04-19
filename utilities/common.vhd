LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

PACKAGE common IS

    TYPE matrix_byte IS
    ARRAY(NATURAL range <>, NATURAL range <>) OF
    STD_LOGIC_VECTOR(7 DOWNTO 0);


    TYPE matrix_bit IS
    ARRAY(NATURAL range <>, NATURAL range <>) OF
    STD_LOGIC;

    TYPE array_clen IS
    ARRAY(NATURAL range <>) OF
    STD_LOGIC_VECTOR(16 DOWNTO 0);

    TYPE array_byte IS
    ARRAY(NATURAL range <>) OF
    STD_LOGIC_VECTOR(7 DOWNTO 0);

END PACKAGE;