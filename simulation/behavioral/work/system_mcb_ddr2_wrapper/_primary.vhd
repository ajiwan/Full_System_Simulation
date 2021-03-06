library verilog;
use verilog.vl_types.all;
entity system_mcb_ddr2_wrapper is
    port(
        sysclk_2x       : in     vl_logic;
        sysclk_2x_180   : in     vl_logic;
        pll_ce_0        : in     vl_logic;
        pll_ce_90       : in     vl_logic;
        pll_lock        : in     vl_logic;
        pll_lock_bufpll_o: out    vl_logic;
        sysclk_2x_bufpll_o: out    vl_logic;
        sysclk_2x_180_bufpll_o: out    vl_logic;
        pll_ce_0_bufpll_o: out    vl_logic;
        pll_ce_90_bufpll_o: out    vl_logic;
        sys_rst         : in     vl_logic;
        mcbx_dram_addr  : out    vl_logic_vector(12 downto 0);
        mcbx_dram_ba    : out    vl_logic_vector(2 downto 0);
        mcbx_dram_ras_n : out    vl_logic;
        mcbx_dram_cas_n : out    vl_logic;
        mcbx_dram_we_n  : out    vl_logic;
        mcbx_dram_cke   : out    vl_logic;
        mcbx_dram_clk   : out    vl_logic;
        mcbx_dram_clk_n : out    vl_logic;
        mcbx_dram_dq    : inout  vl_logic_vector(15 downto 0);
        mcbx_dram_dqs   : inout  vl_logic;
        mcbx_dram_dqs_n : inout  vl_logic;
        mcbx_dram_udqs  : inout  vl_logic;
        mcbx_dram_udqs_n: inout  vl_logic;
        mcbx_dram_udm   : out    vl_logic;
        mcbx_dram_ldm   : out    vl_logic;
        mcbx_dram_odt   : out    vl_logic;
        mcbx_dram_ddr3_rst: out    vl_logic;
        rzq             : inout  vl_logic;
        zio             : inout  vl_logic;
        ui_clk          : in     vl_logic;
        uo_done_cal     : out    vl_logic;
        s0_axi_aclk     : in     vl_logic;
        s0_axi_aresetn  : in     vl_logic;
        s0_axi_awid     : in     vl_logic_vector(0 downto 0);
        s0_axi_awaddr   : in     vl_logic_vector(31 downto 0);
        s0_axi_awlen    : in     vl_logic_vector(7 downto 0);
        s0_axi_awsize   : in     vl_logic_vector(2 downto 0);
        s0_axi_awburst  : in     vl_logic_vector(1 downto 0);
        s0_axi_awlock   : in     vl_logic_vector(0 downto 0);
        s0_axi_awcache  : in     vl_logic_vector(3 downto 0);
        s0_axi_awprot   : in     vl_logic_vector(2 downto 0);
        s0_axi_awqos    : in     vl_logic_vector(3 downto 0);
        s0_axi_awvalid  : in     vl_logic;
        s0_axi_awready  : out    vl_logic;
        s0_axi_wdata    : in     vl_logic_vector(31 downto 0);
        s0_axi_wstrb    : in     vl_logic_vector(3 downto 0);
        s0_axi_wlast    : in     vl_logic;
        s0_axi_wvalid   : in     vl_logic;
        s0_axi_wready   : out    vl_logic;
        s0_axi_bid      : out    vl_logic_vector(0 downto 0);
        s0_axi_bresp    : out    vl_logic_vector(1 downto 0);
        s0_axi_bvalid   : out    vl_logic;
        s0_axi_bready   : in     vl_logic;
        s0_axi_arid     : in     vl_logic_vector(0 downto 0);
        s0_axi_araddr   : in     vl_logic_vector(31 downto 0);
        s0_axi_arlen    : in     vl_logic_vector(7 downto 0);
        s0_axi_arsize   : in     vl_logic_vector(2 downto 0);
        s0_axi_arburst  : in     vl_logic_vector(1 downto 0);
        s0_axi_arlock   : in     vl_logic_vector(0 downto 0);
        s0_axi_arcache  : in     vl_logic_vector(3 downto 0);
        s0_axi_arprot   : in     vl_logic_vector(2 downto 0);
        s0_axi_arqos    : in     vl_logic_vector(3 downto 0);
        s0_axi_arvalid  : in     vl_logic;
        s0_axi_arready  : out    vl_logic;
        s0_axi_rid      : out    vl_logic_vector(0 downto 0);
        s0_axi_rdata    : out    vl_logic_vector(31 downto 0);
        s0_axi_rresp    : out    vl_logic_vector(1 downto 0);
        s0_axi_rlast    : out    vl_logic;
        s0_axi_rvalid   : out    vl_logic;
        s0_axi_rready   : in     vl_logic;
        s1_axi_aclk     : in     vl_logic;
        s1_axi_aresetn  : in     vl_logic;
        s1_axi_awid     : in     vl_logic_vector(3 downto 0);
        s1_axi_awaddr   : in     vl_logic_vector(31 downto 0);
        s1_axi_awlen    : in     vl_logic_vector(7 downto 0);
        s1_axi_awsize   : in     vl_logic_vector(2 downto 0);
        s1_axi_awburst  : in     vl_logic_vector(1 downto 0);
        s1_axi_awlock   : in     vl_logic_vector(0 downto 0);
        s1_axi_awcache  : in     vl_logic_vector(3 downto 0);
        s1_axi_awprot   : in     vl_logic_vector(2 downto 0);
        s1_axi_awqos    : in     vl_logic_vector(3 downto 0);
        s1_axi_awvalid  : in     vl_logic;
        s1_axi_awready  : out    vl_logic;
        s1_axi_wdata    : in     vl_logic_vector(31 downto 0);
        s1_axi_wstrb    : in     vl_logic_vector(3 downto 0);
        s1_axi_wlast    : in     vl_logic;
        s1_axi_wvalid   : in     vl_logic;
        s1_axi_wready   : out    vl_logic;
        s1_axi_bid      : out    vl_logic_vector(3 downto 0);
        s1_axi_bresp    : out    vl_logic_vector(1 downto 0);
        s1_axi_bvalid   : out    vl_logic;
        s1_axi_bready   : in     vl_logic;
        s1_axi_arid     : in     vl_logic_vector(3 downto 0);
        s1_axi_araddr   : in     vl_logic_vector(31 downto 0);
        s1_axi_arlen    : in     vl_logic_vector(7 downto 0);
        s1_axi_arsize   : in     vl_logic_vector(2 downto 0);
        s1_axi_arburst  : in     vl_logic_vector(1 downto 0);
        s1_axi_arlock   : in     vl_logic_vector(0 downto 0);
        s1_axi_arcache  : in     vl_logic_vector(3 downto 0);
        s1_axi_arprot   : in     vl_logic_vector(2 downto 0);
        s1_axi_arqos    : in     vl_logic_vector(3 downto 0);
        s1_axi_arvalid  : in     vl_logic;
        s1_axi_arready  : out    vl_logic;
        s1_axi_rid      : out    vl_logic_vector(3 downto 0);
        s1_axi_rdata    : out    vl_logic_vector(31 downto 0);
        s1_axi_rresp    : out    vl_logic_vector(1 downto 0);
        s1_axi_rlast    : out    vl_logic;
        s1_axi_rvalid   : out    vl_logic;
        s1_axi_rready   : in     vl_logic;
        s2_axi_aclk     : in     vl_logic;
        s2_axi_aresetn  : in     vl_logic;
        s2_axi_awid     : in     vl_logic_vector(3 downto 0);
        s2_axi_awaddr   : in     vl_logic_vector(31 downto 0);
        s2_axi_awlen    : in     vl_logic_vector(7 downto 0);
        s2_axi_awsize   : in     vl_logic_vector(2 downto 0);
        s2_axi_awburst  : in     vl_logic_vector(1 downto 0);
        s2_axi_awlock   : in     vl_logic_vector(0 downto 0);
        s2_axi_awcache  : in     vl_logic_vector(3 downto 0);
        s2_axi_awprot   : in     vl_logic_vector(2 downto 0);
        s2_axi_awqos    : in     vl_logic_vector(3 downto 0);
        s2_axi_awvalid  : in     vl_logic;
        s2_axi_awready  : out    vl_logic;
        s2_axi_wdata    : in     vl_logic_vector(31 downto 0);
        s2_axi_wstrb    : in     vl_logic_vector(3 downto 0);
        s2_axi_wlast    : in     vl_logic;
        s2_axi_wvalid   : in     vl_logic;
        s2_axi_wready   : out    vl_logic;
        s2_axi_bid      : out    vl_logic_vector(3 downto 0);
        s2_axi_bresp    : out    vl_logic_vector(1 downto 0);
        s2_axi_bvalid   : out    vl_logic;
        s2_axi_bready   : in     vl_logic;
        s2_axi_arid     : in     vl_logic_vector(3 downto 0);
        s2_axi_araddr   : in     vl_logic_vector(31 downto 0);
        s2_axi_arlen    : in     vl_logic_vector(7 downto 0);
        s2_axi_arsize   : in     vl_logic_vector(2 downto 0);
        s2_axi_arburst  : in     vl_logic_vector(1 downto 0);
        s2_axi_arlock   : in     vl_logic_vector(0 downto 0);
        s2_axi_arcache  : in     vl_logic_vector(3 downto 0);
        s2_axi_arprot   : in     vl_logic_vector(2 downto 0);
        s2_axi_arqos    : in     vl_logic_vector(3 downto 0);
        s2_axi_arvalid  : in     vl_logic;
        s2_axi_arready  : out    vl_logic;
        s2_axi_rid      : out    vl_logic_vector(3 downto 0);
        s2_axi_rdata    : out    vl_logic_vector(31 downto 0);
        s2_axi_rresp    : out    vl_logic_vector(1 downto 0);
        s2_axi_rlast    : out    vl_logic;
        s2_axi_rvalid   : out    vl_logic;
        s2_axi_rready   : in     vl_logic;
        s3_axi_aclk     : in     vl_logic;
        s3_axi_aresetn  : in     vl_logic;
        s3_axi_awid     : in     vl_logic_vector(3 downto 0);
        s3_axi_awaddr   : in     vl_logic_vector(31 downto 0);
        s3_axi_awlen    : in     vl_logic_vector(7 downto 0);
        s3_axi_awsize   : in     vl_logic_vector(2 downto 0);
        s3_axi_awburst  : in     vl_logic_vector(1 downto 0);
        s3_axi_awlock   : in     vl_logic_vector(0 downto 0);
        s3_axi_awcache  : in     vl_logic_vector(3 downto 0);
        s3_axi_awprot   : in     vl_logic_vector(2 downto 0);
        s3_axi_awqos    : in     vl_logic_vector(3 downto 0);
        s3_axi_awvalid  : in     vl_logic;
        s3_axi_awready  : out    vl_logic;
        s3_axi_wdata    : in     vl_logic_vector(31 downto 0);
        s3_axi_wstrb    : in     vl_logic_vector(3 downto 0);
        s3_axi_wlast    : in     vl_logic;
        s3_axi_wvalid   : in     vl_logic;
        s3_axi_wready   : out    vl_logic;
        s3_axi_bid      : out    vl_logic_vector(3 downto 0);
        s3_axi_bresp    : out    vl_logic_vector(1 downto 0);
        s3_axi_bvalid   : out    vl_logic;
        s3_axi_bready   : in     vl_logic;
        s3_axi_arid     : in     vl_logic_vector(3 downto 0);
        s3_axi_araddr   : in     vl_logic_vector(31 downto 0);
        s3_axi_arlen    : in     vl_logic_vector(7 downto 0);
        s3_axi_arsize   : in     vl_logic_vector(2 downto 0);
        s3_axi_arburst  : in     vl_logic_vector(1 downto 0);
        s3_axi_arlock   : in     vl_logic_vector(0 downto 0);
        s3_axi_arcache  : in     vl_logic_vector(3 downto 0);
        s3_axi_arprot   : in     vl_logic_vector(2 downto 0);
        s3_axi_arqos    : in     vl_logic_vector(3 downto 0);
        s3_axi_arvalid  : in     vl_logic;
        s3_axi_arready  : out    vl_logic;
        s3_axi_rid      : out    vl_logic_vector(3 downto 0);
        s3_axi_rdata    : out    vl_logic_vector(31 downto 0);
        s3_axi_rresp    : out    vl_logic_vector(1 downto 0);
        s3_axi_rlast    : out    vl_logic;
        s3_axi_rvalid   : out    vl_logic;
        s3_axi_rready   : in     vl_logic;
        s4_axi_aclk     : in     vl_logic;
        s4_axi_aresetn  : in     vl_logic;
        s4_axi_awid     : in     vl_logic_vector(3 downto 0);
        s4_axi_awaddr   : in     vl_logic_vector(31 downto 0);
        s4_axi_awlen    : in     vl_logic_vector(7 downto 0);
        s4_axi_awsize   : in     vl_logic_vector(2 downto 0);
        s4_axi_awburst  : in     vl_logic_vector(1 downto 0);
        s4_axi_awlock   : in     vl_logic_vector(0 downto 0);
        s4_axi_awcache  : in     vl_logic_vector(3 downto 0);
        s4_axi_awprot   : in     vl_logic_vector(2 downto 0);
        s4_axi_awqos    : in     vl_logic_vector(3 downto 0);
        s4_axi_awvalid  : in     vl_logic;
        s4_axi_awready  : out    vl_logic;
        s4_axi_wdata    : in     vl_logic_vector(31 downto 0);
        s4_axi_wstrb    : in     vl_logic_vector(3 downto 0);
        s4_axi_wlast    : in     vl_logic;
        s4_axi_wvalid   : in     vl_logic;
        s4_axi_wready   : out    vl_logic;
        s4_axi_bid      : out    vl_logic_vector(3 downto 0);
        s4_axi_bresp    : out    vl_logic_vector(1 downto 0);
        s4_axi_bvalid   : out    vl_logic;
        s4_axi_bready   : in     vl_logic;
        s4_axi_arid     : in     vl_logic_vector(3 downto 0);
        s4_axi_araddr   : in     vl_logic_vector(31 downto 0);
        s4_axi_arlen    : in     vl_logic_vector(7 downto 0);
        s4_axi_arsize   : in     vl_logic_vector(2 downto 0);
        s4_axi_arburst  : in     vl_logic_vector(1 downto 0);
        s4_axi_arlock   : in     vl_logic_vector(0 downto 0);
        s4_axi_arcache  : in     vl_logic_vector(3 downto 0);
        s4_axi_arprot   : in     vl_logic_vector(2 downto 0);
        s4_axi_arqos    : in     vl_logic_vector(3 downto 0);
        s4_axi_arvalid  : in     vl_logic;
        s4_axi_arready  : out    vl_logic;
        s4_axi_rid      : out    vl_logic_vector(3 downto 0);
        s4_axi_rdata    : out    vl_logic_vector(31 downto 0);
        s4_axi_rresp    : out    vl_logic_vector(1 downto 0);
        s4_axi_rlast    : out    vl_logic;
        s4_axi_rvalid   : out    vl_logic;
        s4_axi_rready   : in     vl_logic;
        s5_axi_aclk     : in     vl_logic;
        s5_axi_aresetn  : in     vl_logic;
        s5_axi_awid     : in     vl_logic_vector(3 downto 0);
        s5_axi_awaddr   : in     vl_logic_vector(31 downto 0);
        s5_axi_awlen    : in     vl_logic_vector(7 downto 0);
        s5_axi_awsize   : in     vl_logic_vector(2 downto 0);
        s5_axi_awburst  : in     vl_logic_vector(1 downto 0);
        s5_axi_awlock   : in     vl_logic_vector(0 downto 0);
        s5_axi_awcache  : in     vl_logic_vector(3 downto 0);
        s5_axi_awprot   : in     vl_logic_vector(2 downto 0);
        s5_axi_awqos    : in     vl_logic_vector(3 downto 0);
        s5_axi_awvalid  : in     vl_logic;
        s5_axi_awready  : out    vl_logic;
        s5_axi_wdata    : in     vl_logic_vector(31 downto 0);
        s5_axi_wstrb    : in     vl_logic_vector(3 downto 0);
        s5_axi_wlast    : in     vl_logic;
        s5_axi_wvalid   : in     vl_logic;
        s5_axi_wready   : out    vl_logic;
        s5_axi_bid      : out    vl_logic_vector(3 downto 0);
        s5_axi_bresp    : out    vl_logic_vector(1 downto 0);
        s5_axi_bvalid   : out    vl_logic;
        s5_axi_bready   : in     vl_logic;
        s5_axi_arid     : in     vl_logic_vector(3 downto 0);
        s5_axi_araddr   : in     vl_logic_vector(31 downto 0);
        s5_axi_arlen    : in     vl_logic_vector(7 downto 0);
        s5_axi_arsize   : in     vl_logic_vector(2 downto 0);
        s5_axi_arburst  : in     vl_logic_vector(1 downto 0);
        s5_axi_arlock   : in     vl_logic_vector(0 downto 0);
        s5_axi_arcache  : in     vl_logic_vector(3 downto 0);
        s5_axi_arprot   : in     vl_logic_vector(2 downto 0);
        s5_axi_arqos    : in     vl_logic_vector(3 downto 0);
        s5_axi_arvalid  : in     vl_logic;
        s5_axi_arready  : out    vl_logic;
        s5_axi_rid      : out    vl_logic_vector(3 downto 0);
        s5_axi_rdata    : out    vl_logic_vector(31 downto 0);
        s5_axi_rresp    : out    vl_logic_vector(1 downto 0);
        s5_axi_rlast    : out    vl_logic;
        s5_axi_rvalid   : out    vl_logic;
        s5_axi_rready   : in     vl_logic
    );
end system_mcb_ddr2_wrapper;
