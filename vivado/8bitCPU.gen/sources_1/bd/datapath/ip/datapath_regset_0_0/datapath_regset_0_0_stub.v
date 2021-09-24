// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Sep 24 22:40:35 2021
// Host        : niklasPC running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/niklas/dev/8bitCpu/vivado/8bitCPU.gen/sources_1/bd/datapath/ip/datapath_regset_0_0/datapath_regset_0_0_stub.v
// Design      : datapath_regset_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "regset,Vivado 2021.1" *)
module datapath_regset_0_0(i_clk, i_reset, io_bus, o_alu, i_ctrlReg0NWE, 
  i_ctrlReg1NWE, i_ctrlAluSel, i_ctrlRegBusSel, i_ctrlRegBusNOE)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_reset,io_bus[7:0],o_alu[7:0],i_ctrlReg0NWE,i_ctrlReg1NWE,i_ctrlAluSel,i_ctrlRegBusSel,i_ctrlRegBusNOE" */;
  input i_clk;
  input i_reset;
  inout [7:0]io_bus;
  output [7:0]o_alu;
  input i_ctrlReg0NWE;
  input i_ctrlReg1NWE;
  input i_ctrlAluSel;
  input i_ctrlRegBusSel;
  input i_ctrlRegBusNOE;
endmodule
