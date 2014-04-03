#  Simulation Model Generator
#  Xilinx EDK 14.2 EDK_P.28xd
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     pll_module_0_wave.do (Thu Apr 03 15:55:19 2014)
#
#  Module   system_pll_module_0_wrapper
#  Instance pll_module_0
#  Because EDK did not create the testbench, the user
#  specifies the path to the device under test, $tbpath.
#
set binopt {-logic}
set hexopt {-literal -hex}
if { [info exists PathSeparator] } { set ps $PathSeparator } else { set ps "/" }
if { ![info exists tbpath] } { set tbpath "${ps}system" }

  eval add wave -noupdate -divider {"pll_module_0"}
# eval add wave -noupdate $binopt $tbpath${ps}pll_module_0${ps}CLKFBDCM
  eval add wave -noupdate $binopt $tbpath${ps}pll_module_0${ps}CLKFBOUT
  eval add wave -noupdate $binopt $tbpath${ps}pll_module_0${ps}CLKOUT0
  eval add wave -noupdate $binopt $tbpath${ps}pll_module_0${ps}CLKOUT1
  eval add wave -noupdate $binopt $tbpath${ps}pll_module_0${ps}CLKOUT2
# eval add wave -noupdate $binopt $tbpath${ps}pll_module_0${ps}CLKOUT3
# eval add wave -noupdate $binopt $tbpath${ps}pll_module_0${ps}CLKOUT4
# eval add wave -noupdate $binopt $tbpath${ps}pll_module_0${ps}CLKOUT5
# eval add wave -noupdate $binopt $tbpath${ps}pll_module_0${ps}CLKOUTDCM0
# eval add wave -noupdate $binopt $tbpath${ps}pll_module_0${ps}CLKOUTDCM1
# eval add wave -noupdate $binopt $tbpath${ps}pll_module_0${ps}CLKOUTDCM2
# eval add wave -noupdate $binopt $tbpath${ps}pll_module_0${ps}CLKOUTDCM3
# eval add wave -noupdate $binopt $tbpath${ps}pll_module_0${ps}CLKOUTDCM4
# eval add wave -noupdate $binopt $tbpath${ps}pll_module_0${ps}CLKOUTDCM5
  eval add wave -noupdate $binopt $tbpath${ps}pll_module_0${ps}LOCKED
  eval add wave -noupdate $binopt $tbpath${ps}pll_module_0${ps}CLKFBIN
  eval add wave -noupdate $binopt $tbpath${ps}pll_module_0${ps}CLKIN1
  eval add wave -noupdate $binopt $tbpath${ps}pll_module_0${ps}RST

