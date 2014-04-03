library verilog;
use verilog.vl_types.all;
entity fill_fifo_fsm is
    generic(
        NUM_BYTES_PER_PIXEL: integer := 4;
        \RESET_fill_fifo\: vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        BEGIN_fill_fifo : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        IDLE_fill_fifo  : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        DONE_HALF_fill_fifo: vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        DONE_LINE_fill_fifo: vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        HALF_FIFO       : integer := 256
    );
    port(
        Bus2IP_Clk      : in     vl_logic;
        reset_fill_fifo : in     vl_logic;
        start_fill_fifo : in     vl_logic;
        hsync           : in     vl_logic;
        vsync           : in     vl_logic;
        half_full       : in     vl_logic;
        FRAME_BASE_ADDR : in     vl_logic_vector(31 downto 0);
        LINE_STRIDE     : in     vl_logic_vector(31 downto 0);
        ddr_addr_to_read: out    vl_logic_vector(31 downto 0);
        go_fill_fifo    : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NUM_BYTES_PER_PIXEL : constant is 1;
    attribute mti_svvh_generic_type of \RESET_fill_fifo\ : constant is 1;
    attribute mti_svvh_generic_type of BEGIN_fill_fifo : constant is 1;
    attribute mti_svvh_generic_type of IDLE_fill_fifo : constant is 1;
    attribute mti_svvh_generic_type of DONE_HALF_fill_fifo : constant is 1;
    attribute mti_svvh_generic_type of DONE_LINE_fill_fifo : constant is 1;
    attribute mti_svvh_generic_type of HALF_FIFO : constant is 1;
end fill_fifo_fsm;
