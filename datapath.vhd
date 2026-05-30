LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY datapath IS

-- Nesse projeto não serão usados os sinais de comparação "maior que" e "Igual a", mas eles estão contidos no datapath apenas por existirem no comparador de magnitude.

    PORT (
			clk: IN std_logic;
			gt4,eq4,lt4: OUT std_logic;
			gt2,eq2,lt2: OUT std_logic;
			clr_c1,ld_c1: IN std_logic;
			clr_c2,ld_c2: IN std_logic;
			clr_tempo, ld_tempo: IN std_logic;
			tempo_out  : OUT  std_logic_vector(11 downto 0)
    );

END datapath;

ARCHITECTURE hardware OF datapath IS


component incrementador12 IS

    PORT (
        A : IN  std_logic_vector(11 downto 0);
        S : OUT std_logic_vector(11 downto 0)
    );

END component;

component comparator12 IS

    PORT (
        A, B   : IN  std_logic_vector(11 downto 0);

        A_gt_B : OUT std_logic;
        A_eq_B : OUT std_logic;
        A_lt_B : OUT std_logic
    );

END component;

component reg12 IS

    PORT (

        clk : IN std_logic;

        clr : IN std_logic;

        ld  : IN std_logic;

        D   : IN  std_logic_vector(11 downto 0);

        Q   : OUT std_logic_vector(11 downto 0)

    );

END component;


signal c1_in,c1_out,c2_in,c2_out: std_logic_vector(11 downto 0);

BEGIN

comp4000: comparator12 port map (c1_out,"111110100000",gt4,eq4,lt4);
comp2000: comparator12 port map (c2_out, "011111010000",gt2,eq2,lt2);
tempo: reg12 port map (clk, clr_tempo,ld_tempo,c2_out,tempo_out);
c1: reg12 port map (clk, clr_c1,ld_c1,c1_in,c1_out);
c2: reg12 port map (clk, clr_c2,ld_c2,c2_in,c2_out);
inc_c1: incrementador12 port map (c1_out,c1_in);
inc_c2: incrementador12 port map (c2_out,c2_in);

END hardware;