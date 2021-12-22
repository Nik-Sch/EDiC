// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Mon Dec 20 14:52:57 2021
// Host        : niklasPC running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub -rename_top clk_wiz_5Mhz -prefix
//               clk_wiz_5Mhz_ clk_wiz_5Mhz_stub.v
// Design      : clk_wiz_5Mhz
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_5Mhz(clk5, clkRamN, clkEEPROM, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk5,clkRamN,clkEEPROM,clk_in1" */;
  output clk5;
  output clkRamN;
  output clkEEPROM;
  input clk_in1;
endmodule
