LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE WORK.utilities.ALL;

ENTITY RAM IS
    PORT(
        CLK             : IN  STD_LOGIC;
        RD, WR          : IN  STD_LOGIC;
        Address         : IN  STD_LOGIC_VECTOR(RAM_ADDR_WIDTH-1 DOWNTO 0);
        Din             : IN  STD_LOGIC_VECTOR(RAM_WORD_WIDTH-1 DOWNTO 0);
        Dout            : OUT STD_LOGIC_VECTOR(RAM_DATA_OUT_WIDTH-1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_RAM OF RAM IS

    TYPE memory IS ARRAY(0 TO RAM_HEIGHT-1) OF STD_LOGIC_VECTOR(RAM_WORD_WIDTH-1 DOWNTO 0);
    
    SIGNAL Mem : memory := (
	   OTHERS => "00000000"
    );
BEGIN

    Dout <= Mem(to_integer(unsigned(Address)) + 0) & 
            Mem(to_integer(unsigned(Address)) + 1) &
            Mem(to_integer(unsigned(Address)) + 2) &
            Mem(to_integer(unsigned(Address)) + 3) &
            Mem(to_integer(unsigned(Address)) + 4);
    
    PROCESS(CLK)
    BEGIN
        IF WR='1' AND RISING_EDGE(CLK) THEN
            Mem(to_integer(unsigned(Address))) <= Din;
        END IF;
    END PROCESS;

END ARCHITECTURE;