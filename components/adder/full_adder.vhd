LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY full_adder IS
    PORT(
        A, B    : IN  STD_LOGIC;
        Cin     : IN  STD_LOGIC;
        Sum     : OUT STD_LOGIC;
        Cout    : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE arch_full_adder OF full_adder IS
BEGIN

    Sum     <= (A XOR B XOR Cin);
    Cout    <= (A AND B) OR (Cin AND (A XOR B));
END ARCHITECTURE;