#  Simulation Model Generator
#  Xilinx EDK 14.2 EDK_P.28xd
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     microblaze_0_wave.do (Thu Apr 03 15:36:59 2014)
#
#  Module   system_microblaze_0_wrapper
#  Instance microblaze_0
#  Because EDK did not create the testbench, the user
#  specifies the path to the device under test, $tbpath.
#
set binopt {-logic}
set hexopt {-literal -hex}
if { [info exists PathSeparator] } { set ps $PathSeparator } else { set ps "/" }
if { ![info exists tbpath] } { set tbpath "${ps}system" }

  eval add wave -noupdate -divider {"microblaze_0"}
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}CLK
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}RESET
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}MB_RESET
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}INTERRUPT
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}INTERRUPT_ADDRESS
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}INTERRUPT_ACK
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}EXT_BRK
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}EXT_NM_BRK
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DBG_STOP
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}MB_Halted
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}MB_Error
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}WAKEUP
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}SLEEP
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DBG_WAKEUP
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}LOCKSTEP_MASTER_OUT
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}LOCKSTEP_SLAVE_IN
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}LOCKSTEP_OUT
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}INSTR
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IWAIT
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}ICE
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IUE
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}INSTR_ADDR
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IFETCH
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}I_AS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IPLB_M_ABort
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}IPLB_M_ABus
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}IPLB_M_UABus
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}IPLB_M_BE
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IPLB_M_busLock
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IPLB_M_lockErr
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}IPLB_M_MSize
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}IPLB_M_priority
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IPLB_M_rdBurst
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IPLB_M_request
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IPLB_M_RNW
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}IPLB_M_size
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}IPLB_M_TAttribute
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}IPLB_M_type
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IPLB_M_wrBurst
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}IPLB_M_wrDBus
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IPLB_MBusy
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IPLB_MRdErr
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IPLB_MWrErr
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IPLB_MIRQ
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IPLB_MWrBTerm
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IPLB_MWrDAck
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IPLB_MAddrAck
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IPLB_MRdBTerm
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IPLB_MRdDAck
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}IPLB_MRdDBus
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}IPLB_MRdWdAddr
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IPLB_MRearbitrate
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}IPLB_MSSize
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}IPLB_MTimeout
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}DATA_READ
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DWAIT
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DCE
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DUE
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}DATA_WRITE
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}DATA_ADDR
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}D_AS
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}READ_STROBE
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}WRITE_STROBE
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}BYTE_ENABLE
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DPLB_M_ABort
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}DPLB_M_ABus
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}DPLB_M_UABus
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}DPLB_M_BE
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DPLB_M_busLock
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DPLB_M_lockErr
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}DPLB_M_MSize
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}DPLB_M_priority
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DPLB_M_rdBurst
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DPLB_M_request
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DPLB_M_RNW
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}DPLB_M_size
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}DPLB_M_TAttribute
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}DPLB_M_type
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DPLB_M_wrBurst
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}DPLB_M_wrDBus
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DPLB_MBusy
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DPLB_MRdErr
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DPLB_MWrErr
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DPLB_MIRQ
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DPLB_MWrBTerm
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DPLB_MWrDAck
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DPLB_MAddrAck
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DPLB_MRdBTerm
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DPLB_MRdDAck
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}DPLB_MRdDBus
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}DPLB_MRdWdAddr
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DPLB_MRearbitrate
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}DPLB_MSSize
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DPLB_MTimeout
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_AWID
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_AWADDR
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_AWLEN
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_AWSIZE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_AWBURST
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_AWLOCK
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_AWCACHE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_AWPROT
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_AWQOS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_AWVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_AWREADY
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_WDATA
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_WSTRB
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_WLAST
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_WVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_WREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_BID
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_BRESP
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_BVALID
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_BREADY
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_ARID
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_ARADDR
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_ARLEN
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_ARSIZE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_ARBURST
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_ARLOCK
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_ARCACHE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_ARPROT
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_ARQOS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_ARVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_ARREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_RID
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_RDATA
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_RRESP
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_RLAST
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_RVALID
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IP_RREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_AWID
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_AWADDR
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_AWLEN
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_AWSIZE
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_AWBURST
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_AWLOCK
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_AWCACHE
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_AWPROT
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_AWQOS
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_AWVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_AWREADY
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_WDATA
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_WSTRB
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_WLAST
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_WVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_WREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_BID
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_BRESP
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_BVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_BREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_ARID
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_ARADDR
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_ARLEN
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_ARSIZE
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_ARBURST
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_ARLOCK
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_ARCACHE
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_ARPROT
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_ARQOS
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_ARVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_ARREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_RID
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_RDATA
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_RRESP
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_RLAST
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_RVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DP_RREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_AWID
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_AWADDR
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_AWLEN
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_AWSIZE
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_AWBURST
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_AWLOCK
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_AWCACHE
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_AWPROT
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_AWQOS
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_AWVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_AWREADY
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_AWUSER
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_WDATA
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_WSTRB
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_WLAST
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_WVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_WREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_WUSER
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_BID
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_BRESP
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_BVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_BREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_BUSER
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_ARID
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_ARADDR
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_ARLEN
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_ARSIZE
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_ARBURST
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_ARLOCK
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_ARCACHE
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_ARPROT
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_ARQOS
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_ARVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_ARREADY
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_ARUSER
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_RID
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_RDATA
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_RRESP
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_RLAST
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_RVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_RREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_IC_RUSER
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_AWID
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_AWADDR
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_AWLEN
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_AWSIZE
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_AWBURST
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_AWLOCK
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_AWCACHE
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_AWPROT
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_AWQOS
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_AWVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_AWREADY
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_AWUSER
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_WDATA
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_WSTRB
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_WLAST
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_WVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_WREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_WUSER
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_BID
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_BRESP
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_BVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_BREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_BUSER
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_ARID
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_ARADDR
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_ARLEN
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_ARSIZE
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_ARBURST
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_ARLOCK
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_ARCACHE
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_ARPROT
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_ARQOS
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_ARVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_ARREADY
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_ARUSER
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_RID
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_RDATA
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_RRESP
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_RLAST
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_RVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_RREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M_AXI_DC_RUSER
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DBG_CLK
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DBG_TDI
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DBG_TDO
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}DBG_REG_EN
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DBG_SHIFT
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DBG_CAPTURE
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DBG_UPDATE
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DEBUG_RST
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}Trace_Instruction
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}Trace_Valid_Instr
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}Trace_PC
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}Trace_Reg_Write
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}Trace_Reg_Addr
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}Trace_MSR_Reg
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}Trace_PID_Reg
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}Trace_New_Reg_Value
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}Trace_Exception_Taken
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}Trace_Exception_Kind
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}Trace_Jump_Taken
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}Trace_Delay_Slot
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}Trace_Data_Address
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}Trace_Data_Access
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}Trace_Data_Read
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}Trace_Data_Write
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}Trace_Data_Write_Value
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}Trace_Data_Byte_Enable
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}Trace_DCache_Req
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}Trace_DCache_Hit
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}Trace_DCache_Rdy
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}Trace_DCache_Read
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}Trace_ICache_Req
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}Trace_ICache_Hit
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}Trace_ICache_Rdy
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}Trace_OF_PipeRun
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}Trace_EX_PipeRun
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}Trace_MEM_PipeRun
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}Trace_MB_Halted
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}Trace_Jump_Hit
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL0_S_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL0_S_READ
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL0_S_DATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL0_S_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL0_S_EXISTS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL0_M_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL0_M_WRITE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL0_M_DATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL0_M_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL0_M_FULL
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL1_S_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL1_S_READ
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL1_S_DATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL1_S_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL1_S_EXISTS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL1_M_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL1_M_WRITE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL1_M_DATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL1_M_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL1_M_FULL
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL2_S_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL2_S_READ
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL2_S_DATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL2_S_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL2_S_EXISTS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL2_M_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL2_M_WRITE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL2_M_DATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL2_M_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL2_M_FULL
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL3_S_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL3_S_READ
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL3_S_DATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL3_S_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL3_S_EXISTS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL3_M_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL3_M_WRITE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL3_M_DATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL3_M_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL3_M_FULL
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL4_S_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL4_S_READ
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL4_S_DATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL4_S_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL4_S_EXISTS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL4_M_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL4_M_WRITE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL4_M_DATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL4_M_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL4_M_FULL
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL5_S_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL5_S_READ
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL5_S_DATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL5_S_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL5_S_EXISTS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL5_M_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL5_M_WRITE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL5_M_DATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL5_M_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL5_M_FULL
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL6_S_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL6_S_READ
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL6_S_DATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL6_S_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL6_S_EXISTS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL6_M_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL6_M_WRITE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL6_M_DATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL6_M_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL6_M_FULL
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL7_S_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL7_S_READ
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL7_S_DATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL7_S_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL7_S_EXISTS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL7_M_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL7_M_WRITE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL7_M_DATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL7_M_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL7_M_FULL
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL8_S_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL8_S_READ
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL8_S_DATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL8_S_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL8_S_EXISTS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL8_M_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL8_M_WRITE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL8_M_DATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL8_M_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL8_M_FULL
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL9_S_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL9_S_READ
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL9_S_DATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL9_S_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL9_S_EXISTS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL9_M_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL9_M_WRITE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL9_M_DATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL9_M_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL9_M_FULL
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL10_S_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL10_S_READ
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL10_S_DATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL10_S_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL10_S_EXISTS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL10_M_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL10_M_WRITE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL10_M_DATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL10_M_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL10_M_FULL
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL11_S_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL11_S_READ
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL11_S_DATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL11_S_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL11_S_EXISTS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL11_M_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL11_M_WRITE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL11_M_DATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL11_M_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL11_M_FULL
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL12_S_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL12_S_READ
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL12_S_DATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL12_S_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL12_S_EXISTS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL12_M_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL12_M_WRITE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL12_M_DATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL12_M_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL12_M_FULL
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL13_S_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL13_S_READ
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL13_S_DATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL13_S_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL13_S_EXISTS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL13_M_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL13_M_WRITE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL13_M_DATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL13_M_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL13_M_FULL
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL14_S_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL14_S_READ
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL14_S_DATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL14_S_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL14_S_EXISTS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL14_M_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL14_M_WRITE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL14_M_DATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL14_M_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL14_M_FULL
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL15_S_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL15_S_READ
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL15_S_DATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL15_S_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL15_S_EXISTS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL15_M_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL15_M_WRITE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}FSL15_M_DATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL15_M_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}FSL15_M_FULL
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M0_AXIS_TLAST
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M0_AXIS_TDATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M0_AXIS_TVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M0_AXIS_TREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S0_AXIS_TLAST
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}S0_AXIS_TDATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S0_AXIS_TVALID
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S0_AXIS_TREADY
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M1_AXIS_TLAST
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M1_AXIS_TDATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M1_AXIS_TVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M1_AXIS_TREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S1_AXIS_TLAST
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}S1_AXIS_TDATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S1_AXIS_TVALID
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S1_AXIS_TREADY
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M2_AXIS_TLAST
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M2_AXIS_TDATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M2_AXIS_TVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M2_AXIS_TREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S2_AXIS_TLAST
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}S2_AXIS_TDATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S2_AXIS_TVALID
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S2_AXIS_TREADY
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M3_AXIS_TLAST
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M3_AXIS_TDATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M3_AXIS_TVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M3_AXIS_TREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S3_AXIS_TLAST
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}S3_AXIS_TDATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S3_AXIS_TVALID
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S3_AXIS_TREADY
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M4_AXIS_TLAST
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M4_AXIS_TDATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M4_AXIS_TVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M4_AXIS_TREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S4_AXIS_TLAST
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}S4_AXIS_TDATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S4_AXIS_TVALID
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S4_AXIS_TREADY
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M5_AXIS_TLAST
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M5_AXIS_TDATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M5_AXIS_TVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M5_AXIS_TREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S5_AXIS_TLAST
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}S5_AXIS_TDATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S5_AXIS_TVALID
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S5_AXIS_TREADY
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M6_AXIS_TLAST
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M6_AXIS_TDATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M6_AXIS_TVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M6_AXIS_TREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S6_AXIS_TLAST
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}S6_AXIS_TDATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S6_AXIS_TVALID
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S6_AXIS_TREADY
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M7_AXIS_TLAST
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M7_AXIS_TDATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M7_AXIS_TVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M7_AXIS_TREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S7_AXIS_TLAST
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}S7_AXIS_TDATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S7_AXIS_TVALID
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S7_AXIS_TREADY
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M8_AXIS_TLAST
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M8_AXIS_TDATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M8_AXIS_TVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M8_AXIS_TREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S8_AXIS_TLAST
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}S8_AXIS_TDATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S8_AXIS_TVALID
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S8_AXIS_TREADY
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M9_AXIS_TLAST
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M9_AXIS_TDATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M9_AXIS_TVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M9_AXIS_TREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S9_AXIS_TLAST
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}S9_AXIS_TDATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S9_AXIS_TVALID
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S9_AXIS_TREADY
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M10_AXIS_TLAST
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M10_AXIS_TDATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M10_AXIS_TVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M10_AXIS_TREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S10_AXIS_TLAST
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}S10_AXIS_TDATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S10_AXIS_TVALID
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S10_AXIS_TREADY
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M11_AXIS_TLAST
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M11_AXIS_TDATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M11_AXIS_TVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M11_AXIS_TREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S11_AXIS_TLAST
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}S11_AXIS_TDATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S11_AXIS_TVALID
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S11_AXIS_TREADY
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M12_AXIS_TLAST
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M12_AXIS_TDATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M12_AXIS_TVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M12_AXIS_TREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S12_AXIS_TLAST
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}S12_AXIS_TDATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S12_AXIS_TVALID
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S12_AXIS_TREADY
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M13_AXIS_TLAST
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M13_AXIS_TDATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M13_AXIS_TVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M13_AXIS_TREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S13_AXIS_TLAST
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}S13_AXIS_TDATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S13_AXIS_TVALID
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S13_AXIS_TREADY
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M14_AXIS_TLAST
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M14_AXIS_TDATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M14_AXIS_TVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M14_AXIS_TREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S14_AXIS_TLAST
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}S14_AXIS_TDATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S14_AXIS_TVALID
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S14_AXIS_TREADY
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M15_AXIS_TLAST
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}M15_AXIS_TDATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M15_AXIS_TVALID
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}M15_AXIS_TREADY
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S15_AXIS_TLAST
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}S15_AXIS_TDATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S15_AXIS_TVALID
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}S15_AXIS_TREADY
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}ICACHE_FSL_IN_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}ICACHE_FSL_IN_READ
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}ICACHE_FSL_IN_DATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}ICACHE_FSL_IN_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}ICACHE_FSL_IN_EXISTS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}ICACHE_FSL_OUT_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}ICACHE_FSL_OUT_WRITE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}ICACHE_FSL_OUT_DATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}ICACHE_FSL_OUT_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}ICACHE_FSL_OUT_FULL
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DCACHE_FSL_IN_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DCACHE_FSL_IN_READ
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}DCACHE_FSL_IN_DATA
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DCACHE_FSL_IN_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DCACHE_FSL_IN_EXISTS
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DCACHE_FSL_OUT_CLK
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DCACHE_FSL_OUT_WRITE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0${ps}DCACHE_FSL_OUT_DATA
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DCACHE_FSL_OUT_CONTROL
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0${ps}DCACHE_FSL_OUT_FULL

