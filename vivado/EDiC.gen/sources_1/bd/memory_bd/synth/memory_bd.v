//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
//Date        : Mon Nov 22 18:43:34 2021
//Host        : niklasPC running 64-bit Manjaro Linux
//Command     : generate_target memory_bd.bd
//Design      : memory_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "memory_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=memory_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "memory_bd.hwdef" *) 
module memory_bd
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
    i_halt,
    i_reset,
    o_breakpointHitN,
    o_bus,
    o_busNOE,
    o_dbgPc,
    o_instrCode,
    o_ioAddress,
    o_ioNOE,
    o_ioNWE,
    o_ioSelect);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_ASYNCRAMSPECIALCLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_ASYNCRAMSPECIALCLOCK, CLK_DOMAIN memory_bd_i_asyncRamSpecialClock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input i_asyncRamSpecialClock;
  input [15:0]i_breakpointAddress;
  input i_breakpointEnableN;
  input [7:0]i_bus;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, ASSOCIATED_RESET i_reset, CLK_DOMAIN memory_bd_i_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input i_clk;
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
  input i_halt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input i_reset;
  output o_breakpointHitN;
  output [7:0]o_bus;
  output o_busNOE;
  output [15:0]o_dbgPc;
  output [7:0]o_instrCode;
  output [7:0]o_ioAddress;
  output o_ioNOE;
  output o_ioNWE;
  output o_ioSelect;

  wire Net;
  wire clka_0_1;
  wire [15:0]i_breakpointAddress_0_1;
  wire i_breakpointEnableN_0_1;
  wire [7:0]i_bus_0_1;
  wire i_clk_0_1;
  wire i_ctrlInstrNOE_0_1;
  wire i_ctrlInstrNWE_0_1;
  wire i_ctrlMemInstrImmToRamAddr_0_1;
  wire i_ctrlMemMar0NWE_0_1;
  wire i_ctrlMemMar1NWE_0_1;
  wire i_ctrlMemPCToRamN_0_1;
  wire i_ctrlPCFromImm_0_1;
  wire i_ctrlPCLoadN_0_1;
  wire i_ctrlPCNEn_0_1;
  wire i_ctrlRamNOE_0_1;
  wire i_ctrlRamNWE_0_1;
  wire i_ctrlSpNEn_0_1;
  wire i_ctrlSpUp_0_1;
  wire i_haltN_0_1;
  wire i_reset_0_1;
  wire [23:0]instrRom_douta;
  wire [7:0]memory_0_o_instrCode;
  wire [16:0]memory_0_o_ramAddress;
  wire [7:0]memory_0_o_ramData;
  wire memory_0_o_ramWE;
  wire [14:0]memory_0_o_romAddress;
  wire memory_o_breakpointHitN;
  wire [7:0]memory_o_bus;
  wire memory_o_busNOE;
  wire [15:0]memory_o_dbgPc;
  wire [7:0]memory_o_ioAddress;
  wire memory_o_ioNOE;
  wire memory_o_ioNWE;
  wire memory_o_ioSelect;
  wire [7:0]memory_o_ram2Data;
  wire [7:0]ram2_douta;
  wire [7:0]ram_douta;

  assign clka_0_1 = i_asyncRamSpecialClock;
  assign i_breakpointAddress_0_1 = i_breakpointAddress[15:0];
  assign i_breakpointEnableN_0_1 = i_breakpointEnableN;
  assign i_bus_0_1 = i_bus[7:0];
  assign i_clk_0_1 = i_clk;
  assign i_ctrlInstrNOE_0_1 = i_ctrlInstrNOE;
  assign i_ctrlInstrNWE_0_1 = i_ctrlInstrNWE;
  assign i_ctrlMemInstrImmToRamAddr_0_1 = i_ctrlMemInstrImmToRamAddr;
  assign i_ctrlMemMar0NWE_0_1 = i_ctrlMemMar0NWE;
  assign i_ctrlMemMar1NWE_0_1 = i_ctrlMemMar1NWE;
  assign i_ctrlMemPCToRamN_0_1 = i_ctrlMemPCToRamN;
  assign i_ctrlPCFromImm_0_1 = i_ctrlPCFromImm;
  assign i_ctrlPCLoadN_0_1 = i_ctrlPCLoadN;
  assign i_ctrlPCNEn_0_1 = i_ctrlPCNEn;
  assign i_ctrlRamNOE_0_1 = i_ctrlRamNOE;
  assign i_ctrlRamNWE_0_1 = i_ctrlRamNWE;
  assign i_ctrlSpNEn_0_1 = i_ctrlSpNEn;
  assign i_ctrlSpUp_0_1 = i_ctrlSpUp;
  assign i_haltN_0_1 = i_halt;
  assign i_reset_0_1 = i_reset;
  assign o_breakpointHitN = memory_o_breakpointHitN;
  assign o_bus[7:0] = memory_o_bus;
  assign o_busNOE = memory_o_busNOE;
  assign o_dbgPc[15:0] = memory_o_dbgPc;
  assign o_instrCode[7:0] = memory_0_o_instrCode;
  assign o_ioAddress[7:0] = memory_o_ioAddress;
  assign o_ioNOE = memory_o_ioNOE;
  assign o_ioNWE = memory_o_ioNWE;
  assign o_ioSelect = memory_o_ioSelect;
  memory_bd_blk_mem_gen_0_1 instrRom
       (.addra(memory_0_o_romAddress),
        .clka(clka_0_1),
        .douta(instrRom_douta));
  memory_bd_memory_0_0 memory
       (.i_breakpointAddress(i_breakpointAddress_0_1),
        .i_breakpointEnableN(i_breakpointEnableN_0_1),
        .i_bus(i_bus_0_1),
        .i_clk(i_clk_0_1),
        .i_ctrlInstrNOE(i_ctrlInstrNOE_0_1),
        .i_ctrlInstrNWE(i_ctrlInstrNWE_0_1),
        .i_ctrlMemInstrImmToRamAddr(i_ctrlMemInstrImmToRamAddr_0_1),
        .i_ctrlMemMar0NWE(i_ctrlMemMar0NWE_0_1),
        .i_ctrlMemMar1NWE(i_ctrlMemMar1NWE_0_1),
        .i_ctrlMemPCToRamN(i_ctrlMemPCToRamN_0_1),
        .i_ctrlPCFromImm(i_ctrlPCFromImm_0_1),
        .i_ctrlPCLoadN(i_ctrlPCLoadN_0_1),
        .i_ctrlPCNEn(i_ctrlPCNEn_0_1),
        .i_ctrlRamNOE(i_ctrlRamNOE_0_1),
        .i_ctrlRamNWE(i_ctrlRamNWE_0_1),
        .i_ctrlSpNEn(i_ctrlSpNEn_0_1),
        .i_ctrlSpUp(i_ctrlSpUp_0_1),
        .i_halt(i_haltN_0_1),
        .i_ram2Data(ram2_douta),
        .i_ramData(ram_douta),
        .i_reset(i_reset_0_1),
        .i_romData(instrRom_douta),
        .o_breakpointHitN(memory_o_breakpointHitN),
        .o_bus(memory_o_bus),
        .o_busNOE(memory_o_busNOE),
        .o_dbgPc(memory_o_dbgPc),
        .o_instrCode(memory_0_o_instrCode),
        .o_ioAddress(memory_o_ioAddress),
        .o_ioNOE(memory_o_ioNOE),
        .o_ioNWE(memory_o_ioNWE),
        .o_ioSelect(memory_o_ioSelect),
        .o_ram2Data(memory_o_ram2Data),
        .o_ramAddress(memory_0_o_ramAddress),
        .o_ramCE(Net),
        .o_ramData(memory_0_o_ramData),
        .o_ramWE(memory_0_o_ramWE),
        .o_romAddress(memory_0_o_romAddress));
  memory_bd_blk_mem_gen_0_0 ram
       (.addra(memory_0_o_ramAddress),
        .clka(clka_0_1),
        .dina(memory_0_o_ramData),
        .douta(ram_douta),
        .ena(Net),
        .wea(memory_0_o_ramWE));
  memory_bd_ram_0 ram2
       (.addra(memory_0_o_ramAddress),
        .clka(clka_0_1),
        .dina(memory_o_ram2Data),
        .douta(ram2_douta),
        .ena(Net),
        .wea(memory_0_o_ramWE));
endmodule
