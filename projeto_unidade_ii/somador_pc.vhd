--#-----------------------------------------------------------------------------------
--# 					SOMADOR
--#-----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity somador_pc is
generic(
    total_instrucoes : integer := 4
);
port(
    pc_in  : in integer range 0 to total_instrucoes - 1;
    pc_out : out integer range 0 to total_instrucoes - 1
);
end somador_pc;

architecture comportamento of somador_pc is
begin
    process(pc_in)
    begin
        -- Se o PC estiver na última posição possível, reseta para 0 para não dar erro
        if pc_in = total_instrucoes - 1 then
            pc_out <= 0;
        else
            pc_out <= pc_in + 1; -- Caso contrário, apenas soma 1
        end if;
    end process;
end comportamento;
