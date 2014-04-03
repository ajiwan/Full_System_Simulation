library verilog;
use verilog.vl_types.all;
entity dvi_out_native is
    port(
        reset           : in     vl_logic;
        pll_lckd        : in     vl_logic;
        clkin           : in     vl_logic;
        clkx2in         : in     vl_logic;
        clkx10in        : in     vl_logic;
        blue_din        : in     vl_logic_vector(7 downto 0);
        green_din       : in     vl_logic_vector(7 downto 0);
        red_din         : in     vl_logic_vector(7 downto 0);
        hsync           : in     vl_logic;
        vsync           : in     vl_logic;
        de              : in     vl_logic;
        TMDS            : out    vl_logic_vector(3 downto 0);
        TMDSB           : out    vl_logic_vector(3 downto 0)
    );
end dvi_out_native;
