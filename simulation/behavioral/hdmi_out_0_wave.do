#  Simulation Model Generator
#  Xilinx EDK 14.2 EDK_P.28xd
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     hdmi_out_0_wave.do (Thu Apr 03 15:55:19 2014)
#
#  Module   system_hdmi_out_0_wrapper
#  Instance hdmi_out_0
#  Because EDK did not create the testbench, the user
#  specifies the path to the device under test, $tbpath.
#
set binopt {-logic}
set hexopt {-literal -hex}
if { [info exists PathSeparator] } { set ps $PathSeparator } else { set ps "/" }
if { ![info exists tbpath] } { set tbpath "${ps}system" }

  eval add wave -noupdate -divider {"hdmi_out_0"}
  eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}PXL_CLK_X1
  eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}PXL_CLK_X2
  eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}PXL_CLK_X10
  eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}PXL_PLL_LOCKED
  eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}TMDS
  eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}TMDSB
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}S_AXI_ACLK
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}S_AXI_ARESETN
# eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}S_AXI_AWADDR
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}S_AXI_AWVALID
# eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}S_AXI_WDATA
# eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}S_AXI_WSTRB
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}S_AXI_WVALID
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}S_AXI_BREADY
# eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}S_AXI_ARADDR
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}S_AXI_ARVALID
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}S_AXI_RREADY
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}S_AXI_ARREADY
# eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}S_AXI_RDATA
# eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}S_AXI_RRESP
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}S_AXI_RVALID
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}S_AXI_WREADY
# eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}S_AXI_BRESP
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}S_AXI_BVALID
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}S_AXI_AWREADY
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}m_axi_aclk
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}m_axi_aresetn
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}md_error
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}m_axi_arready
  eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}m_axi_arvalid
  eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}m_axi_araddr
  eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}m_axi_arlen
  eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}m_axi_arsize
  eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}m_axi_arburst
  eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}m_axi_arprot
  eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}m_axi_arcache
  eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}m_axi_rready
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}m_axi_rvalid
# eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}m_axi_rdata
# eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}m_axi_rresp
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}m_axi_rlast
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}m_axi_awready
  eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}m_axi_awvalid
  eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}m_axi_awaddr
  eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}m_axi_awlen
  eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}m_axi_awsize
  eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}m_axi_awburst
  eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}m_axi_awprot
  eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}m_axi_awcache
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}m_axi_wready
  eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}m_axi_wvalid
  eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}m_axi_wdata
  eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}m_axi_wstrb
  eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}m_axi_wlast
  eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}m_axi_bready
# eval add wave -noupdate $binopt $tbpath${ps}hdmi_out_0${ps}m_axi_bvalid
# eval add wave -noupdate $hexopt $tbpath${ps}hdmi_out_0${ps}m_axi_bresp

