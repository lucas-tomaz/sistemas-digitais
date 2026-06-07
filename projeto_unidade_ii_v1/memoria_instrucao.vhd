--#-----------------------------------------------------------------------------------
--# 					MEMÓRIA DE INSTRUÇÕES (ROM)
--#-----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity memoria_instrucao is
generic(
    total_instrucoes  : integer := 4;
    tamanho_instrucao : integer := 8
);
port(
    endereco  : in integer range 0 to total_instrucoes - 1;
    instrucao : out std_logic_vector(tamanho_instrucao - 1 downto 0)
);
end memoria_instrucao;

architecture comportamento of memoria_instrucao is

    -- 1. formato da nossa memória (um array de vetores)
    type tipo_memoria is array (0 to total_instrucoes - 1) of std_logic_vector(tamanho_instrucao - 1 downto 0);

    -- 2. Simulação de lista de instruções em uma ROM
    constant ROM_PROGRAMA : tipo_memoria := (
        0 => "00000000", -- Instrução na posição 0 (Opcode "00")
        1 => "00000101", -- Instrução na posição 1 (Opcode "01")
        2 => "00001010", -- Instrução na posição 2 (Opcode "10")
        3 => "00001111"  -- Instrução na posição 3 (Opcode "11")
    );

begin

    -- O código vai ler o valor do endereço e extrai a instrução na saída
    instrucao <= ROM_PROGRAMA(endereco);

end comportamento;