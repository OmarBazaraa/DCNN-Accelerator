LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY adder IS
    GENERIC(n : INTEGER := 16);
    PORT(
        A, B        : IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        Cin         : IN  STD_LOGIC;
        Sum         : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        Cout        : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE arch_adder OF adder IS

    SIGNAL Carry    : STD_LOGIC_VECTOR(n DOWNTO 0);

BEGIN

    Carry(0) <= Cin;

    L0:
    FOR i IN 0 TO n-1 GENERATE
        FAi:
        ENTITY work.full_adder
        PORT MAP(A(i), B(i), Carry(i), Sum(i), Carry(i+1));
    END GENERATE;

    Cout <= Carry(n);

END ARCHITECTURE;