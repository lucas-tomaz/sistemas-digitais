--#-----------------------------------------------------------------------------------
--# 					REGISTRADOR INSTRUÇÕES
--#-----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity registrador_instruc is
generic(
    tamanho_instrucao : integer := 8
);
port(
    clk, clr_instruc, ld_instruc : in std_logic;
    instruc_in  : in std_logic_vector(tamanho_instrucao - 1 downto 0);
    instruc_out : out std_logic_vector(tamanho_instrucao - 1 downto 0)
);
end registrador_instruc;

architecture comportamento of registrador_instruc is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if clr_instruc = '1' then
                -- preenche todos os bits do vetor com '0'
                instruc_out <= (others => '0'); 
            elsif ld_instruc = '1' then
                instruc_out <= instruc_in;
            end if;
        end if;
    end process;
end comportamento;