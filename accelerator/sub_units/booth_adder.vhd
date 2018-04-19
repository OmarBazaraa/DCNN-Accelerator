LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY booth_adder IS
    GENERIC(n : INTEGER := 17);
    PORT(
        AdderFirstOperand   : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	AdderSecondOperand  : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	BoothOperand	    : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	BoothP		    : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);

	SelOperand     	    : IN STD_LOGIC;
        Operation	    : IN STD_LOGIC;

        AdderResult    	    : INOUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        AdderBoothResult    : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_booth_adder OF booth_adder IS

    SIGNAL AdderCin	    : STD_LOGIC;
    SIGNAL FirstOperand	    : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL SecondOperand    : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL PBeforeShift	    : STD_LOGIC_VECTOR(n-1 DOWNTO 0);

BEGIN

    AdderCin <= '0';
    AdderBoothResult <= '0' & PBeforeShift(n-1 DOWNTO 1);

    FIRST_OPERAND_MUX:
    ENTITY work.mux_2x1
    GENERIC MAP(n => 17)
    PORT MAP(A => AdderFirstOperand, B => BoothOperand, S => SelOperand, Dout => FirstOperand);

    SECOND_OPERAND_MUX:
    ENTITY work.mux_2x1
    GENERIC MAP(n => 17)
    PORT MAP(A => AdderSecondOperand, B => BoothP, S => SelOperand, Dout => SecondOperand);

    BOOTH_P_OUTPUT_MUX:
    ENTITY work.mux_2x1
    GENERIC MAP(n => 17)
    PORT MAP(A => BoothP, B => AdderResult, S => Operation, Dout => PBeforeShift); 

    ADDER:
    ENTITY work.adder
    GENERIC MAP(n => 17)  
    PORT MAP(A => FirstOperand, B => SecondOperand, Cin => AdderCin, Sum => AdderResult, Cout => OPEN); --TODO @Samir55 Change into +
END ARCHITECTURE;
