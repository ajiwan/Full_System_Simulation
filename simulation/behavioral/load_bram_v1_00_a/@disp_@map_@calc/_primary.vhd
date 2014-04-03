library verilog;
use verilog.vl_types.all;
entity Disp_Map_Calc is
    generic(
        NUM_OF_ROWS_IN_BRAM: integer := 8;
        NUM_OF_WIN      : integer := 64;
        VRES            : integer := 480;
        HRES            : integer := 640;
        BRAM_DATA_WIDTH : integer := 16;
        BRAM_ADDR_WIDTH : integer := 13;
        BRAM_WE_WIDTH   : integer := 1;
        window          : integer := 7
    );
    port(
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        en_search       : out    vl_logic;
        we_search       : out    vl_logic_vector;
        addr_search     : out    vl_logic_vector;
        dout_search     : in     vl_logic_vector;
        en_ref          : out    vl_logic;
        we_ref          : out    vl_logic_vector;
        addr_ref        : out    vl_logic_vector;
        dout_ref        : in     vl_logic_vector;
        go              : in     vl_logic;
        busy_ref        : in     vl_logic;
        busy_search     : in     vl_logic;
        finished_row    : out    vl_logic;
        din_fifo        : out    vl_logic_vector(31 downto 0);
        wr_en_fifo      : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NUM_OF_ROWS_IN_BRAM : constant is 1;
    attribute mti_svvh_generic_type of NUM_OF_WIN : constant is 1;
    attribute mti_svvh_generic_type of VRES : constant is 1;
    attribute mti_svvh_generic_type of HRES : constant is 1;
    attribute mti_svvh_generic_type of BRAM_DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of BRAM_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of BRAM_WE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of window : constant is 1;
end Disp_Map_Calc;
