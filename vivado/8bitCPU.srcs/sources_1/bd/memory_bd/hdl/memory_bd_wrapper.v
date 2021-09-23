//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Tue Sep 21 22:11:00 2021
//Host        : niklasPC running 64-bit Manjaro Linux
//Command     : generate_target memory_bd_wrapper.bd
//Design      : memory_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module memory_bd_wrapper
   (i_bus,
    i_clk,
    i_ctrlInstrImmNOE,
    i_ctrlInstrNWE,
    i_ctrlNotPCIncr,
    i_ctrlNotPCLoad,
    i_ctrlNotSpEn,
    i_ctrlRamNOE,
    i_ctrlRamNWE,
    i_ctrlSpDirection,
    i_reset,
    o_bus,
    o_instrCode);
  input [7:0]i_bus;
  input i_clk;
  input i_ctrlInstrImmNOE;
  input i_ctrlInstrNWE;
  input i_ctrlNotPCIncr;
  input i_ctrlNotPCLoad;
  input i_ctrlNotSpEn;
  input i_ctrlRamNOE;
  input i_ctrlRamNWE;
  input i_ctrlSpDirection;
  input i_reset;
  output [7:0]o_bus;
  output [7:0]o_instrCode;

  wire [7:0]i_bus;
  wire i_clk;
  wire i_ctrlInstrImmNOE;
  wire i_ctrlInstrNWE;
  wire i_ctrlNotPCIncr;
  wire i_ctrlNotPCLoad;
  wire i_ctrlNotSpEn;
  wire i_ctrlRamNOE;
  wire i_ctrlRamNWE;
  wire i_ctrlSpDirection;
  wire i_reset;
  wire [7:0]o_bus;
  wire [7:0]o_instrCode;

  memory_bd memory_bd_i
       (.i_bus(i_bus),
        .i_clk(i_clk),
        .i_ctrlInstrImmNOE(i_ctrlInstrImmNOE),
        .i_ctrlInstrNWE(i_ctrlInstrNWE),
        .i_ctrlNotPCIncr(i_ctrlNotPCIncr),
        .i_ctrlNotPCLoad(i_ctrlNotPCLoad),
        .i_ctrlNotSpEn(i_ctrlNotSpEn),
        .i_ctrlRamNOE(i_ctrlRamNOE),
        .i_ctrlRamNWE(i_ctrlRamNWE),
        .i_ctrlSpDirection(i_ctrlSpDirection),
        .i_reset(i_reset),
        .o_bus(o_bus),
        .o_instrCode(o_instrCode));
endmodule
