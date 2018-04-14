LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.COMMON.ALL;

ENTITY accelerator IS
    PORT(
        CLK, RST            : IN  STD_LOGIC;
        Start               : IN  STD_LOGIC;
        FilterSize          : IN  STD_LOGIC;    -- 0: 3x3, 1: 5x5
        Instr               : IN  STD_LOGIC;    -- 0: Convolution, 1: Pooling

        FilterDin           : IN  MATRIX_BYTE(0 TO 4, 0 TO 4);
        WindowDin           : IN  MATRIX_BYTE(0 TO 4, 0 TO 4);
        
        Done                : OUT STD_LOGIC;    -- Finish calculating the current window
        Result              : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_accelerator OF accelerator IS

BEGIN

END ARCHITECTURE;
