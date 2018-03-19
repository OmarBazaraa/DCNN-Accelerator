LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY adder IS
    GENERIC(n : INTEGER := 32);
    PORT(
        A, B:   IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        Cin:    IN  STD_LOGIC;
        Sum:    OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        Cout:   OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE arch_adder OF adder IS

    SIGNAL Carry: STD_LOGIC_VECTOR(n-1 DOWNTO 0);
BEGIN

    FA0:
    ENTITY work.full_adder PORT MAP(A(0), B(0), Cin, Sum(0), Carry(0));

    L1:
    FOR i IN 1 TO n-1 GENERATE
        FAi:
        ENTITY work.full_adder PORT MAP(A(i), B(i), Carry(i-1), Sum(i), Carry(i));
    END GENERATE;

    Cout <= Carry(n-1);
END ARCHITECTURE;