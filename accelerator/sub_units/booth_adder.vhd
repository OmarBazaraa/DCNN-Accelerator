LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY booth_adder IS
    GENERIC(n : INTEGER := 17);
    PORT(
        AdderFirstOperand   			: IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        AdderSecondOperand  			: IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
				
		BoothOperand        			: IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        BoothP              			: IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
			
        SelectBoothOperandsForAdder 	: IN  STD_LOGIC;
        AddPToBoothOperand  			: IN  STD_LOGIC;
			
        AdderResult         			: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        NewBoothP  						: OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_booth_adder OF booth_adder IS

    SIGNAL FirstOperand     	: STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL SecondOperand    	: STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL BoothPBeforeShift	: STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL TmpResult        	: STD_LOGIC_VECTOR(n-1 DOWNTO 0);  

BEGIN

    NewBoothP  			<=  BoothPBeforeShift(n-1) & BoothPBeforeShift(n-1 DOWNTO 1);
    AdderResult         <=  TmpResult;

    FirstOperand        <=  AdderFirstOperand       WHEN SelectBoothOperandsForAdder='0' ELSE
                            BoothOperand;

    SecondOperand       <=  AdderSecondOperand      WHEN SelectBoothOperandsForAdder='0' ELSE
                            BoothP;

    BoothPBeforeShift   <=  BoothP                  WHEN AddPToBoothOperand='0'  ELSE
                            TmpResult;

    TmpResult           <=  FirstOperand + SecondOperand;

END ARCHITECTURE;
