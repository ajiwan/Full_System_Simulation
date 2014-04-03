#  Simulation Model Generator
#  Xilinx EDK 14.2 EDK_P.28xd
#  Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
#
#  File     system.do (Thu Apr 03 16:17:14 2014)
#
vmap secureip "C:/Xilinx/14.2/ISE_DS/ISE/verilog/mti_se/10.1c/nt64/secureip/"
vmap simprim "C:/Xilinx/14.2/ISE_DS/ISE/verilog/mti_se/10.1c/nt64/simprim/"
vmap simprims_ver "C:/Xilinx/14.2/ISE_DS/ISE/verilog/mti_se/10.1c/nt64/simprims_ver/"
vmap unimacro "C:/Xilinx/14.2/ISE_DS/ISE/verilog/mti_se/10.1c/nt64/unimacro/"
vmap unimacro_ver "C:/Xilinx/14.2/ISE_DS/ISE/verilog/mti_se/10.1c/nt64/unimacro_ver/"
vmap unisim "C:/Xilinx/14.2/ISE_DS/ISE/verilog/mti_se/10.1c/nt64/unisim/"
vmap unisims_ver "C:/Xilinx/14.2/ISE_DS/ISE/verilog/mti_se/10.1c/nt64/unisims_ver/"
vmap xilinxcorelib "C:/Xilinx/14.2/ISE_DS/ISE/verilog/mti_se/10.1c/nt64/xilinxcorelib/"
vmap xilinxcorelib_ver "C:/Xilinx/14.2/ISE_DS/ISE/verilog/mti_se/10.1c/nt64/xilinxcorelib_ver/"
vmap proc_sys_reset_v3_00_a "C:/Xilinx/14.2/ISE_DS/ISE/verilog/mti_se/10.1c/nt64/edk/proc_sys_reset_v3_00_a/"
vmap proc_common_v3_00_a "C:/Xilinx/14.2/ISE_DS/ISE/verilog/mti_se/10.1c/nt64/edk/proc_common_v3_00_a/"
vmap axi_master_burst_v1_00_a "C:/Xilinx/14.2/ISE_DS/ISE/verilog/mti_se/10.1c/nt64/edk/axi_master_burst_v1_00_a/"
vmap axi_lite_ipif_v1_01_a "C:/Xilinx/14.2/ISE_DS/ISE/verilog/mti_se/10.1c/nt64/edk/axi_lite_ipif_v1_01_a/"
vlib load_bram_v1_00_a
vmap load_bram_v1_00_a load_bram_v1_00_a
vlib disparity_out_v1_00_a
vmap disparity_out_v1_00_a disparity_out_v1_00_a
vmap clock_generator_v4_03_a "C:/Xilinx/14.2/ISE_DS/ISE/verilog/mti_se/10.1c/nt64/edk/clock_generator_v4_03_a/"
vlib clock_generator_0_v4_03_a
vmap clock_generator_0_v4_03_a clock_generator_0_v4_03_a
vmap axi_interconnect_v1_06_a "C:/Xilinx/14.2/ISE_DS/ISE/verilog/mti_se/10.1c/nt64/edk/axi_interconnect_v1_06_a/"
vlib bram_block_0_elaborate_v1_00_a
vmap bram_block_0_elaborate_v1_00_a bram_block_0_elaborate_v1_00_a
vmap axi_bram_ctrl_v1_03_a "C:/Xilinx/14.2/ISE_DS/ISE/verilog/mti_se/10.1c/nt64/edk/axi_bram_ctrl_v1_03_a/"
vlib bram_block_1_elaborate_v1_00_a
vmap bram_block_1_elaborate_v1_00_a bram_block_1_elaborate_v1_00_a
vlib bram_block_2_elaborate_v1_00_a
vmap bram_block_2_elaborate_v1_00_a bram_block_2_elaborate_v1_00_a
vlib work
vmap work work
vlog -novopt -incr -work load_bram_v1_00_a "C:/fpga/XPS/Full_System/pcores/load_bram_v1_00_a/hdl/verilog/pxconv.v" {+incdir+C:/fpga/XPS/Full_System/pcores/load_bram_v1_00_a/hdl/verilog/+C:/fpga/XPS/Full_System/pcores/+C:/fpga/XPS/Vmod_in_HDMI_100MHz/pcores/+C:/fpga/XPS/disparity_full_sys/pcores/+C:/Xilinx/14.2/ISE_DS/edk_user_repository/MyProcessorIPLib/pcores/+C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxBFMinterface/pcores/+C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/}
vlog -novopt -incr -work load_bram_v1_00_a "C:/fpga/XPS/Full_System/pcores/load_bram_v1_00_a/hdl/verilog/PXBRAM.v" {+incdir+C:/fpga/XPS/Full_System/pcores/load_bram_v1_00_a/hdl/verilog/+C:/fpga/XPS/Full_System/pcores/+C:/fpga/XPS/Vmod_in_HDMI_100MHz/pcores/+C:/fpga/XPS/disparity_full_sys/pcores/+C:/Xilinx/14.2/ISE_DS/edk_user_repository/MyProcessorIPLib/pcores/+C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxBFMinterface/pcores/+C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/}
vlog -novopt -incr -work load_bram_v1_00_a "C:/fpga/XPS/Full_System/pcores/load_bram_v1_00_a/hdl/verilog/fifo.v" {+incdir+C:/fpga/XPS/Full_System/pcores/load_bram_v1_00_a/hdl/verilog/+C:/fpga/XPS/Full_System/pcores/+C:/fpga/XPS/Vmod_in_HDMI_100MHz/pcores/+C:/fpga/XPS/disparity_full_sys/pcores/+C:/Xilinx/14.2/ISE_DS/edk_user_repository/MyProcessorIPLib/pcores/+C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxBFMinterface/pcores/+C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/}
vlog -novopt -incr -work load_bram_v1_00_a "C:/fpga/XPS/Full_System/pcores/load_bram_v1_00_a/hdl/verilog/bram_dm.v" {+incdir+C:/fpga/XPS/Full_System/pcores/load_bram_v1_00_a/hdl/verilog/+C:/fpga/XPS/Full_System/pcores/+C:/fpga/XPS/Vmod_in_HDMI_100MHz/pcores/+C:/fpga/XPS/disparity_full_sys/pcores/+C:/Xilinx/14.2/ISE_DS/edk_user_repository/MyProcessorIPLib/pcores/+C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxBFMinterface/pcores/+C:/Xilinx/14.2/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/}
vcom -novopt -93 -work load_bram_v1_00_a "C:/fpga/XPS/Full_System/pcores/load_bram_v1_00_a/hdl/vhdl/user_logic.vhd"
vcom -novopt -93 -work load_bram_v1_00_a "C:/fpga/XPS/Full_System/pcores/load_bram_v1_00_a/hdl/vhdl/load_bram.vhd"
vcom -novopt -93 -work disparity_out_v1_00_a "C:/fpga/XPS/Full_System/pcores/disparity_out_v1_00_a/hdl/vhdl/user_logic.vhd"
vcom -novopt -93 -work disparity_out_v1_00_a "C:/fpga/XPS/Full_System/pcores/disparity_out_v1_00_a/hdl/vhdl/disparity_out.vhd"
vcom -novopt -93 -work disparity_out_v1_00_a "C:/fpga/XPS/Full_System/pcores/disparity_out_v1_00_a/hdl/vhdl/async_fifo_32_256.vhd"
vcom -novopt -93 -work clock_generator_0_v4_03_a "elaborate/clock_generator_0_v4_03_a/hdl/vhdl/clock_generator.vhd"
vcom -novopt -93 -work bram_block_0_elaborate_v1_00_a "elaborate/bram_block_0_elaborate_v1_00_a/hdl/vhdl/bram_block_0_elaborate.vhd"
vcom -novopt -93 -work bram_block_1_elaborate_v1_00_a "elaborate/bram_block_1_elaborate_v1_00_a/hdl/vhdl/bram_block_1_elaborate.vhd"
vcom -novopt -93 -work bram_block_2_elaborate_v1_00_a "elaborate/bram_block_2_elaborate_v1_00_a/hdl/vhdl/bram_block_2_elaborate.vhd"
vcom -novopt -93 -work work "system_proc_sys_reset_0_wrapper.vhd"
vcom -novopt -93 -work work "system_load_bram_0_wrapper.vhd"
vcom -novopt -93 -work work "system_disparity_out_0_wrapper.vhd"
vcom -novopt -93 -work work "system_clock_generator_0_wrapper.vhd"
vlog -novopt -incr -work work "system_axi4_0_wrapper.v"
vcom -novopt -93 -work work "system_bram_block_0_wrapper.vhd"
vcom -novopt -93 -work work "system_axi_bram_ctrl_0_wrapper.vhd"
vcom -novopt -93 -work work "system_bram_block_1_wrapper.vhd"
vcom -novopt -93 -work work "system_bram_block_2_wrapper.vhd"
vcom -novopt -93 -work work "system_axi_bram_ctrl_1_wrapper.vhd"
vcom -novopt -93 -work work "system_axi_bram_ctrl_2_wrapper.vhd"
vcom -novopt -93 -work work "system.vhd"
vlog -novopt -incr -work work "C:/Xilinx/14.2/ISE_DS/ISE/verilog/src/glbl.v" {+incdir+C:/Xilinx/14.2/ISE_DS/ISE/verilog/src/}
