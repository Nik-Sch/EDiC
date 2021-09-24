//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Fri Sep 24 22:37:20 2021
//Host        : niklasPC running 64-bit Manjaro Linux
//Command     : generate_target memory_bd_inst_0.bd
//Design      : memory_bd_inst_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "memory_bd_inst_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=memory_bd_inst_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=/home/niklas/dev/8bitCpu/vivado/8bitCPU.srcs/sources_1/bd/memory_bd/memory_bd.bd,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "memory_bd_inst_0.hwdef" *) 
module memory_bd_inst_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, ASSOCIATED_RESET i_reset, CLK_DOMAIN datapath_i_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input i_clk;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input i_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IO_BUS DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IO_BUS, LAYERED_METADATA undef" *) inout [7:0]io_bus;
  output [7:0]o_instrCode;

  wire [7:0]Net;
  wire i_clk_0_1;
  wire i_ctrlInstrNOE_0_1;
  wire i_ctrlInstrNWE_0_1;
  wire i_ctrlMemInstrImmToRam_0_1;
  wire i_ctrlMemMar0NWE_0_1;
  wire i_ctrlMemMar1NWE_0_1;
  wire i_ctrlPCIncrN_0_1;
  wire i_ctrlPCLoadN_0_1;
  wire i_ctrlRamNOE_0_1;
  wire i_ctrlRamNWE_0_1;
  wire i_ctrlSpNEn_0_1;
  wire i_ctrlSpUp_0_1;
  wire i_reset_0_1;
  wire [23:0]instrRom_douta;
  wire [7:0]memory_0_o_instrCode;
  wire [16:0]memory_0_o_ramAddress;
  wire [7:0]memory_0_o_ramData;
  wire memory_0_o_ramWE;
  wire [14:0]memory_0_o_romAddress;
  wire [7:0]ram_douta;

  assign i_clk_0_1 = i_clk;
  assign i_ctrlInstrNOE_0_1 = i_ctrlInstrNOE;
  assign i_ctrlInstrNWE_0_1 = i_ctrlInstrNWE;
  assign i_ctrlMemInstrImmToRam_0_1 = i_ctrlMemInstrImmToRam;
  assign i_ctrlMemMar0NWE_0_1 = i_ctrlMemMar0NWE;
  assign i_ctrlMemMar1NWE_0_1 = i_ctrlMemMar1NWE;
  assign i_ctrlPCIncrN_0_1 = i_ctrlPCIncrN;
  assign i_ctrlPCLoadN_0_1 = i_ctrlPCLoadN;
  assign i_ctrlRamNOE_0_1 = i_ctrlRamNOE;
  assign i_ctrlRamNWE_0_1 = i_ctrlRamNWE;
  assign i_ctrlSpNEn_0_1 = i_ctrlSpNEn;
  assign i_ctrlSpUp_0_1 = i_ctrlSpUp;
  assign i_reset_0_1 = i_reset;
  assign o_instrCode[7:0] = memory_0_o_instrCode;
  memory_bd_inst_0_instrRom_0 instrRom
       (.addra(memory_0_o_romAddress),
        .clka(i_clk_0_1),
        .douta(instrRom_douta));
  memory_bd_inst_0_memory_0 memory
       (.i_clk(i_clk_0_1),
        .i_ctrlInstrNOE(i_ctrlInstrNOE_0_1),
        .i_ctrlInstrNWE(i_ctrlInstrNWE_0_1),
        .i_ctrlMemInstrImmToRam(i_ctrlMemInstrImmToRam_0_1),
        .i_ctrlMemMar0NWE(i_ctrlMemMar0NWE_0_1),
        .i_ctrlMemMar1NWE(i_ctrlMemMar1NWE_0_1),
        .i_ctrlPCIncrN(i_ctrlPCIncrN_0_1),
        .i_ctrlPCLoadN(i_ctrlPCLoadN_0_1),
        .i_ctrlRamNOE(i_ctrlRamNOE_0_1),
        .i_ctrlRamNWE(i_ctrlRamNWE_0_1),
        .i_ctrlSpNEn(i_ctrlSpNEn_0_1),
        .i_ctrlSpUp(i_ctrlSpUp_0_1),
        .i_ramData(ram_douta),
        .i_reset(i_reset_0_1),
        .i_romData(instrRom_douta),
        .io_bus(io_bus[7:0]),
        .o_instrCode(memory_0_o_instrCode),
        .o_ramAddress(memory_0_o_ramAddress),
        .o_ramData(memory_0_o_ramData),
        .o_ramWE(memory_0_o_ramWE),
        .o_romAddress(memory_0_o_romAddress));
  memory_bd_inst_0_ram_0 ram
       (.addra(memory_0_o_ramAddress),
        .clka(i_clk_0_1),
        .dina(memory_0_o_ramData),
        .douta(ram_douta),
        .wea(memory_0_o_ramWE));
endmodule
