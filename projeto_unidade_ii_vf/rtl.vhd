--#-----------------------------------------------------------------------------------
--# UNIVERSIDADE FEDERAL DO RIO GRANDE DO NORTE
--# SISTEMAS DIGITAIS
--# Descrição: controlador básico de um processador de instruções genérico. A hierarquia
--# dos arquivos: rtl -> controlador -> datapath -> componentes gerais(registrador_pc, registrador_instruc, somador_pc, memoria_instrucao);
--# Autor: Lucas Tomaz de Moura
--#-----------------------------------------------------------------------------------

--#-----------------------------------------------------------------------------------
--# 					CÓDIGO DA MÁQUINA RTL (Top-Level)
--#-----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity rtl is
-- declaração da memória de instruções:
generic(
	total_instrucoes  : integer := 4; -- defini o total de instruções de N bits que serão armazenadas.
	tamanho_instrucao : integer := 8  -- defini o tamanho de bits de cada instrução.
);
port(
	-- declaração das portas gerais de entrada e saída do RTL (1 bit):
	rsr, clk : in std_logic;
	
	-- declaração de variável para constar na placa qual estado a FSM está:
	CODestado : out std_logic_vector(6 downto 0)
);
end rtl;

architecture sistema of rtl is

-- 1. DECLARAÇÃO DOS COMPONENTES 
	-- Componente do Datapath
	component datapath is
	generic(
		total_instrucoes  : integer;
		tamanho_instrucao : integer
	);
	port(
		rsr, clk                : in std_logic;
		ld_pc, clr_pc           : in std_logic;
		ld_instruc, clr_instruc : in std_logic;
		opcode                  : out std_logic_vector(1 downto 0)
	);
	end component;

	-- Componente do Controlador
	component controlador is
	port(
		rst, clk                : in std_logic;	
		CODestado               : out std_logic_vector(6 downto 0);
		ld_pc, clr_pc           : out std_logic;
		ld_instruc, clr_instruc : out std_logic;
		opcode                  : in std_logic_vector(1 downto 0)
	);
	end component;


-- 2. SINAIS INTERNOS (Os fios que ligam os blocos)
	signal fio_ld_pc, fio_clr_pc           : std_logic;
	signal fio_ld_instruc, fio_clr_instruc : std_logic;
	signal fio_opcode                      : std_logic_vector(1 downto 0);
	
	--sinais internos para uso na placa, considerando o comportamento dos botões da placa.
	signal rst_ativo  : std_logic;
	signal clk_manual : std_logic;

begin
	-- estado do botão da placa invertido(pressionado = '0' e solto = '1')
	rst_ativo  <= not rsr;
	clk_manual <= not clk;

-- 3. INSTANCIAÇÃO (Conectando os fios nos componentes)
	
	-- Instanciando e conectando o Datapath
	U1_DATAPATH: datapath
		generic map(
			total_instrucoes  => total_instrucoes,
			tamanho_instrucao => tamanho_instrucao
		)
		port map(
			rsr              => rst_ativo, -- rst
			clk              => clk_manual, -- clk
			
			-- Conectando os sinais de controle vindo do controlador
			ld_pc            => fio_ld_pc,
			clr_pc           => fio_clr_pc,
			ld_instruc       => fio_ld_instruc,
			clr_instruc      => fio_clr_instruc,
			
			-- Enviando o opcode extraído para o controlador
			opcode           => fio_opcode
		);

	-- Instanciando e conectando o Controlador
	U2_CONTROLADOR: controlador
		port map(
			rst         => rst_ativo,         -- Conecta o reset global 'rsr' no 'rst' do controlador
			clk         => clk_manual,         -- Conecta o clock global
			CODestado   => CODestado,   -- Envia o sinal dos LEDs direto para a saída da placa
			
			-- Recebendo os sinais de controle gerados pela FSM
			ld_pc       => fio_ld_pc,
			clr_pc      => fio_clr_pc,
			ld_instruc  => fio_ld_instruc,
			clr_instruc => fio_clr_instruc,
			
			-- Lendo o opcode que veio do Datapath
			opcode      => fio_opcode
		);
end sistema;