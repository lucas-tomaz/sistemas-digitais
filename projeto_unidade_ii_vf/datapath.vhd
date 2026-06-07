--#-----------------------------------------------------------------------------------
--# 					CÓDIGO DO DATAPATH
--#-----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath is
generic(
	total_instrucoes : integer := 4; -- defini o total de instruções de N bits que serão armazenadas.
	tamanho_instrucao : integer := 8 -- defini o tamanho de bits de cada instrução.
);
port(
	-- declaração das portas gerais de entrada e saída do RTL(1 bit):
	rsr, clk : in std_logic;
	
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

-- DECLARAÇÃO DOS COMPONENTES

-- 1. Registrador do PC:
component registrador_pc is
    generic( total_instrucoes : integer );
    port(
        clk, clr_pc, ld_pc : in std_logic;
        pc_in  : in integer range 0 to total_instrucoes - 1;
        pc_out : out integer range 0 to total_instrucoes - 1
    );
end component;

-- 2. Registrador de Instrução (IR):
component registrador_instruc is
    generic( tamanho_instrucao : integer );
    port(
        clk, clr_instruc, ld_instruc : in std_logic;
        instruc_in  : in std_logic_vector(tamanho_instrucao - 1 downto 0);
        instruc_out : out std_logic_vector(tamanho_instrucao - 1 downto 0)
    );
end component;

-- 3. Somador do PC:
component somador_pc is
    generic( total_instrucoes : integer );
    port(
        pc_in  : in integer range 0 to total_instrucoes - 1;
        pc_out : out integer range 0 to total_instrucoes - 1
    );
end component;

-- 4. Memória de Instruções (A nova ROM externa):
component memoria_instrucao is
    generic(
        total_instrucoes  : integer;
        tamanho_instrucao : integer
    );
    port(
        endereco  : in integer range 0 to total_instrucoes - 1;
        instrucao : out std_logic_vector(tamanho_instrucao - 1 downto 0)
    );
end component;


-- DECLARAÇÃO DOS SINAIS INTERNOS
signal pc_atual_fio      : integer range 0 to total_instrucoes - 1;
signal pc_proximo_fio    : integer range 0 to total_instrucoes - 1;
 
signal instrucao_rom_fio : std_logic_vector(tamanho_instrucao - 1 downto 0);
signal instrucao_ir_fio  : std_logic_vector(tamanho_instrucao - 1 downto 0);

begin

-- INSTANCIAÇÃO

-- 1. Instanciando o Registrador do PC
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
    U2_SOMADOR: somador_pc
        generic map (total_instrucoes => total_instrucoes)
        port map (
            pc_in  => pc_atual_fio,
            pc_out => pc_proximo_fio
        );

-- 3. Instanciando o Registrador de Instrução (IR)
    U3_IR: registrador_instruc
        generic map (tamanho_instrucao => tamanho_instrucao)
        port map (
            clk         => clk,
            clr_instruc => clr_instruc,
            ld_instruc  => ld_instruc,
            instruc_in  => instrucao_rom_fio,
            instruc_out => instrucao_ir_fio
        );

-- 4. Instanciando a Memória de Instruções (ROM)
    -- O endereço de entrada é o PC atual.
    -- A saída é o fio que vai para a entrada do IR.
    U4_MEMORIA: memoria_instrucao
        generic map (
            total_instrucoes => total_instrucoes,
            tamanho_instrucao => tamanho_instrucao
        )
        port map (
            endereco  => pc_atual_fio,
            instrucao => instrucao_rom_fio
        );
          
    -- O Datapath pega os 2 bits finais da instrução salva no IR e manda para fora
    -- para o Controlador decidir o que fazer no estado de Execução.
    opcode <= instrucao_ir_fio(1 downto 0);

end sistema;