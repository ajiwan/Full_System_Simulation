library verilog;
use verilog.vl_types.all;
entity DRAM16XN is
    generic(
        data_width      : integer := 20
    );
    port(
        DATA_IN         : in     vl_logic_vector;
        ADDRESS         : in     vl_logic_vector(3 downto 0);
        ADDRESS_DP      : in     vl_logic_vector(3 downto 0);
        WRITE_EN        : in     vl_logic;
        CLK             : in     vl_logic;
        O_DATA_OUT      : out    vl_logic_vector;
        O_DATA_OUT_DP   : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of data_width : constant is 1;
end DRAM16XN;
