#  Simulation Model Generator
#  Xilinx EDK 14.2 EDK_P.28xd
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     axi_bram_ctrl_2_wave.do (Thu Apr 03 16:17:14 2014)
#
#  Module   system_axi_bram_ctrl_2_wrapper
#  Instance axi_bram_ctrl_2
#  Because EDK did not create the testbench, the user
#  specifies the path to the device under test, $tbpath.
#
set binopt {-logic}
set hexopt {-literal -hex}
if { [info exists PathSeparator] } { set ps $PathSeparator } else { set ps "/" }
if { ![info exists tbpath] } { set tbpath "${ps}system" }

  eval add wave -noupdate -divider {"axi_bram_ctrl_2"}
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}ECC_Interrupt
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}ECC_UE
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_ACLK
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_ARESETN
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_AWID
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_AWADDR
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_AWLEN
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_AWSIZE
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_AWBURST
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_AWLOCK
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_AWCACHE
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_AWPROT
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_AWVALID
  eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_AWREADY
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_WDATA
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_WSTRB
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_WLAST
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_WVALID
  eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_WREADY
  eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_BID
  eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_BRESP
  eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_BVALID
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_BREADY
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_ARID
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_ARADDR
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_ARLEN
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_ARSIZE
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_ARBURST
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_ARLOCK
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_ARCACHE
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_ARPROT
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_ARVALID
  eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_ARREADY
  eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_RID
  eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_RDATA
  eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_RRESP
  eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_RVALID
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_RREADY
  eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_RLAST
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_CTRL_AWVALID
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_CTRL_AWREADY
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_CTRL_AWADDR
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_CTRL_WVALID
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_CTRL_WREADY
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_CTRL_WDATA
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_CTRL_BRESP
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_CTRL_BVALID
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_CTRL_BREADY
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_CTRL_ARVALID
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_CTRL_ARREADY
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_CTRL_ARADDR
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_CTRL_RVALID
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_CTRL_RREADY
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_CTRL_RDATA
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}S_AXI_CTRL_RRESP
  eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}BRAM_Rst_A
  eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}BRAM_Clk_A
  eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}BRAM_En_A
  eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}BRAM_WE_A
  eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}BRAM_Addr_A
  eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}BRAM_WrData_A
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}BRAM_RdData_A
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}BRAM_Rst_B
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}BRAM_Clk_B
# eval add wave -noupdate $binopt $tbpath${ps}axi_bram_ctrl_2${ps}BRAM_En_B
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}BRAM_WE_B
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}BRAM_Addr_B
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}BRAM_WrData_B
# eval add wave -noupdate $hexopt $tbpath${ps}axi_bram_ctrl_2${ps}BRAM_RdData_B

