#  Simulation Model Generator
#  Xilinx EDK 14.2 EDK_P.28xd
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     bram_block_1_list.do (Thu Apr 03 16:17:15 2014)
#
#  Module   system_bram_block_1_wrapper
#  Instance bram_block_1
#  Because EDK did not create the testbench, the user
#  specifies the path to the device under test, $tbpath.
#
set binopt {-bin}
set hexopt {-hex}
if { [info exists PathSeparator] } { set ps $PathSeparator } else { set ps "/" }
if { ![info exists tbpath] } { set tbpath "${ps}system" }

# eval add list $binopt $tbpath${ps}bram_block_1${ps}BRAM_Rst_A
# eval add list $binopt $tbpath${ps}bram_block_1${ps}BRAM_Clk_A
# eval add list $binopt $tbpath${ps}bram_block_1${ps}BRAM_EN_A
# eval add list $hexopt $tbpath${ps}bram_block_1${ps}BRAM_WEN_A
# eval add list $hexopt $tbpath${ps}bram_block_1${ps}BRAM_Addr_A
  eval add list $hexopt $tbpath${ps}bram_block_1${ps}BRAM_Din_A
# eval add list $hexopt $tbpath${ps}bram_block_1${ps}BRAM_Dout_A
# eval add list $binopt $tbpath${ps}bram_block_1${ps}BRAM_Rst_B
# eval add list $binopt $tbpath${ps}bram_block_1${ps}BRAM_Clk_B
# eval add list $binopt $tbpath${ps}bram_block_1${ps}BRAM_EN_B
# eval add list $hexopt $tbpath${ps}bram_block_1${ps}BRAM_WEN_B
# eval add list $hexopt $tbpath${ps}bram_block_1${ps}BRAM_Addr_B
# eval add list $hexopt $tbpath${ps}bram_block_1${ps}BRAM_Din_B
# eval add list $hexopt $tbpath${ps}bram_block_1${ps}BRAM_Dout_B

