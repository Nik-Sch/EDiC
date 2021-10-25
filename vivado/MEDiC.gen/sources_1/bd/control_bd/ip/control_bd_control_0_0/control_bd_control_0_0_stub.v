// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Mon Oct 25 18:15:48 2021
// Host        : niklasPC running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/niklas/dev/MEDiC/vivado/MEDiC.gen/sources_1/bd/control_bd/ip/control_bd_control_0_0/control_bd_control_0_0_stub.v
// Design      : control_bd_control_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "control,Vivado 2021.1" *)
module control_bd_control_0_0(i_nclk, i_reset, i_instrCode, o_decodeAddr, 
  i_decodeData, i_halt, i_flagNegative, i_flagZero, i_flagCarry, i_flagOverflow, o_ctrlAluOp, 
  o_ctrlAluSub, o_ctrlAluYNWE, o_ctrlAluNOE, o_ctrlReg0NWE, o_ctrlReg1NWE, o_ctrlRegAluSel, 
  o_ctrlReg0BusNOE, o_ctrlReg1BusNOE, o_ctrlMemPCLoadN, o_ctrlMemPCNEn, o_ctrlMemPCFromImm, 
  o_ctrlMemSPUp, o_ctrlMemSPNEn, o_ctrlMemInstrNWE, o_ctrlMemInstrNOE, o_ctrlMemMar0NWE, 
  o_ctrlMemMar1NWE, o_ctrlMemInstrImmToRamAddr, o_ctrlMemRamNWE, o_ctrlMemRamNOE, 
  o_ctrlMemPCToRamN, o_ctrlInstrFinishedN)
/* synthesis syn_black_box black_box_pad_pin="i_nclk,i_reset,i_instrCode[7:0],o_decodeAddr[14:0],i_decodeData[23:0],i_halt,i_flagNegative,i_flagZero,i_flagCarry,i_flagOverflow,o_ctrlAluOp[1:0],o_ctrlAluSub,o_ctrlAluYNWE,o_ctrlAluNOE,o_ctrlReg0NWE,o_ctrlReg1NWE,o_ctrlRegAluSel,o_ctrlReg0BusNOE,o_ctrlReg1BusNOE,o_ctrlMemPCLoadN,o_ctrlMemPCNEn,o_ctrlMemPCFromImm,o_ctrlMemSPUp,o_ctrlMemSPNEn,o_ctrlMemInstrNWE,o_ctrlMemInstrNOE,o_ctrlMemMar0NWE,o_ctrlMemMar1NWE,o_ctrlMemInstrImmToRamAddr,o_ctrlMemRamNWE,o_ctrlMemRamNOE,o_ctrlMemPCToRamN,o_ctrlInstrFinishedN" */;
  input i_nclk;
  input i_reset;
  input [7:0]i_instrCode;
  output [14:0]o_decodeAddr;
  input [23:0]i_decodeData;
  input i_halt;
  input i_flagNegative;
  input i_flagZero;
  input i_flagCarry;
  input i_flagOverflow;
  output [1:0]o_ctrlAluOp;
  output o_ctrlAluSub;
  output o_ctrlAluYNWE;
  output o_ctrlAluNOE;
  output o_ctrlReg0NWE;
  output o_ctrlReg1NWE;
  output o_ctrlRegAluSel;
  output o_ctrlReg0BusNOE;
  output o_ctrlReg1BusNOE;
  output o_ctrlMemPCLoadN;
  output o_ctrlMemPCNEn;
  output o_ctrlMemPCFromImm;
  output o_ctrlMemSPUp;
  output o_ctrlMemSPNEn;
  output o_ctrlMemInstrNWE;
  output o_ctrlMemInstrNOE;
  output o_ctrlMemMar0NWE;
  output o_ctrlMemMar1NWE;
  output o_ctrlMemInstrImmToRamAddr;
  output o_ctrlMemRamNWE;
  output o_ctrlMemRamNOE;
  output o_ctrlMemPCToRamN;
  output o_ctrlInstrFinishedN;
endmodule
