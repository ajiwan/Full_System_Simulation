library verilog;
use verilog.vl_types.all;
entity pulse_gen is
    generic(
        NUM             : integer := 1
    );
    port(
        clk             : in     vl_logic;
        sig_I           : in     vl_logic_vector;
        toggle_O        : out    vl_logic_vector;
        posedge_O       : out    vl_logic_vector;
        negedge_O       : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NUM : constant is 1;
end pulse_gen;
