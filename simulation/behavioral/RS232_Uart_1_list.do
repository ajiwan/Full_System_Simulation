#  Simulation Model Generator
#  Xilinx EDK 14.2 EDK_P.28xd
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     RS232_Uart_1_list.do (Thu Apr 03 15:55:19 2014)
#
#  Module   system_rs232_uart_1_wrapper
#  Instance RS232_Uart_1
#  Because EDK did not create the testbench, the user
#  specifies the path to the device under test, $tbpath.
#
set binopt {-bin}
set hexopt {-hex}
if { [info exists PathSeparator] } { set ps $PathSeparator } else { set ps "/" }
if { ![info exists tbpath] } { set tbpath "${ps}system" }

# eval add list $binopt $tbpath${ps}RS232_Uart_1${ps}S_AXI_ACLK
# eval add list $binopt $tbpath${ps}RS232_Uart_1${ps}S_AXI_ARESETN
# eval add list $binopt $tbpath${ps}RS232_Uart_1${ps}Interrupt
# eval add list $hexopt $tbpath${ps}RS232_Uart_1${ps}S_AXI_AWADDR
# eval add list $binopt $tbpath${ps}RS232_Uart_1${ps}S_AXI_AWVALID
# eval add list $binopt $tbpath${ps}RS232_Uart_1${ps}S_AXI_AWREADY
# eval add list $hexopt $tbpath${ps}RS232_Uart_1${ps}S_AXI_WDATA
# eval add list $hexopt $tbpath${ps}RS232_Uart_1${ps}S_AXI_WSTRB
# eval add list $binopt $tbpath${ps}RS232_Uart_1${ps}S_AXI_WVALID
# eval add list $binopt $tbpath${ps}RS232_Uart_1${ps}S_AXI_WREADY
# eval add list $hexopt $tbpath${ps}RS232_Uart_1${ps}S_AXI_BRESP
# eval add list $binopt $tbpath${ps}RS232_Uart_1${ps}S_AXI_BVALID
# eval add list $binopt $tbpath${ps}RS232_Uart_1${ps}S_AXI_BREADY
# eval add list $hexopt $tbpath${ps}RS232_Uart_1${ps}S_AXI_ARADDR
# eval add list $binopt $tbpath${ps}RS232_Uart_1${ps}S_AXI_ARVALID
# eval add list $binopt $tbpath${ps}RS232_Uart_1${ps}S_AXI_ARREADY
# eval add list $hexopt $tbpath${ps}RS232_Uart_1${ps}S_AXI_RDATA
# eval add list $hexopt $tbpath${ps}RS232_Uart_1${ps}S_AXI_RRESP
# eval add list $binopt $tbpath${ps}RS232_Uart_1${ps}S_AXI_RVALID
# eval add list $binopt $tbpath${ps}RS232_Uart_1${ps}S_AXI_RREADY
  eval add list $binopt $tbpath${ps}RS232_Uart_1${ps}RX
  eval add list $binopt $tbpath${ps}RS232_Uart_1${ps}TX

