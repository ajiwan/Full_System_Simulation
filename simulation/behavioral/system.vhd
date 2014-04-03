-------------------------------------------------------------------------------
-- system.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system is
  port (
    RESET : in std_logic;
    GCLK : in std_logic
  );
end system;

architecture STRUCTURE of system is

  component system_proc_sys_reset_0_wrapper is
    port (
      Slowest_sync_clk : in std_logic;
      Ext_Reset_In : in std_logic;
      Aux_Reset_In : in std_logic;
      MB_Debug_Sys_Rst : in std_logic;
      Core_Reset_Req_0 : in std_logic;
      Chip_Reset_Req_0 : in std_logic;
      System_Reset_Req_0 : in std_logic;
      Core_Reset_Req_1 : in std_logic;
      Chip_Reset_Req_1 : in std_logic;
      System_Reset_Req_1 : in std_logic;
      Dcm_locked : in std_logic;
      RstcPPCresetcore_0 : out std_logic;
      RstcPPCresetchip_0 : out std_logic;
      RstcPPCresetsys_0 : out std_logic;
      RstcPPCresetcore_1 : out std_logic;
      RstcPPCresetchip_1 : out std_logic;
      RstcPPCresetsys_1 : out std_logic;
      MB_Reset : out std_logic;
      Bus_Struct_Reset : out std_logic_vector(0 to 0);
      Peripheral_Reset : out std_logic_vector(0 to 0);
      Interconnect_aresetn : out std_logic_vector(0 to 0);
      Peripheral_aresetn : out std_logic_vector(0 to 0)
    );
  end component;

  component system_load_bram_0_wrapper is
    port (
      load_bram_dout : out std_logic_vector(31 downto 0);
      load_bram_wr_en_fifo : out std_logic;
      S_AXI_ACLK : in std_logic;
      S_AXI_ARESETN : in std_logic;
      S_AXI_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_AWVALID : in std_logic;
      S_AXI_WDATA : in std_logic_vector(31 downto 0);
      S_AXI_WSTRB : in std_logic_vector(3 downto 0);
      S_AXI_WVALID : in std_logic;
      S_AXI_BREADY : in std_logic;
      S_AXI_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_ARVALID : in std_logic;
      S_AXI_RREADY : in std_logic;
      S_AXI_ARREADY : out std_logic;
      S_AXI_RDATA : out std_logic_vector(31 downto 0);
      S_AXI_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_RVALID : out std_logic;
      S_AXI_WREADY : out std_logic;
      S_AXI_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_BVALID : out std_logic;
      S_AXI_AWREADY : out std_logic;
      m_axi_aclk : in std_logic;
      m_axi_aresetn : in std_logic;
      md_error : out std_logic;
      m_axi_arready : in std_logic;
      m_axi_arvalid : out std_logic;
      m_axi_araddr : out std_logic_vector(31 downto 0);
      m_axi_arlen : out std_logic_vector(7 downto 0);
      m_axi_arsize : out std_logic_vector(2 downto 0);
      m_axi_arburst : out std_logic_vector(1 downto 0);
      m_axi_arprot : out std_logic_vector(2 downto 0);
      m_axi_arcache : out std_logic_vector(3 downto 0);
      m_axi_rready : out std_logic;
      m_axi_rvalid : in std_logic;
      m_axi_rdata : in std_logic_vector(31 downto 0);
      m_axi_rresp : in std_logic_vector(1 downto 0);
      m_axi_rlast : in std_logic;
      m_axi_awready : in std_logic;
      m_axi_awvalid : out std_logic;
      m_axi_awaddr : out std_logic_vector(31 downto 0);
      m_axi_awlen : out std_logic_vector(7 downto 0);
      m_axi_awsize : out std_logic_vector(2 downto 0);
      m_axi_awburst : out std_logic_vector(1 downto 0);
      m_axi_awprot : out std_logic_vector(2 downto 0);
      m_axi_awcache : out std_logic_vector(3 downto 0);
      m_axi_wready : in std_logic;
      m_axi_wvalid : out std_logic;
      m_axi_wdata : out std_logic_vector(31 downto 0);
      m_axi_wstrb : out std_logic_vector(3 downto 0);
      m_axi_wlast : out std_logic;
      m_axi_bready : out std_logic;
      m_axi_bvalid : in std_logic;
      m_axi_bresp : in std_logic_vector(1 downto 0)
    );
  end component;

  component system_disparity_out_0_wrapper is
    port (
      S_AXI_ACLK : in std_logic;
      S_AXI_ARESETN : in std_logic;
      S_AXI_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_AWVALID : in std_logic;
      S_AXI_WDATA : in std_logic_vector(31 downto 0);
      S_AXI_WSTRB : in std_logic_vector(3 downto 0);
      S_AXI_WVALID : in std_logic;
      S_AXI_BREADY : in std_logic;
      S_AXI_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_ARVALID : in std_logic;
      S_AXI_RREADY : in std_logic;
      S_AXI_ARREADY : out std_logic;
      S_AXI_RDATA : out std_logic_vector(31 downto 0);
      S_AXI_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_RVALID : out std_logic;
      S_AXI_WREADY : out std_logic;
      S_AXI_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_BVALID : out std_logic;
      S_AXI_AWREADY : out std_logic;
      m_axi_aclk : in std_logic;
      m_axi_aresetn : in std_logic;
      md_error : out std_logic;
      m_axi_arready : in std_logic;
      m_axi_arvalid : out std_logic;
      m_axi_araddr : out std_logic_vector(31 downto 0);
      m_axi_arlen : out std_logic_vector(7 downto 0);
      m_axi_arsize : out std_logic_vector(2 downto 0);
      m_axi_arburst : out std_logic_vector(1 downto 0);
      m_axi_arprot : out std_logic_vector(2 downto 0);
      m_axi_arcache : out std_logic_vector(3 downto 0);
      m_axi_rready : out std_logic;
      m_axi_rvalid : in std_logic;
      m_axi_rdata : in std_logic_vector(31 downto 0);
      m_axi_rresp : in std_logic_vector(1 downto 0);
      m_axi_rlast : in std_logic;
      m_axi_awready : in std_logic;
      m_axi_awvalid : out std_logic;
      m_axi_awaddr : out std_logic_vector(31 downto 0);
      m_axi_awlen : out std_logic_vector(7 downto 0);
      m_axi_awsize : out std_logic_vector(2 downto 0);
      m_axi_awburst : out std_logic_vector(1 downto 0);
      m_axi_awprot : out std_logic_vector(2 downto 0);
      m_axi_awcache : out std_logic_vector(3 downto 0);
      m_axi_wready : in std_logic;
      m_axi_wvalid : out std_logic;
      m_axi_wdata : out std_logic_vector(31 downto 0);
      m_axi_wstrb : out std_logic_vector(3 downto 0);
      m_axi_wlast : out std_logic;
      m_axi_bready : out std_logic;
      m_axi_bvalid : in std_logic;
      m_axi_bresp : in std_logic_vector(1 downto 0);
      DISP_D_I : in std_logic_vector(31 downto 0);
      DISP_CLK_I : in std_logic;
      RESET_I : in std_logic;
      DISP_EN : in std_logic
    );
  end component;

  component system_clock_generator_0_wrapper is
    port (
      CLKIN : in std_logic;
      CLKOUT0 : out std_logic;
      CLKOUT1 : out std_logic;
      CLKOUT2 : out std_logic;
      CLKOUT3 : out std_logic;
      CLKOUT4 : out std_logic;
      CLKOUT5 : out std_logic;
      CLKOUT6 : out std_logic;
      CLKOUT7 : out std_logic;
      CLKOUT8 : out std_logic;
      CLKOUT9 : out std_logic;
      CLKOUT10 : out std_logic;
      CLKOUT11 : out std_logic;
      CLKOUT12 : out std_logic;
      CLKOUT13 : out std_logic;
      CLKOUT14 : out std_logic;
      CLKOUT15 : out std_logic;
      CLKFBIN : in std_logic;
      CLKFBOUT : out std_logic;
      PSCLK : in std_logic;
      PSEN : in std_logic;
      PSINCDEC : in std_logic;
      PSDONE : out std_logic;
      RST : in std_logic;
      LOCKED : out std_logic
    );
  end component;

  component system_axi4_0_wrapper is
    port (
      INTERCONNECT_ACLK : in std_logic;
      INTERCONNECT_ARESETN : in std_logic;
      S_AXI_ARESET_OUT_N : out std_logic_vector(1 downto 0);
      M_AXI_ARESET_OUT_N : out std_logic_vector(2 downto 0);
      IRQ : out std_logic;
      S_AXI_ACLK : in std_logic_vector(1 downto 0);
      S_AXI_AWID : in std_logic_vector(1 downto 0);
      S_AXI_AWADDR : in std_logic_vector(63 downto 0);
      S_AXI_AWLEN : in std_logic_vector(15 downto 0);
      S_AXI_AWSIZE : in std_logic_vector(5 downto 0);
      S_AXI_AWBURST : in std_logic_vector(3 downto 0);
      S_AXI_AWLOCK : in std_logic_vector(3 downto 0);
      S_AXI_AWCACHE : in std_logic_vector(7 downto 0);
      S_AXI_AWPROT : in std_logic_vector(5 downto 0);
      S_AXI_AWQOS : in std_logic_vector(7 downto 0);
      S_AXI_AWUSER : in std_logic_vector(1 downto 0);
      S_AXI_AWVALID : in std_logic_vector(1 downto 0);
      S_AXI_AWREADY : out std_logic_vector(1 downto 0);
      S_AXI_WID : in std_logic_vector(1 downto 0);
      S_AXI_WDATA : in std_logic_vector(63 downto 0);
      S_AXI_WSTRB : in std_logic_vector(7 downto 0);
      S_AXI_WLAST : in std_logic_vector(1 downto 0);
      S_AXI_WUSER : in std_logic_vector(1 downto 0);
      S_AXI_WVALID : in std_logic_vector(1 downto 0);
      S_AXI_WREADY : out std_logic_vector(1 downto 0);
      S_AXI_BID : out std_logic_vector(1 downto 0);
      S_AXI_BRESP : out std_logic_vector(3 downto 0);
      S_AXI_BUSER : out std_logic_vector(1 downto 0);
      S_AXI_BVALID : out std_logic_vector(1 downto 0);
      S_AXI_BREADY : in std_logic_vector(1 downto 0);
      S_AXI_ARID : in std_logic_vector(1 downto 0);
      S_AXI_ARADDR : in std_logic_vector(63 downto 0);
      S_AXI_ARLEN : in std_logic_vector(15 downto 0);
      S_AXI_ARSIZE : in std_logic_vector(5 downto 0);
      S_AXI_ARBURST : in std_logic_vector(3 downto 0);
      S_AXI_ARLOCK : in std_logic_vector(3 downto 0);
      S_AXI_ARCACHE : in std_logic_vector(7 downto 0);
      S_AXI_ARPROT : in std_logic_vector(5 downto 0);
      S_AXI_ARQOS : in std_logic_vector(7 downto 0);
      S_AXI_ARUSER : in std_logic_vector(1 downto 0);
      S_AXI_ARVALID : in std_logic_vector(1 downto 0);
      S_AXI_ARREADY : out std_logic_vector(1 downto 0);
      S_AXI_RID : out std_logic_vector(1 downto 0);
      S_AXI_RDATA : out std_logic_vector(63 downto 0);
      S_AXI_RRESP : out std_logic_vector(3 downto 0);
      S_AXI_RLAST : out std_logic_vector(1 downto 0);
      S_AXI_RUSER : out std_logic_vector(1 downto 0);
      S_AXI_RVALID : out std_logic_vector(1 downto 0);
      S_AXI_RREADY : in std_logic_vector(1 downto 0);
      M_AXI_ACLK : in std_logic_vector(2 downto 0);
      M_AXI_AWID : out std_logic_vector(2 downto 0);
      M_AXI_AWADDR : out std_logic_vector(95 downto 0);
      M_AXI_AWLEN : out std_logic_vector(23 downto 0);
      M_AXI_AWSIZE : out std_logic_vector(8 downto 0);
      M_AXI_AWBURST : out std_logic_vector(5 downto 0);
      M_AXI_AWLOCK : out std_logic_vector(5 downto 0);
      M_AXI_AWCACHE : out std_logic_vector(11 downto 0);
      M_AXI_AWPROT : out std_logic_vector(8 downto 0);
      M_AXI_AWREGION : out std_logic_vector(11 downto 0);
      M_AXI_AWQOS : out std_logic_vector(11 downto 0);
      M_AXI_AWUSER : out std_logic_vector(2 downto 0);
      M_AXI_AWVALID : out std_logic_vector(2 downto 0);
      M_AXI_AWREADY : in std_logic_vector(2 downto 0);
      M_AXI_WID : out std_logic_vector(2 downto 0);
      M_AXI_WDATA : out std_logic_vector(95 downto 0);
      M_AXI_WSTRB : out std_logic_vector(11 downto 0);
      M_AXI_WLAST : out std_logic_vector(2 downto 0);
      M_AXI_WUSER : out std_logic_vector(2 downto 0);
      M_AXI_WVALID : out std_logic_vector(2 downto 0);
      M_AXI_WREADY : in std_logic_vector(2 downto 0);
      M_AXI_BID : in std_logic_vector(2 downto 0);
      M_AXI_BRESP : in std_logic_vector(5 downto 0);
      M_AXI_BUSER : in std_logic_vector(2 downto 0);
      M_AXI_BVALID : in std_logic_vector(2 downto 0);
      M_AXI_BREADY : out std_logic_vector(2 downto 0);
      M_AXI_ARID : out std_logic_vector(2 downto 0);
      M_AXI_ARADDR : out std_logic_vector(95 downto 0);
      M_AXI_ARLEN : out std_logic_vector(23 downto 0);
      M_AXI_ARSIZE : out std_logic_vector(8 downto 0);
      M_AXI_ARBURST : out std_logic_vector(5 downto 0);
      M_AXI_ARLOCK : out std_logic_vector(5 downto 0);
      M_AXI_ARCACHE : out std_logic_vector(11 downto 0);
      M_AXI_ARPROT : out std_logic_vector(8 downto 0);
      M_AXI_ARREGION : out std_logic_vector(11 downto 0);
      M_AXI_ARQOS : out std_logic_vector(11 downto 0);
      M_AXI_ARUSER : out std_logic_vector(2 downto 0);
      M_AXI_ARVALID : out std_logic_vector(2 downto 0);
      M_AXI_ARREADY : in std_logic_vector(2 downto 0);
      M_AXI_RID : in std_logic_vector(2 downto 0);
      M_AXI_RDATA : in std_logic_vector(95 downto 0);
      M_AXI_RRESP : in std_logic_vector(5 downto 0);
      M_AXI_RLAST : in std_logic_vector(2 downto 0);
      M_AXI_RUSER : in std_logic_vector(2 downto 0);
      M_AXI_RVALID : in std_logic_vector(2 downto 0);
      M_AXI_RREADY : out std_logic_vector(2 downto 0);
      S_AXI_CTRL_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_AWVALID : in std_logic;
      S_AXI_CTRL_AWREADY : out std_logic;
      S_AXI_CTRL_WDATA : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_WVALID : in std_logic;
      S_AXI_CTRL_WREADY : out std_logic;
      S_AXI_CTRL_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_CTRL_BVALID : out std_logic;
      S_AXI_CTRL_BREADY : in std_logic;
      S_AXI_CTRL_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_ARVALID : in std_logic;
      S_AXI_CTRL_ARREADY : out std_logic;
      S_AXI_CTRL_RDATA : out std_logic_vector(31 downto 0);
      S_AXI_CTRL_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_CTRL_RVALID : out std_logic;
      S_AXI_CTRL_RREADY : in std_logic;
      INTERCONNECT_ARESET_OUT_N : out std_logic;
      DEBUG_AW_TRANS_SEQ : out std_logic_vector(7 downto 0);
      DEBUG_AW_ARB_GRANT : out std_logic_vector(7 downto 0);
      DEBUG_AR_TRANS_SEQ : out std_logic_vector(7 downto 0);
      DEBUG_AR_ARB_GRANT : out std_logic_vector(7 downto 0);
      DEBUG_AW_TRANS_QUAL : out std_logic_vector(0 to 0);
      DEBUG_AW_ACCEPT_CNT : out std_logic_vector(7 downto 0);
      DEBUG_AW_ACTIVE_THREAD : out std_logic_vector(15 downto 0);
      DEBUG_AW_ACTIVE_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_AW_ACTIVE_REGION : out std_logic_vector(7 downto 0);
      DEBUG_AW_ERROR : out std_logic_vector(7 downto 0);
      DEBUG_AW_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_AR_TRANS_QUAL : out std_logic_vector(0 to 0);
      DEBUG_AR_ACCEPT_CNT : out std_logic_vector(7 downto 0);
      DEBUG_AR_ACTIVE_THREAD : out std_logic_vector(15 downto 0);
      DEBUG_AR_ACTIVE_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_AR_ACTIVE_REGION : out std_logic_vector(7 downto 0);
      DEBUG_AR_ERROR : out std_logic_vector(7 downto 0);
      DEBUG_AR_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_B_TRANS_SEQ : out std_logic_vector(7 downto 0);
      DEBUG_R_BEAT_CNT : out std_logic_vector(7 downto 0);
      DEBUG_R_TRANS_SEQ : out std_logic_vector(7 downto 0);
      DEBUG_AW_ISSUING_CNT : out std_logic_vector(7 downto 0);
      DEBUG_AR_ISSUING_CNT : out std_logic_vector(7 downto 0);
      DEBUG_W_BEAT_CNT : out std_logic_vector(7 downto 0);
      DEBUG_W_TRANS_SEQ : out std_logic_vector(7 downto 0);
      DEBUG_BID_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_BID_ERROR : out std_logic;
      DEBUG_RID_TARGET : out std_logic_vector(7 downto 0);
      DEBUG_RID_ERROR : out std_logic;
      DEBUG_SR_SC_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_SR_SC_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_SR_SC_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_SR_SC_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_SR_SC_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_SR_SC_RDATA : out std_logic_vector(31 downto 0);
      DEBUG_SR_SC_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_SR_SC_WDATA : out std_logic_vector(31 downto 0);
      DEBUG_SR_SC_WDATACONTROL : out std_logic_vector(6 downto 0);
      DEBUG_SC_SF_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_SC_SF_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_SC_SF_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_SC_SF_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_SC_SF_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_SC_SF_RDATA : out std_logic_vector(31 downto 0);
      DEBUG_SC_SF_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_SC_SF_WDATA : out std_logic_vector(31 downto 0);
      DEBUG_SC_SF_WDATACONTROL : out std_logic_vector(6 downto 0);
      DEBUG_SF_CB_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_SF_CB_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_SF_CB_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_SF_CB_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_SF_CB_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_SF_CB_RDATA : out std_logic_vector(31 downto 0);
      DEBUG_SF_CB_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_SF_CB_WDATA : out std_logic_vector(31 downto 0);
      DEBUG_SF_CB_WDATACONTROL : out std_logic_vector(6 downto 0);
      DEBUG_CB_MF_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_CB_MF_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_CB_MF_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_CB_MF_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_CB_MF_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_CB_MF_RDATA : out std_logic_vector(31 downto 0);
      DEBUG_CB_MF_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_CB_MF_WDATA : out std_logic_vector(31 downto 0);
      DEBUG_CB_MF_WDATACONTROL : out std_logic_vector(6 downto 0);
      DEBUG_MF_MC_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_MF_MC_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_MF_MC_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_MF_MC_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_MF_MC_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_MF_MC_RDATA : out std_logic_vector(31 downto 0);
      DEBUG_MF_MC_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_MF_MC_WDATA : out std_logic_vector(31 downto 0);
      DEBUG_MF_MC_WDATACONTROL : out std_logic_vector(6 downto 0);
      DEBUG_MC_MP_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_MC_MP_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_MC_MP_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_MC_MP_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_MC_MP_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_MC_MP_RDATA : out std_logic_vector(31 downto 0);
      DEBUG_MC_MP_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_MC_MP_WDATA : out std_logic_vector(31 downto 0);
      DEBUG_MC_MP_WDATACONTROL : out std_logic_vector(6 downto 0);
      DEBUG_MP_MR_ARADDR : out std_logic_vector(31 downto 0);
      DEBUG_MP_MR_ARADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_MP_MR_AWADDR : out std_logic_vector(31 downto 0);
      DEBUG_MP_MR_AWADDRCONTROL : out std_logic_vector(23 downto 0);
      DEBUG_MP_MR_BRESP : out std_logic_vector(4 downto 0);
      DEBUG_MP_MR_RDATA : out std_logic_vector(31 downto 0);
      DEBUG_MP_MR_RDATACONTROL : out std_logic_vector(5 downto 0);
      DEBUG_MP_MR_WDATA : out std_logic_vector(31 downto 0);
      DEBUG_MP_MR_WDATACONTROL : out std_logic_vector(6 downto 0)
    );
  end component;

  component system_bram_block_0_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component system_axi_bram_ctrl_0_wrapper is
    port (
      ECC_Interrupt : out std_logic;
      ECC_UE : out std_logic;
      S_AXI_ACLK : in std_logic;
      S_AXI_ARESETN : in std_logic;
      S_AXI_AWID : in std_logic_vector(0 downto 0);
      S_AXI_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_AWLEN : in std_logic_vector(7 downto 0);
      S_AXI_AWSIZE : in std_logic_vector(2 downto 0);
      S_AXI_AWBURST : in std_logic_vector(1 downto 0);
      S_AXI_AWLOCK : in std_logic;
      S_AXI_AWCACHE : in std_logic_vector(3 downto 0);
      S_AXI_AWPROT : in std_logic_vector(2 downto 0);
      S_AXI_AWVALID : in std_logic;
      S_AXI_AWREADY : out std_logic;
      S_AXI_WDATA : in std_logic_vector(31 downto 0);
      S_AXI_WSTRB : in std_logic_vector(3 downto 0);
      S_AXI_WLAST : in std_logic;
      S_AXI_WVALID : in std_logic;
      S_AXI_WREADY : out std_logic;
      S_AXI_BID : out std_logic_vector(0 downto 0);
      S_AXI_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_BVALID : out std_logic;
      S_AXI_BREADY : in std_logic;
      S_AXI_ARID : in std_logic_vector(0 downto 0);
      S_AXI_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_ARLEN : in std_logic_vector(7 downto 0);
      S_AXI_ARSIZE : in std_logic_vector(2 downto 0);
      S_AXI_ARBURST : in std_logic_vector(1 downto 0);
      S_AXI_ARLOCK : in std_logic;
      S_AXI_ARCACHE : in std_logic_vector(3 downto 0);
      S_AXI_ARPROT : in std_logic_vector(2 downto 0);
      S_AXI_ARVALID : in std_logic;
      S_AXI_ARREADY : out std_logic;
      S_AXI_RID : out std_logic_vector(0 downto 0);
      S_AXI_RDATA : out std_logic_vector(31 downto 0);
      S_AXI_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_RVALID : out std_logic;
      S_AXI_RREADY : in std_logic;
      S_AXI_RLAST : out std_logic;
      S_AXI_CTRL_AWVALID : in std_logic;
      S_AXI_CTRL_AWREADY : out std_logic;
      S_AXI_CTRL_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_WVALID : in std_logic;
      S_AXI_CTRL_WREADY : out std_logic;
      S_AXI_CTRL_WDATA : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_CTRL_BVALID : out std_logic;
      S_AXI_CTRL_BREADY : in std_logic;
      S_AXI_CTRL_ARVALID : in std_logic;
      S_AXI_CTRL_ARREADY : out std_logic;
      S_AXI_CTRL_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_RVALID : out std_logic;
      S_AXI_CTRL_RREADY : in std_logic;
      S_AXI_CTRL_RDATA : out std_logic_vector(31 downto 0);
      S_AXI_CTRL_RRESP : out std_logic_vector(1 downto 0);
      BRAM_Rst_A : out std_logic;
      BRAM_Clk_A : out std_logic;
      BRAM_En_A : out std_logic;
      BRAM_WE_A : out std_logic_vector(3 downto 0);
      BRAM_Addr_A : out std_logic_vector(31 downto 0);
      BRAM_WrData_A : out std_logic_vector(31 downto 0);
      BRAM_RdData_A : in std_logic_vector(31 downto 0);
      BRAM_Rst_B : out std_logic;
      BRAM_Clk_B : out std_logic;
      BRAM_En_B : out std_logic;
      BRAM_WE_B : out std_logic_vector(3 downto 0);
      BRAM_Addr_B : out std_logic_vector(31 downto 0);
      BRAM_WrData_B : out std_logic_vector(31 downto 0);
      BRAM_RdData_B : in std_logic_vector(31 downto 0)
    );
  end component;

  component system_bram_block_1_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component system_bram_block_2_wrapper is
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to 3);
      BRAM_Addr_A : in std_logic_vector(0 to 31);
      BRAM_Din_A : out std_logic_vector(0 to 31);
      BRAM_Dout_A : in std_logic_vector(0 to 31);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component system_axi_bram_ctrl_1_wrapper is
    port (
      ECC_Interrupt : out std_logic;
      ECC_UE : out std_logic;
      S_AXI_ACLK : in std_logic;
      S_AXI_ARESETN : in std_logic;
      S_AXI_AWID : in std_logic_vector(0 downto 0);
      S_AXI_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_AWLEN : in std_logic_vector(7 downto 0);
      S_AXI_AWSIZE : in std_logic_vector(2 downto 0);
      S_AXI_AWBURST : in std_logic_vector(1 downto 0);
      S_AXI_AWLOCK : in std_logic;
      S_AXI_AWCACHE : in std_logic_vector(3 downto 0);
      S_AXI_AWPROT : in std_logic_vector(2 downto 0);
      S_AXI_AWVALID : in std_logic;
      S_AXI_AWREADY : out std_logic;
      S_AXI_WDATA : in std_logic_vector(31 downto 0);
      S_AXI_WSTRB : in std_logic_vector(3 downto 0);
      S_AXI_WLAST : in std_logic;
      S_AXI_WVALID : in std_logic;
      S_AXI_WREADY : out std_logic;
      S_AXI_BID : out std_logic_vector(0 downto 0);
      S_AXI_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_BVALID : out std_logic;
      S_AXI_BREADY : in std_logic;
      S_AXI_ARID : in std_logic_vector(0 downto 0);
      S_AXI_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_ARLEN : in std_logic_vector(7 downto 0);
      S_AXI_ARSIZE : in std_logic_vector(2 downto 0);
      S_AXI_ARBURST : in std_logic_vector(1 downto 0);
      S_AXI_ARLOCK : in std_logic;
      S_AXI_ARCACHE : in std_logic_vector(3 downto 0);
      S_AXI_ARPROT : in std_logic_vector(2 downto 0);
      S_AXI_ARVALID : in std_logic;
      S_AXI_ARREADY : out std_logic;
      S_AXI_RID : out std_logic_vector(0 downto 0);
      S_AXI_RDATA : out std_logic_vector(31 downto 0);
      S_AXI_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_RVALID : out std_logic;
      S_AXI_RREADY : in std_logic;
      S_AXI_RLAST : out std_logic;
      S_AXI_CTRL_AWVALID : in std_logic;
      S_AXI_CTRL_AWREADY : out std_logic;
      S_AXI_CTRL_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_WVALID : in std_logic;
      S_AXI_CTRL_WREADY : out std_logic;
      S_AXI_CTRL_WDATA : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_CTRL_BVALID : out std_logic;
      S_AXI_CTRL_BREADY : in std_logic;
      S_AXI_CTRL_ARVALID : in std_logic;
      S_AXI_CTRL_ARREADY : out std_logic;
      S_AXI_CTRL_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_RVALID : out std_logic;
      S_AXI_CTRL_RREADY : in std_logic;
      S_AXI_CTRL_RDATA : out std_logic_vector(31 downto 0);
      S_AXI_CTRL_RRESP : out std_logic_vector(1 downto 0);
      BRAM_Rst_A : out std_logic;
      BRAM_Clk_A : out std_logic;
      BRAM_En_A : out std_logic;
      BRAM_WE_A : out std_logic_vector(3 downto 0);
      BRAM_Addr_A : out std_logic_vector(31 downto 0);
      BRAM_WrData_A : out std_logic_vector(31 downto 0);
      BRAM_RdData_A : in std_logic_vector(31 downto 0);
      BRAM_Rst_B : out std_logic;
      BRAM_Clk_B : out std_logic;
      BRAM_En_B : out std_logic;
      BRAM_WE_B : out std_logic_vector(3 downto 0);
      BRAM_Addr_B : out std_logic_vector(31 downto 0);
      BRAM_WrData_B : out std_logic_vector(31 downto 0);
      BRAM_RdData_B : in std_logic_vector(31 downto 0)
    );
  end component;

  component system_axi_bram_ctrl_2_wrapper is
    port (
      ECC_Interrupt : out std_logic;
      ECC_UE : out std_logic;
      S_AXI_ACLK : in std_logic;
      S_AXI_ARESETN : in std_logic;
      S_AXI_AWID : in std_logic_vector(0 downto 0);
      S_AXI_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_AWLEN : in std_logic_vector(7 downto 0);
      S_AXI_AWSIZE : in std_logic_vector(2 downto 0);
      S_AXI_AWBURST : in std_logic_vector(1 downto 0);
      S_AXI_AWLOCK : in std_logic;
      S_AXI_AWCACHE : in std_logic_vector(3 downto 0);
      S_AXI_AWPROT : in std_logic_vector(2 downto 0);
      S_AXI_AWVALID : in std_logic;
      S_AXI_AWREADY : out std_logic;
      S_AXI_WDATA : in std_logic_vector(31 downto 0);
      S_AXI_WSTRB : in std_logic_vector(3 downto 0);
      S_AXI_WLAST : in std_logic;
      S_AXI_WVALID : in std_logic;
      S_AXI_WREADY : out std_logic;
      S_AXI_BID : out std_logic_vector(0 downto 0);
      S_AXI_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_BVALID : out std_logic;
      S_AXI_BREADY : in std_logic;
      S_AXI_ARID : in std_logic_vector(0 downto 0);
      S_AXI_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_ARLEN : in std_logic_vector(7 downto 0);
      S_AXI_ARSIZE : in std_logic_vector(2 downto 0);
      S_AXI_ARBURST : in std_logic_vector(1 downto 0);
      S_AXI_ARLOCK : in std_logic;
      S_AXI_ARCACHE : in std_logic_vector(3 downto 0);
      S_AXI_ARPROT : in std_logic_vector(2 downto 0);
      S_AXI_ARVALID : in std_logic;
      S_AXI_ARREADY : out std_logic;
      S_AXI_RID : out std_logic_vector(0 downto 0);
      S_AXI_RDATA : out std_logic_vector(31 downto 0);
      S_AXI_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_RVALID : out std_logic;
      S_AXI_RREADY : in std_logic;
      S_AXI_RLAST : out std_logic;
      S_AXI_CTRL_AWVALID : in std_logic;
      S_AXI_CTRL_AWREADY : out std_logic;
      S_AXI_CTRL_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_WVALID : in std_logic;
      S_AXI_CTRL_WREADY : out std_logic;
      S_AXI_CTRL_WDATA : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_CTRL_BVALID : out std_logic;
      S_AXI_CTRL_BREADY : in std_logic;
      S_AXI_CTRL_ARVALID : in std_logic;
      S_AXI_CTRL_ARREADY : out std_logic;
      S_AXI_CTRL_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_CTRL_RVALID : out std_logic;
      S_AXI_CTRL_RREADY : in std_logic;
      S_AXI_CTRL_RDATA : out std_logic_vector(31 downto 0);
      S_AXI_CTRL_RRESP : out std_logic_vector(1 downto 0);
      BRAM_Rst_A : out std_logic;
      BRAM_Clk_A : out std_logic;
      BRAM_En_A : out std_logic;
      BRAM_WE_A : out std_logic_vector(3 downto 0);
      BRAM_Addr_A : out std_logic_vector(31 downto 0);
      BRAM_WrData_A : out std_logic_vector(31 downto 0);
      BRAM_RdData_A : in std_logic_vector(31 downto 0);
      BRAM_Rst_B : out std_logic;
      BRAM_Clk_B : out std_logic;
      BRAM_En_B : out std_logic;
      BRAM_WE_B : out std_logic_vector(3 downto 0);
      BRAM_Addr_B : out std_logic_vector(31 downto 0);
      BRAM_WrData_B : out std_logic_vector(31 downto 0);
      BRAM_RdData_B : in std_logic_vector(31 downto 0)
    );
  end component;

  -- Internal signals

  signal axi4_0_M_ARADDR : std_logic_vector(95 downto 0);
  signal axi4_0_M_ARBURST : std_logic_vector(5 downto 0);
  signal axi4_0_M_ARCACHE : std_logic_vector(11 downto 0);
  signal axi4_0_M_ARESETN : std_logic_vector(2 downto 0);
  signal axi4_0_M_ARID : std_logic_vector(2 downto 0);
  signal axi4_0_M_ARLEN : std_logic_vector(23 downto 0);
  signal axi4_0_M_ARLOCK : std_logic_vector(5 downto 0);
  signal axi4_0_M_ARPROT : std_logic_vector(8 downto 0);
  signal axi4_0_M_ARREADY : std_logic_vector(2 downto 0);
  signal axi4_0_M_ARSIZE : std_logic_vector(8 downto 0);
  signal axi4_0_M_ARVALID : std_logic_vector(2 downto 0);
  signal axi4_0_M_AWADDR : std_logic_vector(95 downto 0);
  signal axi4_0_M_AWBURST : std_logic_vector(5 downto 0);
  signal axi4_0_M_AWCACHE : std_logic_vector(11 downto 0);
  signal axi4_0_M_AWID : std_logic_vector(2 downto 0);
  signal axi4_0_M_AWLEN : std_logic_vector(23 downto 0);
  signal axi4_0_M_AWLOCK : std_logic_vector(5 downto 0);
  signal axi4_0_M_AWPROT : std_logic_vector(8 downto 0);
  signal axi4_0_M_AWREADY : std_logic_vector(2 downto 0);
  signal axi4_0_M_AWSIZE : std_logic_vector(8 downto 0);
  signal axi4_0_M_AWVALID : std_logic_vector(2 downto 0);
  signal axi4_0_M_BID : std_logic_vector(2 downto 0);
  signal axi4_0_M_BREADY : std_logic_vector(2 downto 0);
  signal axi4_0_M_BRESP : std_logic_vector(5 downto 0);
  signal axi4_0_M_BVALID : std_logic_vector(2 downto 0);
  signal axi4_0_M_RDATA : std_logic_vector(95 downto 0);
  signal axi4_0_M_RID : std_logic_vector(2 downto 0);
  signal axi4_0_M_RLAST : std_logic_vector(2 downto 0);
  signal axi4_0_M_RREADY : std_logic_vector(2 downto 0);
  signal axi4_0_M_RRESP : std_logic_vector(5 downto 0);
  signal axi4_0_M_RVALID : std_logic_vector(2 downto 0);
  signal axi4_0_M_WDATA : std_logic_vector(95 downto 0);
  signal axi4_0_M_WLAST : std_logic_vector(2 downto 0);
  signal axi4_0_M_WREADY : std_logic_vector(2 downto 0);
  signal axi4_0_M_WSTRB : std_logic_vector(11 downto 0);
  signal axi4_0_M_WVALID : std_logic_vector(2 downto 0);
  signal axi4_0_S_ARADDR : std_logic_vector(63 downto 0);
  signal axi4_0_S_ARBURST : std_logic_vector(3 downto 0);
  signal axi4_0_S_ARCACHE : std_logic_vector(7 downto 0);
  signal axi4_0_S_ARESETN : std_logic_vector(1 downto 0);
  signal axi4_0_S_ARLEN : std_logic_vector(15 downto 0);
  signal axi4_0_S_ARPROT : std_logic_vector(5 downto 0);
  signal axi4_0_S_ARREADY : std_logic_vector(1 downto 0);
  signal axi4_0_S_ARSIZE : std_logic_vector(5 downto 0);
  signal axi4_0_S_ARVALID : std_logic_vector(1 downto 0);
  signal axi4_0_S_AWADDR : std_logic_vector(63 downto 0);
  signal axi4_0_S_AWBURST : std_logic_vector(3 downto 0);
  signal axi4_0_S_AWCACHE : std_logic_vector(7 downto 0);
  signal axi4_0_S_AWLEN : std_logic_vector(15 downto 0);
  signal axi4_0_S_AWPROT : std_logic_vector(5 downto 0);
  signal axi4_0_S_AWREADY : std_logic_vector(1 downto 0);
  signal axi4_0_S_AWSIZE : std_logic_vector(5 downto 0);
  signal axi4_0_S_AWVALID : std_logic_vector(1 downto 0);
  signal axi4_0_S_BREADY : std_logic_vector(1 downto 0);
  signal axi4_0_S_BRESP : std_logic_vector(3 downto 0);
  signal axi4_0_S_BVALID : std_logic_vector(1 downto 0);
  signal axi4_0_S_RDATA : std_logic_vector(63 downto 0);
  signal axi4_0_S_RLAST : std_logic_vector(1 downto 0);
  signal axi4_0_S_RREADY : std_logic_vector(1 downto 0);
  signal axi4_0_S_RRESP : std_logic_vector(3 downto 0);
  signal axi4_0_S_RVALID : std_logic_vector(1 downto 0);
  signal axi4_0_S_WDATA : std_logic_vector(63 downto 0);
  signal axi4_0_S_WLAST : std_logic_vector(1 downto 0);
  signal axi4_0_S_WREADY : std_logic_vector(1 downto 0);
  signal axi4_0_S_WSTRB : std_logic_vector(7 downto 0);
  signal axi4_0_S_WVALID : std_logic_vector(1 downto 0);
  signal axi_bram_ctrl_0_BRAM_PORTA_BRAM_Addr : std_logic_vector(0 to 31);
  signal axi_bram_ctrl_0_BRAM_PORTA_BRAM_Clk : std_logic;
  signal axi_bram_ctrl_0_BRAM_PORTA_BRAM_Din : std_logic_vector(31 downto 0);
  signal axi_bram_ctrl_0_BRAM_PORTA_BRAM_Dout : std_logic_vector(0 to 31);
  signal axi_bram_ctrl_0_BRAM_PORTA_BRAM_EN : std_logic;
  signal axi_bram_ctrl_0_BRAM_PORTA_BRAM_Rst : std_logic;
  signal axi_bram_ctrl_0_BRAM_PORTA_BRAM_WEN : std_logic_vector(0 to 3);
  signal axi_bram_ctrl_1_BRAM_PORTA_BRAM_Addr : std_logic_vector(0 to 31);
  signal axi_bram_ctrl_1_BRAM_PORTA_BRAM_Clk : std_logic;
  signal axi_bram_ctrl_1_BRAM_PORTA_BRAM_Din : std_logic_vector(31 downto 0);
  signal axi_bram_ctrl_1_BRAM_PORTA_BRAM_Dout : std_logic_vector(0 to 31);
  signal axi_bram_ctrl_1_BRAM_PORTA_BRAM_EN : std_logic;
  signal axi_bram_ctrl_1_BRAM_PORTA_BRAM_Rst : std_logic;
  signal axi_bram_ctrl_1_BRAM_PORTA_BRAM_WEN : std_logic_vector(0 to 3);
  signal axi_bram_ctrl_2_BRAM_PORTA_BRAM_Addr : std_logic_vector(0 to 31);
  signal axi_bram_ctrl_2_BRAM_PORTA_BRAM_Clk : std_logic;
  signal axi_bram_ctrl_2_BRAM_PORTA_BRAM_Din : std_logic_vector(31 downto 0);
  signal axi_bram_ctrl_2_BRAM_PORTA_BRAM_Dout : std_logic_vector(0 to 31);
  signal axi_bram_ctrl_2_BRAM_PORTA_BRAM_EN : std_logic;
  signal axi_bram_ctrl_2_BRAM_PORTA_BRAM_Rst : std_logic;
  signal axi_bram_ctrl_2_BRAM_PORTA_BRAM_WEN : std_logic_vector(0 to 3);
  signal clk_100_0000MHzPLL0 : std_logic;
  signal load_bram_0_load_bram_dout : std_logic_vector(31 downto 0);
  signal load_bram_0_load_bram_wr_en_fifo : std_logic;
  signal net_gnd0 : std_logic;
  signal net_gnd2 : std_logic_vector(1 downto 0);
  signal net_gnd3 : std_logic_vector(2 downto 0);
  signal net_gnd4 : std_logic_vector(3 downto 0);
  signal net_gnd8 : std_logic_vector(7 downto 0);
  signal net_gnd32 : std_logic_vector(31 downto 0);
  signal pgassign1 : std_logic_vector(1 downto 0);
  signal pgassign2 : std_logic_vector(2 downto 0);
  signal proc_sys_reset_0_BUS_STRUCT_RESET : std_logic_vector(0 to 0);
  signal proc_sys_reset_0_Dcm_locked : std_logic;
  signal proc_sys_reset_0_Interconnect_aresetn : std_logic_vector(0 to 0);

