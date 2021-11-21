// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Nov 21 19:53:39 2021
// Host        : niklasPC running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/niklas/dev/EDiC/vivado/EDiC.gen/sources_1/bd/memory_bd/ip/memory_bd_memory_0_0/memory_bd_memory_0_0_stub.v
// Design      : memory_bd_memory_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "memory,Vivado 2021.2" *)
module memory_bd_memory_0_0(i_clk, i_reset, i_bus, o_bus, o_busNOE, 
  o_instrCode, i_ctrlPCLoadN, i_ctrlPCNEn, i_ctrlPCFromImm, i_ctrlMemPCToRamN, i_ctrlSpUp, 
  i_ctrlSpNEn, i_ctrlInstrNWE, i_ctrlInstrNOE, i_ctrlRamNOE, i_ctrlRamNWE, i_ctrlMemMar0NWE, 
  i_ctrlMemMar1NWE, i_ctrlMemInstrImmToRamAddr, o_romAddress, i_romData, o_ramAddress, 
  i_ramData, o_ramData, i_ram2Data, o_ram2Data, o_ramWE, o_ramCE, o_ioSelect, o_ioAddress, o_ioNOE, 
  o_ioNWE, i_halt, i_breakpointAddress, i_breakpointEnableN, o_breakpointHitN, o_dbgPc)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_reset,i_bus[7:0],o_bus[7:0],o_busNOE,o_instrCode[7:0],i_ctrlPCLoadN,i_ctrlPCNEn,i_ctrlPCFromImm,i_ctrlMemPCToRamN,i_ctrlSpUp,i_ctrlSpNEn,i_ctrlInstrNWE,i_ctrlInstrNOE,i_ctrlRamNOE,i_ctrlRamNWE,i_ctrlMemMar0NWE,i_ctrlMemMar1NWE,i_ctrlMemInstrImmToRamAddr,o_romAddress[14:0],i_romData[23:0],o_ramAddress[16:0],i_ramData[7:0],o_ramData[7:0],i_ram2Data[7:0],o_ram2Data[7:0],o_ramWE,o_ramCE,o_ioSelect,o_ioAddress[7:0],o_ioNOE,o_ioNWE,i_halt,i_breakpointAddress[15:0],i_breakpointEnableN,o_breakpointHitN,o_dbgPc[15:0]" */;
  input i_clk;
  input i_reset;
  input [7:0]i_bus;
  output [7:0]o_bus;
  output o_busNOE;
  output [7:0]o_instrCode;
  input i_ctrlPCLoadN;
  input i_ctrlPCNEn;
  input i_ctrlPCFromImm;
  input i_ctrlMemPCToRamN;
  input i_ctrlSpUp;
  input i_ctrlSpNEn;
  input i_ctrlInstrNWE;
  input i_ctrlInstrNOE;
  input i_ctrlRamNOE;
  input i_ctrlRamNWE;
  input i_ctrlMemMar0NWE;
  input i_ctrlMemMar1NWE;
  input i_ctrlMemInstrImmToRamAddr;
  output [14:0]o_romAddress;
  input [23:0]i_romData;
  output [16:0]o_ramAddress;
  input [7:0]i_ramData;
  output [7:0]o_ramData;
  input [7:0]i_ram2Data;
  output [7:0]o_ram2Data;
  output o_ramWE;
  output o_ramCE;
  output o_ioSelect;
  output [7:0]o_ioAddress;
  output o_ioNOE;
  output o_ioNWE;
  input i_halt;
  input [15:0]i_breakpointAddress;
  input i_breakpointEnableN;
  output o_breakpointHitN;
  output [15:0]o_dbgPc;
endmodule
