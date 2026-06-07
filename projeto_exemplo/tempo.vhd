library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tempo is

--Esse é o controlador. Foi acrescentado uma variável "tempo" para teste do seu funcionamento de forma individual. No funcionamento normal do sistema, essa variável não é utilizada.
--A codificação dos estados é feita na contagem one-hot, para melhor visualização
--O clock da máquina PRECISA ser 1kHz para que os temporizadores funcionem da forma correta (contagem em milissegundos)
	port(
		
		--tempo: out std_logic_vector(11 downto 0);
		
		b,rst,clk : in std_logic;		
		
		c1_lt_4000, c2_lt_2000 : in std_logic;
		
		clr_c1,clr_c2,clr_tempo,ld_c1,ld_c2,ld_tempo: out std_logic;
		
		ena,lento,rapido: out std_logic;
		
		CODestado : out std_logic_vector(5 downto 0)
		
		
		
	);
end tempo;

architecture funcionamento of tempo is
		
	type estado is (Initial,Idle,Time10s,React2s,Slow,Quick);
	signal eAtual, eProx: estado;
	
	--signal tempo_c2: std_logic_vector (11 downto 0);

	
begin
	--tempo <= tempo_c2;
	process(clk)	
	begin
		if (clk='1' and clk'event) then
			eAtual <= eProx;
		end if;
	end process;

	process(eAtual)
	begin
	
		case eAtual is
			
			when Initial =>
				eProx <= Idle;

						
			when Idle =>
				if (b = '0') then
					eProx <= Idle;
				elsif (b = '1') then
					eProx <= Time10s;
				end if;
				
				
			when Time10s =>
				if (c1_lt_4000 = '1') then
					eProx <= Time10s;
				elsif (c1_lt_4000 = '0') then
					eProx <= React2s;
				end if;
			

			when React2s =>
				if (c2_lt_2000 = '1' AND b = '0') then
					eProx <= React2s;
				elsif (c2_lt_2000 = '0' AND b = '0') then
					eProx <= Slow;
				else 
					eProx <= Quick;
				end if;

				
			when Slow =>
				if (rst = '1') then
					eProx <= Initial;
				else 
					eProx <= Slow;
				end if;

			
			when Quick =>
				if (rst = '1') then
					eProx <= Initial;
				else 
					eProx <= Quick;
				end if;
				
		end case;			
	end process;
	
	process(clk)
	begin
	
		if (clk='1' and clk'event) then
		
		case eAtual is
			
			when Initial =>
--tempo_c2 <= "000000000000";
				clr_tempo <= '1';
				clr_c1 <= '1';
				clr_c2 <= '1';
				ena <= '0';
				lento <= '0';
				rapido <= '0';
				
				
				
				ld_tempo <= '0';
				ld_c1 <= '0';
				ld_c2 <= '0';
				
				CODestado <= "000001";
			when Idle =>
			
				clr_tempo <= '0';
				clr_c1 <= '0';
				clr_c2 <= '0';
				ena <= '0';
				lento <= '0';
				rapido <= '0';
				
				
				
				ld_tempo <= '0';
				ld_c1 <= '0';
				ld_c2 <= '0';

				CODestado <= "000010";
			when Time10s =>
			
				ld_c1 <= '1';
				
				
				clr_tempo <= '0';
				clr_c1 <= '0';
				clr_c2 <= '0';
				ena <= '0';
				lento <= '0';
				rapido <= '0';
				ld_tempo <= '0';
				ld_c2 <= '0';
	
				CODestado <= "000100";

			when React2s =>
--tempo_c2 <= std_logic_vector(unsigned(tempo_c2) + 1);
				ena <= '1';
				ld_c2 <= '1';
				
				clr_tempo <= '0';
				clr_c1 <= '0';
				clr_c2 <= '0';
				lento <= '0';
				rapido <= '0';
				ld_c1 <= '0';
				ld_tempo <= '0';
				
				CODestado <= "001000";
				
			when Slow =>

				ena <= '1';
				lento <= '1';
				ld_tempo <= '1';
							
				clr_tempo <= '0';
				clr_c1 <= '0';
				clr_c2 <= '0';
				rapido <= '0';
				ld_c1 <= '0';
				ld_c2 <= '0';
				
				CODestado <= "010000";
				
			when Quick =>

				ena <= '1';
				rapido <= '1';
				ld_tempo <= '1';
							
				clr_tempo <= '0';
				clr_c1 <= '0';
				clr_c2 <= '0';
				lento <= '0';
				ld_c1 <= '0';
				ld_c2 <= '0';
				
				CODestado <= "100000";			
		
			
		end case;		
		end if;
	end process;
end funcionamento;