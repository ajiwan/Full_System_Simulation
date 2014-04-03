#  Simulation Model Generator
#  Xilinx EDK 14.2 EDK_P.28xd
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     system_list.do (Thu Apr 03 16:17:14 2014)
#
#  List Window DO Script File
#
#  List Window DO script files setup the ModelSim List window
#  display for viewing results of the simulation in a tabular
#  format. Comment or uncomment commands to change the set of
#  data values viewed.
#
echo  "Setting up List window display ..."

if { ![info exists xcmdc] } {echo "Warning : c compile command was not run"}
if { ![info exists xcmds] } {echo "Warning : s simulate command was not run"}

onerror { resume }

#  Because EDK did not create the testbench, the user
#  specifies the path to the device under test, $tbpath.
#
if { [info exists PathSeparator] } { set ps $PathSeparator } else { set ps "/" }
if { ![info exists tbpath] } { set tbpath "${ps}system" }

#
#  Display top-level ports
#
set binopt {-bin}
set hexopt {-hex}
eval add list $binopt $tbpath${ps}RESET
eval add list $binopt $tbpath${ps}GCLK

#
#  Display bus signal ports
#
do axi4_0_list.do

#
#  Display processor ports
#
#
#  Display processor registers
#

#
#  Display IP and peripheral ports
#
do proc_sys_reset_0_list.do

do load_bram_0_list.do

do disparity_out_0_list.do

do clock_generator_0_list.do

do bram_block_0_list.do

do axi_bram_ctrl_0_list.do

do bram_block_1_list.do

do bram_block_2_list.do

do axi_bram_ctrl_1_list.do

do axi_bram_ctrl_2_list.do


#  List window configuration information
#
configure list -delta                 none
configure list -usesignaltriggers     0

#  Define the simulation strobe and period, if used.

configure list -usestrobe             0
configure list -strobestart           {0 ps}  -strobeperiod {0 ps}

configure list -usegating             1

# Configure the gated clock.
# configure list -gateexpr <<signal_name>>

#  List window setup complete
#
echo  "List window display setup done."
