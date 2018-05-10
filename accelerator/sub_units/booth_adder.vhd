LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY booth_adder IS
    GENERIC(n : INTEGER := 17);
    PORT(
        AdderFirstOperand   : IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        AdderSecondOperand  : IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        BoothOperand        : IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        BoothP              : IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);

        SelOperand          : IN  STD_LOGIC;
        Operation           : IN  STD_LOGIC;

        AdderResult         : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        AdderBoothResult    : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_booth_adder OF booth_adder IS

    SIGNAL FirstOperand     : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL SecondOperand    : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL PBeforeShift     : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL Result           : STD_LOGIC_VECTOR(n-1 DOWNTO 0);   
BEGIN

    AdderBoothResult    <=  '0' & PBeforeShift(n-1 DOWNTO 1);
    AdderResult         <=  Result;

    FirstOperand        <=  AdderFirstOperand       WHEN SelOperand='0' ELSE
                            BoothOperand;

    SecondOperand       <=  AdderSecondOperand      WHEN SelOperand='0' ELSE
                            BoothP;

    PBeforeShift        <=  BoothP                  WHEN Operation='0'  ELSE
                            Result;

    Result              <=  FirstOperand + SecondOperand;

END ARCHITECTURE;
