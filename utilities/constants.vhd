LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

PACKAGE utilities IS
    --
    --Registers
    --
    CONSTANT DATA_WIDTH                 : INTEGER := 8;

    --
    --RAM
    --
    CONSTANT RAM_ADDR_WIDTH             : INTEGER := 18;
    CONSTANT RAM_HEIGHT                 : INTEGER := (2**RAM_ADDR_WIDTH);
    CONSTANT RAM_WORD_WIDTH             : INTEGER := DATA_WIDTH;
    CONSTANT RAM_DATA_OUT_WIDTH         : INTEGER := DATA_WIDTH * 5;

    --
    --Cache
    --
    CONSTANT CACHE_DATA_WIDTH           : INTEGER := DATA_WIDTH * 5;

END PACKAGE;