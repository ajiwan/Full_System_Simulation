library verilog;
use verilog.vl_types.all;
entity convert_30to15_fifo is
    generic(
        ADDR0           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        ADDR1           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        ADDR2           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        ADDR3           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        ADDR4           : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi0);
        ADDR5           : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi1);
        ADDR6           : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi0);
        ADDR7           : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1);
        ADDR8           : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi0);
        ADDR9           : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi1);
        ADDR10          : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi1, Hi0);
        ADDR11          : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi1, Hi1);
        ADDR12          : vl_logic_vector(0 to 3) := (Hi1, Hi1, Hi0, Hi0);
        ADDR13          : vl_logic_vector(0 to 3) := (Hi1, Hi1, Hi0, Hi1);
        ADDR14          : vl_logic_vector(0 to 3) := (Hi1, Hi1, Hi1, Hi0);
        ADDR15          : vl_logic_vector(0 to 3) := (Hi1, Hi1, Hi1, Hi1)
    );
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        clkx2           : in     vl_logic;
        datain          : in     vl_logic_vector(29 downto 0);
        dataout         : out    vl_logic_vector(14 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADDR0 : constant is 1;
    attribute mti_svvh_generic_type of ADDR1 : constant is 1;
    attribute mti_svvh_generic_type of ADDR2 : constant is 1;
    attribute mti_svvh_generic_type of ADDR3 : constant is 1;
    attribute mti_svvh_generic_type of ADDR4 : constant is 1;
    attribute mti_svvh_generic_type of ADDR5 : constant is 1;
    attribute mti_svvh_generic_type of ADDR6 : constant is 1;
    attribute mti_svvh_generic_type of ADDR7 : constant is 1;
    attribute mti_svvh_generic_type of ADDR8 : constant is 1;
    attribute mti_svvh_generic_type of ADDR9 : constant is 1;
    attribute mti_svvh_generic_type of ADDR10 : constant is 1;
    attribute mti_svvh_generic_type of ADDR11 : constant is 1;
    attribute mti_svvh_generic_type of ADDR12 : constant is 1;
    attribute mti_svvh_generic_type of ADDR13 : constant is 1;
    attribute mti_svvh_generic_type of ADDR14 : constant is 1;
    attribute mti_svvh_generic_type of ADDR15 : constant is 1;
end convert_30to15_fifo;