begin

  -- Internal assignments

  pgassign1(1) <= clk_100_0000MHzPLL0;
  pgassign1(0) <= clk_100_0000MHzPLL0;
  pgassign2(2) <= clk_100_0000MHzPLL0;
  pgassign2(1) <= clk_100_0000MHzPLL0;
  pgassign2(0) <= clk_100_0000MHzPLL0;
  net_gnd0 <= '0';
  net_gnd2(1 downto 0) <= B"00";
  net_gnd3(2 downto 0) <= B"000";
  net_gnd32(31 downto 0) <= B"00000000000000000000000000000000";
  net_gnd4(3 downto 0) <= B"0000";
  net_gnd8(7 downto 0) <= B"00000000";

  proc_sys_reset_0 : system_proc_sys_reset_0_wrapper
    port map (
      Slowest_sync_clk => pgassign1(1),
      Ext_Reset_In => RESET,
      Aux_Reset_In => net_gnd0,
      MB_Debug_Sys_Rst => net_gnd0,
      Core_Reset_Req_0 => net_gnd0,
      Chip_Reset_Req_0 => net_gnd0,
      System_Reset_Req_0 => net_gnd0,
      Core_Reset_Req_1 => net_gnd0,
      Chip_Reset_Req_1 => net_gnd0,
      System_Reset_Req_1 => net_gnd0,
      Dcm_locked => proc_sys_reset_0_Dcm_locked,
      RstcPPCresetcore_0 => open,
      RstcPPCresetchip_0 => open,
      RstcPPCresetsys_0 => open,
      RstcPPCresetcore_1 => open,
      RstcPPCresetchip_1 => open,
      RstcPPCresetsys_1 => open,
      MB_Reset => open,
      Bus_Struct_Reset => proc_sys_reset_0_BUS_STRUCT_RESET(0 to 0),
      Peripheral_Reset => open,
      Interconnect_aresetn => proc_sys_reset_0_Interconnect_aresetn(0 to 0),
      Peripheral_aresetn => open
    );

  load_bram_0 : system_load_bram_0_wrapper
    port map (
      load_bram_dout => load_bram_0_load_bram_dout,
      load_bram_wr_en_fifo => load_bram_0_load_bram_wr_en_fifo,
      S_AXI_ACLK => pgassign1(1),
      S_AXI_ARESETN => net_gnd0,
      S_AXI_AWADDR => net_gnd32,
      S_AXI_AWVALID => net_gnd0,
      S_AXI_WDATA => net_gnd32,
      S_AXI_WSTRB => net_gnd4,
      S_AXI_WVALID => net_gnd0,
      S_AXI_BREADY => net_gnd0,
      S_AXI_ARADDR => net_gnd32,
      S_AXI_ARVALID => net_gnd0,
      S_AXI_RREADY => net_gnd0,
      S_AXI_ARREADY => open,
      S_AXI_RDATA => open,
      S_AXI_RRESP => open,
      S_AXI_RVALID => open,
      S_AXI_WREADY => open,
      S_AXI_BRESP => open,
      S_AXI_BVALID => open,
      S_AXI_AWREADY => open,
      m_axi_aclk => pgassign1(1),
      m_axi_aresetn => axi4_0_S_ARESETN(0),
      md_error => open,
      m_axi_arready => axi4_0_S_ARREADY(0),
      m_axi_arvalid => axi4_0_S_ARVALID(0),
      m_axi_araddr => axi4_0_S_ARADDR(31 downto 0),
      m_axi_arlen => axi4_0_S_ARLEN(7 downto 0),
      m_axi_arsize => axi4_0_S_ARSIZE(2 downto 0),
      m_axi_arburst => axi4_0_S_ARBURST(1 downto 0),
      m_axi_arprot => axi4_0_S_ARPROT(2 downto 0),
      m_axi_arcache => axi4_0_S_ARCACHE(3 downto 0),
      m_axi_rready => axi4_0_S_RREADY(0),
      m_axi_rvalid => axi4_0_S_RVALID(0),
      m_axi_rdata => axi4_0_S_RDATA(31 downto 0),
      m_axi_rresp => axi4_0_S_RRESP(1 downto 0),
      m_axi_rlast => axi4_0_S_RLAST(0),
      m_axi_awready => axi4_0_S_AWREADY(0),
      m_axi_awvalid => axi4_0_S_AWVALID(0),
      m_axi_awaddr => axi4_0_S_AWADDR(31 downto 0),
      m_axi_awlen => axi4_0_S_AWLEN(7 downto 0),
      m_axi_awsize => axi4_0_S_AWSIZE(2 downto 0),
      m_axi_awburst => axi4_0_S_AWBURST(1 downto 0),
      m_axi_awprot => axi4_0_S_AWPROT(2 downto 0),
      m_axi_awcache => axi4_0_S_AWCACHE(3 downto 0),
      m_axi_wready => axi4_0_S_WREADY(0),
      m_axi_wvalid => axi4_0_S_WVALID(0),
      m_axi_wdata => axi4_0_S_WDATA(31 downto 0),
      m_axi_wstrb => axi4_0_S_WSTRB(3 downto 0),
      m_axi_wlast => axi4_0_S_WLAST(0),
      m_axi_bready => axi4_0_S_BREADY(0),
      m_axi_bvalid => axi4_0_S_BVALID(0),
      m_axi_bresp => axi4_0_S_BRESP(1 downto 0)
    );

  disparity_out_0 : system_disparity_out_0_wrapper
    port map (
      S_AXI_ACLK => pgassign1(1),
      S_AXI_ARESETN => net_gnd0,
      S_AXI_AWADDR => net_gnd32,
      S_AXI_AWVALID => net_gnd0,
      S_AXI_WDATA => net_gnd32,
      S_AXI_WSTRB => net_gnd4,
      S_AXI_WVALID => net_gnd0,
      S_AXI_BREADY => net_gnd0,
      S_AXI_ARADDR => net_gnd32,
      S_AXI_ARVALID => net_gnd0,
      S_AXI_RREADY => net_gnd0,
      S_AXI_ARREADY => open,
      S_AXI_RDATA => open,
      S_AXI_RRESP => open,
      S_AXI_RVALID => open,
      S_AXI_WREADY => open,
      S_AXI_BRESP => open,
      S_AXI_BVALID => open,
      S_AXI_AWREADY => open,
      m_axi_aclk => pgassign1(1),
      m_axi_aresetn => axi4_0_S_ARESETN(1),
      md_error => open,
      m_axi_arready => axi4_0_S_ARREADY(1),
      m_axi_arvalid => axi4_0_S_ARVALID(1),
      m_axi_araddr => axi4_0_S_ARADDR(63 downto 32),
      m_axi_arlen => axi4_0_S_ARLEN(15 downto 8),
      m_axi_arsize => axi4_0_S_ARSIZE(5 downto 3),
      m_axi_arburst => axi4_0_S_ARBURST(3 downto 2),
      m_axi_arprot => axi4_0_S_ARPROT(5 downto 3),
      m_axi_arcache => axi4_0_S_ARCACHE(7 downto 4),
      m_axi_rready => axi4_0_S_RREADY(1),
      m_axi_rvalid => axi4_0_S_RVALID(1),
      m_axi_rdata => axi4_0_S_RDATA(63 downto 32),
      m_axi_rresp => axi4_0_S_RRESP(3 downto 2),
      m_axi_rlast => axi4_0_S_RLAST(1),
      m_axi_awready => axi4_0_S_AWREADY(1),
      m_axi_awvalid => axi4_0_S_AWVALID(1),
      m_axi_awaddr => axi4_0_S_AWADDR(63 downto 32),
      m_axi_awlen => axi4_0_S_AWLEN(15 downto 8),
      m_axi_awsize => axi4_0_S_AWSIZE(5 downto 3),
      m_axi_awburst => axi4_0_S_AWBURST(3 downto 2),
      m_axi_awprot => axi4_0_S_AWPROT(5 downto 3),
      m_axi_awcache => axi4_0_S_AWCACHE(7 downto 4),
      m_axi_wready => axi4_0_S_WREADY(1),
      m_axi_wvalid => axi4_0_S_WVALID(1),
      m_axi_wdata => axi4_0_S_WDATA(63 downto 32),
      m_axi_wstrb => axi4_0_S_WSTRB(7 downto 4),
      m_axi_wlast => axi4_0_S_WLAST(1),
      m_axi_bready => axi4_0_S_BREADY(1),
      m_axi_bvalid => axi4_0_S_BVALID(1),
      m_axi_bresp => axi4_0_S_BRESP(3 downto 2),
      DISP_D_I => load_bram_0_load_bram_dout,
      DISP_CLK_I => clk_100_0000MHzPLL0,
      RESET_I => proc_sys_reset_0_BUS_STRUCT_RESET(0),
      DISP_EN => load_bram_0_load_bram_wr_en_fifo
    );

  clock_generator_0 : system_clock_generator_0_wrapper
    port map (
      CLKIN => GCLK,
      CLKOUT0 => open,
      CLKOUT1 => open,
      CLKOUT2 => clk_100_0000MHzPLL0,
      CLKOUT3 => open,
      CLKOUT4 => open,
      CLKOUT5 => open,
      CLKOUT6 => open,
      CLKOUT7 => open,
      CLKOUT8 => open,
      CLKOUT9 => open,
      CLKOUT10 => open,
      CLKOUT11 => open,
      CLKOUT12 => open,
      CLKOUT13 => open,
      CLKOUT14 => open,
      CLKOUT15 => open,
      CLKFBIN => net_gnd0,
      CLKFBOUT => open,
      PSCLK => net_gnd0,
      PSEN => net_gnd0,
      PSINCDEC => net_gnd0,
      PSDONE => open,
      RST => RESET,
      LOCKED => proc_sys_reset_0_Dcm_locked
    );

  axi4_0 : system_axi4_0_wrapper
    port map (
      INTERCONNECT_ACLK => pgassign1(1),
      INTERCONNECT_ARESETN => proc_sys_reset_0_Interconnect_aresetn(0),
      S_AXI_ARESET_OUT_N => axi4_0_S_ARESETN,
      M_AXI_ARESET_OUT_N => axi4_0_M_ARESETN,
      IRQ => open,
      S_AXI_ACLK => pgassign1,
      S_AXI_AWID => net_gnd2,
      S_AXI_AWADDR => axi4_0_S_AWADDR,
      S_AXI_AWLEN => axi4_0_S_AWLEN,
      S_AXI_AWSIZE => axi4_0_S_AWSIZE,
      S_AXI_AWBURST => axi4_0_S_AWBURST,
      S_AXI_AWLOCK => net_gnd4,
      S_AXI_AWCACHE => axi4_0_S_AWCACHE,
      S_AXI_AWPROT => axi4_0_S_AWPROT,
      S_AXI_AWQOS => net_gnd8,
      S_AXI_AWUSER => net_gnd2,
      S_AXI_AWVALID => axi4_0_S_AWVALID,
      S_AXI_AWREADY => axi4_0_S_AWREADY,
      S_AXI_WID => net_gnd2,
      S_AXI_WDATA => axi4_0_S_WDATA,
      S_AXI_WSTRB => axi4_0_S_WSTRB,
      S_AXI_WLAST => axi4_0_S_WLAST,
      S_AXI_WUSER => net_gnd2,
      S_AXI_WVALID => axi4_0_S_WVALID,
      S_AXI_WREADY => axi4_0_S_WREADY,
      S_AXI_BID => open,
      S_AXI_BRESP => axi4_0_S_BRESP,
      S_AXI_BUSER => open,
      S_AXI_BVALID => axi4_0_S_BVALID,
      S_AXI_BREADY => axi4_0_S_BREADY,
      S_AXI_ARID => net_gnd2,
      S_AXI_ARADDR => axi4_0_S_ARADDR,
      S_AXI_ARLEN => axi4_0_S_ARLEN,
      S_AXI_ARSIZE => axi4_0_S_ARSIZE,
      S_AXI_ARBURST => axi4_0_S_ARBURST,
      S_AXI_ARLOCK => net_gnd4,
      S_AXI_ARCACHE => axi4_0_S_ARCACHE,
      S_AXI_ARPROT => axi4_0_S_ARPROT,
      S_AXI_ARQOS => net_gnd8,
      S_AXI_ARUSER => net_gnd2,
      S_AXI_ARVALID => axi4_0_S_ARVALID,
      S_AXI_ARREADY => axi4_0_S_ARREADY,
      S_AXI_RID => open,
      S_AXI_RDATA => axi4_0_S_RDATA,
      S_AXI_RRESP => axi4_0_S_RRESP,
      S_AXI_RLAST => axi4_0_S_RLAST,
      S_AXI_RUSER => open,
      S_AXI_RVALID => axi4_0_S_RVALID,
      S_AXI_RREADY => axi4_0_S_RREADY,
      M_AXI_ACLK => pgassign2,
      M_AXI_AWID => axi4_0_M_AWID,
      M_AXI_AWADDR => axi4_0_M_AWADDR,
      M_AXI_AWLEN => axi4_0_M_AWLEN,
      M_AXI_AWSIZE => axi4_0_M_AWSIZE,
      M_AXI_AWBURST => axi4_0_M_AWBURST,
      M_AXI_AWLOCK => axi4_0_M_AWLOCK,
      M_AXI_AWCACHE => axi4_0_M_AWCACHE,
      M_AXI_AWPROT => axi4_0_M_AWPROT,
      M_AXI_AWREGION => open,
      M_AXI_AWQOS => open,
      M_AXI_AWUSER => open,
      M_AXI_AWVALID => axi4_0_M_AWVALID,
      M_AXI_AWREADY => axi4_0_M_AWREADY,
      M_AXI_WID => open,
      M_AXI_WDATA => axi4_0_M_WDATA,
      M_AXI_WSTRB => axi4_0_M_WSTRB,
      M_AXI_WLAST => axi4_0_M_WLAST,
      M_AXI_WUSER => open,
      M_AXI_WVALID => axi4_0_M_WVALID,
      M_AXI_WREADY => axi4_0_M_WREADY,
      M_AXI_BID => axi4_0_M_BID,
      M_AXI_BRESP => axi4_0_M_BRESP,
      M_AXI_BUSER => net_gnd3,
      M_AXI_BVALID => axi4_0_M_BVALID,
      M_AXI_BREADY => axi4_0_M_BREADY,
      M_AXI_ARID => axi4_0_M_ARID,
      M_AXI_ARADDR => axi4_0_M_ARADDR,
      M_AXI_ARLEN => axi4_0_M_ARLEN,
      M_AXI_ARSIZE => axi4_0_M_ARSIZE,
      M_AXI_ARBURST => axi4_0_M_ARBURST,
      M_AXI_ARLOCK => axi4_0_M_ARLOCK,
      M_AXI_ARCACHE => axi4_0_M_ARCACHE,
      M_AXI_ARPROT => axi4_0_M_ARPROT,
      M_AXI_ARREGION => open,
      M_AXI_ARQOS => open,
      M_AXI_ARUSER => open,
      M_AXI_ARVALID => axi4_0_M_ARVALID,
      M_AXI_ARREADY => axi4_0_M_ARREADY,
      M_AXI_RID => axi4_0_M_RID,
      M_AXI_RDATA => axi4_0_M_RDATA,
      M_AXI_RRESP => axi4_0_M_RRESP,
      M_AXI_RLAST => axi4_0_M_RLAST,
      M_AXI_RUSER => net_gnd3,
      M_AXI_RVALID => axi4_0_M_RVALID,
      M_AXI_RREADY => axi4_0_M_RREADY,
      S_AXI_CTRL_AWADDR => net_gnd32,
      S_AXI_CTRL_AWVALID => net_gnd0,
      S_AXI_CTRL_AWREADY => open,
      S_AXI_CTRL_WDATA => net_gnd32,
      S_AXI_CTRL_WVALID => net_gnd0,
      S_AXI_CTRL_WREADY => open,
      S_AXI_CTRL_BRESP => open,
      S_AXI_CTRL_BVALID => open,
      S_AXI_CTRL_BREADY => net_gnd0,
      S_AXI_CTRL_ARADDR => net_gnd32,
      S_AXI_CTRL_ARVALID => net_gnd0,
      S_AXI_CTRL_ARREADY => open,
      S_AXI_CTRL_RDATA => open,
      S_AXI_CTRL_RRESP => open,
      S_AXI_CTRL_RVALID => open,
      S_AXI_CTRL_RREADY => net_gnd0,
      INTERCONNECT_ARESET_OUT_N => open,
      DEBUG_AW_TRANS_SEQ => open,
      DEBUG_AW_ARB_GRANT => open,
      DEBUG_AR_TRANS_SEQ => open,
      DEBUG_AR_ARB_GRANT => open,
      DEBUG_AW_TRANS_QUAL => open,
      DEBUG_AW_ACCEPT_CNT => open,
      DEBUG_AW_ACTIVE_THREAD => open,
      DEBUG_AW_ACTIVE_TARGET => open,
      DEBUG_AW_ACTIVE_REGION => open,
      DEBUG_AW_ERROR => open,
      DEBUG_AW_TARGET => open,
      DEBUG_AR_TRANS_QUAL => open,
      DEBUG_AR_ACCEPT_CNT => open,
      DEBUG_AR_ACTIVE_THREAD => open,
      DEBUG_AR_ACTIVE_TARGET => open,
      DEBUG_AR_ACTIVE_REGION => open,
      DEBUG_AR_ERROR => open,
      DEBUG_AR_TARGET => open,
      DEBUG_B_TRANS_SEQ => open,
      DEBUG_R_BEAT_CNT => open,
      DEBUG_R_TRANS_SEQ => open,
      DEBUG_AW_ISSUING_CNT => open,
      DEBUG_AR_ISSUING_CNT => open,
      DEBUG_W_BEAT_CNT => open,
      DEBUG_W_TRANS_SEQ => open,
      DEBUG_BID_TARGET => open,
      DEBUG_BID_ERROR => open,
      DEBUG_RID_TARGET => open,
      DEBUG_RID_ERROR => open,
      DEBUG_SR_SC_ARADDR => open,
      DEBUG_SR_SC_ARADDRCONTROL => open,
      DEBUG_SR_SC_AWADDR => open,
      DEBUG_SR_SC_AWADDRCONTROL => open,
      DEBUG_SR_SC_BRESP => open,
      DEBUG_SR_SC_RDATA => open,
      DEBUG_SR_SC_RDATACONTROL => open,
      DEBUG_SR_SC_WDATA => open,
      DEBUG_SR_SC_WDATACONTROL => open,
      DEBUG_SC_SF_ARADDR => open,
      DEBUG_SC_SF_ARADDRCONTROL => open,
      DEBUG_SC_SF_AWADDR => open,
      DEBUG_SC_SF_AWADDRCONTROL => open,
      DEBUG_SC_SF_BRESP => open,
      DEBUG_SC_SF_RDATA => open,
      DEBUG_SC_SF_RDATACONTROL => open,
      DEBUG_SC_SF_WDATA => open,
      DEBUG_SC_SF_WDATACONTROL => open,
      DEBUG_SF_CB_ARADDR => open,
      DEBUG_SF_CB_ARADDRCONTROL => open,
      DEBUG_SF_CB_AWADDR => open,
      DEBUG_SF_CB_AWADDRCONTROL => open,
      DEBUG_SF_CB_BRESP => open,
      DEBUG_SF_CB_RDATA => open,
      DEBUG_SF_CB_RDATACONTROL => open,
      DEBUG_SF_CB_WDATA => open,
      DEBUG_SF_CB_WDATACONTROL => open,
      DEBUG_CB_MF_ARADDR => open,
      DEBUG_CB_MF_ARADDRCONTROL => open,
      DEBUG_CB_MF_AWADDR => open,
      DEBUG_CB_MF_AWADDRCONTROL => open,
      DEBUG_CB_MF_BRESP => open,
      DEBUG_CB_MF_RDATA => open,
      DEBUG_CB_MF_RDATACONTROL => open,
      DEBUG_CB_MF_WDATA => open,
      DEBUG_CB_MF_WDATACONTROL => open,
      DEBUG_MF_MC_ARADDR => open,
      DEBUG_MF_MC_ARADDRCONTROL => open,
      DEBUG_MF_MC_AWADDR => open,
      DEBUG_MF_MC_AWADDRCONTROL => open,
      DEBUG_MF_MC_BRESP => open,
      DEBUG_MF_MC_RDATA => open,
      DEBUG_MF_MC_RDATACONTROL => open,
      DEBUG_MF_MC_WDATA => open,
      DEBUG_MF_MC_WDATACONTROL => open,
      DEBUG_MC_MP_ARADDR => open,
      DEBUG_MC_MP_ARADDRCONTROL => open,
      DEBUG_MC_MP_AWADDR => open,
      DEBUG_MC_MP_AWADDRCONTROL => open,
      DEBUG_MC_MP_BRESP => open,
      DEBUG_MC_MP_RDATA => open,
      DEBUG_MC_MP_RDATACONTROL => open,
      DEBUG_MC_MP_WDATA => open,
      DEBUG_MC_MP_WDATACONTROL => open,
      DEBUG_MP_MR_ARADDR => open,
      DEBUG_MP_MR_ARADDRCONTROL => open,
      DEBUG_MP_MR_AWADDR => open,
      DEBUG_MP_MR_AWADDRCONTROL => open,
      DEBUG_MP_MR_BRESP => open,
      DEBUG_MP_MR_RDATA => open,
      DEBUG_MP_MR_RDATACONTROL => open,
      DEBUG_MP_MR_WDATA => open,
      DEBUG_MP_MR_WDATACONTROL => open
    );

  bram_block_0 : system_bram_block_0_wrapper
    port map (
      BRAM_Rst_A => axi_bram_ctrl_0_BRAM_PORTA_BRAM_Rst,
      BRAM_Clk_A => axi_bram_ctrl_0_BRAM_PORTA_BRAM_Clk,
      BRAM_EN_A => axi_bram_ctrl_0_BRAM_PORTA_BRAM_EN,
      BRAM_WEN_A => axi_bram_ctrl_0_BRAM_PORTA_BRAM_WEN,
      BRAM_Addr_A => axi_bram_ctrl_0_BRAM_PORTA_BRAM_Addr,
      BRAM_Din_A => axi_bram_ctrl_0_BRAM_PORTA_BRAM_Din(31 downto 0),
      BRAM_Dout_A => axi_bram_ctrl_0_BRAM_PORTA_BRAM_Dout,
      BRAM_Rst_B => net_gnd0,
      BRAM_Clk_B => net_gnd0,
      BRAM_EN_B => net_gnd0,
      BRAM_WEN_B => net_gnd4(3 downto 0),
      BRAM_Addr_B => net_gnd32(31 downto 0),
      BRAM_Din_B => open,
      BRAM_Dout_B => net_gnd32(31 downto 0)
    );

  axi_bram_ctrl_0 : system_axi_bram_ctrl_0_wrapper
    port map (
      ECC_Interrupt => open,
      ECC_UE => open,
      S_AXI_ACLK => pgassign1(1),
      S_AXI_ARESETN => axi4_0_M_ARESETN(0),
      S_AXI_AWID => axi4_0_M_AWID(0 downto 0),
      S_AXI_AWADDR => axi4_0_M_AWADDR(31 downto 0),
      S_AXI_AWLEN => axi4_0_M_AWLEN(7 downto 0),
      S_AXI_AWSIZE => axi4_0_M_AWSIZE(2 downto 0),
      S_AXI_AWBURST => axi4_0_M_AWBURST(1 downto 0),
      S_AXI_AWLOCK => axi4_0_M_AWLOCK(0),
      S_AXI_AWCACHE => axi4_0_M_AWCACHE(3 downto 0),
      S_AXI_AWPROT => axi4_0_M_AWPROT(2 downto 0),
      S_AXI_AWVALID => axi4_0_M_AWVALID(0),
      S_AXI_AWREADY => axi4_0_M_AWREADY(0),
      S_AXI_WDATA => axi4_0_M_WDATA(31 downto 0),
      S_AXI_WSTRB => axi4_0_M_WSTRB(3 downto 0),
      S_AXI_WLAST => axi4_0_M_WLAST(0),
      S_AXI_WVALID => axi4_0_M_WVALID(0),
      S_AXI_WREADY => axi4_0_M_WREADY(0),
      S_AXI_BID => axi4_0_M_BID(0 downto 0),
      S_AXI_BRESP => axi4_0_M_BRESP(1 downto 0),
      S_AXI_BVALID => axi4_0_M_BVALID(0),
      S_AXI_BREADY => axi4_0_M_BREADY(0),
      S_AXI_ARID => axi4_0_M_ARID(0 downto 0),
      S_AXI_ARADDR => axi4_0_M_ARADDR(31 downto 0),
      S_AXI_ARLEN => axi4_0_M_ARLEN(7 downto 0),
      S_AXI_ARSIZE => axi4_0_M_ARSIZE(2 downto 0),
      S_AXI_ARBURST => axi4_0_M_ARBURST(1 downto 0),
      S_AXI_ARLOCK => axi4_0_M_ARLOCK(0),
      S_AXI_ARCACHE => axi4_0_M_ARCACHE(3 downto 0),
      S_AXI_ARPROT => axi4_0_M_ARPROT(2 downto 0),
      S_AXI_ARVALID => axi4_0_M_ARVALID(0),
      S_AXI_ARREADY => axi4_0_M_ARREADY(0),
      S_AXI_RID => axi4_0_M_RID(0 downto 0),
      S_AXI_RDATA => axi4_0_M_RDATA(31 downto 0),
      S_AXI_RRESP => axi4_0_M_RRESP(1 downto 0),
      S_AXI_RVALID => axi4_0_M_RVALID(0),
      S_AXI_RREADY => axi4_0_M_RREADY(0),
      S_AXI_RLAST => axi4_0_M_RLAST(0),
      S_AXI_CTRL_AWVALID => net_gnd0,
      S_AXI_CTRL_AWREADY => open,
      S_AXI_CTRL_AWADDR => net_gnd32,
      S_AXI_CTRL_WVALID => net_gnd0,
      S_AXI_CTRL_WREADY => open,
      S_AXI_CTRL_WDATA => net_gnd32,
      S_AXI_CTRL_BRESP => open,
      S_AXI_CTRL_BVALID => open,
      S_AXI_CTRL_BREADY => net_gnd0,
      S_AXI_CTRL_ARVALID => net_gnd0,
      S_AXI_CTRL_ARREADY => open,
      S_AXI_CTRL_ARADDR => net_gnd32,
      S_AXI_CTRL_RVALID => open,
      S_AXI_CTRL_RREADY => net_gnd0,
      S_AXI_CTRL_RDATA => open,
      S_AXI_CTRL_RRESP => open,
      BRAM_Rst_A => axi_bram_ctrl_0_BRAM_PORTA_BRAM_Rst,
      BRAM_Clk_A => axi_bram_ctrl_0_BRAM_PORTA_BRAM_Clk,
      BRAM_En_A => axi_bram_ctrl_0_BRAM_PORTA_BRAM_EN,
      BRAM_WE_A => axi_bram_ctrl_0_BRAM_PORTA_BRAM_WEN(0 to 3),
      BRAM_Addr_A => axi_bram_ctrl_0_BRAM_PORTA_BRAM_Addr(0 to 31),
      BRAM_WrData_A => axi_bram_ctrl_0_BRAM_PORTA_BRAM_Dout(0 to 31),
      BRAM_RdData_A => axi_bram_ctrl_0_BRAM_PORTA_BRAM_Din,
      BRAM_Rst_B => open,
      BRAM_Clk_B => open,
      BRAM_En_B => open,
      BRAM_WE_B => open,
      BRAM_Addr_B => open,
      BRAM_WrData_B => open,
      BRAM_RdData_B => net_gnd32
    );

  bram_block_1 : system_bram_block_1_wrapper
    port map (
      BRAM_Rst_A => axi_bram_ctrl_1_BRAM_PORTA_BRAM_Rst,
      BRAM_Clk_A => axi_bram_ctrl_1_BRAM_PORTA_BRAM_Clk,
      BRAM_EN_A => axi_bram_ctrl_1_BRAM_PORTA_BRAM_EN,
      BRAM_WEN_A => axi_bram_ctrl_1_BRAM_PORTA_BRAM_WEN,
      BRAM_Addr_A => axi_bram_ctrl_1_BRAM_PORTA_BRAM_Addr,
      BRAM_Din_A => axi_bram_ctrl_1_BRAM_PORTA_BRAM_Din(31 downto 0),
      BRAM_Dout_A => axi_bram_ctrl_1_BRAM_PORTA_BRAM_Dout,
      BRAM_Rst_B => net_gnd0,
      BRAM_Clk_B => net_gnd0,
      BRAM_EN_B => net_gnd0,
      BRAM_WEN_B => net_gnd4(3 downto 0),
      BRAM_Addr_B => net_gnd32(31 downto 0),
      BRAM_Din_B => open,
      BRAM_Dout_B => net_gnd32(31 downto 0)
    );

  bram_block_2 : system_bram_block_2_wrapper
    port map (
      BRAM_Rst_A => axi_bram_ctrl_2_BRAM_PORTA_BRAM_Rst,
      BRAM_Clk_A => axi_bram_ctrl_2_BRAM_PORTA_BRAM_Clk,
      BRAM_EN_A => axi_bram_ctrl_2_BRAM_PORTA_BRAM_EN,
      BRAM_WEN_A => axi_bram_ctrl_2_BRAM_PORTA_BRAM_WEN,
      BRAM_Addr_A => axi_bram_ctrl_2_BRAM_PORTA_BRAM_Addr,
      BRAM_Din_A => axi_bram_ctrl_2_BRAM_PORTA_BRAM_Din(31 downto 0),
      BRAM_Dout_A => axi_bram_ctrl_2_BRAM_PORTA_BRAM_Dout,
      BRAM_Rst_B => net_gnd0,
      BRAM_Clk_B => net_gnd0,
      BRAM_EN_B => net_gnd0,
      BRAM_WEN_B => net_gnd4(3 downto 0),
      BRAM_Addr_B => net_gnd32(31 downto 0),
      BRAM_Din_B => open,
      BRAM_Dout_B => net_gnd32(31 downto 0)
    );

  axi_bram_ctrl_1 : system_axi_bram_ctrl_1_wrapper
    port map (
      ECC_Interrupt => open,
      ECC_UE => open,
      S_AXI_ACLK => pgassign1(1),
      S_AXI_ARESETN => axi4_0_M_ARESETN(1),
      S_AXI_AWID => axi4_0_M_AWID(1 downto 1),
      S_AXI_AWADDR => axi4_0_M_AWADDR(63 downto 32),
      S_AXI_AWLEN => axi4_0_M_AWLEN(15 downto 8),
      S_AXI_AWSIZE => axi4_0_M_AWSIZE(5 downto 3),
      S_AXI_AWBURST => axi4_0_M_AWBURST(3 downto 2),
      S_AXI_AWLOCK => axi4_0_M_AWLOCK(2),
      S_AXI_AWCACHE => axi4_0_M_AWCACHE(7 downto 4),
      S_AXI_AWPROT => axi4_0_M_AWPROT(5 downto 3),
      S_AXI_AWVALID => axi4_0_M_AWVALID(1),
      S_AXI_AWREADY => axi4_0_M_AWREADY(1),
      S_AXI_WDATA => axi4_0_M_WDATA(63 downto 32),
      S_AXI_WSTRB => axi4_0_M_WSTRB(7 downto 4),
      S_AXI_WLAST => axi4_0_M_WLAST(1),
      S_AXI_WVALID => axi4_0_M_WVALID(1),
      S_AXI_WREADY => axi4_0_M_WREADY(1),
      S_AXI_BID => axi4_0_M_BID(1 downto 1),
      S_AXI_BRESP => axi4_0_M_BRESP(3 downto 2),
      S_AXI_BVALID => axi4_0_M_BVALID(1),
      S_AXI_BREADY => axi4_0_M_BREADY(1),
      S_AXI_ARID => axi4_0_M_ARID(1 downto 1),
      S_AXI_ARADDR => axi4_0_M_ARADDR(63 downto 32),
      S_AXI_ARLEN => axi4_0_M_ARLEN(15 downto 8),
      S_AXI_ARSIZE => axi4_0_M_ARSIZE(5 downto 3),
      S_AXI_ARBURST => axi4_0_M_ARBURST(3 downto 2),
      S_AXI_ARLOCK => axi4_0_M_ARLOCK(2),
      S_AXI_ARCACHE => axi4_0_M_ARCACHE(7 downto 4),
      S_AXI_ARPROT => axi4_0_M_ARPROT(5 downto 3),
      S_AXI_ARVALID => axi4_0_M_ARVALID(1),
      S_AXI_ARREADY => axi4_0_M_ARREADY(1),
      S_AXI_RID => axi4_0_M_RID(1 downto 1),
      S_AXI_RDATA => axi4_0_M_RDATA(63 downto 32),
      S_AXI_RRESP => axi4_0_M_RRESP(3 downto 2),
      S_AXI_RVALID => axi4_0_M_RVALID(1),
      S_AXI_RREADY => axi4_0_M_RREADY(1),
      S_AXI_RLAST => axi4_0_M_RLAST(1),
      S_AXI_CTRL_AWVALID => net_gnd0,
      S_AXI_CTRL_AWREADY => open,
      S_AXI_CTRL_AWADDR => net_gnd32,
      S_AXI_CTRL_WVALID => net_gnd0,
      S_AXI_CTRL_WREADY => open,
      S_AXI_CTRL_WDATA => net_gnd32,
      S_AXI_CTRL_BRESP => open,
      S_AXI_CTRL_BVALID => open,
      S_AXI_CTRL_BREADY => net_gnd0,
      S_AXI_CTRL_ARVALID => net_gnd0,
      S_AXI_CTRL_ARREADY => open,
      S_AXI_CTRL_ARADDR => net_gnd32,
      S_AXI_CTRL_RVALID => open,
      S_AXI_CTRL_RREADY => net_gnd0,
      S_AXI_CTRL_RDATA => open,
      S_AXI_CTRL_RRESP => open,
      BRAM_Rst_A => axi_bram_ctrl_1_BRAM_PORTA_BRAM_Rst,
      BRAM_Clk_A => axi_bram_ctrl_1_BRAM_PORTA_BRAM_Clk,
      BRAM_En_A => axi_bram_ctrl_1_BRAM_PORTA_BRAM_EN,
      BRAM_WE_A => axi_bram_ctrl_1_BRAM_PORTA_BRAM_WEN(0 to 3),
      BRAM_Addr_A => axi_bram_ctrl_1_BRAM_PORTA_BRAM_Addr(0 to 31),
      BRAM_WrData_A => axi_bram_ctrl_1_BRAM_PORTA_BRAM_Dout(0 to 31),
      BRAM_RdData_A => axi_bram_ctrl_1_BRAM_PORTA_BRAM_Din,
      BRAM_Rst_B => open,
      BRAM_Clk_B => open,
      BRAM_En_B => open,
      BRAM_WE_B => open,
      BRAM_Addr_B => open,
      BRAM_WrData_B => open,
      BRAM_RdData_B => net_gnd32
    );

  axi_bram_ctrl_2 : system_axi_bram_ctrl_2_wrapper
    port map (
      ECC_Interrupt => open,
      ECC_UE => open,
      S_AXI_ACLK => pgassign1(1),
      S_AXI_ARESETN => axi4_0_M_ARESETN(2),
      S_AXI_AWID => axi4_0_M_AWID(2 downto 2),
      S_AXI_AWADDR => axi4_0_M_AWADDR(95 downto 64),
      S_AXI_AWLEN => axi4_0_M_AWLEN(23 downto 16),
      S_AXI_AWSIZE => axi4_0_M_AWSIZE(8 downto 6),
      S_AXI_AWBURST => axi4_0_M_AWBURST(5 downto 4),
      S_AXI_AWLOCK => axi4_0_M_AWLOCK(4),
      S_AXI_AWCACHE => axi4_0_M_AWCACHE(11 downto 8),
      S_AXI_AWPROT => axi4_0_M_AWPROT(8 downto 6),
      S_AXI_AWVALID => axi4_0_M_AWVALID(2),
      S_AXI_AWREADY => axi4_0_M_AWREADY(2),
      S_AXI_WDATA => axi4_0_M_WDATA(95 downto 64),
      S_AXI_WSTRB => axi4_0_M_WSTRB(11 downto 8),
      S_AXI_WLAST => axi4_0_M_WLAST(2),
      S_AXI_WVALID => axi4_0_M_WVALID(2),
      S_AXI_WREADY => axi4_0_M_WREADY(2),
      S_AXI_BID => axi4_0_M_BID(2 downto 2),
      S_AXI_BRESP => axi4_0_M_BRESP(5 downto 4),
      S_AXI_BVALID => axi4_0_M_BVALID(2),
      S_AXI_BREADY => axi4_0_M_BREADY(2),
      S_AXI_ARID => axi4_0_M_ARID(2 downto 2),
      S_AXI_ARADDR => axi4_0_M_ARADDR(95 downto 64),
      S_AXI_ARLEN => axi4_0_M_ARLEN(23 downto 16),
      S_AXI_ARSIZE => axi4_0_M_ARSIZE(8 downto 6),
      S_AXI_ARBURST => axi4_0_M_ARBURST(5 downto 4),
      S_AXI_ARLOCK => axi4_0_M_ARLOCK(4),
      S_AXI_ARCACHE => axi4_0_M_ARCACHE(11 downto 8),
      S_AXI_ARPROT => axi4_0_M_ARPROT(8 downto 6),
      S_AXI_ARVALID => axi4_0_M_ARVALID(2),
      S_AXI_ARREADY => axi4_0_M_ARREADY(2),
      S_AXI_RID => axi4_0_M_RID(2 downto 2),
      S_AXI_RDATA => axi4_0_M_RDATA(95 downto 64),
      S_AXI_RRESP => axi4_0_M_RRESP(5 downto 4),
      S_AXI_RVALID => axi4_0_M_RVALID(2),
      S_AXI_RREADY => axi4_0_M_RREADY(2),
      S_AXI_RLAST => axi4_0_M_RLAST(2),
      S_AXI_CTRL_AWVALID => net_gnd0,
      S_AXI_CTRL_AWREADY => open,
      S_AXI_CTRL_AWADDR => net_gnd32,
      S_AXI_CTRL_WVALID => net_gnd0,
      S_AXI_CTRL_WREADY => open,
      S_AXI_CTRL_WDATA => net_gnd32,
      S_AXI_CTRL_BRESP => open,
      S_AXI_CTRL_BVALID => open,
      S_AXI_CTRL_BREADY => net_gnd0,
      S_AXI_CTRL_ARVALID => net_gnd0,
      S_AXI_CTRL_ARREADY => open,
      S_AXI_CTRL_ARADDR => net_gnd32,
      S_AXI_CTRL_RVALID => open,
      S_AXI_CTRL_RREADY => net_gnd0,
      S_AXI_CTRL_RDATA => open,
      S_AXI_CTRL_RRESP => open,
      BRAM_Rst_A => axi_bram_ctrl_2_BRAM_PORTA_BRAM_Rst,
      BRAM_Clk_A => axi_bram_ctrl_2_BRAM_PORTA_BRAM_Clk,
      BRAM_En_A => axi_bram_ctrl_2_BRAM_PORTA_BRAM_EN,
      BRAM_WE_A => axi_bram_ctrl_2_BRAM_PORTA_BRAM_WEN(0 to 3),
      BRAM_Addr_A => axi_bram_ctrl_2_BRAM_PORTA_BRAM_Addr(0 to 31),
      BRAM_WrData_A => axi_bram_ctrl_2_BRAM_PORTA_BRAM_Dout(0 to 31),
      BRAM_RdData_A => axi_bram_ctrl_2_BRAM_PORTA_BRAM_Din,
      BRAM_Rst_B => open,
      BRAM_Clk_B => open,
      BRAM_En_B => open,
      BRAM_WE_B => open,
      BRAM_Addr_B => open,
      BRAM_WrData_B => open,
      BRAM_RdData_B => net_gnd32
    );

end architecture STRUCTURE;

