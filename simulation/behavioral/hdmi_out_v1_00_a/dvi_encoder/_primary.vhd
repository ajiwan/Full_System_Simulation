library verilog;
use verilog.vl_types.all;
entity dvi_encoder is
    port(
        clkin           : in     vl_logic;
        clkx2in         : in     vl_logic;
        rstin           : in     vl_logic;
        blue_din        : in     vl_logic_vector(7 downto 0);
        green_din       : in     vl_logic_vector(7 downto 0);
        red_din         : in     vl_logic_vector(7 downto 0);
        hsync           : in     vl_logic;
        vsync           : in     vl_logic;
        de              : in     vl_logic;
        tmds_data0      : out    vl_logic_vector(4 downto 0);
        tmds_data1      : out    vl_logic_vector(4 downto 0);
        tmds_data2      : out    vl_logic_vector(4 downto 0)
    );
end dvi_encoder;
