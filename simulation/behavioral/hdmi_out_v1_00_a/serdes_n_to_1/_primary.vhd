library verilog;
use verilog.vl_types.all;
entity serdes_n_to_1 is
    generic(
        SF              : integer := 8
    );
    port(
        ioclk           : in     vl_logic;
        serdesstrobe    : in     vl_logic;
        reset           : in     vl_logic;
        gclk            : in     vl_logic;
        datain          : in     vl_logic_vector;
        iob_data_out    : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SF : constant is 2;
end serdes_n_to_1;
