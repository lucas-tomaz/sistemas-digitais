library verilog;
use verilog.vl_types.all;
entity rtl is
    port(
        rsr             : in     vl_logic;
        clk             : in     vl_logic;
        CODestado       : out    vl_logic_vector(6 downto 0)
    );
end rtl;
