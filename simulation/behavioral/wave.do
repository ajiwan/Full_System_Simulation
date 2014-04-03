log -r */
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {top-level ports}
add wave -noupdate /system/zio
add wave -noupdate /system/rzq
add wave -noupdate /system/mcbx_dram_we_n
add wave -noupdate /system/mcbx_dram_udqs_n
add wave -noupdate /system/mcbx_dram_udqs
add wave -noupdate /system/mcbx_dram_udm
add wave -noupdate /system/mcbx_dram_ras_n
add wave -noupdate /system/mcbx_dram_odt
add wave -noupdate /system/mcbx_dram_ldm
add wave -noupdate /system/mcbx_dram_dqs_n
add wave -noupdate /system/mcbx_dram_dqs
add wave -noupdate -radix hexadecimal /system/mcbx_dram_dq
add wave -noupdate /system/mcbx_dram_clk_n
add wave -noupdate /system/mcbx_dram_clk
add wave -noupdate /system/mcbx_dram_cke
add wave -noupdate /system/mcbx_dram_cas_n
add wave -noupdate -radix hexadecimal /system/mcbx_dram_ba
add wave -noupdate -radix hexadecimal /system/mcbx_dram_addr
add wave -noupdate /system/RESET
add wave -noupdate /system/GCLK
add wave -noupdate -divider axi4_0
add wave -noupdate -radix hexadecimal /system/axi4_0/S_AXI_ARESET_OUT_N
add wave -noupdate /system/axi4_0/M_AXI_ARESET_OUT_N
add wave -noupdate -radix hexadecimal /system/axi4_0/S_AXI_AWREADY
add wave -noupdate -radix hexadecimal /system/axi4_0/S_AXI_WREADY
add wave -noupdate -radix hexadecimal /system/axi4_0/S_AXI_BRESP
add wave -noupdate -radix hexadecimal /system/axi4_0/S_AXI_BVALID
add wave -noupdate -radix hexadecimal /system/axi4_0/S_AXI_ARREADY
add wave -noupdate -radix hexadecimal /system/axi4_0/S_AXI_RDATA
add wave -noupdate -radix hexadecimal /system/axi4_0/S_AXI_RRESP
add wave -noupdate -radix hexadecimal /system/axi4_0/S_AXI_RLAST
add wave -noupdate -radix hexadecimal /system/axi4_0/S_AXI_RVALID
add wave -noupdate /system/axi4_0/M_AXI_AWID
add wave -noupdate -radix hexadecimal /system/axi4_0/M_AXI_AWADDR
add wave -noupdate -radix hexadecimal /system/axi4_0/M_AXI_AWLEN
add wave -noupdate -radix hexadecimal /system/axi4_0/M_AXI_AWSIZE
add wave -noupdate -radix hexadecimal /system/axi4_0/M_AXI_AWBURST
add wave -noupdate -radix hexadecimal /system/axi4_0/M_AXI_AWLOCK
add wave -noupdate -radix hexadecimal /system/axi4_0/M_AXI_AWCACHE
add wave -noupdate -radix hexadecimal /system/axi4_0/M_AXI_AWPROT
add wave -noupdate -radix hexadecimal /system/axi4_0/M_AXI_AWQOS
add wave -noupdate /system/axi4_0/M_AXI_AWVALID
add wave -noupdate -radix hexadecimal /system/axi4_0/M_AXI_WDATA
add wave -noupdate -radix hexadecimal /system/axi4_0/M_AXI_WSTRB
add wave -noupdate /system/axi4_0/M_AXI_WLAST
add wave -noupdate /system/axi4_0/M_AXI_WVALID
add wave -noupdate /system/axi4_0/M_AXI_BREADY
add wave -noupdate /system/axi4_0/M_AXI_ARID
add wave -noupdate -radix hexadecimal /system/axi4_0/M_AXI_ARADDR
add wave -noupdate -radix hexadecimal /system/axi4_0/M_AXI_ARLEN
add wave -noupdate -radix hexadecimal /system/axi4_0/M_AXI_ARSIZE
add wave -noupdate -radix hexadecimal /system/axi4_0/M_AXI_ARBURST
add wave -noupdate -radix hexadecimal /system/axi4_0/M_AXI_ARLOCK
add wave -noupdate -radix hexadecimal /system/axi4_0/M_AXI_ARCACHE
add wave -noupdate -radix hexadecimal /system/axi4_0/M_AXI_ARPROT
add wave -noupdate -radix hexadecimal /system/axi4_0/M_AXI_ARQOS
add wave -noupdate /system/axi4_0/M_AXI_ARVALID
add wave -noupdate /system/axi4_0/M_AXI_RREADY
add wave -noupdate -divider proc_sys_reset_0
add wave -noupdate /system/proc_sys_reset_0/Slowest_sync_clk
add wave -noupdate /system/proc_sys_reset_0/Ext_Reset_In
add wave -noupdate /system/proc_sys_reset_0/Aux_Reset_In
add wave -noupdate /system/proc_sys_reset_0/MB_Debug_Sys_Rst
add wave -noupdate /system/proc_sys_reset_0/Dcm_locked
add wave -noupdate /system/proc_sys_reset_0/Bus_Struct_Reset
add wave -noupdate /system/proc_sys_reset_0/Interconnect_aresetn
add wave -noupdate -divider load_bram_0
add wave -noupdate -radix hexadecimal /system/load_bram_0/load_bram_dout
add wave -noupdate /system/load_bram_0/load_bram_wr_en_fifo
add wave -noupdate /system/load_bram_0/m_axi_arvalid
add wave -noupdate -radix hexadecimal /system/load_bram_0/m_axi_araddr
add wave -noupdate -radix hexadecimal /system/load_bram_0/m_axi_arlen
add wave -noupdate -radix hexadecimal /system/load_bram_0/m_axi_arsize
add wave -noupdate -radix hexadecimal /system/load_bram_0/m_axi_arburst
add wave -noupdate -radix hexadecimal /system/load_bram_0/m_axi_arprot
add wave -noupdate -radix hexadecimal /system/load_bram_0/m_axi_arcache
add wave -noupdate /system/load_bram_0/m_axi_rready
add wave -noupdate /system/load_bram_0/m_axi_awvalid
add wave -noupdate -radix hexadecimal /system/load_bram_0/m_axi_awaddr
add wave -noupdate -radix hexadecimal /system/load_bram_0/m_axi_awlen
add wave -noupdate -radix hexadecimal /system/load_bram_0/m_axi_awsize
add wave -noupdate -radix hexadecimal /system/load_bram_0/m_axi_awburst
add wave -noupdate -radix hexadecimal /system/load_bram_0/m_axi_awprot
add wave -noupdate -radix hexadecimal /system/load_bram_0/m_axi_awcache
add wave -noupdate /system/load_bram_0/m_axi_wvalid
add wave -noupdate -radix hexadecimal /system/load_bram_0/m_axi_wdata
add wave -noupdate -radix hexadecimal /system/load_bram_0/m_axi_wstrb
add wave -noupdate /system/load_bram_0/m_axi_wlast
add wave -noupdate /system/load_bram_0/m_axi_bready
add wave -noupdate -divider disparity_out_0
add wave -noupdate /system/disparity_out_0/m_axi_arvalid
add wave -noupdate -radix hexadecimal /system/disparity_out_0/m_axi_araddr
add wave -noupdate -radix hexadecimal /system/disparity_out_0/m_axi_arlen
add wave -noupdate -radix hexadecimal /system/disparity_out_0/m_axi_arsize
add wave -noupdate -radix hexadecimal /system/disparity_out_0/m_axi_arburst
add wave -noupdate -radix hexadecimal /system/disparity_out_0/m_axi_arprot
add wave -noupdate -radix hexadecimal /system/disparity_out_0/m_axi_arcache
add wave -noupdate /system/disparity_out_0/m_axi_rready
add wave -noupdate /system/disparity_out_0/m_axi_awvalid
add wave -noupdate -radix hexadecimal /system/disparity_out_0/m_axi_awaddr
add wave -noupdate -radix hexadecimal /system/disparity_out_0/m_axi_awlen
add wave -noupdate -radix hexadecimal /system/disparity_out_0/m_axi_awsize
add wave -noupdate -radix hexadecimal /system/disparity_out_0/m_axi_awburst
add wave -noupdate -radix hexadecimal /system/disparity_out_0/m_axi_awprot
add wave -noupdate -radix hexadecimal /system/disparity_out_0/m_axi_awcache
add wave -noupdate /system/disparity_out_0/m_axi_wvalid
add wave -noupdate -radix hexadecimal /system/disparity_out_0/m_axi_wdata
add wave -noupdate -radix hexadecimal /system/disparity_out_0/m_axi_wstrb
add wave -noupdate /system/disparity_out_0/m_axi_wlast
add wave -noupdate /system/disparity_out_0/m_axi_bready
add wave -noupdate -radix hexadecimal /system/disparity_out_0/DISP_D_I
add wave -noupdate /system/disparity_out_0/DISP_CLK_I
add wave -noupdate /system/disparity_out_0/RESET_I
add wave -noupdate /system/disparity_out_0/DISP_EN
add wave -noupdate -divider clock_generator_0
add wave -noupdate /system/clock_generator_0/CLKIN
add wave -noupdate /system/clock_generator_0/CLKOUT0
add wave -noupdate /system/clock_generator_0/CLKOUT1
add wave -noupdate /system/clock_generator_0/CLKOUT2
add wave -noupdate /system/clock_generator_0/CLKFBIN
add wave -noupdate /system/clock_generator_0/PSCLK
add wave -noupdate /system/clock_generator_0/PSEN
add wave -noupdate /system/clock_generator_0/PSINCDEC
add wave -noupdate /system/clock_generator_0/RST
add wave -noupdate /system/clock_generator_0/LOCKED
add wave -noupdate -divider MCB_DDR2
add wave -noupdate /system/MCB_DDR2/sysclk_2x
add wave -noupdate /system/MCB_DDR2/sysclk_2x_180
add wave -noupdate /system/MCB_DDR2/pll_ce_0
add wave -noupdate /system/MCB_DDR2/pll_ce_90
add wave -noupdate /system/MCB_DDR2/pll_lock
add wave -noupdate /system/MCB_DDR2/sys_rst
add wave -noupdate -radix hexadecimal /system/MCB_DDR2/mcbx_dram_addr
add wave -noupdate -radix hexadecimal /system/MCB_DDR2/mcbx_dram_ba
add wave -noupdate /system/MCB_DDR2/mcbx_dram_ras_n
add wave -noupdate /system/MCB_DDR2/mcbx_dram_cas_n
add wave -noupdate /system/MCB_DDR2/mcbx_dram_we_n
add wave -noupdate /system/MCB_DDR2/mcbx_dram_cke
add wave -noupdate /system/MCB_DDR2/mcbx_dram_clk
add wave -noupdate /system/MCB_DDR2/mcbx_dram_clk_n
add wave -noupdate -radix hexadecimal /system/MCB_DDR2/mcbx_dram_dq
add wave -noupdate /system/MCB_DDR2/mcbx_dram_dqs
add wave -noupdate /system/MCB_DDR2/mcbx_dram_dqs_n
add wave -noupdate /system/MCB_DDR2/mcbx_dram_udqs
add wave -noupdate /system/MCB_DDR2/mcbx_dram_udqs_n
add wave -noupdate /system/MCB_DDR2/mcbx_dram_udm
add wave -noupdate /system/MCB_DDR2/mcbx_dram_ldm
add wave -noupdate /system/MCB_DDR2/mcbx_dram_odt
add wave -noupdate /system/MCB_DDR2/rzq
add wave -noupdate /system/MCB_DDR2/zio
add wave -noupdate /system/MCB_DDR2/ui_clk
add wave -noupdate /system/MCB_DDR2/s0_axi_awready
add wave -noupdate /system/MCB_DDR2/s0_axi_wready
add wave -noupdate /system/MCB_DDR2/s0_axi_bid
add wave -noupdate -radix hexadecimal /system/MCB_DDR2/s0_axi_bresp
add wave -noupdate /system/MCB_DDR2/s0_axi_bvalid
add wave -noupdate /system/MCB_DDR2/s0_axi_arready
add wave -noupdate /system/MCB_DDR2/s0_axi_rid
add wave -noupdate -radix hexadecimal /system/MCB_DDR2/s0_axi_rdata
add wave -noupdate -radix hexadecimal /system/MCB_DDR2/s0_axi_rresp
add wave -noupdate /system/MCB_DDR2/s0_axi_rlast
add wave -noupdate /system/MCB_DDR2/s0_axi_rvalid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue right
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1004 ps}
