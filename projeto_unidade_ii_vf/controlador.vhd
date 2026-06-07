--#-----------------------------------------------------------------------------------
--# 					CÓDIGO DO CONTROLADOR
--#-----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity controlador is
port(
	-- declaração das entradas do controlador:
	rst,clk : in std_logic;	
	
	-- declaração das saídas do controlador:
	CODestado : out std_logic_vector(6 downto 0);
	
	-- declaração de entradas e saídas dos sinais intermediários(controlador e datapath):
		-- declaração dos sinais do reistrador de PC
		ld_pc, clr_pc : out std_logic;
		
		-- declaração dos sinais do reistrador de instruções
		ld_instruc, clr_instruc : out std_logic;
		
		-- declaração do sinal de saída do opcode:
		opcode : in std_logic_vector(1 downto 0)

);

end controlador;

architecture sistema of controlador is

-- 1. Criação do tipo enumerado com os nomes dos estados:
    type ESTADO is (INICIO, BUSCA, DECODIFICACAO, EXEC_00, EXEC_01, EXEC_10, EXEC_11); 
    
-- 2. Criação dos sinais ("memórias") que vão guardar em que estado estamos:
    signal estado_atual, prox_estado : ESTADO;

begin
    -- PROCESSO 1: ATUALIZAÇÃO DO ESTADO
    process(clk, rst)
    begin
        if rst = '1' then
            estado_atual <= INICIO;      -- Se der reset, volta pro começo
        elsif rising_edge(clk) then
            estado_atual <= prox_estado; -- Na subida do clock, avança.
        end if;
    end process;


    
	-- PROCESSO 2: PRÓXIMO ESTADO E SAÍDAS
		 process(estado_atual, opcode)
		 begin
		 
				-- bloco de inicialização. Esse bloco faz as variáveis serem resetadas
				-- antes de entrar novamente no estado de BUSCA. Nos testes que fiz, 
				-- se tirar ele, a memória de instrução não é salva no registrador.
				
				ld_pc       <= '0';
				clr_pc      <= '0';
				ld_instruc  <= '0';
				clr_instruc <= '0';

			  -- 1) Lógica de transição e ativação de saídas
			  case estado_atual is
					
					when INICIO =>
						 clr_pc <= '1';          -- Zera o PC no início
						 clr_instruc <= '1';     -- Zera o IR no início
						 CODestado <= "0000001";
						 prox_estado <= BUSCA;
						 
					when BUSCA => 
						 ld_pc <= '1';         -- Ativa o registrador para iniciar contagem de pc
						 ld_instruc <= '1';    -- Ativa registrador para guardar as instruções
						 prox_estado <= DECODIFICACAO;
						 CODestado <= "0000010";
						 
					when DECODIFICACAO =>
						CODestado <= "0000100";
						 if opcode = "00" then
							  prox_estado <= EXEC_00;
						 elsif opcode = "01" then
							  prox_estado <= EXEC_01;
						 elsif opcode = "10" then 
							  prox_estado <= EXEC_10;
						 else 
							  prox_estado <= EXEC_11;
						 end if;
						 
					when EXEC_00 =>
						 -- Lógica para acender o LED referente ao opcode 00:
						 CODestado <= "0001000";
						 prox_estado <= BUSCA;
						 
					when EXEC_01 =>
						 -- Lógica para acender o LED referente ao opcode 01:
						 CODestado <= "0010000";
						 prox_estado <= BUSCA;
						 
					when EXEC_10 =>
						 -- Lógica para acender o LED referente ao opcode 10:
						 CODestado <= "0100000";
						 prox_estado <= BUSCA;
						 
					when EXEC_11 =>
						 -- Lógica para acender o LED referente ao opcode 11:
						 CODestado <= "1000000";
						 prox_estado <= BUSCA;
						 
			  end case;
		 end process;
end sistema;