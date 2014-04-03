#  Simulation Model Generator
#  Xilinx EDK 14.2 EDK_P.28xd
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     bram_block_0_wave.do (Thu Apr 03 16:17:14 2014)
#
#  Module   system_bram_block_0_wrapper
#  Instance bram_block_0
#  Because EDK did not create the testbench, the user
#  specifies the path to the device under test, $tbpath.
#
set binopt {-logic}
set hexopt {-literal -hex}
if { [info exists PathSeparator] } { set ps $PathSeparator } else { set ps "/" }
if { ![info exists tbpath] } { set tbpath "${ps}system" }

  eval add wave -noupdate -divider {"bram_block_0"}
# eval add wave -noupdate $binopt $tbpath${ps}bram_block_0${ps}BRAM_Rst_A
# eval add wave -noupdate $binopt $tbpath${ps}bram_block_0${ps}BRAM_Clk_A
# eval add wave -noupdate $binopt $tbpath${ps}bram_block_0${ps}BRAM_EN_A
# eval add wave -noupdate $hexopt $tbpath${ps}bram_block_0${ps}BRAM_WEN_A
# eval add wave -noupdate $hexopt $tbpath${ps}bram_block_0${ps}BRAM_Addr_A
  eval add wave -noupdate $hexopt $tbpath${ps}bram_block_0${ps}BRAM_Din_A
# eval add wave -noupdate $hexopt $tbpath${ps}bram_block_0${ps}BRAM_Dout_A
# eval add wave -noupdate $binopt $tbpath${ps}bram_block_0${ps}BRAM_Rst_B
# eval add wave -noupdate $binopt $tbpath${ps}bram_block_0${ps}BRAM_Clk_B
# eval add wave -noupdate $binopt $tbpath${ps}bram_block_0${ps}BRAM_EN_B
# eval add wave -noupdate $hexopt $tbpath${ps}bram_block_0${ps}BRAM_WEN_B
# eval add wave -noupdate $hexopt $tbpath${ps}bram_block_0${ps}BRAM_Addr_B
# eval add wave -noupdate $hexopt $tbpath${ps}bram_block_0${ps}BRAM_Din_B
# eval add wave -noupdate $hexopt $tbpath${ps}bram_block_0${ps}BRAM_Dout_B

