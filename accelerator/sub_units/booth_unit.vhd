LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY booth_unit IS
    GENERIC(n : INTEGER := 17);
    PORT(
        CLK                         : IN  STD_LOGIC;
        RST                         : IN  STD_LOGIC;
        Start                       : IN  STD_LOGIC;
        Instr                       : IN  STD_LOGIC;
        LoopingAndResultNotReady    : IN  STD_LOGIC;
    
        FilterCell                  : IN  STD_LOGIC_VECTOR(  7 DOWNTO 0);
        WindowCell                  : IN  STD_LOGIC_VECTOR(  7 DOWNTO 0);
        AdderBoothResult            : IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        
        BoothXORCheck               : OUT STD_LOGIC;
        BoothAddingOperand          : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        BoothP                      : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        LargeWindowShifted          : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_booth_unit OF booth_unit IS
    --
    -- A, S & P Register Signals.
    --
    SIGNAL RegisterPEN      : STD_LOGIC;
    SIGNAL RegisterADin     : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL RegisterSDin     : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL RegisterPDin     : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL RegisterADout    : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL RegisterSDout    : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL RegisterPDout    : STD_LOGIC_VECTOR(n-1 DOWNTO 0);

    --
    -- Muxes Signals.
    --
    SIGNAL PMuxInputC	    : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    SIGNAL PMuxInputD    	: STD_LOGIC_VECTOR(n-1 DOWNTO 0);
    
BEGIN

    --
    -- Output
    --
    BoothXORCheck       <= RegisterPDout(0) XOR RegisterPDout(1);
    BoothP              <= RegisterPDout;

    --
    -- A, S & P Register Signals.
    --
    RegisterPEN 	<= Start OR LoopingAndResultNotReady;
    RegisterADin 	<= FilterCell & "000000000";
    RegisterSDin 	<= STD_LOGIC_VECTOR(TO_UNSIGNED(TO_INTEGER(UNSIGNED((NOT FilterCell))) + 1, 8)) & "000000000";

    --
    -- P DataIn 4-1 Mux Signals.
    --
    PMuxInputC 	<= "00000000" & WindowCell & '0';
    PMuxInputD 	<= "000000000" & WindowCell;

    --
    -- A, S & P Registers.
    --
    REGISTER_A:
    ENTITY work.register_edge_falling
    GENERIC MAP(n => n)
    PORT MAP(CLK => START, RST => RST, EN => '1', Din => RegisterADin, Dout => RegisterADout);

    REGISTER_S:
    ENTITY work.register_edge_falling
    GENERIC MAP(n => n)
    PORT MAP(CLK => START, RST => RST, EN => '1', Din => RegisterSDin, Dout => RegisterSDout);

    REGISTER_P:
    ENTITY work.register_edge_falling
    GENERIC MAP(n => n)
    PORT MAP(CLK => CLK, RST => RST, EN => RegisterPEN, Din => RegisterPDin, Dout => RegisterPDout);

    --
    -- Booth Operands (A/S) Mux.
    --
    BoothAddingOperand      <=  RegisterADout       WHEN RegisterPDout(0)='1'       ELSE
                                RegisterSDout;

    --
    -- P DataIn 4-1 Mux.
    --
    RegisterPDin            <=  PMuxInputC          WHEN Start='1' AND Instr='0'    ELSE
                                PMuxInputD          WHEN Start='1' AND Instr='1'    ELSE
                                AdderBoothResult;

END ARCHITECTURE;
