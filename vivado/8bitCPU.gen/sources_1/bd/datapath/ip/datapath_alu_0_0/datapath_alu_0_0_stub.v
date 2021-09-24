// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Sep 24 22:40:36 2021
// Host        : niklasPC running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/niklas/dev/8bitCpu/vivado/8bitCPU.gen/sources_1/bd/datapath/ip/datapath_alu_0_0/datapath_alu_0_0_stub.v
// Design      : datapath_alu_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "alu,Vivado 2021.1" *)
module datapath_alu_0_0(i_clk, i_reset, i_a, io_bus, o_flagNegative, 
  o_flagNZero, i_ctrlAluYNWE, i_ctrlAluNOE, i_ctrlAluSub, i_ctrlAluOp)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_reset,i_a[7:0],io_bus[7:0],o_flagNegative,o_flagNZero,i_ctrlAluYNWE,i_ctrlAluNOE,i_ctrlAluSub,i_ctrlAluOp[1:0]" */;
  input i_clk;
  input i_reset;
  input [7:0]i_a;
  inout [7:0]io_bus;
  output o_flagNegative;
  output o_flagNZero;
  input i_ctrlAluYNWE;
  input i_ctrlAluNOE;
  input i_ctrlAluSub;
  input [1:0]i_ctrlAluOp;
endmodule
