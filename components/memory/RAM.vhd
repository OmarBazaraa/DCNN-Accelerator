LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY RAM IS
    GENERIC(n: INTEGER := 8; m: INTEGER := 18);
    PORT(
        CLK             : IN  STD_LOGIC;
        WR              : IN  STD_LOGIC;
        Address         : IN  STD_LOGIC_VECTOR(m-1      DOWNTO 0);
        Din             : IN  STD_LOGIC_VECTOR(n-1      DOWNTO 0);
        Dout            : OUT STD_LOGIC_VECTOR((n*5)-1  DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_RAM OF RAM IS

    TYPE memory IS ARRAY(0 TO (2**5)-1) OF STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    
    SIGNAL Mem : memory := (
       OTHERS => "00000000"
    );
BEGIN

    Dout <= Mem(to_integer(unsigned(Address(4 downto 0))) + 4) & 
            Mem(to_integer(unsigned(Address(9 downto 5))) + 3) &
            Mem(to_integer(unsigned(Address(14 downto 10))) + 2) &
            Mem(to_integer(unsigned(Address(16 downto 14))) + 1) &
            Mem(to_integer(unsigned(Address(17 downto 15))) + 0);
    
    PROCESS(CLK)
    BEGIN
        IF RISING_EDGE(CLK) THEN
            IF WR='1' THEN
                Mem(to_integer(unsigned(Address(4 downto 0)))) <= Din;
		Mem(to_integer(unsigned(Address(17 downto 13)))) <= Din;
		Mem(to_integer(unsigned(Address(12 downto 8)))) <= Din;
		Mem(to_integer(unsigned(Address(5 downto 1)))) <= Din;
		Mem(to_integer(unsigned(Address(6 downto 2)))) <= Din;
            END IF;
        END IF;
    END PROCESS;

END ARCHITECTURE;
