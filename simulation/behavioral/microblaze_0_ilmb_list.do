#  Simulation Model Generator
#  Xilinx EDK 14.2 EDK_P.28xd
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     microblaze_0_ilmb_list.do (Thu Apr 03 15:37:00 2014)
#
#  Module   system_microblaze_0_ilmb_wrapper
#  Instance microblaze_0_ilmb
#  Because EDK did not create the testbench, the user
#  specifies the path to the device under test, $tbpath.
#
set binopt {-bin}
set hexopt {-hex}
if { [info exists PathSeparator] } { set ps $PathSeparator } else { set ps "/" }
if { ![info exists tbpath] } { set tbpath "${ps}system" }

# eval add list $binopt $tbpath${ps}microblaze_0_ilmb${ps}LMB_Clk
# eval add list $binopt $tbpath${ps}microblaze_0_ilmb${ps}SYS_Rst
  eval add list $binopt $tbpath${ps}microblaze_0_ilmb${ps}LMB_Rst
# eval add list $hexopt $tbpath${ps}microblaze_0_ilmb${ps}M_ABus
# eval add list $binopt $tbpath${ps}microblaze_0_ilmb${ps}M_ReadStrobe
# eval add list $binopt $tbpath${ps}microblaze_0_ilmb${ps}M_WriteStrobe
# eval add list $binopt $tbpath${ps}microblaze_0_ilmb${ps}M_AddrStrobe
# eval add list $hexopt $tbpath${ps}microblaze_0_ilmb${ps}M_DBus
# eval add list $hexopt $tbpath${ps}microblaze_0_ilmb${ps}M_BE
# eval add list $hexopt $tbpath${ps}microblaze_0_ilmb${ps}Sl_DBus
# eval add list $binopt $tbpath${ps}microblaze_0_ilmb${ps}Sl_Ready
# eval add list $binopt $tbpath${ps}microblaze_0_ilmb${ps}Sl_Wait
# eval add list $binopt $tbpath${ps}microblaze_0_ilmb${ps}Sl_UE
# eval add list $binopt $tbpath${ps}microblaze_0_ilmb${ps}Sl_CE
  eval add list $hexopt $tbpath${ps}microblaze_0_ilmb${ps}LMB_ABus
  eval add list $binopt $tbpath${ps}microblaze_0_ilmb${ps}LMB_ReadStrobe
  eval add list $binopt $tbpath${ps}microblaze_0_ilmb${ps}LMB_WriteStrobe
  eval add list $binopt $tbpath${ps}microblaze_0_ilmb${ps}LMB_AddrStrobe
  eval add list $hexopt $tbpath${ps}microblaze_0_ilmb${ps}LMB_ReadDBus
  eval add list $hexopt $tbpath${ps}microblaze_0_ilmb${ps}LMB_WriteDBus
  eval add list $binopt $tbpath${ps}microblaze_0_ilmb${ps}LMB_Ready
  eval add list $binopt $tbpath${ps}microblaze_0_ilmb${ps}LMB_Wait
  eval add list $binopt $tbpath${ps}microblaze_0_ilmb${ps}LMB_UE
  eval add list $binopt $tbpath${ps}microblaze_0_ilmb${ps}LMB_CE
  eval add list $hexopt $tbpath${ps}microblaze_0_ilmb${ps}LMB_BE

