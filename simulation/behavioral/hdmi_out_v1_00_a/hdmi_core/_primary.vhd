library verilog;
use verilog.vl_types.all;
entity hdmi_core is
    generic(
        NUM_BYTES_PER_PIXEL: integer := 4;
        HRES            : integer := 1280
    );
    port(
        clock           : in     vl_logic;
        start           : in     vl_logic;
        reset           : in     vl_logic;
        color           : in     vl_logic_vector(31 downto 0);
        red             : out    vl_logic_vector(7 downto 0);
        green           : out    vl_logic_vector(7 downto 0);
        blue            : out    vl_logic_vector(7 downto 0);
        hsync           : out    vl_logic;
        vsync           : out    vl_logic;
        ve              : out    vl_logic;
        read_fifo       : out    vl_logic;
        read_go         : out    vl_logic;
        read_next_line  : out    vl_logic;
        read_next_chunk : out    vl_logic;
        read_done       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NUM_BYTES_PER_PIXEL : constant is 1;
    attribute mti_svvh_generic_type of HRES : constant is 1;
end hdmi_core;
