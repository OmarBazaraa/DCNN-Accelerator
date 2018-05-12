LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.COMMON.ALL;

ENTITY accelerator IS
    PORT(
        CLK, RST            : IN  STD_LOGIC;
        Start               : IN  STD_LOGIC;
        FilterSize          : IN  STD_LOGIC;    -- 0: 3x3, 1: 5x5
        Stride              : IN  STD_LOGIC;    -- Step = Stride + 1
        Instr               : IN  STD_LOGIC;    -- 0: Convolution, 1: Pooling
        Done                : OUT STD_LOGIC;    -- Finish the whole operation

        MemRD               : OUT STD_LOGIC;
        MemWR               : OUT STD_LOGIC;
        MemAddr             : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
        MemDin              : OUT STD_LOGIC_VECTOR( 7 DOWNTO 0);
        MemDout             : IN  STD_LOGIC_VECTOR(39 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_accelerator OF accelerator IS

    SIGNAL FirstCycle       : STD_LOGIC;

    SIGNAL CacheRST         : STD_LOGIC;

    SIGNAL CacheFilterWR    : STD_LOGIC;
    SIGNAL CacheWindowWR    : STD_LOGIC;

    SIGNAL CacheFilter      : MATRIX_BYTE(0 TO 4, 0 TO 4);
    SIGNAL CacheWindow      : MATRIX_BYTE(0 TO 4, 0 TO 4);

    SIGNAL Calculating      : STD_LOGIC;
    SIGNAL CalcStarted      : STD_LOGIC;
    SIGNAL CalcStartRST     : STD_LOGIC;
    SIGNAL AccStartCalc     : STD_LOGIC;
    SIGNAL AccFinishCalc    : STD_LOGIC;
    SIGNAL AccResult        : STD_LOGIC_VECTOR( 7 DOWNTO 0);

BEGIN

    --===================================================================================
    --
    -- Controller
    --

    CONTROLLER:
    ENTITY work.controller
    PORT MAP(
        CLK                 => CLK,
        RST                 => RST,
        Start               => Start,
        FilterSize          => FilterSize,
        Stride              => Stride,
        Instr               => Instr,
        
        CalcFinished        => AccFinishCalc,
        Calc                => Calculating,

        MemRD               => MemRD,
        MemWR               => MemWR,
        MemAddr             => MemAddr,

        CacheFilterWR       => CacheFilterWR,
        CacheWindowWR       => CacheWindowWR,

        FirstCycle          => FirstCycle,
        Done                => Done
    );

    --===================================================================================
    --
    -- Accelerator
    --

    CalcStartRST    <= RST OR CalcStarted;

    CALC_FLIP_FLOP_1:
    ENTITY work.flip_flop_rising
    PORT MAP(CLK => Calculating, RST => CalcStartRST, Din => '1', Dout => AccStartCalc);

    CALC_FLIP_FLOP_2:
    ENTITY work.flip_flop_falling
    PORT MAP(CLK => CLK, RST => RST, Din => AccStartCalc, Dout => CalcStarted);

    CALCULATOR:
    ENTITY work.calculator
    PORT MAP(
        CLK                 => CLK,
        RST                 => RST,
        Start               => AccStartCalc,
        FilterSize          => FilterSize,
        Instr               => Instr,

        FilterDin           => CacheFilter,
        WindowDin           => CacheWindow,

        Done                => AccFinishCalc,
        Result              => AccResult
    );

    --===================================================================================
    --
    -- RAM & Cache
    --

    MemDin      <=  AccResult;
    CacheRST    <= RST OR FirstCycle;

    CACHE:
    ENTITY work.cache
    PORT MAP(
        CLK                 => CLK,
        RST                 => CacheRST,

        FilterSize          => FilterSize,
        FilterWR            => CacheFilterWR,
        WindowWR            => CacheWindowWR,
        Din                 => MemDout,

        FilterDout          => CacheFilter,
        WindowDout          => CacheWindow
    );

END ARCHITECTURE;
