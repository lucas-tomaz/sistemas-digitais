LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY rtl IS

--ena é o LED que serve para o usuário saber que já pode apertar o botão de reação, o mais rápido possível
--rapido será o LED que indica que o usuário conseguiu apertar o botão de reação antes de 2 segundos
--lento sera o LED que indica que o usuário não conseguiu apertar o botão de reação antes de 2 segundos
--tempo_out é a variável que vai guardar o valor (em milissegundos) do tempo de reação (existe um erro de 2 milissegundos para mais, devido a implementação da máquina de estados

    PORT (
	 b,rst,clk : in std_logic;	
	 tempo_out: out std_logic_vector(11 downto 0);
	 ena, rapido, lento : out std_logic;
	 CODestado : out std_logic_vector(5 downto 0)
    );

END rtl;

ARCHITECTURE hardware_rtl OF rtl IS


component datapath IS

    PORT (
			clk: IN std_logic;
			gt4,eq4,lt4: OUT std_logic;
			gt2,eq2,lt2: OUT std_logic;
			clr_c1,ld_c1: IN std_logic;
			clr_c2,ld_c2: IN std_logic;
			clr_tempo, ld_tempo: IN std_logic;
			tempo_out  : OUT  std_logic_vector(11 downto 0)
    );


end component;

component tempo is
	port(
		--tempo: out std_logic_vector(11 downto 0)
			
		b,rst,clk : in std_logic;		
		
		c1_lt_4000, c2_lt_2000 : in std_logic;
		
		clr_c1,clr_c2,clr_tempo,ld_c1,ld_c2,ld_tempo: out std_logic;
		
		ena,lento,rapido: out std_logic;
		
		CODestado : out std_logic_vector(5 downto 0)		

		
	);
end component;


	signal c1_lt_4000, c2_lt_2000,clr_c1,clr_c2,clr_tempo,ld_c1,ld_c2,ld_tempo: std_logic;
	signal gt_4,eq_4,lt_4,gt_2,eq_2,lt_2,c1_in,c1_out,c2_in,c2_out: std_logic;
	signal tempo2:std_logic_vector(11 downto 0);

BEGIN

Ctrol: tempo port map (b,rst,clk,c1_lt_4000, c2_lt_2000,clr_c1,clr_c2,clr_tempo,ld_c1,ld_c2,ld_tempo,ena,lento,rapido,CODestado);
DP: datapath port map (clk,gt_4,eq_4,c1_lt_4000,gt_2,eq_2,c2_lt_2000,clr_c1,ld_c1,clr_c2,ld_c2,clr_tempo,ld_tempo,tempo_out);

end hardware_rtl;