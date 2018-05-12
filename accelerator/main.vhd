LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.COMMON.ALL;

ENTITY main IS
    PORT(
        CLK, RST            : IN  STD_LOGIC;
        Start               : IN  STD_LOGIC;
        FilterSize          : IN  STD_LOGIC;    -- 0: 3x3, 1: 5x5
        Stride              : IN  STD_LOGIC;    -- Step = Stride + 1
        Instr               : IN  STD_LOGIC;    -- 0: Convolution, 1: Pooling
        Done                : OUT STD_LOGIC     -- Finish the whole operation
    );
END ENTITY;

ARCHITECTURE arch_main OF main IS

    SIGNAL MemRD            : STD_LOGIC;
    SIGNAL MemWR            : STD_LOGIC;
    SIGNAL MemAddr          : STD_LOGIC_VECTOR(17 DOWNTO 0);
    SIGNAL MemDin           : STD_LOGIC_VECTOR( 7 DOWNTO 0);
    SIGNAL MemDout          : STD_LOGIC_VECTOR(39 DOWNTO 0);

BEGIN

    ACC:
    ENTITY work.accelerator
    PORT MAP(
        CLK                 => CLK,
        RST                 => RST,
        Start               => Start,
        FilterSize          => FilterSize,
        Stride              => Stride,
        Instr               => Instr,
        Done                => Done,

        MemRD               => MemRD,
        MemWR               => MemWR,
        MemAddr             => MemAddr,
        MemDin              => MemDin,
        MemDout             => MemDout
    );

    RAM:
    ENTITY work.RAM
    GENERIC MAP(n => 8, m => 18)
    PORT MAP(
        CLK                 => CLK,
        WR                  => MemWR,
        Address             => MemAddr,
        Din                 => MemDin,
        Dout                => MemDout
    );

END ARCHITECTURE;
