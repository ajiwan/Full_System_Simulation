#  Simulation Model Generator
#  Xilinx EDK 14.2 EDK_P.28xd
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     system_wave.do (Thu Apr 03 16:17:14 2014)
#
#  Wave Window DO Script File
#
#  Wave Window DO script files setup the ModelSim Wave window
#  display for viewing results of the simulation in a graphic
#  format. Comment or uncomment commands to change the set of
#  signals viewed.
#
echo  "Setting up Wave window display ..."

if { ![info exists xcmdc] } {echo "Warning : c compile command was not run"}
if { ![info exists xcmds] } {echo "Warning : s simulate command was not run"}

#  Because EDK did not create the testbench, the user
#  specifies the path to the device under test, $tbpath.
#
if { [info exists PathSeparator] } { set ps $PathSeparator } else { set ps "/" }
if { ![info exists tbpath] } { set tbpath "${ps}system" }

#
#  Display top-level ports
#
set binopt {-logic}
set hexopt {-literal -hex}
eval add wave -noupdate -divider {"top-level ports"}
eval add wave -noupdate $binopt $tbpath${ps}RESET
eval add wave -noupdate $binopt $tbpath${ps}GCLK

#
#  Display bus signal ports
#
do axi4_0_wave.do

#
#  Display processor ports
#
#
#  Display processor registers
#

#
#  Display IP and peripheral ports
#
do proc_sys_reset_0_wave.do

do load_bram_0_wave.do

do disparity_out_0_wave.do

do clock_generator_0_wave.do

do bram_block_0_wave.do

do axi_bram_ctrl_0_wave.do

do bram_block_1_wave.do

do bram_block_2_wave.do

do axi_bram_ctrl_1_wave.do

do axi_bram_ctrl_2_wave.do


#  Wave window configuration information
#
configure  wave -justifyvalue          right
configure  wave -signalnamewidth       1

TreeUpdate [SetDefaultTree]

#  Wave window setup complete
#
echo  "Wave window display setup done."
