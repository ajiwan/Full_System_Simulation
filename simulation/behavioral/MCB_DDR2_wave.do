#  Simulation Model Generator
#  Xilinx EDK 14.2 EDK_P.28xd
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     MCB_DDR2_wave.do (Thu Apr 03 15:58:34 2014)
#
#  Module   system_mcb_ddr2_wrapper
#  Instance MCB_DDR2
#  Because EDK did not create the testbench, the user
#  specifies the path to the device under test, $tbpath.
#
set binopt {-logic}
set hexopt {-literal -hex}
if { [info exists PathSeparator] } { set ps $PathSeparator } else { set ps "/" }
if { ![info exists tbpath] } { set tbpath "${ps}system" }

  eval add wave -noupdate -divider {"MCB_DDR2"}
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}sysclk_2x
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}sysclk_2x_180
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}pll_ce_0
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}pll_ce_90
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}pll_lock
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}pll_lock_bufpll_o
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}sysclk_2x_bufpll_o
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}sysclk_2x_180_bufpll_o
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}pll_ce_0_bufpll_o
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}pll_ce_90_bufpll_o
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}sys_rst
  eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}mcbx_dram_addr
  eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}mcbx_dram_ba
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}mcbx_dram_ras_n
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}mcbx_dram_cas_n
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}mcbx_dram_we_n
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}mcbx_dram_cke
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}mcbx_dram_clk
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}mcbx_dram_clk_n
  eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}mcbx_dram_dq
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}mcbx_dram_dqs
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}mcbx_dram_dqs_n
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}mcbx_dram_udqs
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}mcbx_dram_udqs_n
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}mcbx_dram_udm
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}mcbx_dram_ldm
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}mcbx_dram_odt
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}mcbx_dram_ddr3_rst
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}rzq
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}zio
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}ui_clk
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}uo_done_cal
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s0_axi_aclk
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s0_axi_aresetn
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s0_axi_awid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s0_axi_awaddr
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s0_axi_awlen
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s0_axi_awsize
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s0_axi_awburst
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s0_axi_awlock
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s0_axi_awcache
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s0_axi_awprot
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s0_axi_awqos
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s0_axi_awvalid
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s0_axi_awready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s0_axi_wdata
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s0_axi_wstrb
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s0_axi_wlast
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s0_axi_wvalid
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s0_axi_wready
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s0_axi_bid
  eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s0_axi_bresp
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s0_axi_bvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s0_axi_bready
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s0_axi_arid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s0_axi_araddr
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s0_axi_arlen
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s0_axi_arsize
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s0_axi_arburst
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s0_axi_arlock
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s0_axi_arcache
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s0_axi_arprot
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s0_axi_arqos
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s0_axi_arvalid
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s0_axi_arready
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s0_axi_rid
  eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s0_axi_rdata
  eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s0_axi_rresp
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s0_axi_rlast
  eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s0_axi_rvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s0_axi_rready
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s1_axi_aclk
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s1_axi_aresetn
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_awid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_awaddr
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_awlen
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_awsize
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_awburst
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s1_axi_awlock
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_awcache
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_awprot
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_awqos
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s1_axi_awvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s1_axi_awready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_wdata
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_wstrb
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s1_axi_wlast
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s1_axi_wvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s1_axi_wready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_bid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_bresp
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s1_axi_bvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s1_axi_bready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_arid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_araddr
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_arlen
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_arsize
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_arburst
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s1_axi_arlock
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_arcache
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_arprot
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_arqos
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s1_axi_arvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s1_axi_arready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_rid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_rdata
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s1_axi_rresp
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s1_axi_rlast
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s1_axi_rvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s1_axi_rready
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s2_axi_aclk
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s2_axi_aresetn
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_awid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_awaddr
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_awlen
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_awsize
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_awburst
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s2_axi_awlock
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_awcache
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_awprot
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_awqos
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s2_axi_awvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s2_axi_awready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_wdata
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_wstrb
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s2_axi_wlast
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s2_axi_wvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s2_axi_wready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_bid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_bresp
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s2_axi_bvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s2_axi_bready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_arid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_araddr
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_arlen
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_arsize
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_arburst
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s2_axi_arlock
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_arcache
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_arprot
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_arqos
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s2_axi_arvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s2_axi_arready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_rid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_rdata
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s2_axi_rresp
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s2_axi_rlast
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s2_axi_rvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s2_axi_rready
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s3_axi_aclk
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s3_axi_aresetn
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_awid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_awaddr
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_awlen
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_awsize
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_awburst
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s3_axi_awlock
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_awcache
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_awprot
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_awqos
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s3_axi_awvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s3_axi_awready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_wdata
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_wstrb
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s3_axi_wlast
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s3_axi_wvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s3_axi_wready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_bid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_bresp
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s3_axi_bvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s3_axi_bready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_arid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_araddr
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_arlen
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_arsize
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_arburst
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s3_axi_arlock
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_arcache
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_arprot
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_arqos
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s3_axi_arvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s3_axi_arready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_rid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_rdata
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s3_axi_rresp
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s3_axi_rlast
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s3_axi_rvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s3_axi_rready
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s4_axi_aclk
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s4_axi_aresetn
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_awid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_awaddr
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_awlen
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_awsize
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_awburst
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s4_axi_awlock
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_awcache
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_awprot
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_awqos
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s4_axi_awvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s4_axi_awready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_wdata
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_wstrb
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s4_axi_wlast
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s4_axi_wvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s4_axi_wready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_bid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_bresp
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s4_axi_bvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s4_axi_bready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_arid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_araddr
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_arlen
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_arsize
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_arburst
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s4_axi_arlock
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_arcache
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_arprot
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_arqos
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s4_axi_arvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s4_axi_arready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_rid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_rdata
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s4_axi_rresp
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s4_axi_rlast
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s4_axi_rvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s4_axi_rready
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s5_axi_aclk
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s5_axi_aresetn
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_awid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_awaddr
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_awlen
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_awsize
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_awburst
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s5_axi_awlock
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_awcache
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_awprot
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_awqos
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s5_axi_awvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s5_axi_awready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_wdata
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_wstrb
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s5_axi_wlast
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s5_axi_wvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s5_axi_wready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_bid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_bresp
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s5_axi_bvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s5_axi_bready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_arid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_araddr
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_arlen
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_arsize
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_arburst
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s5_axi_arlock
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_arcache
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_arprot
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_arqos
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s5_axi_arvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s5_axi_arready
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_rid
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_rdata
# eval add wave -noupdate $hexopt $tbpath${ps}MCB_DDR2${ps}s5_axi_rresp
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s5_axi_rlast
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s5_axi_rvalid
# eval add wave -noupdate $binopt $tbpath${ps}MCB_DDR2${ps}s5_axi_rready

