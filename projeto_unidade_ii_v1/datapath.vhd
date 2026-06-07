--#-----------------------------------------------------------------------------------
--# 					CÓDIGO DO DATAPATH
--#-----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath is
-- declaração da memória de instruções:
generic(
	total_instrucoes : integer := 4; -- defini o total de instruções de N bits que serão armazenadas.
	tamanho_instrucao : integer := 8 -- defini o tamanho de bits de cada instrução.
);
port(
	-- declaração das portas gerais de entrada e saída do RTL(1 bit):
	rsr, clk : in std_logic;
	
	-- declaração da porta no qual entra o vetor de instruções do RTL.
	-- O tamanho total do barramento será automaticamente (total_instrucoes * tamanho_instrucao):
	vetor_instrucoes : in std_logic_vector((total_instrucoes*tamanho_instrucao)-1 downto 0);
	
	-- declaração de entradas e saídas dos sinais intermediários(controlador e datapath):
		-- declaração dos sinais do reistrador de PC
		ld_pc, clr_pc : in std_logic;
		
		-- declaração dos sinais do registrador de instruções
		ld_instruc, clr_instruc : in std_logic;
		
		-- declaração do sinal de saída do opcode:
		opcode : out std_logic_vector(1 downto 0)

);
end datapath;


architecture sistema of datapath is
-- declaração do component dos
-- 1. Registrador do PC:
-- Precisa do clock, dos controles (clear e load) e de um pino de entrada e saída. 
component registrador_pc is
    generic( total_instrucoes : integer );
    port(
        clk, clr_pc, ld_pc : in std_logic;
        pc_in  : in integer range 0 to total_instrucoes - 1;
        pc_out : out integer range 0 to total_instrucoes - 1
    );
end component;

-- 2. Registrador de Instrução (IR):
-- Mesma lógica do PC, mas guarda 8 bits (o tamanho da instrução).
component registrador_instruc is
    generic( tamanho_instrucao : integer );
    port(
        clk, clr_instruc, ld_instruc : in std_logic;
        instruc_in  : in std_logic_vector(tamanho_instrucao - 1 downto 0);
        instruc_out : out std_logic_vector(tamanho_instrucao - 1 downto 0)
    );
end component;

-- 3. Somador do PC:
-- É um circuito combinacional. Só entra o PC atual e sai o PC + 1.
component somador_pc is
    generic( total_instrucoes : integer );
    port(
        pc_in  : in integer range 0 to total_instrucoes - 1;
        pc_out : out integer range 0 to total_instrucoes - 1
    );
end component;


-- declaração dos sinais internos do datapath:
signal pc_atual_fio      : integer range 0 to total_instrucoes - 1;
signal pc_proximo_fio    : integer range 0 to total_instrucoes - 1;
 
signal instrucao_rom_fio : std_logic_vector(tamanho_instrucao - 1 downto 0);
signal instrucao_ir_fio  : std_logic_vector(tamanho_instrucao - 1 downto 0);

begin
-- 1. Instanciando o Registrador do PC
    -- Liga a saída do somador na entrada do PC, e a saída do PC no pc_atual_fio
    U1_PC: registrador_pc
        generic map (total_instrucoes => total_instrucoes)
        port map (
            clk    => clk,
            clr_pc => clr_pc,
            ld_pc  => ld_pc,
            pc_in  => pc_proximo_fio,
            pc_out => pc_atual_fio
        );
		  
-- 2. Instanciando o Somador
    -- Pega o PC atual, soma 1, e joga no pc_proximo_fio
    U2_SOMADOR: somador_pc
        generic map (total_instrucoes => total_instrucoes)
        port map (
            pc_in  => pc_atual_fio,
            pc_out => pc_proximo_fio
        );

-- 3. Instanciando o Registrador de Instrução (IR)
    -- Pega a instrução extraída da ROM e guarda no IR quando o load for acionado
    U3_IR: registrador_instruc
        generic map (tamanho_instrucao => tamanho_instrucao)
        port map (
            clk         => clk,
            clr_instruc => clr_instruc,
            ld_instruc  => ld_instruc,
            instruc_in  => instrucao_rom_fio,
            instruc_out => instrucao_ir_fio
        );
		  
-- Esta linha extrai exatamente a fatia de 8 bits baseada no número do PC.
    -- Ex: Se o PC = 0, ele pega os bits de 7 até 0.
    --     Se o PC = 1, ele pega os bits de 15 até 8, e assim por diante.
    instrucao_rom_fio <= vetor_instrucoes(((pc_atual_fio + 1) * tamanho_instrucao) - 1 downto pc_atual_fio * tamanho_instrucao);
    
    -- O Datapath pega os 2 bits finais da instrução salva no IR e manda para fora
    -- para o Controlador decidir o que fazer no estado de Execução.
    opcode <= instrucao_ir_fio(1 downto 0);

end sistema;