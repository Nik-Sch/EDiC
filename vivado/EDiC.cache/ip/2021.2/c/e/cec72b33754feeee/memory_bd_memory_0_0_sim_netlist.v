// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sun Nov 21 19:53:38 2021
// Host        : niklasPC running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ memory_bd_memory_0_0_sim_netlist.v
// Design      : memory_bd_memory_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory
   (o_dbgPc,
    o_ramCE,
    o_instrCode,
    o_breakpointHitN,
    o_ramAddress,
    o_bus,
    o_busNOE,
    o_ioSelect,
    i_ctrlInstrNWE,
    i_ctrlMemMar0NWE,
    i_ctrlMemMar1NWE,
    i_ctrlSpUp,
    i_breakpointAddress,
    i_romData,
    i_clk,
    i_bus,
    i_reset,
    i_breakpointEnableN,
    i_ctrlMemInstrImmToRamAddr,
    i_ctrlMemPCToRamN,
    i_ctrlInstrNOE,
    i_ramData,
    i_ctrlRamNOE,
    i_halt,
    i_ctrlSpNEn,
    i_ctrlPCLoadN,
    i_ctrlPCFromImm,
    i_ram2Data,
    i_ctrlPCNEn);
  output [15:0]o_dbgPc;
  output o_ramCE;
  output [7:0]o_instrCode;
  output o_breakpointHitN;
  output [16:0]o_ramAddress;
  output [7:0]o_bus;
  output o_busNOE;
  output o_ioSelect;
  input i_ctrlInstrNWE;
  input i_ctrlMemMar0NWE;
  input i_ctrlMemMar1NWE;
  input i_ctrlSpUp;
  input [15:0]i_breakpointAddress;
  input [23:0]i_romData;
  input i_clk;
  input [7:0]i_bus;
  input i_reset;
  input i_breakpointEnableN;
  input i_ctrlMemInstrImmToRamAddr;
  input i_ctrlMemPCToRamN;
  input i_ctrlInstrNOE;
  input [7:0]i_ramData;
  input i_ctrlRamNOE;
  input i_halt;
  input i_ctrlSpNEn;
  input i_ctrlPCLoadN;
  input i_ctrlPCFromImm;
  input [7:0]i_ram2Data;
  input i_ctrlPCNEn;

  wire [23:16]data2;
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
  wire i_ctrlSpNEn;
  wire i_ctrlSpUp;
  wire i_halt;
  wire [7:0]i_ram2Data;
  wire [7:0]i_ramData;
  wire i_reset;
  wire [23:0]i_romData;
  wire o_breakpointHitN;
  wire o_breakpointHitN1;
  wire o_breakpointHitN1_carry__0_i_1_n_0;
  wire o_breakpointHitN1_carry__0_i_2_n_0;
  wire o_breakpointHitN1_carry__0_n_3;
  wire o_breakpointHitN1_carry_i_1_n_0;
  wire o_breakpointHitN1_carry_i_2_n_0;
  wire o_breakpointHitN1_carry_i_3_n_0;
  wire o_breakpointHitN1_carry_i_4_n_0;
  wire o_breakpointHitN1_carry_n_0;
  wire o_breakpointHitN1_carry_n_1;
  wire o_breakpointHitN1_carry_n_2;
  wire o_breakpointHitN1_carry_n_3;
  wire [7:0]o_bus;
  wire o_busNOE;
  wire \o_bus[7]_INST_0_i_1_n_0 ;
  wire [15:0]o_dbgPc;
  wire [7:0]o_instrCode;
  wire \o_instrCode[7]_i_1_n_0 ;
  wire o_ioSelect;
  wire [16:0]o_ramAddress;
  wire \o_ramAddress[15]_INST_0_i_1_n_0 ;
  wire \o_ramAddress[16]_INST_0_i_1_n_0 ;
  wire \o_ramAddress[16]_INST_0_i_2_n_0 ;
  wire \o_ramAddress[16]_INST_0_i_3_n_0 ;
  wire \o_ramAddress[9]_INST_0_i_1_n_0 ;
  wire o_ramCE;
  wire o_ramCE_INST_0_i_1_n_0;
  wire o_ramCE_INST_0_i_2_n_0;
  wire [7:0]p_0_in;
  wire p_0_out0;
  wire \r_instrImm_reg_n_0_[10] ;
  wire \r_instrImm_reg_n_0_[11] ;
  wire \r_instrImm_reg_n_0_[12] ;
  wire \r_instrImm_reg_n_0_[13] ;
  wire \r_instrImm_reg_n_0_[14] ;
  wire \r_instrImm_reg_n_0_[15] ;
  wire \r_instrImm_reg_n_0_[8] ;
  wire \r_instrImm_reg_n_0_[9] ;
  wire [15:0]r_mar;
  wire \r_mar[15]_i_1_n_0 ;
  wire \r_pc[11]_i_2_n_0 ;
  wire \r_pc[11]_i_3_n_0 ;
  wire \r_pc[11]_i_4_n_0 ;
  wire \r_pc[11]_i_5_n_0 ;
  wire \r_pc[14]_i_1_n_0 ;
  wire \r_pc[14]_i_3_n_0 ;
  wire \r_pc[14]_i_4_n_0 ;
  wire \r_pc[14]_i_5_n_0 ;
  wire \r_pc[14]_i_6_n_0 ;
  wire \r_pc[3]_i_2_n_0 ;
  wire \r_pc[3]_i_3_n_0 ;
  wire \r_pc[3]_i_4_n_0 ;
  wire \r_pc[3]_i_5_n_0 ;
  wire \r_pc[7]_i_2_n_0 ;
  wire \r_pc[7]_i_3_n_0 ;
  wire \r_pc[7]_i_4_n_0 ;
  wire \r_pc[7]_i_5_n_0 ;
  wire \r_pc_reg[11]_i_1_n_0 ;
  wire \r_pc_reg[11]_i_1_n_1 ;
  wire \r_pc_reg[11]_i_1_n_2 ;
  wire \r_pc_reg[11]_i_1_n_3 ;
  wire \r_pc_reg[11]_i_1_n_4 ;
  wire \r_pc_reg[11]_i_1_n_5 ;
  wire \r_pc_reg[11]_i_1_n_6 ;
  wire \r_pc_reg[11]_i_1_n_7 ;
  wire \r_pc_reg[14]_i_2_n_1 ;
  wire \r_pc_reg[14]_i_2_n_2 ;
  wire \r_pc_reg[14]_i_2_n_3 ;
  wire \r_pc_reg[14]_i_2_n_4 ;
  wire \r_pc_reg[14]_i_2_n_5 ;
  wire \r_pc_reg[14]_i_2_n_6 ;
  wire \r_pc_reg[14]_i_2_n_7 ;
  wire \r_pc_reg[3]_i_1_n_0 ;
  wire \r_pc_reg[3]_i_1_n_1 ;
  wire \r_pc_reg[3]_i_1_n_2 ;
  wire \r_pc_reg[3]_i_1_n_3 ;
  wire \r_pc_reg[3]_i_1_n_4 ;
  wire \r_pc_reg[3]_i_1_n_5 ;
  wire \r_pc_reg[3]_i_1_n_6 ;
  wire \r_pc_reg[3]_i_1_n_7 ;
  wire \r_pc_reg[7]_i_1_n_0 ;
  wire \r_pc_reg[7]_i_1_n_1 ;
  wire \r_pc_reg[7]_i_1_n_2 ;
  wire \r_pc_reg[7]_i_1_n_3 ;
  wire \r_pc_reg[7]_i_1_n_4 ;
  wire \r_pc_reg[7]_i_1_n_5 ;
  wire \r_pc_reg[7]_i_1_n_6 ;
  wire \r_pc_reg[7]_i_1_n_7 ;
  wire r_sp0_carry__0_i_1_n_0;
  wire r_sp0_carry__0_i_2_n_0;
  wire r_sp0_carry__0_i_3_n_0;
  wire r_sp0_carry__0_n_2;
  wire r_sp0_carry__0_n_3;
  wire r_sp0_carry_i_1_n_0;
  wire r_sp0_carry_i_2_n_0;
  wire r_sp0_carry_i_3_n_0;
  wire r_sp0_carry_i_4_n_0;
  wire r_sp0_carry_n_0;
  wire r_sp0_carry_n_1;
  wire r_sp0_carry_n_2;
  wire r_sp0_carry_n_3;
  wire \r_sp[7]_i_1_n_0 ;
  wire [7:0]r_sp_reg;
  wire [3:0]NLW_o_breakpointHitN1_carry_O_UNCONNECTED;
  wire [3:2]NLW_o_breakpointHitN1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_o_breakpointHitN1_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_r_pc_reg[14]_i_2_CO_UNCONNECTED ;
  wire [3:2]NLW_r_sp0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_r_sp0_carry__0_O_UNCONNECTED;

  CARRY4 o_breakpointHitN1_carry
       (.CI(1'b0),
        .CO({o_breakpointHitN1_carry_n_0,o_breakpointHitN1_carry_n_1,o_breakpointHitN1_carry_n_2,o_breakpointHitN1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_o_breakpointHitN1_carry_O_UNCONNECTED[3:0]),
        .S({o_breakpointHitN1_carry_i_1_n_0,o_breakpointHitN1_carry_i_2_n_0,o_breakpointHitN1_carry_i_3_n_0,o_breakpointHitN1_carry_i_4_n_0}));
  CARRY4 o_breakpointHitN1_carry__0
       (.CI(o_breakpointHitN1_carry_n_0),
        .CO({NLW_o_breakpointHitN1_carry__0_CO_UNCONNECTED[3:2],o_breakpointHitN1,o_breakpointHitN1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_o_breakpointHitN1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,o_breakpointHitN1_carry__0_i_1_n_0,o_breakpointHitN1_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    o_breakpointHitN1_carry__0_i_1
       (.I0(i_breakpointAddress[15]),
        .I1(o_dbgPc[15]),
        .O(o_breakpointHitN1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_breakpointHitN1_carry__0_i_2
       (.I0(o_dbgPc[13]),
        .I1(i_breakpointAddress[13]),
        .I2(o_dbgPc[12]),
        .I3(i_breakpointAddress[12]),
        .I4(i_breakpointAddress[14]),
        .I5(o_dbgPc[14]),
        .O(o_breakpointHitN1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_breakpointHitN1_carry_i_1
       (.I0(o_dbgPc[9]),
        .I1(i_breakpointAddress[9]),
        .I2(o_dbgPc[10]),
        .I3(i_breakpointAddress[10]),
        .I4(i_breakpointAddress[11]),
        .I5(o_dbgPc[11]),
        .O(o_breakpointHitN1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_breakpointHitN1_carry_i_2
       (.I0(o_dbgPc[8]),
        .I1(i_breakpointAddress[8]),
        .I2(o_dbgPc[6]),
        .I3(i_breakpointAddress[6]),
        .I4(i_breakpointAddress[7]),
        .I5(o_dbgPc[7]),
        .O(o_breakpointHitN1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_breakpointHitN1_carry_i_3
       (.I0(o_dbgPc[3]),
        .I1(i_breakpointAddress[3]),
        .I2(o_dbgPc[4]),
        .I3(i_breakpointAddress[4]),
        .I4(i_breakpointAddress[5]),
        .I5(o_dbgPc[5]),
        .O(o_breakpointHitN1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_breakpointHitN1_carry_i_4
       (.I0(o_dbgPc[1]),
        .I1(i_breakpointAddress[1]),
        .I2(o_dbgPc[0]),
        .I3(i_breakpointAddress[0]),
        .I4(i_breakpointAddress[2]),
        .I5(o_dbgPc[2]),
        .O(o_breakpointHitN1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    o_breakpointHitN_INST_0
       (.I0(i_breakpointEnableN),
        .I1(o_breakpointHitN1),
        .O(o_breakpointHitN));
  LUT3 #(
    .INIT(8'h97)) 
    o_busNOE_INST_0
       (.I0(\o_bus[7]_INST_0_i_1_n_0 ),
        .I1(i_ctrlMemPCToRamN),
        .I2(i_ctrlInstrNOE),
        .O(o_busNOE));
  LUT6 #(
    .INIT(64'hFCAAFCAAFCAA30AA)) 
    \o_bus[0]_INST_0 
       (.I0(data2[16]),
        .I1(i_ctrlMemPCToRamN),
        .I2(o_dbgPc[0]),
        .I3(i_ctrlInstrNOE),
        .I4(\o_bus[7]_INST_0_i_1_n_0 ),
        .I5(i_ramData[0]),
        .O(o_bus[0]));
  LUT6 #(
    .INIT(64'hFCAAFCAAFCAA30AA)) 
    \o_bus[1]_INST_0 
       (.I0(data2[17]),
        .I1(i_ctrlMemPCToRamN),
        .I2(o_dbgPc[1]),
        .I3(i_ctrlInstrNOE),
        .I4(\o_bus[7]_INST_0_i_1_n_0 ),
        .I5(i_ramData[1]),
        .O(o_bus[1]));
  LUT6 #(
    .INIT(64'hFCAAFCAAFCAA30AA)) 
    \o_bus[2]_INST_0 
       (.I0(data2[18]),
        .I1(i_ctrlMemPCToRamN),
        .I2(o_dbgPc[2]),
        .I3(i_ctrlInstrNOE),
        .I4(\o_bus[7]_INST_0_i_1_n_0 ),
        .I5(i_ramData[2]),
        .O(o_bus[2]));
  LUT6 #(
    .INIT(64'hFCAAFCAAFCAA30AA)) 
    \o_bus[3]_INST_0 
       (.I0(data2[19]),
        .I1(i_ctrlMemPCToRamN),
        .I2(o_dbgPc[3]),
        .I3(i_ctrlInstrNOE),
        .I4(\o_bus[7]_INST_0_i_1_n_0 ),
        .I5(i_ramData[3]),
        .O(o_bus[3]));
  LUT6 #(
    .INIT(64'hFCAAFCAAFCAA30AA)) 
    \o_bus[4]_INST_0 
       (.I0(data2[20]),
        .I1(i_ctrlMemPCToRamN),
        .I2(o_dbgPc[4]),
        .I3(i_ctrlInstrNOE),
        .I4(\o_bus[7]_INST_0_i_1_n_0 ),
        .I5(i_ramData[4]),
        .O(o_bus[4]));
  LUT6 #(
    .INIT(64'hFCAAFCAAFCAA30AA)) 
    \o_bus[5]_INST_0 
       (.I0(data2[21]),
        .I1(i_ctrlMemPCToRamN),
        .I2(o_dbgPc[5]),
        .I3(i_ctrlInstrNOE),
        .I4(\o_bus[7]_INST_0_i_1_n_0 ),
        .I5(i_ramData[5]),
        .O(o_bus[5]));
  LUT6 #(
    .INIT(64'hFCAAFCAAFCAA30AA)) 
    \o_bus[6]_INST_0 
       (.I0(data2[22]),
        .I1(i_ctrlMemPCToRamN),
        .I2(o_dbgPc[6]),
        .I3(i_ctrlInstrNOE),
        .I4(\o_bus[7]_INST_0_i_1_n_0 ),
        .I5(i_ramData[6]),
        .O(o_bus[6]));
  LUT6 #(
    .INIT(64'hFCAAFCAAFCAA30AA)) 
    \o_bus[7]_INST_0 
       (.I0(data2[23]),
        .I1(i_ctrlMemPCToRamN),
        .I2(o_dbgPc[7]),
        .I3(i_ctrlInstrNOE),
        .I4(\o_bus[7]_INST_0_i_1_n_0 ),
        .I5(i_ramData[7]),
        .O(o_bus[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \o_bus[7]_INST_0_i_1 
       (.I0(i_ctrlRamNOE),
        .I1(\o_ramAddress[16]_INST_0_i_3_n_0 ),
        .I2(\o_ramAddress[9]_INST_0_i_1_n_0 ),
        .I3(\o_ramAddress[16]_INST_0_i_2_n_0 ),
        .I4(o_ramCE_INST_0_i_2_n_0),
        .I5(o_ramCE_INST_0_i_1_n_0),
        .O(\o_bus[7]_INST_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_instrCode[7]_i_1 
       (.I0(i_ctrlInstrNWE),
        .O(\o_instrCode[7]_i_1_n_0 ));
  FDRE \o_instrCode_reg[0] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[16]),
        .Q(o_instrCode[0]),
        .R(1'b0));
  FDRE \o_instrCode_reg[1] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[17]),
        .Q(o_instrCode[1]),
        .R(1'b0));
  FDRE \o_instrCode_reg[2] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[18]),
        .Q(o_instrCode[2]),
        .R(1'b0));
  FDRE \o_instrCode_reg[3] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[19]),
        .Q(o_instrCode[3]),
        .R(1'b0));
  FDRE \o_instrCode_reg[4] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[20]),
        .Q(o_instrCode[4]),
        .R(1'b0));
  FDRE \o_instrCode_reg[5] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[21]),
        .Q(o_instrCode[5]),
        .R(1'b0));
  FDRE \o_instrCode_reg[6] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[22]),
        .Q(o_instrCode[6]),
        .R(1'b0));
  FDRE \o_instrCode_reg[7] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[23]),
        .Q(o_instrCode[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_ioAddress[0]_INST_0 
       (.I0(data2[16]),
        .I1(i_ctrlMemInstrImmToRamAddr),
        .I2(r_mar[0]),
        .O(o_ramAddress[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_ioAddress[1]_INST_0 
       (.I0(data2[17]),
        .I1(i_ctrlMemInstrImmToRamAddr),
        .I2(r_mar[1]),
        .O(o_ramAddress[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_ioAddress[2]_INST_0 
       (.I0(data2[18]),
        .I1(i_ctrlMemInstrImmToRamAddr),
        .I2(r_mar[2]),
        .O(o_ramAddress[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_ioAddress[3]_INST_0 
       (.I0(data2[19]),
        .I1(i_ctrlMemInstrImmToRamAddr),
        .I2(r_mar[3]),
        .O(o_ramAddress[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_ioAddress[4]_INST_0 
       (.I0(data2[20]),
        .I1(i_ctrlMemInstrImmToRamAddr),
        .I2(r_mar[4]),
        .O(o_ramAddress[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_ioAddress[5]_INST_0 
       (.I0(data2[21]),
        .I1(i_ctrlMemInstrImmToRamAddr),
        .I2(r_mar[5]),
        .O(o_ramAddress[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_ioAddress[6]_INST_0 
       (.I0(data2[22]),
        .I1(i_ctrlMemInstrImmToRamAddr),
        .I2(r_mar[6]),
        .O(o_ramAddress[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_ioAddress[7]_INST_0 
       (.I0(data2[23]),
        .I1(i_ctrlMemInstrImmToRamAddr),
        .I2(r_mar[7]),
        .O(o_ramAddress[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    o_ioSelect_INST_0
       (.I0(o_ramCE_INST_0_i_1_n_0),
        .I1(o_ramCE_INST_0_i_2_n_0),
        .I2(\o_ramAddress[16]_INST_0_i_2_n_0 ),
        .I3(\o_ramAddress[9]_INST_0_i_1_n_0 ),
        .I4(\o_ramAddress[16]_INST_0_i_3_n_0 ),
        .O(o_ioSelect));
  LUT6 #(
    .INIT(64'hE2E2E2E2E200E2E2)) 
    \o_ramAddress[10]_INST_0 
       (.I0(r_mar[10]),
        .I1(i_ctrlMemInstrImmToRamAddr),
        .I2(\r_instrImm_reg_n_0_[10] ),
        .I3(r_sp_reg[2]),
        .I4(\o_ramAddress[16]_INST_0_i_1_n_0 ),
        .I5(\o_ramAddress[15]_INST_0_i_1_n_0 ),
        .O(o_ramAddress[10]));
  LUT6 #(
    .INIT(64'hE2E2E2E2E200E2E2)) 
    \o_ramAddress[11]_INST_0 
       (.I0(r_mar[11]),
        .I1(i_ctrlMemInstrImmToRamAddr),
        .I2(\r_instrImm_reg_n_0_[11] ),
        .I3(r_sp_reg[3]),
        .I4(\o_ramAddress[16]_INST_0_i_1_n_0 ),
        .I5(\o_ramAddress[15]_INST_0_i_1_n_0 ),
        .O(o_ramAddress[11]));
  LUT6 #(
    .INIT(64'hE2E2E2E2E200E2E2)) 
    \o_ramAddress[12]_INST_0 
       (.I0(r_mar[12]),
        .I1(i_ctrlMemInstrImmToRamAddr),
        .I2(\r_instrImm_reg_n_0_[12] ),
        .I3(r_sp_reg[4]),
        .I4(\o_ramAddress[16]_INST_0_i_1_n_0 ),
        .I5(\o_ramAddress[15]_INST_0_i_1_n_0 ),
        .O(o_ramAddress[12]));
  LUT6 #(
    .INIT(64'hE2E2E2E2E200E2E2)) 
    \o_ramAddress[13]_INST_0 
       (.I0(r_mar[13]),
        .I1(i_ctrlMemInstrImmToRamAddr),
        .I2(\r_instrImm_reg_n_0_[13] ),
        .I3(r_sp_reg[5]),
        .I4(\o_ramAddress[16]_INST_0_i_1_n_0 ),
        .I5(\o_ramAddress[15]_INST_0_i_1_n_0 ),
        .O(o_ramAddress[13]));
  LUT6 #(
    .INIT(64'hE2E2E2E2E200E2E2)) 
    \o_ramAddress[14]_INST_0 
       (.I0(r_mar[14]),
        .I1(i_ctrlMemInstrImmToRamAddr),
        .I2(\r_instrImm_reg_n_0_[14] ),
        .I3(r_sp_reg[6]),
        .I4(\o_ramAddress[16]_INST_0_i_1_n_0 ),
        .I5(\o_ramAddress[15]_INST_0_i_1_n_0 ),
        .O(o_ramAddress[14]));
  LUT6 #(
    .INIT(64'hE2E2E2E2E200E2E2)) 
    \o_ramAddress[15]_INST_0 
       (.I0(r_mar[15]),
        .I1(i_ctrlMemInstrImmToRamAddr),
        .I2(\r_instrImm_reg_n_0_[15] ),
        .I3(r_sp_reg[7]),
        .I4(\o_ramAddress[16]_INST_0_i_1_n_0 ),
        .I5(\o_ramAddress[15]_INST_0_i_1_n_0 ),
        .O(o_ramAddress[15]));
  LUT6 #(
    .INIT(64'hBABFFAFFBFBFFFFF)) 
    \o_ramAddress[15]_INST_0_i_1 
       (.I0(\o_ramAddress[16]_INST_0_i_3_n_0 ),
        .I1(\r_instrImm_reg_n_0_[8] ),
        .I2(i_ctrlMemInstrImmToRamAddr),
        .I3(r_mar[8]),
        .I4(\r_instrImm_reg_n_0_[9] ),
        .I5(r_mar[9]),
        .O(\o_ramAddress[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A8080000)) 
    \o_ramAddress[16]_INST_0 
       (.I0(\o_ramAddress[16]_INST_0_i_1_n_0 ),
        .I1(r_mar[9]),
        .I2(i_ctrlMemInstrImmToRamAddr),
        .I3(\r_instrImm_reg_n_0_[9] ),
        .I4(\o_ramAddress[16]_INST_0_i_2_n_0 ),
        .I5(\o_ramAddress[16]_INST_0_i_3_n_0 ),
        .O(o_ramAddress[16]));
  LUT6 #(
    .INIT(64'h00000000B8308800)) 
    \o_ramAddress[16]_INST_0_i_1 
       (.I0(\r_instrImm_reg_n_0_[10] ),
        .I1(i_ctrlMemInstrImmToRamAddr),
        .I2(r_mar[10]),
        .I3(\r_instrImm_reg_n_0_[11] ),
        .I4(r_mar[11]),
        .I5(o_ramCE_INST_0_i_1_n_0),
        .O(\o_ramAddress[16]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_ramAddress[16]_INST_0_i_2 
       (.I0(\r_instrImm_reg_n_0_[8] ),
        .I1(i_ctrlMemInstrImmToRamAddr),
        .I2(r_mar[8]),
        .O(\o_ramAddress[16]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    \o_ramAddress[16]_INST_0_i_3 
       (.I0(r_mar[12]),
        .I1(\r_instrImm_reg_n_0_[12] ),
        .I2(r_mar[13]),
        .I3(i_ctrlMemInstrImmToRamAddr),
        .I4(\r_instrImm_reg_n_0_[13] ),
        .O(\o_ramAddress[16]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF00BF00)) 
    \o_ramAddress[8]_INST_0 
       (.I0(r_sp_reg[0]),
        .I1(\o_ramAddress[16]_INST_0_i_1_n_0 ),
        .I2(\o_ramAddress[9]_INST_0_i_1_n_0 ),
        .I3(\o_ramAddress[16]_INST_0_i_2_n_0 ),
        .I4(\o_ramAddress[16]_INST_0_i_3_n_0 ),
        .O(o_ramAddress[8]));
  LUT5 #(
    .INIT(32'hF0F0B0F0)) 
    \o_ramAddress[9]_INST_0 
       (.I0(r_sp_reg[1]),
        .I1(\o_ramAddress[16]_INST_0_i_1_n_0 ),
        .I2(\o_ramAddress[9]_INST_0_i_1_n_0 ),
        .I3(\o_ramAddress[16]_INST_0_i_2_n_0 ),
        .I4(\o_ramAddress[16]_INST_0_i_3_n_0 ),
        .O(o_ramAddress[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_ramAddress[9]_INST_0_i_1 
       (.I0(\r_instrImm_reg_n_0_[9] ),
        .I1(i_ctrlMemInstrImmToRamAddr),
        .I2(r_mar[9]),
        .O(\o_ramAddress[9]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    o_ramCE_INST_0
       (.I0(o_ramCE_INST_0_i_1_n_0),
        .I1(o_ramCE_INST_0_i_2_n_0),
        .I2(\o_ramAddress[16]_INST_0_i_2_n_0 ),
        .I3(\o_ramAddress[9]_INST_0_i_1_n_0 ),
        .I4(\o_ramAddress[16]_INST_0_i_3_n_0 ),
        .O(o_ramCE));
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    o_ramCE_INST_0_i_1
       (.I0(r_mar[15]),
        .I1(\r_instrImm_reg_n_0_[15] ),
        .I2(r_mar[14]),
        .I3(i_ctrlMemInstrImmToRamAddr),
        .I4(\r_instrImm_reg_n_0_[14] ),
        .O(o_ramCE_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    o_ramCE_INST_0_i_2
       (.I0(r_mar[11]),
        .I1(\r_instrImm_reg_n_0_[11] ),
        .I2(r_mar[10]),
        .I3(i_ctrlMemInstrImmToRamAddr),
        .I4(\r_instrImm_reg_n_0_[10] ),
        .O(o_ramCE_INST_0_i_2_n_0));
  FDRE \r_instrImm_reg[0] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[0]),
        .Q(data2[16]),
        .R(1'b0));
  FDRE \r_instrImm_reg[10] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[10]),
        .Q(\r_instrImm_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \r_instrImm_reg[11] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[11]),
        .Q(\r_instrImm_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \r_instrImm_reg[12] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[12]),
        .Q(\r_instrImm_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \r_instrImm_reg[13] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[13]),
        .Q(\r_instrImm_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \r_instrImm_reg[14] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[14]),
        .Q(\r_instrImm_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \r_instrImm_reg[15] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[15]),
        .Q(\r_instrImm_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \r_instrImm_reg[1] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[1]),
        .Q(data2[17]),
        .R(1'b0));
  FDRE \r_instrImm_reg[2] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[2]),
        .Q(data2[18]),
        .R(1'b0));
  FDRE \r_instrImm_reg[3] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[3]),
        .Q(data2[19]),
        .R(1'b0));
  FDRE \r_instrImm_reg[4] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[4]),
        .Q(data2[20]),
        .R(1'b0));
  FDRE \r_instrImm_reg[5] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[5]),
        .Q(data2[21]),
        .R(1'b0));
  FDRE \r_instrImm_reg[6] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[6]),
        .Q(data2[22]),
        .R(1'b0));
  FDRE \r_instrImm_reg[7] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[7]),
        .Q(data2[23]),
        .R(1'b0));
  FDRE \r_instrImm_reg[8] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[8]),
        .Q(\r_instrImm_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \r_instrImm_reg[9] 
       (.C(i_clk),
        .CE(\o_instrCode[7]_i_1_n_0 ),
        .D(i_romData[9]),
        .Q(\r_instrImm_reg_n_0_[9] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \r_mar[15]_i_1 
       (.I0(i_ctrlMemMar1NWE),
        .O(\r_mar[15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_mar[7]_i_1 
       (.I0(i_ctrlMemMar0NWE),
        .O(p_0_out0));
  FDRE \r_mar_reg[0] 
       (.C(i_clk),
        .CE(p_0_out0),
        .D(i_bus[0]),
        .Q(r_mar[0]),
        .R(1'b0));
  FDRE \r_mar_reg[10] 
       (.C(i_clk),
        .CE(\r_mar[15]_i_1_n_0 ),
        .D(i_bus[2]),
        .Q(r_mar[10]),
        .R(1'b0));
  FDRE \r_mar_reg[11] 
       (.C(i_clk),
        .CE(\r_mar[15]_i_1_n_0 ),
        .D(i_bus[3]),
        .Q(r_mar[11]),
        .R(1'b0));
  FDRE \r_mar_reg[12] 
       (.C(i_clk),
        .CE(\r_mar[15]_i_1_n_0 ),
        .D(i_bus[4]),
        .Q(r_mar[12]),
        .R(1'b0));
  FDRE \r_mar_reg[13] 
       (.C(i_clk),
        .CE(\r_mar[15]_i_1_n_0 ),
        .D(i_bus[5]),
        .Q(r_mar[13]),
        .R(1'b0));
  FDRE \r_mar_reg[14] 
       (.C(i_clk),
        .CE(\r_mar[15]_i_1_n_0 ),
        .D(i_bus[6]),
        .Q(r_mar[14]),
        .R(1'b0));
  FDRE \r_mar_reg[15] 
       (.C(i_clk),
        .CE(\r_mar[15]_i_1_n_0 ),
        .D(i_bus[7]),
        .Q(r_mar[15]),
        .R(1'b0));
  FDRE \r_mar_reg[1] 
       (.C(i_clk),
        .CE(p_0_out0),
        .D(i_bus[1]),
        .Q(r_mar[1]),
        .R(1'b0));
  FDRE \r_mar_reg[2] 
       (.C(i_clk),
        .CE(p_0_out0),
        .D(i_bus[2]),
        .Q(r_mar[2]),
        .R(1'b0));
  FDRE \r_mar_reg[3] 
       (.C(i_clk),
        .CE(p_0_out0),
        .D(i_bus[3]),
        .Q(r_mar[3]),
        .R(1'b0));
  FDRE \r_mar_reg[4] 
       (.C(i_clk),
        .CE(p_0_out0),
        .D(i_bus[4]),
        .Q(r_mar[4]),
        .R(1'b0));
  FDRE \r_mar_reg[5] 
       (.C(i_clk),
        .CE(p_0_out0),
        .D(i_bus[5]),
        .Q(r_mar[5]),
        .R(1'b0));
  FDRE \r_mar_reg[6] 
       (.C(i_clk),
        .CE(p_0_out0),
        .D(i_bus[6]),
        .Q(r_mar[6]),
        .R(1'b0));
  FDRE \r_mar_reg[7] 
       (.C(i_clk),
        .CE(p_0_out0),
        .D(i_bus[7]),
        .Q(r_mar[7]),
        .R(1'b0));
  FDRE \r_mar_reg[8] 
       (.C(i_clk),
        .CE(\r_mar[15]_i_1_n_0 ),
        .D(i_bus[0]),
        .Q(r_mar[8]),
        .R(1'b0));
  FDRE \r_mar_reg[9] 
       (.C(i_clk),
        .CE(\r_mar[15]_i_1_n_0 ),
        .D(i_bus[1]),
        .Q(r_mar[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_pc[11]_i_2 
       (.I0(o_dbgPc[11]),
        .I1(i_ctrlPCLoadN),
        .I2(\r_instrImm_reg_n_0_[11] ),
        .I3(i_ctrlPCFromImm),
        .I4(i_ram2Data[3]),
        .O(\r_pc[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_pc[11]_i_3 
       (.I0(o_dbgPc[10]),
        .I1(i_ctrlPCLoadN),
        .I2(\r_instrImm_reg_n_0_[10] ),
        .I3(i_ctrlPCFromImm),
        .I4(i_ram2Data[2]),
        .O(\r_pc[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_pc[11]_i_4 
       (.I0(o_dbgPc[9]),
        .I1(i_ctrlPCLoadN),
        .I2(\r_instrImm_reg_n_0_[9] ),
        .I3(i_ctrlPCFromImm),
        .I4(i_ram2Data[1]),
        .O(\r_pc[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_pc[11]_i_5 
       (.I0(o_dbgPc[8]),
        .I1(i_ctrlPCLoadN),
        .I2(\r_instrImm_reg_n_0_[8] ),
        .I3(i_ctrlPCFromImm),
        .I4(i_ram2Data[0]),
        .O(\r_pc[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \r_pc[14]_i_1 
       (.I0(i_ctrlPCLoadN),
        .I1(i_ctrlPCNEn),
        .I2(i_halt),
        .O(\r_pc[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_pc[14]_i_3 
       (.I0(o_dbgPc[15]),
        .I1(i_ctrlPCLoadN),
        .I2(\r_instrImm_reg_n_0_[15] ),
        .I3(i_ctrlPCFromImm),
        .I4(i_ram2Data[7]),
        .O(\r_pc[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_pc[14]_i_4 
       (.I0(o_dbgPc[14]),
        .I1(i_ctrlPCLoadN),
        .I2(\r_instrImm_reg_n_0_[14] ),
        .I3(i_ctrlPCFromImm),
        .I4(i_ram2Data[6]),
        .O(\r_pc[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_pc[14]_i_5 
       (.I0(o_dbgPc[13]),
        .I1(i_ctrlPCLoadN),
        .I2(\r_instrImm_reg_n_0_[13] ),
        .I3(i_ctrlPCFromImm),
        .I4(i_ram2Data[5]),
        .O(\r_pc[14]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_pc[14]_i_6 
       (.I0(o_dbgPc[12]),
        .I1(i_ctrlPCLoadN),
        .I2(\r_instrImm_reg_n_0_[12] ),
        .I3(i_ctrlPCFromImm),
        .I4(i_ram2Data[4]),
        .O(\r_pc[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_pc[3]_i_2 
       (.I0(o_dbgPc[3]),
        .I1(i_ctrlPCLoadN),
        .I2(data2[19]),
        .I3(i_ctrlPCFromImm),
        .I4(i_bus[3]),
        .O(\r_pc[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_pc[3]_i_3 
       (.I0(o_dbgPc[2]),
        .I1(i_ctrlPCLoadN),
        .I2(data2[18]),
        .I3(i_ctrlPCFromImm),
        .I4(i_bus[2]),
        .O(\r_pc[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_pc[3]_i_4 
       (.I0(o_dbgPc[1]),
        .I1(i_ctrlPCLoadN),
        .I2(data2[17]),
        .I3(i_ctrlPCFromImm),
        .I4(i_bus[1]),
        .O(\r_pc[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00FFE2E2)) 
    \r_pc[3]_i_5 
       (.I0(i_bus[0]),
        .I1(i_ctrlPCFromImm),
        .I2(data2[16]),
        .I3(o_dbgPc[0]),
        .I4(i_ctrlPCLoadN),
        .O(\r_pc[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_pc[7]_i_2 
       (.I0(o_dbgPc[7]),
        .I1(i_ctrlPCLoadN),
        .I2(data2[23]),
        .I3(i_ctrlPCFromImm),
        .I4(i_bus[7]),
        .O(\r_pc[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_pc[7]_i_3 
       (.I0(o_dbgPc[6]),
        .I1(i_ctrlPCLoadN),
        .I2(data2[22]),
        .I3(i_ctrlPCFromImm),
        .I4(i_bus[6]),
        .O(\r_pc[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_pc[7]_i_4 
       (.I0(o_dbgPc[5]),
        .I1(i_ctrlPCLoadN),
        .I2(data2[21]),
        .I3(i_ctrlPCFromImm),
        .I4(i_bus[5]),
        .O(\r_pc[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \r_pc[7]_i_5 
       (.I0(o_dbgPc[4]),
        .I1(i_ctrlPCLoadN),
        .I2(data2[20]),
        .I3(i_ctrlPCFromImm),
        .I4(i_bus[4]),
        .O(\r_pc[7]_i_5_n_0 ));
  FDRE \r_pc_reg[0] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[3]_i_1_n_7 ),
        .Q(o_dbgPc[0]),
        .R(i_reset));
  FDRE \r_pc_reg[10] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[11]_i_1_n_5 ),
        .Q(o_dbgPc[10]),
        .R(i_reset));
  FDRE \r_pc_reg[11] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[11]_i_1_n_4 ),
        .Q(o_dbgPc[11]),
        .R(i_reset));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \r_pc_reg[11]_i_1 
       (.CI(\r_pc_reg[7]_i_1_n_0 ),
        .CO({\r_pc_reg[11]_i_1_n_0 ,\r_pc_reg[11]_i_1_n_1 ,\r_pc_reg[11]_i_1_n_2 ,\r_pc_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_pc_reg[11]_i_1_n_4 ,\r_pc_reg[11]_i_1_n_5 ,\r_pc_reg[11]_i_1_n_6 ,\r_pc_reg[11]_i_1_n_7 }),
        .S({\r_pc[11]_i_2_n_0 ,\r_pc[11]_i_3_n_0 ,\r_pc[11]_i_4_n_0 ,\r_pc[11]_i_5_n_0 }));
  FDRE \r_pc_reg[12] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[14]_i_2_n_7 ),
        .Q(o_dbgPc[12]),
        .R(i_reset));
  FDRE \r_pc_reg[13] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[14]_i_2_n_6 ),
        .Q(o_dbgPc[13]),
        .R(i_reset));
  FDRE \r_pc_reg[14] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[14]_i_2_n_5 ),
        .Q(o_dbgPc[14]),
        .R(i_reset));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \r_pc_reg[14]_i_2 
       (.CI(\r_pc_reg[11]_i_1_n_0 ),
        .CO({\NLW_r_pc_reg[14]_i_2_CO_UNCONNECTED [3],\r_pc_reg[14]_i_2_n_1 ,\r_pc_reg[14]_i_2_n_2 ,\r_pc_reg[14]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_pc_reg[14]_i_2_n_4 ,\r_pc_reg[14]_i_2_n_5 ,\r_pc_reg[14]_i_2_n_6 ,\r_pc_reg[14]_i_2_n_7 }),
        .S({\r_pc[14]_i_3_n_0 ,\r_pc[14]_i_4_n_0 ,\r_pc[14]_i_5_n_0 ,\r_pc[14]_i_6_n_0 }));
  FDRE \r_pc_reg[15] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[14]_i_2_n_4 ),
        .Q(o_dbgPc[15]),
        .R(i_reset));
  FDRE \r_pc_reg[1] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[3]_i_1_n_6 ),
        .Q(o_dbgPc[1]),
        .R(i_reset));
  FDRE \r_pc_reg[2] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[3]_i_1_n_5 ),
        .Q(o_dbgPc[2]),
        .R(i_reset));
  FDRE \r_pc_reg[3] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[3]_i_1_n_4 ),
        .Q(o_dbgPc[3]),
        .R(i_reset));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \r_pc_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\r_pc_reg[3]_i_1_n_0 ,\r_pc_reg[3]_i_1_n_1 ,\r_pc_reg[3]_i_1_n_2 ,\r_pc_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i_ctrlPCLoadN}),
        .O({\r_pc_reg[3]_i_1_n_4 ,\r_pc_reg[3]_i_1_n_5 ,\r_pc_reg[3]_i_1_n_6 ,\r_pc_reg[3]_i_1_n_7 }),
        .S({\r_pc[3]_i_2_n_0 ,\r_pc[3]_i_3_n_0 ,\r_pc[3]_i_4_n_0 ,\r_pc[3]_i_5_n_0 }));
  FDRE \r_pc_reg[4] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[7]_i_1_n_7 ),
        .Q(o_dbgPc[4]),
        .R(i_reset));
  FDRE \r_pc_reg[5] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[7]_i_1_n_6 ),
        .Q(o_dbgPc[5]),
        .R(i_reset));
  FDRE \r_pc_reg[6] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[7]_i_1_n_5 ),
        .Q(o_dbgPc[6]),
        .R(i_reset));
  FDRE \r_pc_reg[7] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[7]_i_1_n_4 ),
        .Q(o_dbgPc[7]),
        .R(i_reset));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \r_pc_reg[7]_i_1 
       (.CI(\r_pc_reg[3]_i_1_n_0 ),
        .CO({\r_pc_reg[7]_i_1_n_0 ,\r_pc_reg[7]_i_1_n_1 ,\r_pc_reg[7]_i_1_n_2 ,\r_pc_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_pc_reg[7]_i_1_n_4 ,\r_pc_reg[7]_i_1_n_5 ,\r_pc_reg[7]_i_1_n_6 ,\r_pc_reg[7]_i_1_n_7 }),
        .S({\r_pc[7]_i_2_n_0 ,\r_pc[7]_i_3_n_0 ,\r_pc[7]_i_4_n_0 ,\r_pc[7]_i_5_n_0 }));
  FDRE \r_pc_reg[8] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[11]_i_1_n_7 ),
        .Q(o_dbgPc[8]),
        .R(i_reset));
  FDRE \r_pc_reg[9] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[11]_i_1_n_6 ),
        .Q(o_dbgPc[9]),
        .R(i_reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_sp0_carry
       (.CI(1'b0),
        .CO({r_sp0_carry_n_0,r_sp0_carry_n_1,r_sp0_carry_n_2,r_sp0_carry_n_3}),
        .CYINIT(r_sp_reg[0]),
        .DI({r_sp_reg[3:2],i_ctrlSpUp,r_sp_reg[1]}),
        .O(p_0_in[4:1]),
        .S({r_sp0_carry_i_1_n_0,r_sp0_carry_i_2_n_0,r_sp0_carry_i_3_n_0,r_sp0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_sp0_carry__0
       (.CI(r_sp0_carry_n_0),
        .CO({NLW_r_sp0_carry__0_CO_UNCONNECTED[3:2],r_sp0_carry__0_n_2,r_sp0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,r_sp_reg[5:4]}),
        .O({NLW_r_sp0_carry__0_O_UNCONNECTED[3],p_0_in[7:5]}),
        .S({1'b0,r_sp0_carry__0_i_1_n_0,r_sp0_carry__0_i_2_n_0,r_sp0_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    r_sp0_carry__0_i_1
       (.I0(r_sp_reg[6]),
        .I1(r_sp_reg[7]),
        .O(r_sp0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_sp0_carry__0_i_2
       (.I0(r_sp_reg[5]),
        .I1(r_sp_reg[6]),
        .O(r_sp0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_sp0_carry__0_i_3
       (.I0(r_sp_reg[4]),
        .I1(r_sp_reg[5]),
        .O(r_sp0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_sp0_carry_i_1
       (.I0(r_sp_reg[3]),
        .I1(r_sp_reg[4]),
        .O(r_sp0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_sp0_carry_i_2
       (.I0(r_sp_reg[2]),
        .I1(r_sp_reg[3]),
        .O(r_sp0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_sp0_carry_i_3
       (.I0(i_ctrlSpUp),
        .I1(r_sp_reg[2]),
        .O(r_sp0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    r_sp0_carry_i_4
       (.I0(i_ctrlSpUp),
        .I1(r_sp_reg[1]),
        .O(r_sp0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_sp[0]_i_1 
       (.I0(r_sp_reg[0]),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \r_sp[7]_i_1 
       (.I0(i_halt),
        .I1(i_ctrlSpNEn),
        .O(\r_sp[7]_i_1_n_0 ));
  FDRE \r_sp_reg[0] 
       (.C(i_clk),
        .CE(\r_sp[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(r_sp_reg[0]),
        .R(i_reset));
  FDRE \r_sp_reg[1] 
       (.C(i_clk),
        .CE(\r_sp[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(r_sp_reg[1]),
        .R(i_reset));
  FDRE \r_sp_reg[2] 
       (.C(i_clk),
        .CE(\r_sp[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(r_sp_reg[2]),
        .R(i_reset));
  FDRE \r_sp_reg[3] 
       (.C(i_clk),
        .CE(\r_sp[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(r_sp_reg[3]),
        .R(i_reset));
  FDRE \r_sp_reg[4] 
       (.C(i_clk),
        .CE(\r_sp[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(r_sp_reg[4]),
        .R(i_reset));
  FDRE \r_sp_reg[5] 
       (.C(i_clk),
        .CE(\r_sp[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(r_sp_reg[5]),
        .R(i_reset));
  FDRE \r_sp_reg[6] 
       (.C(i_clk),
        .CE(\r_sp[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(r_sp_reg[6]),
        .R(i_reset));
  FDRE \r_sp_reg[7] 
       (.C(i_clk),
        .CE(\r_sp[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(r_sp_reg[7]),
        .R(i_reset));
endmodule

(* CHECK_LICENSE_TYPE = "memory_bd_memory_0_0,memory,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "memory,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_clk,
    i_reset,
    i_bus,
    o_bus,
    o_busNOE,
    o_instrCode,
    i_ctrlPCLoadN,
    i_ctrlPCNEn,
    i_ctrlPCFromImm,
    i_ctrlMemPCToRamN,
    i_ctrlSpUp,
    i_ctrlSpNEn,
    i_ctrlInstrNWE,
    i_ctrlInstrNOE,
    i_ctrlRamNOE,
    i_ctrlRamNWE,
    i_ctrlMemMar0NWE,
    i_ctrlMemMar1NWE,
    i_ctrlMemInstrImmToRamAddr,
    o_romAddress,
    i_romData,
    o_ramAddress,
    i_ramData,
    o_ramData,
    i_ram2Data,
    o_ram2Data,
    o_ramWE,
    o_ramCE,
    o_ioSelect,
    o_ioAddress,
    o_ioNOE,
    o_ioNWE,
    i_halt,
    i_breakpointAddress,
    i_breakpointEnableN,
    o_breakpointHitN,
    o_dbgPc);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN memory_bd_i_clk, INSERT_VIP 0" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_reset;
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
  wire i_halt;
  wire [7:0]i_ram2Data;
  wire [7:0]i_ramData;
  wire i_reset;
  wire [23:0]i_romData;
  wire o_breakpointHitN;
  wire [7:0]o_bus;
  wire o_busNOE;
  wire [15:0]o_dbgPc;
  wire [7:0]o_instrCode;
  wire [7:0]o_ioAddress;
  wire o_ioSelect;
  wire [16:8]\^o_ramAddress ;
  wire o_ramCE;
  wire o_ramWE;

  assign o_ioNOE = i_ctrlRamNOE;
  assign o_ioNWE = i_ctrlRamNWE;
  assign o_ram2Data[7:0] = o_dbgPc[15:8];
  assign o_ramAddress[16:8] = \^o_ramAddress [16:8];
  assign o_ramAddress[7:0] = o_ioAddress;
  assign o_ramData[7:0] = i_bus;
  assign o_romAddress[14:0] = o_dbgPc[14:0];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory inst
       (.i_breakpointAddress(i_breakpointAddress),
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
        .i_ctrlSpNEn(i_ctrlSpNEn),
        .i_ctrlSpUp(i_ctrlSpUp),
        .i_halt(i_halt),
        .i_ram2Data(i_ram2Data),
        .i_ramData(i_ramData),
        .i_reset(i_reset),
        .i_romData(i_romData),
        .o_breakpointHitN(o_breakpointHitN),
        .o_bus(o_bus),
        .o_busNOE(o_busNOE),
        .o_dbgPc(o_dbgPc),
        .o_instrCode(o_instrCode),
        .o_ioSelect(o_ioSelect),
        .o_ramAddress({\^o_ramAddress ,o_ioAddress}),
        .o_ramCE(o_ramCE));
  LUT1 #(
    .INIT(2'h1)) 
    o_ramWE_INST_0
       (.I0(i_ctrlRamNWE),
        .O(o_ramWE));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
