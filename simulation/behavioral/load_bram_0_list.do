#  Simulation Model Generator
#  Xilinx EDK 14.2 EDK_P.28xd
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     load_bram_0_list.do (Thu Apr 03 16:17:15 2014)
#
#  Module   system_load_bram_0_wrapper
#  Instance load_bram_0
#  Because EDK did not create the testbench, the user
#  specifies the path to the device under test, $tbpath.
#
set binopt {-bin}
set hexopt {-hex}
if { [info exists PathSeparator] } { set ps $PathSeparator } else { set ps "/" }
if { ![info exists tbpath] } { set tbpath "${ps}system" }

  eval add list $hexopt $tbpath${ps}load_bram_0${ps}load_bram_dout
  eval add list $binopt $tbpath${ps}load_bram_0${ps}load_bram_wr_en_fifo
# eval add list $binopt $tbpath${ps}load_bram_0${ps}S_AXI_ACLK
# eval add list $binopt $tbpath${ps}load_bram_0${ps}S_AXI_ARESETN
# eval add list $hexopt $tbpath${ps}load_bram_0${ps}S_AXI_AWADDR
# eval add list $binopt $tbpath${ps}load_bram_0${ps}S_AXI_AWVALID
# eval add list $hexopt $tbpath${ps}load_bram_0${ps}S_AXI_WDATA
# eval add list $hexopt $tbpath${ps}load_bram_0${ps}S_AXI_WSTRB
# eval add list $binopt $tbpath${ps}load_bram_0${ps}S_AXI_WVALID
# eval add list $binopt $tbpath${ps}load_bram_0${ps}S_AXI_BREADY
# eval add list $hexopt $tbpath${ps}load_bram_0${ps}S_AXI_ARADDR
# eval add list $binopt $tbpath${ps}load_bram_0${ps}S_AXI_ARVALID
# eval add list $binopt $tbpath${ps}load_bram_0${ps}S_AXI_RREADY
# eval add list $binopt $tbpath${ps}load_bram_0${ps}S_AXI_ARREADY
# eval add list $hexopt $tbpath${ps}load_bram_0${ps}S_AXI_RDATA
# eval add list $hexopt $tbpath${ps}load_bram_0${ps}S_AXI_RRESP
# eval add list $binopt $tbpath${ps}load_bram_0${ps}S_AXI_RVALID
# eval add list $binopt $tbpath${ps}load_bram_0${ps}S_AXI_WREADY
# eval add list $hexopt $tbpath${ps}load_bram_0${ps}S_AXI_BRESP
# eval add list $binopt $tbpath${ps}load_bram_0${ps}S_AXI_BVALID
# eval add list $binopt $tbpath${ps}load_bram_0${ps}S_AXI_AWREADY
# eval add list $binopt $tbpath${ps}load_bram_0${ps}m_axi_aclk
# eval add list $binopt $tbpath${ps}load_bram_0${ps}m_axi_aresetn
# eval add list $binopt $tbpath${ps}load_bram_0${ps}md_error
# eval add list $binopt $tbpath${ps}load_bram_0${ps}m_axi_arready
  eval add list $binopt $tbpath${ps}load_bram_0${ps}m_axi_arvalid
  eval add list $hexopt $tbpath${ps}load_bram_0${ps}m_axi_araddr
  eval add list $hexopt $tbpath${ps}load_bram_0${ps}m_axi_arlen
  eval add list $hexopt $tbpath${ps}load_bram_0${ps}m_axi_arsize
  eval add list $hexopt $tbpath${ps}load_bram_0${ps}m_axi_arburst
  eval add list $hexopt $tbpath${ps}load_bram_0${ps}m_axi_arprot
  eval add list $hexopt $tbpath${ps}load_bram_0${ps}m_axi_arcache
  eval add list $binopt $tbpath${ps}load_bram_0${ps}m_axi_rready
# eval add list $binopt $tbpath${ps}load_bram_0${ps}m_axi_rvalid
# eval add list $hexopt $tbpath${ps}load_bram_0${ps}m_axi_rdata
# eval add list $hexopt $tbpath${ps}load_bram_0${ps}m_axi_rresp
# eval add list $binopt $tbpath${ps}load_bram_0${ps}m_axi_rlast
# eval add list $binopt $tbpath${ps}load_bram_0${ps}m_axi_awready
  eval add list $binopt $tbpath${ps}load_bram_0${ps}m_axi_awvalid
  eval add list $hexopt $tbpath${ps}load_bram_0${ps}m_axi_awaddr
  eval add list $hexopt $tbpath${ps}load_bram_0${ps}m_axi_awlen
  eval add list $hexopt $tbpath${ps}load_bram_0${ps}m_axi_awsize
  eval add list $hexopt $tbpath${ps}load_bram_0${ps}m_axi_awburst
  eval add list $hexopt $tbpath${ps}load_bram_0${ps}m_axi_awprot
  eval add list $hexopt $tbpath${ps}load_bram_0${ps}m_axi_awcache
# eval add list $binopt $tbpath${ps}load_bram_0${ps}m_axi_wready
  eval add list $binopt $tbpath${ps}load_bram_0${ps}m_axi_wvalid
  eval add list $hexopt $tbpath${ps}load_bram_0${ps}m_axi_wdata
  eval add list $hexopt $tbpath${ps}load_bram_0${ps}m_axi_wstrb
  eval add list $binopt $tbpath${ps}load_bram_0${ps}m_axi_wlast
  eval add list $binopt $tbpath${ps}load_bram_0${ps}m_axi_bready
# eval add list $binopt $tbpath${ps}load_bram_0${ps}m_axi_bvalid
# eval add list $hexopt $tbpath${ps}load_bram_0${ps}m_axi_bresp

