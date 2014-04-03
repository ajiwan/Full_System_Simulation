#  Simulation Model Generator
#  Xilinx EDK 14.2 EDK_P.28xd
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     microblaze_0_dlmb_wave.do (Thu Apr 03 15:36:59 2014)
#
#  Module   system_microblaze_0_dlmb_wrapper
#  Instance microblaze_0_dlmb
#  Because EDK did not create the testbench, the user
#  specifies the path to the device under test, $tbpath.
#
set binopt {-logic}
set hexopt {-literal -hex}
if { [info exists PathSeparator] } { set ps $PathSeparator } else { set ps "/" }
if { ![info exists tbpath] } { set tbpath "${ps}system" }

  eval add wave -noupdate -divider {"microblaze_0_dlmb"}
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_dlmb${ps}LMB_Clk
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_dlmb${ps}SYS_Rst
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_dlmb${ps}LMB_Rst
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0_dlmb${ps}M_ABus
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_dlmb${ps}M_ReadStrobe
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_dlmb${ps}M_WriteStrobe
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_dlmb${ps}M_AddrStrobe
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0_dlmb${ps}M_DBus
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0_dlmb${ps}M_BE
# eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0_dlmb${ps}Sl_DBus
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_dlmb${ps}Sl_Ready
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_dlmb${ps}Sl_Wait
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_dlmb${ps}Sl_UE
# eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_dlmb${ps}Sl_CE
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0_dlmb${ps}LMB_ABus
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_dlmb${ps}LMB_ReadStrobe
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_dlmb${ps}LMB_WriteStrobe
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_dlmb${ps}LMB_AddrStrobe
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0_dlmb${ps}LMB_ReadDBus
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0_dlmb${ps}LMB_WriteDBus
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_dlmb${ps}LMB_Ready
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_dlmb${ps}LMB_Wait
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_dlmb${ps}LMB_UE
  eval add wave -noupdate $binopt $tbpath${ps}microblaze_0_dlmb${ps}LMB_CE
  eval add wave -noupdate $hexopt $tbpath${ps}microblaze_0_dlmb${ps}LMB_BE

