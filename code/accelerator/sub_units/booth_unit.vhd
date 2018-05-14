LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY booth_unit IS
    GENERIC(n : INTEGER := 8);
    PORT(
        CLK                         : IN  STD_LOGIC;
        RST                         : IN  STD_LOGIC;
        Start                       : IN  STD_LOGIC;
        Instr                       : IN  STD_LOGIC;
        CalculatingBooth            : IN  STD_LOGIC;
    
        FilterCell                  : IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        WindowCell                  : IN  STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        NewBoothP                   : IN  STD_LOGIC_VECTOR(2*n DOWNTO 0);
        
        AddPToBoothOperand          : OUT STD_LOGIC;
        BoothOperand                : OUT STD_LOGIC_VECTOR(2*n DOWNTO 0);
        BoothP                      : OUT STD_LOGIC_VECTOR(2*n DOWNTO 0);
        WindowCellShiftedLeft       : OUT STD_LOGIC_VECTOR(2*n DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_booth_unit OF booth_unit IS
    
    --
    -- A, S & P Register Signals.
    --
    SIGNAL RegisterPEN              : STD_LOGIC;
            
    SIGNAL RegisterADin             : STD_LOGIC_VECTOR(2*n DOWNTO 0);
    SIGNAL RegisterSDin             : STD_LOGIC_VECTOR(2*n DOWNTO 0);
    SIGNAL RegisterPDin             : STD_LOGIC_VECTOR(2*n DOWNTO 0);
            
    SIGNAL RegisterADout            : STD_LOGIC_VECTOR(2*n DOWNTO 0);
    SIGNAL RegisterSDout            : STD_LOGIC_VECTOR(2*n DOWNTO 0);
    SIGNAL RegisterPDout            : STD_LOGIC_VECTOR(2*n DOWNTO 0);

    --
    -- Muxes Signals.
    --
    SIGNAL TmpWindowCellShiftedLeft : STD_LOGIC_VECTOR(2*n DOWNTO 0);
    
BEGIN

    --
    -- Output
    --
    AddPToBoothOperand        <= RegisterPDout(0) XOR RegisterPDout(1);
    BoothP                    <= RegisterPDout;
    WindowCellShiftedLeft     <= TmpWindowCellShiftedLeft;
    
    --
    -- A, S & P Register Signals.
    --
    RegisterPEN               <= Start OR CalculatingBooth;
    RegisterADin              <= FilterCell & "000000000";
    RegisterSDin              <= ((NOT FilterCell) + 1) & "000000000";

    --
    -- P DataIn 4-1 Mux Signals.
    --
    TmpWindowCellShiftedLeft  <= "00000000" & WindowCell & '0';

    --
    -- A, S & P Registers.
    --
    REGISTER_A:
    ENTITY work.register_edge_falling
    GENERIC MAP(n => 2*n+1)
    PORT MAP(CLK => CLK, RST => RST, EN => Start, Din => RegisterADin, Dout => RegisterADout);

    REGISTER_S:
    ENTITY work.register_edge_falling
    GENERIC MAP(n => 2*n+1)
    PORT MAP(CLK => CLK, RST => RST, EN => Start, Din => RegisterSDin, Dout => RegisterSDout);

    REGISTER_P:
    ENTITY work.register_edge_falling
    GENERIC MAP(n => 2*n+1)
    PORT MAP(CLK => CLK, RST => RST, EN => RegisterPEN, Din => RegisterPDin, Dout => RegisterPDout);

    --
    -- Booth Operands (A/S) Mux.
    --
    BoothOperand    <=  RegisterADout               WHEN RegisterPDout(0)='1'       ELSE
                        RegisterSDout;

    --
    -- P DataIn 4-1 Mux.
    --
    RegisterPDin    <=  TmpWindowCellShiftedLeft    WHEN Start='1' AND Instr='0'    ELSE
                        NewBoothP;

END ARCHITECTURE;
