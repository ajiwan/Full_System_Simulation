#  Simulation Model Generator
#  Xilinx EDK 14.2 EDK_P.28xd
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     microblaze_0_bram_block_wave.do (Thu Apr 03 15:36:59 2014)
#
#  Module   system_microblaze_0_bram_block_wrapper
#  Instance microblaze_0_bram_block
#  Because EDK did not create the testbench, the user
#  specifies the path to the device under test, $tbpath.
#
set binopt {-logic}
set hexopt {-literal -hex}
if { [info exists PathSeparator] } { set ps $PathSeparator } else { set ps "/" }
if { ![info exists tbpath] } { set tbpath "${ps}system" }

  eval add wave -noupdate -divider {"microblaze_0_bram_block"}
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_Rst_A
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_Clk_A
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_EN_A
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_WEN_A
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_Addr_A
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_Din_A
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_Dout_A
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_Rst_B
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_Clk_B
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_EN_B
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_WEN_B
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_Addr_B
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_Din_B
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_Dout_B

