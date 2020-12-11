// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Dec 11 13:28:21 2020
// Host        : niklasPC running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/niklas/dev/8bitCpu/vivado/8bitCPU.runs/dist_mem_gen_0_synth_1/dist_mem_gen_0_stub.v
// Design      : dist_mem_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s6cpga196-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.1" *)
module dist_mem_gen_0(a, d, clk, we, spo)
/* synthesis syn_black_box black_box_pad_pin="a[8:0],d[7:0],clk,we,spo[7:0]" */;
  input [8:0]a;
  input [7:0]d;
  input clk;
  input we;
  output [7:0]spo;
endmodule
