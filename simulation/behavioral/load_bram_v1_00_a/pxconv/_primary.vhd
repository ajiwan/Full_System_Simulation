library verilog;
use verilog.vl_types.all;
entity pxconv is
    generic(
        VRES            : integer := 480;
        HRES            : integer := 640;
        BURST           : integer := 128
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        axi_to_pxconv_data: in     vl_logic_vector(15 downto 0);
        axi_to_pxconv_valid: in     vl_logic;
        pixel_ack       : in     vl_logic;
        pxconv_to_axi_ready_to_rd: out    vl_logic;
        pxconv_to_axi_mst_length: out    vl_logic_vector(11 downto 0);
        pxconv_to_bram_we: out    vl_logic_vector(0 downto 0);
        pxconv_to_bram_data: out    vl_logic_vector(31 downto 0);
        pxconv_to_bram_wr_en: out    vl_logic;
        pxconv_to_bram_addr: out    vl_logic_vector(31 downto 0);
        busy            : out    vl_logic;
        wnd_in_bram     : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of VRES : constant is 1;
    attribute mti_svvh_generic_type of HRES : constant is 1;
    attribute mti_svvh_generic_type of BURST : constant is 1;
end pxconv;
