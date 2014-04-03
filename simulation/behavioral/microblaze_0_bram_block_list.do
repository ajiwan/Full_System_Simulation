#  Simulation Model Generator
#  Xilinx EDK 14.2 EDK_P.28xd
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     microblaze_0_bram_block_list.do (Thu Apr 03 15:37:00 2014)
#
#  Module   system_microblaze_0_bram_block_wrapper
#  Instance microblaze_0_bram_block
#  Because EDK did not create the testbench, the user
#  specifies the path to the device under test, $tbpath.
#
set binopt {-bin}
set hexopt {-hex}
if { [info exists PathSeparator] } { set ps $PathSeparator } else { set ps "/" }
if { ![info exists tbpath] } { set tbpath "${ps}system" }

# eval add list $binopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_Rst_A
# eval add list $binopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_Clk_A
# eval add list $binopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_EN_A
# eval add list $hexopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_WEN_A
# eval add list $hexopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_Addr_A
  eval add list $hexopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_Din_A
# eval add list $hexopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_Dout_A
# eval add list $binopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_Rst_B
# eval add list $binopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_Clk_B
# eval add list $binopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_EN_B
# eval add list $hexopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_WEN_B
# eval add list $hexopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_Addr_B
  eval add list $hexopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_Din_B
# eval add list $hexopt $tbpath${ps}microblaze_0_bram_block${ps}BRAM_Dout_B

