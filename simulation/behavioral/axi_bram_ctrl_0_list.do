#  Simulation Model Generator
#  Xilinx EDK 14.2 EDK_P.28xd
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     axi_bram_ctrl_0_list.do (Thu Apr 03 16:17:15 2014)
#
#  Module   system_axi_bram_ctrl_0_wrapper
#  Instance axi_bram_ctrl_0
#  Because EDK did not create the testbench, the user
#  specifies the path to the device under test, $tbpath.
#
set binopt {-bin}
set hexopt {-hex}
if { [info exists PathSeparator] } { set ps $PathSeparator } else { set ps "/" }
if { ![info exists tbpath] } { set tbpath "${ps}system" }

# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}ECC_Interrupt
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}ECC_UE
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_ACLK
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_ARESETN
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_AWID
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_AWADDR
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_AWLEN
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_AWSIZE
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_AWBURST
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_AWLOCK
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_AWCACHE
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_AWPROT
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_AWVALID
  eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_AWREADY
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_WDATA
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_WSTRB
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_WLAST
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_WVALID
  eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_WREADY
  eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_BID
  eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_BRESP
  eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_BVALID
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_BREADY
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_ARID
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_ARADDR
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_ARLEN
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_ARSIZE
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_ARBURST
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_ARLOCK
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_ARCACHE
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_ARPROT
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_ARVALID
  eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_ARREADY
  eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_RID
  eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_RDATA
  eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_RRESP
  eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_RVALID
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_RREADY
  eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_RLAST
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_CTRL_AWVALID
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_CTRL_AWREADY
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_CTRL_AWADDR
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_CTRL_WVALID
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_CTRL_WREADY
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_CTRL_WDATA
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_CTRL_BRESP
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_CTRL_BVALID
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_CTRL_BREADY
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_CTRL_ARVALID
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_CTRL_ARREADY
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_CTRL_ARADDR
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_CTRL_RVALID
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_CTRL_RREADY
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_CTRL_RDATA
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}S_AXI_CTRL_RRESP
  eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}BRAM_Rst_A
  eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}BRAM_Clk_A
  eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}BRAM_En_A
  eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}BRAM_WE_A
  eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}BRAM_Addr_A
  eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}BRAM_WrData_A
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}BRAM_RdData_A
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}BRAM_Rst_B
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}BRAM_Clk_B
# eval add list $binopt $tbpath${ps}axi_bram_ctrl_0${ps}BRAM_En_B
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}BRAM_WE_B
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}BRAM_Addr_B
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}BRAM_WrData_B
# eval add list $hexopt $tbpath${ps}axi_bram_ctrl_0${ps}BRAM_RdData_B

