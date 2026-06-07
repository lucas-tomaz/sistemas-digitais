LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY reg12 IS

    PORT (

        clk : IN std_logic;

        clr : IN std_logic;

        ld  : IN std_logic;

        D   : IN  std_logic_vector(11 downto 0);

        Q   : OUT std_logic_vector(11 downto 0)

    );

END reg12;

ARCHITECTURE behavior OF reg12 IS

    SIGNAL reg : std_logic_vector(11 downto 0);

BEGIN

    PROCESS(clk)
    BEGIN

        IF rising_edge(clk) THEN

            -- clear síncrono
            IF clr = '1' THEN

                reg <= (OTHERS => '0');

            -- load
            ELSIF ld = '1' THEN

                reg <= D;

            END IF;

        END IF;

    END PROCESS;

    Q <= reg;

END behavior;