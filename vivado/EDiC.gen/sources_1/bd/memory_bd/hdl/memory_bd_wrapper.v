//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Mon Nov  1 11:23:38 2021
//Host        : niklasPC running 64-bit Manjaro Linux
//Command     : generate_target memory_bd_wrapper.bd
//Design      : memory_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module memory_bd_wrapper
   (i_asyncRamSpecialClock,
    i_breakpointAddress,
    i_breakpointEnableN,
    i_bus,
    i_clk,
    i_ctrlInstrNOE,
    i_ctrlInstrNWE,
    i_ctrlMemInstrImmToRamAddr,
    i_ctrlMemMar0NWE,
    i_ctrlMemMar1NWE,
    i_ctrlMemPCToRamN,
    i_ctrlPCFromImm,
    i_ctrlPCLoadN,
    i_ctrlPCNEn,
    i_ctrlRamNOE,
    i_ctrlRamNWE,
    i_ctrlSpNEn,
    i_ctrlSpUp,
    i_reset,
    o_breakpointHitN,
    o_bus,
    o_instrCode,
    o_ioAddress,
    o_ioNOE,
    o_ioNWE,
    o_ioSelect);
  input i_asyncRamSpecialClock;
  input [15:0]i_breakpointAddress;
  input i_breakpointEnableN;
  input [7:0]i_bus;
  input i_clk;
  input i_ctrlInstrNOE;
  input i_ctrlInstrNWE;
  input i_ctrlMemInstrImmToRamAddr;
  input i_ctrlMemMar0NWE;
  input i_ctrlMemMar1NWE;
  input i_ctrlMemPCToRamN;
  input i_ctrlPCFromImm;
  input i_ctrlPCLoadN;
  input i_ctrlPCNEn;
  input i_ctrlRamNOE;
  input i_ctrlRamNWE;
  input i_ctrlSpNEn;
  input i_ctrlSpUp;
  input i_reset;
  output o_breakpointHitN;
  output [7:0]o_bus;
  output [7:0]o_instrCode;
  output [7:0]o_ioAddress;
  output o_ioNOE;
  output o_ioNWE;
  output o_ioSelect;

  wire i_asyncRamSpecialClock;
  wire [15:0]i_breakpointAddress;
  wire i_breakpointEnableN;
  wire [7:0]i_bus;
  wire i_clk;
  wire i_ctrlInstrNOE;
  wire i_ctrlInstrNWE;
  wire i_ctrlMemInstrImmToRamAddr;
  wire i_ctrlMemMar0NWE;
  wire i_ctrlMemMar1NWE;
  wire i_ctrlMemPCToRamN;
  wire i_ctrlPCFromImm;
  wire i_ctrlPCLoadN;
  wire i_ctrlPCNEn;
  wire i_ctrlRamNOE;
  wire i_ctrlRamNWE;
  wire i_ctrlSpNEn;
  wire i_ctrlSpUp;
  wire i_reset;
  wire o_breakpointHitN;
  wire [7:0]o_bus;
  wire [7:0]o_instrCode;
  wire [7:0]o_ioAddress;
  wire o_ioNOE;
  wire o_ioNWE;
  wire o_ioSelect;

  memory_bd memory_bd_i
       (.i_asyncRamSpecialClock(i_asyncRamSpecialClock),
        .i_breakpointAddress(i_breakpointAddress),
        .i_breakpointEnableN(i_breakpointEnableN),
        .i_bus(i_bus),
        .i_clk(i_clk),
        .i_ctrlInstrNOE(i_ctrlInstrNOE),
        .i_ctrlInstrNWE(i_ctrlInstrNWE),
        .i_ctrlMemInstrImmToRamAddr(i_ctrlMemInstrImmToRamAddr),
        .i_ctrlMemMar0NWE(i_ctrlMemMar0NWE),
        .i_ctrlMemMar1NWE(i_ctrlMemMar1NWE),
        .i_ctrlMemPCToRamN(i_ctrlMemPCToRamN),
        .i_ctrlPCFromImm(i_ctrlPCFromImm),
        .i_ctrlPCLoadN(i_ctrlPCLoadN),
        .i_ctrlPCNEn(i_ctrlPCNEn),
        .i_ctrlRamNOE(i_ctrlRamNOE),
        .i_ctrlRamNWE(i_ctrlRamNWE),
        .i_ctrlSpNEn(i_ctrlSpNEn),
        .i_ctrlSpUp(i_ctrlSpUp),
        .i_reset(i_reset),
        .o_breakpointHitN(o_breakpointHitN),
        .o_bus(o_bus),
        .o_instrCode(o_instrCode),
        .o_ioAddress(o_ioAddress),
        .o_ioNOE(o_ioNOE),
        .o_ioNWE(o_ioNWE),
        .o_ioSelect(o_ioSelect));
endmodule
