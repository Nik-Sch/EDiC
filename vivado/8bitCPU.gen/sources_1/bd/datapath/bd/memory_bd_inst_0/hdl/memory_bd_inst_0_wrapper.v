//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Fri Sep 24 22:37:20 2021
//Host        : niklasPC running 64-bit Manjaro Linux
//Command     : generate_target memory_bd_inst_0_wrapper.bd
//Design      : memory_bd_inst_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module memory_bd_inst_0_wrapper
   (i_clk,
    i_ctrlInstrNOE,
    i_ctrlInstrNWE,
    i_ctrlMemInstrImmToRam,
    i_ctrlMemMar0NWE,
    i_ctrlMemMar1NWE,
    i_ctrlPCIncrN,
    i_ctrlPCLoadN,
    i_ctrlRamNOE,
    i_ctrlRamNWE,
    i_ctrlSpNEn,
    i_ctrlSpUp,
    i_reset,
    io_bus,
    o_instrCode);
  input i_clk;
  input i_ctrlInstrNOE;
  input i_ctrlInstrNWE;
  input i_ctrlMemInstrImmToRam;
  input i_ctrlMemMar0NWE;
  input i_ctrlMemMar1NWE;
  input i_ctrlPCIncrN;
  input i_ctrlPCLoadN;
  input i_ctrlRamNOE;
  input i_ctrlRamNWE;
  input i_ctrlSpNEn;
  input i_ctrlSpUp;
  input i_reset;
  inout [7:0]io_bus;
  output [7:0]o_instrCode;

  wire i_clk;
  wire i_ctrlInstrNOE;
  wire i_ctrlInstrNWE;
  wire i_ctrlMemInstrImmToRam;
  wire i_ctrlMemMar0NWE;
  wire i_ctrlMemMar1NWE;
  wire i_ctrlPCIncrN;
  wire i_ctrlPCLoadN;
  wire i_ctrlRamNOE;
  wire i_ctrlRamNWE;
  wire i_ctrlSpNEn;
  wire i_ctrlSpUp;
  wire i_reset;
  wire [7:0]io_bus;
  wire [7:0]o_instrCode;

  memory_bd_inst_0 memory_bd_inst_0_i
       (.i_clk(i_clk),
        .i_ctrlInstrNOE(i_ctrlInstrNOE),
        .i_ctrlInstrNWE(i_ctrlInstrNWE),
        .i_ctrlMemInstrImmToRam(i_ctrlMemInstrImmToRam),
        .i_ctrlMemMar0NWE(i_ctrlMemMar0NWE),
        .i_ctrlMemMar1NWE(i_ctrlMemMar1NWE),
        .i_ctrlPCIncrN(i_ctrlPCIncrN),
        .i_ctrlPCLoadN(i_ctrlPCLoadN),
        .i_ctrlRamNOE(i_ctrlRamNOE),
        .i_ctrlRamNWE(i_ctrlRamNWE),
        .i_ctrlSpNEn(i_ctrlSpNEn),
        .i_ctrlSpUp(i_ctrlSpUp),
        .i_reset(i_reset),
        .io_bus(io_bus),
        .o_instrCode(o_instrCode));
endmodule
