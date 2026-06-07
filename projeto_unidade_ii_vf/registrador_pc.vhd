--#-----------------------------------------------------------------------------------
--# 					REGISTRADOR PC
--#-----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity registrador_pc is
generic(
    total_instrucoes : integer := 4
);
port(
    clk, clr_pc, ld_pc : in std_logic;
    pc_in  : in integer range 0 to total_instrucoes - 1;
    pc_out : out integer range 0 to total_instrucoes - 1
);
end registrador_pc;

architecture comportamento of registrador_pc is
begin
    process(clk)
    begin
        -- Considerar apenas a borda de subida do clock
        if rising_edge(clk) then
            if clr_pc = '1' then
                pc_out <= 0;          -- Zera o PC se o controlador mandar
            elsif ld_pc = '1' then
                pc_out <= pc_in;      -- Carrega o próximo valor do PC
            end if;
        end if;
    end process;
end comportamento;