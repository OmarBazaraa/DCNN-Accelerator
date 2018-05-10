LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY flip_flop_falling IS
    PORT(
        CLK, RST        : IN  STD_LOGIC;
        Din             : IN  STD_LOGIC;
        Dout            : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE arch_flip_flop_falling OF flip_flop_falling IS
BEGIN

    PROCESS(CLK, RST)
    BEGIN
        IF RST='1' THEN
            Dout <= '0';
        ELSIF FALLING_EDGE(CLK) THEN
            Dout <= Din;
        END IF;
    END PROCESS;
END ARCHITECTURE;