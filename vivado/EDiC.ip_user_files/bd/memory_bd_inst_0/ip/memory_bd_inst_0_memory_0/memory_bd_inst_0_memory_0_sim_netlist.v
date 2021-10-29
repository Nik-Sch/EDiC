// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Sep 24 22:40:37 2021
// Host        : niklasPC running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/niklas/dev/8bitCpu/vivado/8bitCPU.gen/sources_1/bd/datapath/bd/memory_bd_inst_0/ip/memory_bd_inst_0_memory_0/memory_bd_inst_0_memory_0_sim_netlist.v
// Design      : memory_bd_inst_0_memory_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "memory_bd_inst_0_memory_0,memory,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "memory,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module memory_bd_inst_0_memory_0
   (i_clk,
    i_reset,
    io_bus,
    o_instrCode,
    i_ctrlPCIncrN,
    i_ctrlPCLoadN,
    i_ctrlSpUp,
    i_ctrlSpNEn,
    i_ctrlInstrNWE,
    i_ctrlInstrNOE,
    i_ctrlRamNOE,
    i_ctrlRamNWE,
    i_ctrlMemMar0NWE,
    i_ctrlMemMar1NWE,
    i_ctrlMemInstrImmToRam,
    o_romAddress,
    i_romData,
    o_ramAddress,
    i_ramData,
    o_ramData,
    o_ramWE);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN datapath_i_clk, INSERT_VIP 0" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input i_reset;
  inout [7:0]io_bus;
  output [7:0]o_instrCode;
  input i_ctrlPCIncrN;
  input i_ctrlPCLoadN;
  input i_ctrlSpUp;
  input i_ctrlSpNEn;
  input i_ctrlInstrNWE;
  input i_ctrlInstrNOE;
  input i_ctrlRamNOE;
  input i_ctrlRamNWE;
  input i_ctrlMemMar0NWE;
  input i_ctrlMemMar1NWE;
  input i_ctrlMemInstrImmToRam;
  output [14:0]o_romAddress;
  input [23:0]i_romData;
  output [16:0]o_ramAddress;
  input [7:0]i_ramData;
  output [7:0]o_ramData;
  output o_ramWE;

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
  wire [7:0]i_ramData;
  wire i_reset;
  wire [23:0]i_romData;
  wire [7:0]io_bus;
  wire [7:0]o_instrCode;
  wire [16:0]o_ramAddress;
  wire \o_ramAddress[7]_INST_0_i_1_n_0 ;
  wire o_ramWE;
  wire [14:0]o_romAddress;

  assign o_ramData[7:0] = io_bus[7:0];
  memory_bd_inst_0_memory_0_memory inst
       (.i_clk(i_clk),
        .i_ctrlInstrNOE(i_ctrlInstrNOE),
        .i_ctrlInstrNWE(i_ctrlInstrNWE),
        .i_ctrlMemInstrImmToRam(i_ctrlMemInstrImmToRam),
        .i_ctrlMemMar0NWE(i_ctrlMemMar0NWE),
        .i_ctrlMemMar1NWE(i_ctrlMemMar1NWE),
        .i_ctrlPCIncrN(i_ctrlPCIncrN),
        .i_ctrlPCLoadN(i_ctrlPCLoadN),
        .i_ctrlRamNOE(i_ctrlRamNOE),
        .i_ctrlSpNEn(i_ctrlSpNEn),
        .i_ctrlSpUp(i_ctrlSpUp),
        .i_ramData(i_ramData),
        .i_reset(i_reset),
        .i_romData({i_romData[23:16],i_romData[14:0]}),
        .io_bus(io_bus),
        .o_instrCode(o_instrCode),
        .o_ramAddress(o_ramAddress),
        .o_ramAddress_0_sp_1(\o_ramAddress[7]_INST_0_i_1_n_0 ),
        .o_romAddress(o_romAddress));
  LUT1 #(
    .INIT(2'h1)) 
    \o_ramAddress[7]_INST_0_i_1 
       (.I0(i_ctrlMemInstrImmToRam),
        .O(\o_ramAddress[7]_INST_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    o_ramWE_INST_0
       (.I0(i_ctrlRamNWE),
        .O(o_ramWE));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module memory_bd_inst_0_memory_0_memory
   (o_ramAddress,
    o_instrCode,
    o_romAddress,
    io_bus,
    i_ctrlInstrNOE,
    i_ctrlRamNOE,
    i_ctrlInstrNWE,
    i_ctrlMemMar0NWE,
    i_ctrlMemMar1NWE,
    i_ctrlMemInstrImmToRam,
    i_ctrlSpUp,
    i_ctrlPCLoadN,
    i_ctrlPCIncrN,
    o_ramAddress_0_sp_1,
    i_ramData,
    i_romData,
    i_clk,
    i_reset,
    i_ctrlSpNEn);
  output [16:0]o_ramAddress;
  output [7:0]o_instrCode;
  output [14:0]o_romAddress;
  inout [7:0]io_bus;
  input i_ctrlInstrNOE;
  input i_ctrlRamNOE;
  input i_ctrlInstrNWE;
  input i_ctrlMemMar0NWE;
  input i_ctrlMemMar1NWE;
  input i_ctrlMemInstrImmToRam;
  input i_ctrlSpUp;
  input i_ctrlPCLoadN;
  input i_ctrlPCIncrN;
  input o_ramAddress_0_sp_1;
  input [7:0]i_ramData;
  input [22:0]i_romData;
  input i_clk;
  input i_reset;
  input i_ctrlSpNEn;

  wire i_clk;
  wire i_ctrlInstrNOE;
  wire i_ctrlInstrNWE;
  wire i_ctrlMemInstrImmToRam;
  wire i_ctrlMemMar0NWE;
  wire i_ctrlMemMar1NWE;
  wire i_ctrlPCIncrN;
  wire i_ctrlPCLoadN;
  wire i_ctrlRamNOE;
  wire i_ctrlSpNEn;
  wire i_ctrlSpUp;
  wire [7:0]i_ramData;
  wire i_reset;
  wire [22:0]i_romData;
  wire [7:0]io_bus;
  wire \io_bus[7]_INST_0_i_1_n_0 ;
  wire \io_bus[7]_INST_0_i_2_n_0 ;
  wire [7:0]o_instrCode;
  wire [16:0]o_ramAddress;
  wire \o_ramAddress[15]_INST_0_i_1_n_0 ;
  wire \o_ramAddress[15]_INST_0_i_2_n_0 ;
  wire \o_ramAddress[15]_INST_0_i_3_n_0 ;
  wire \o_ramAddress[16]_INST_0_i_5_n_0 ;
  wire o_ramAddress_0_sn_1;
  wire [14:0]o_romAddress;
  wire p_0_in;
  wire [7:0]p_0_in__0;
  wire p_0_out0;
  wire [14:0]r_instrImm;
  wire [14:0]r_mar;
  wire \r_mar[14]_i_1_n_0 ;
  wire \r_pc[11]_i_2_n_0 ;
  wire \r_pc[11]_i_3_n_0 ;
  wire \r_pc[11]_i_4_n_0 ;
  wire \r_pc[11]_i_5_n_0 ;
  wire \r_pc[14]_i_1_n_0 ;
  wire \r_pc[14]_i_3_n_0 ;
  wire \r_pc[14]_i_4_n_0 ;
  wire \r_pc[14]_i_5_n_0 ;
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
  wire \r_pc_reg[14]_i_2_n_2 ;
  wire \r_pc_reg[14]_i_2_n_3 ;
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
  wire [7:0]r_sp_reg;
  wire [7:0]s_select;
  wire sel;
  wire [3:2]\NLW_r_pc_reg[14]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_pc_reg[14]_i_2_O_UNCONNECTED ;
  wire [3:2]NLW_r_sp0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_r_sp0_carry__0_O_UNCONNECTED;

  assign o_ramAddress_0_sn_1 = o_ramAddress_0_sp_1;
  LUT4 #(
    .INIT(16'hF888)) 
    \io_bus[0]_INST_0 
       (.I0(r_instrImm[0]),
        .I1(\io_bus[7]_INST_0_i_1_n_0 ),
        .I2(i_ramData[0]),
        .I3(\io_bus[7]_INST_0_i_2_n_0 ),
        .O(io_bus[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \io_bus[1]_INST_0 
       (.I0(r_instrImm[1]),
        .I1(\io_bus[7]_INST_0_i_1_n_0 ),
        .I2(i_ramData[1]),
        .I3(\io_bus[7]_INST_0_i_2_n_0 ),
        .O(io_bus[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \io_bus[2]_INST_0 
       (.I0(r_instrImm[2]),
        .I1(\io_bus[7]_INST_0_i_1_n_0 ),
        .I2(i_ramData[2]),
        .I3(\io_bus[7]_INST_0_i_2_n_0 ),
        .O(io_bus[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \io_bus[3]_INST_0 
       (.I0(r_instrImm[3]),
        .I1(\io_bus[7]_INST_0_i_1_n_0 ),
        .I2(i_ramData[3]),
        .I3(\io_bus[7]_INST_0_i_2_n_0 ),
        .O(io_bus[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \io_bus[4]_INST_0 
       (.I0(r_instrImm[4]),
        .I1(\io_bus[7]_INST_0_i_1_n_0 ),
        .I2(i_ramData[4]),
        .I3(\io_bus[7]_INST_0_i_2_n_0 ),
        .O(io_bus[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \io_bus[5]_INST_0 
       (.I0(r_instrImm[5]),
        .I1(\io_bus[7]_INST_0_i_1_n_0 ),
        .I2(i_ramData[5]),
        .I3(\io_bus[7]_INST_0_i_2_n_0 ),
        .O(io_bus[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \io_bus[6]_INST_0 
       (.I0(r_instrImm[6]),
        .I1(\io_bus[7]_INST_0_i_1_n_0 ),
        .I2(i_ramData[6]),
        .I3(\io_bus[7]_INST_0_i_2_n_0 ),
        .O(io_bus[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \io_bus[7]_INST_0 
       (.I0(r_instrImm[7]),
        .I1(\io_bus[7]_INST_0_i_1_n_0 ),
        .I2(i_ramData[7]),
        .I3(\io_bus[7]_INST_0_i_2_n_0 ),
        .O(io_bus[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \io_bus[7]_INST_0_i_1 
       (.I0(i_ctrlInstrNOE),
        .O(\io_bus[7]_INST_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \io_bus[7]_INST_0_i_2 
       (.I0(i_ctrlRamNOE),
        .O(\io_bus[7]_INST_0_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_instrCode[7]_i_1 
       (.I0(i_ctrlInstrNWE),
        .O(p_0_in));
  FDRE \o_instrCode_reg[0] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[15]),
        .Q(o_instrCode[0]),
        .R(1'b0));
  FDRE \o_instrCode_reg[1] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[16]),
        .Q(o_instrCode[1]),
        .R(1'b0));
  FDRE \o_instrCode_reg[2] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[17]),
        .Q(o_instrCode[2]),
        .R(1'b0));
  FDRE \o_instrCode_reg[3] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[18]),
        .Q(o_instrCode[3]),
        .R(1'b0));
  FDRE \o_instrCode_reg[4] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[19]),
        .Q(o_instrCode[4]),
        .R(1'b0));
  FDRE \o_instrCode_reg[5] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[20]),
        .Q(o_instrCode[5]),
        .R(1'b0));
  FDRE \o_instrCode_reg[6] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[21]),
        .Q(o_instrCode[6]),
        .R(1'b0));
  FDRE \o_instrCode_reg[7] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[22]),
        .Q(o_instrCode[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_ramAddress[0]_INST_0 
       (.I0(r_instrImm[0]),
        .I1(i_ctrlMemInstrImmToRam),
        .I2(r_mar[0]),
        .I3(o_ramAddress_0_sn_1),
        .O(o_ramAddress[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_ramAddress[10]_INST_0 
       (.I0(r_mar[9]),
        .I1(\o_ramAddress[15]_INST_0_i_1_n_0 ),
        .I2(r_instrImm[9]),
        .I3(\o_ramAddress[15]_INST_0_i_2_n_0 ),
        .I4(r_sp_reg[2]),
        .I5(\o_ramAddress[15]_INST_0_i_3_n_0 ),
        .O(o_ramAddress[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_ramAddress[11]_INST_0 
       (.I0(r_mar[10]),
        .I1(\o_ramAddress[15]_INST_0_i_1_n_0 ),
        .I2(r_instrImm[10]),
        .I3(\o_ramAddress[15]_INST_0_i_2_n_0 ),
        .I4(r_sp_reg[3]),
        .I5(\o_ramAddress[15]_INST_0_i_3_n_0 ),
        .O(o_ramAddress[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_ramAddress[12]_INST_0 
       (.I0(r_mar[11]),
        .I1(\o_ramAddress[15]_INST_0_i_1_n_0 ),
        .I2(r_instrImm[11]),
        .I3(\o_ramAddress[15]_INST_0_i_2_n_0 ),
        .I4(r_sp_reg[4]),
        .I5(\o_ramAddress[15]_INST_0_i_3_n_0 ),
        .O(o_ramAddress[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_ramAddress[13]_INST_0 
       (.I0(r_mar[12]),
        .I1(\o_ramAddress[15]_INST_0_i_1_n_0 ),
        .I2(r_instrImm[12]),
        .I3(\o_ramAddress[15]_INST_0_i_2_n_0 ),
        .I4(r_sp_reg[5]),
        .I5(\o_ramAddress[15]_INST_0_i_3_n_0 ),
        .O(o_ramAddress[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_ramAddress[14]_INST_0 
       (.I0(r_mar[13]),
        .I1(\o_ramAddress[15]_INST_0_i_1_n_0 ),
        .I2(r_instrImm[13]),
        .I3(\o_ramAddress[15]_INST_0_i_2_n_0 ),
        .I4(r_sp_reg[6]),
        .I5(\o_ramAddress[15]_INST_0_i_3_n_0 ),
        .O(o_ramAddress[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_ramAddress[15]_INST_0 
       (.I0(r_mar[14]),
        .I1(\o_ramAddress[15]_INST_0_i_1_n_0 ),
        .I2(r_instrImm[14]),
        .I3(\o_ramAddress[15]_INST_0_i_2_n_0 ),
        .I4(r_sp_reg[7]),
        .I5(\o_ramAddress[15]_INST_0_i_3_n_0 ),
        .O(o_ramAddress[15]));
  LUT6 #(
    .INIT(64'h4555555555555555)) 
    \o_ramAddress[15]_INST_0_i_1 
       (.I0(i_ctrlMemInstrImmToRam),
        .I1(\o_ramAddress[16]_INST_0_i_5_n_0 ),
        .I2(s_select[1]),
        .I3(s_select[0]),
        .I4(s_select[3]),
        .I5(s_select[2]),
        .O(\o_ramAddress[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAAAAAAAAAA)) 
    \o_ramAddress[15]_INST_0_i_2 
       (.I0(i_ctrlMemInstrImmToRam),
        .I1(\o_ramAddress[16]_INST_0_i_5_n_0 ),
        .I2(s_select[1]),
        .I3(s_select[0]),
        .I4(s_select[3]),
        .I5(s_select[2]),
        .O(\o_ramAddress[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \o_ramAddress[15]_INST_0_i_3 
       (.I0(i_ctrlMemInstrImmToRam),
        .I1(\o_ramAddress[16]_INST_0_i_5_n_0 ),
        .I2(s_select[1]),
        .I3(s_select[0]),
        .I4(s_select[3]),
        .I5(s_select[2]),
        .O(\o_ramAddress[15]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \o_ramAddress[16]_INST_0 
       (.I0(s_select[2]),
        .I1(s_select[3]),
        .I2(s_select[0]),
        .I3(s_select[1]),
        .I4(\o_ramAddress[16]_INST_0_i_5_n_0 ),
        .O(o_ramAddress[16]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_ramAddress[16]_INST_0_i_1 
       (.I0(r_mar[9]),
        .I1(o_ramAddress_0_sn_1),
        .I2(r_instrImm[9]),
        .I3(i_ctrlMemInstrImmToRam),
        .O(s_select[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_ramAddress[16]_INST_0_i_2 
       (.I0(r_mar[10]),
        .I1(o_ramAddress_0_sn_1),
        .I2(r_instrImm[10]),
        .I3(i_ctrlMemInstrImmToRam),
        .O(s_select[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \o_ramAddress[16]_INST_0_i_3 
       (.I0(r_mar[7]),
        .I1(o_ramAddress_0_sn_1),
        .I2(r_instrImm[7]),
        .I3(i_ctrlMemInstrImmToRam),
        .O(s_select[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_ramAddress[16]_INST_0_i_4 
       (.I0(r_mar[8]),
        .I1(o_ramAddress_0_sn_1),
        .I2(r_instrImm[8]),
        .I3(i_ctrlMemInstrImmToRam),
        .O(s_select[1]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \o_ramAddress[16]_INST_0_i_5 
       (.I0(s_select[5]),
        .I1(s_select[4]),
        .I2(s_select[7]),
        .I3(s_select[6]),
        .O(\o_ramAddress[16]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_ramAddress[16]_INST_0_i_6 
       (.I0(r_mar[12]),
        .I1(o_ramAddress_0_sn_1),
        .I2(r_instrImm[12]),
        .I3(i_ctrlMemInstrImmToRam),
        .O(s_select[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_ramAddress[16]_INST_0_i_7 
       (.I0(r_mar[11]),
        .I1(o_ramAddress_0_sn_1),
        .I2(r_instrImm[11]),
        .I3(i_ctrlMemInstrImmToRam),
        .O(s_select[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_ramAddress[16]_INST_0_i_8 
       (.I0(r_mar[14]),
        .I1(o_ramAddress_0_sn_1),
        .I2(r_instrImm[14]),
        .I3(i_ctrlMemInstrImmToRam),
        .O(s_select[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_ramAddress[16]_INST_0_i_9 
       (.I0(r_mar[13]),
        .I1(o_ramAddress_0_sn_1),
        .I2(r_instrImm[13]),
        .I3(i_ctrlMemInstrImmToRam),
        .O(s_select[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_ramAddress[1]_INST_0 
       (.I0(r_instrImm[1]),
        .I1(i_ctrlMemInstrImmToRam),
        .I2(r_mar[1]),
        .I3(o_ramAddress_0_sn_1),
        .O(o_ramAddress[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_ramAddress[2]_INST_0 
       (.I0(r_instrImm[2]),
        .I1(i_ctrlMemInstrImmToRam),
        .I2(r_mar[2]),
        .I3(o_ramAddress_0_sn_1),
        .O(o_ramAddress[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_ramAddress[3]_INST_0 
       (.I0(r_instrImm[3]),
        .I1(i_ctrlMemInstrImmToRam),
        .I2(r_mar[3]),
        .I3(o_ramAddress_0_sn_1),
        .O(o_ramAddress[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_ramAddress[4]_INST_0 
       (.I0(r_instrImm[4]),
        .I1(i_ctrlMemInstrImmToRam),
        .I2(r_mar[4]),
        .I3(o_ramAddress_0_sn_1),
        .O(o_ramAddress[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_ramAddress[5]_INST_0 
       (.I0(r_instrImm[5]),
        .I1(i_ctrlMemInstrImmToRam),
        .I2(r_mar[5]),
        .I3(o_ramAddress_0_sn_1),
        .O(o_ramAddress[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \o_ramAddress[6]_INST_0 
       (.I0(r_instrImm[6]),
        .I1(i_ctrlMemInstrImmToRam),
        .I2(r_mar[6]),
        .I3(o_ramAddress_0_sn_1),
        .O(o_ramAddress[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \o_ramAddress[7]_INST_0 
       (.I0(r_instrImm[7]),
        .I1(i_ctrlMemInstrImmToRam),
        .I2(r_mar[7]),
        .I3(o_ramAddress_0_sn_1),
        .O(o_ramAddress[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_ramAddress[8]_INST_0 
       (.I0(r_mar[7]),
        .I1(\o_ramAddress[15]_INST_0_i_1_n_0 ),
        .I2(r_instrImm[7]),
        .I3(\o_ramAddress[15]_INST_0_i_2_n_0 ),
        .I4(r_sp_reg[0]),
        .I5(\o_ramAddress[15]_INST_0_i_3_n_0 ),
        .O(o_ramAddress[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \o_ramAddress[9]_INST_0 
       (.I0(r_mar[8]),
        .I1(\o_ramAddress[15]_INST_0_i_1_n_0 ),
        .I2(r_instrImm[8]),
        .I3(\o_ramAddress[15]_INST_0_i_2_n_0 ),
        .I4(r_sp_reg[1]),
        .I5(\o_ramAddress[15]_INST_0_i_3_n_0 ),
        .O(o_ramAddress[9]));
  FDRE \r_instrImm_reg[0] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[0]),
        .Q(r_instrImm[0]),
        .R(1'b0));
  FDRE \r_instrImm_reg[10] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[10]),
        .Q(r_instrImm[10]),
        .R(1'b0));
  FDRE \r_instrImm_reg[11] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[11]),
        .Q(r_instrImm[11]),
        .R(1'b0));
  FDRE \r_instrImm_reg[12] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[12]),
        .Q(r_instrImm[12]),
        .R(1'b0));
  FDRE \r_instrImm_reg[13] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[13]),
        .Q(r_instrImm[13]),
        .R(1'b0));
  FDRE \r_instrImm_reg[14] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[14]),
        .Q(r_instrImm[14]),
        .R(1'b0));
  FDRE \r_instrImm_reg[1] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[1]),
        .Q(r_instrImm[1]),
        .R(1'b0));
  FDRE \r_instrImm_reg[2] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[2]),
        .Q(r_instrImm[2]),
        .R(1'b0));
  FDRE \r_instrImm_reg[3] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[3]),
        .Q(r_instrImm[3]),
        .R(1'b0));
  FDRE \r_instrImm_reg[4] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[4]),
        .Q(r_instrImm[4]),
        .R(1'b0));
  FDRE \r_instrImm_reg[5] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[5]),
        .Q(r_instrImm[5]),
        .R(1'b0));
  FDRE \r_instrImm_reg[6] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[6]),
        .Q(r_instrImm[6]),
        .R(1'b0));
  FDRE \r_instrImm_reg[7] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[7]),
        .Q(r_instrImm[7]),
        .R(1'b0));
  FDRE \r_instrImm_reg[8] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[8]),
        .Q(r_instrImm[8]),
        .R(1'b0));
  FDRE \r_instrImm_reg[9] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(i_romData[9]),
        .Q(r_instrImm[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \r_mar[14]_i_1 
       (.I0(i_ctrlMemMar1NWE),
        .O(\r_mar[14]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_mar[7]_i_1 
       (.I0(i_ctrlMemMar0NWE),
        .O(p_0_out0));
  FDRE \r_mar_reg[0] 
       (.C(i_clk),
        .CE(p_0_out0),
        .D(io_bus[0]),
        .Q(r_mar[0]),
        .R(1'b0));
  FDRE \r_mar_reg[10] 
       (.C(i_clk),
        .CE(\r_mar[14]_i_1_n_0 ),
        .D(io_bus[2]),
        .Q(r_mar[10]),
        .R(1'b0));
  FDRE \r_mar_reg[11] 
       (.C(i_clk),
        .CE(\r_mar[14]_i_1_n_0 ),
        .D(io_bus[3]),
        .Q(r_mar[11]),
        .R(1'b0));
  FDRE \r_mar_reg[12] 
       (.C(i_clk),
        .CE(\r_mar[14]_i_1_n_0 ),
        .D(io_bus[4]),
        .Q(r_mar[12]),
        .R(1'b0));
  FDRE \r_mar_reg[13] 
       (.C(i_clk),
        .CE(\r_mar[14]_i_1_n_0 ),
        .D(io_bus[5]),
        .Q(r_mar[13]),
        .R(1'b0));
  FDRE \r_mar_reg[14] 
       (.C(i_clk),
        .CE(\r_mar[14]_i_1_n_0 ),
        .D(io_bus[6]),
        .Q(r_mar[14]),
        .R(1'b0));
  FDRE \r_mar_reg[1] 
       (.C(i_clk),
        .CE(p_0_out0),
        .D(io_bus[1]),
        .Q(r_mar[1]),
        .R(1'b0));
  FDRE \r_mar_reg[2] 
       (.C(i_clk),
        .CE(p_0_out0),
        .D(io_bus[2]),
        .Q(r_mar[2]),
        .R(1'b0));
  FDRE \r_mar_reg[3] 
       (.C(i_clk),
        .CE(p_0_out0),
        .D(io_bus[3]),
        .Q(r_mar[3]),
        .R(1'b0));
  FDRE \r_mar_reg[4] 
       (.C(i_clk),
        .CE(p_0_out0),
        .D(io_bus[4]),
        .Q(r_mar[4]),
        .R(1'b0));
  FDRE \r_mar_reg[5] 
       (.C(i_clk),
        .CE(p_0_out0),
        .D(io_bus[5]),
        .Q(r_mar[5]),
        .R(1'b0));
  FDRE \r_mar_reg[6] 
       (.C(i_clk),
        .CE(p_0_out0),
        .D(io_bus[6]),
        .Q(r_mar[6]),
        .R(1'b0));
  FDRE \r_mar_reg[7] 
       (.C(i_clk),
        .CE(p_0_out0),
        .D(io_bus[7]),
        .Q(r_mar[7]),
        .R(1'b0));
  FDRE \r_mar_reg[8] 
       (.C(i_clk),
        .CE(\r_mar[14]_i_1_n_0 ),
        .D(io_bus[0]),
        .Q(r_mar[8]),
        .R(1'b0));
  FDRE \r_mar_reg[9] 
       (.C(i_clk),
        .CE(\r_mar[14]_i_1_n_0 ),
        .D(io_bus[1]),
        .Q(r_mar[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_pc[11]_i_2 
       (.I0(o_romAddress[11]),
        .I1(i_ctrlPCLoadN),
        .I2(r_instrImm[11]),
        .O(\r_pc[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_pc[11]_i_3 
       (.I0(o_romAddress[10]),
        .I1(i_ctrlPCLoadN),
        .I2(r_instrImm[10]),
        .O(\r_pc[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_pc[11]_i_4 
       (.I0(o_romAddress[9]),
        .I1(i_ctrlPCLoadN),
        .I2(r_instrImm[9]),
        .O(\r_pc[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_pc[11]_i_5 
       (.I0(o_romAddress[8]),
        .I1(i_ctrlPCLoadN),
        .I2(r_instrImm[8]),
        .O(\r_pc[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \r_pc[14]_i_1 
       (.I0(i_ctrlPCLoadN),
        .I1(i_ctrlPCIncrN),
        .O(\r_pc[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_pc[14]_i_3 
       (.I0(o_romAddress[14]),
        .I1(i_ctrlPCLoadN),
        .I2(r_instrImm[14]),
        .O(\r_pc[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_pc[14]_i_4 
       (.I0(o_romAddress[13]),
        .I1(i_ctrlPCLoadN),
        .I2(r_instrImm[13]),
        .O(\r_pc[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_pc[14]_i_5 
       (.I0(o_romAddress[12]),
        .I1(i_ctrlPCLoadN),
        .I2(r_instrImm[12]),
        .O(\r_pc[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_pc[3]_i_2 
       (.I0(o_romAddress[3]),
        .I1(i_ctrlPCLoadN),
        .I2(r_instrImm[3]),
        .O(\r_pc[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_pc[3]_i_3 
       (.I0(o_romAddress[2]),
        .I1(i_ctrlPCLoadN),
        .I2(r_instrImm[2]),
        .O(\r_pc[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_pc[3]_i_4 
       (.I0(o_romAddress[1]),
        .I1(i_ctrlPCLoadN),
        .I2(r_instrImm[1]),
        .O(\r_pc[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \r_pc[3]_i_5 
       (.I0(r_instrImm[0]),
        .I1(o_romAddress[0]),
        .I2(i_ctrlPCLoadN),
        .O(\r_pc[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_pc[7]_i_2 
       (.I0(o_romAddress[7]),
        .I1(i_ctrlPCLoadN),
        .I2(r_instrImm[7]),
        .O(\r_pc[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_pc[7]_i_3 
       (.I0(o_romAddress[6]),
        .I1(i_ctrlPCLoadN),
        .I2(r_instrImm[6]),
        .O(\r_pc[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_pc[7]_i_4 
       (.I0(o_romAddress[5]),
        .I1(i_ctrlPCLoadN),
        .I2(r_instrImm[5]),
        .O(\r_pc[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_pc[7]_i_5 
       (.I0(o_romAddress[4]),
        .I1(i_ctrlPCLoadN),
        .I2(r_instrImm[4]),
        .O(\r_pc[7]_i_5_n_0 ));
  FDRE \r_pc_reg[0] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[3]_i_1_n_7 ),
        .Q(o_romAddress[0]),
        .R(i_reset));
  FDRE \r_pc_reg[10] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[11]_i_1_n_5 ),
        .Q(o_romAddress[10]),
        .R(i_reset));
  FDRE \r_pc_reg[11] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[11]_i_1_n_4 ),
        .Q(o_romAddress[11]),
        .R(i_reset));
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
        .Q(o_romAddress[12]),
        .R(i_reset));
  FDRE \r_pc_reg[13] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[14]_i_2_n_6 ),
        .Q(o_romAddress[13]),
        .R(i_reset));
  FDRE \r_pc_reg[14] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[14]_i_2_n_5 ),
        .Q(o_romAddress[14]),
        .R(i_reset));
  CARRY4 \r_pc_reg[14]_i_2 
       (.CI(\r_pc_reg[11]_i_1_n_0 ),
        .CO({\NLW_r_pc_reg[14]_i_2_CO_UNCONNECTED [3:2],\r_pc_reg[14]_i_2_n_2 ,\r_pc_reg[14]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_pc_reg[14]_i_2_O_UNCONNECTED [3],\r_pc_reg[14]_i_2_n_5 ,\r_pc_reg[14]_i_2_n_6 ,\r_pc_reg[14]_i_2_n_7 }),
        .S({1'b0,\r_pc[14]_i_3_n_0 ,\r_pc[14]_i_4_n_0 ,\r_pc[14]_i_5_n_0 }));
  FDRE \r_pc_reg[1] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[3]_i_1_n_6 ),
        .Q(o_romAddress[1]),
        .R(i_reset));
  FDRE \r_pc_reg[2] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[3]_i_1_n_5 ),
        .Q(o_romAddress[2]),
        .R(i_reset));
  FDRE \r_pc_reg[3] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[3]_i_1_n_4 ),
        .Q(o_romAddress[3]),
        .R(i_reset));
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
        .Q(o_romAddress[4]),
        .R(i_reset));
  FDRE \r_pc_reg[5] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[7]_i_1_n_6 ),
        .Q(o_romAddress[5]),
        .R(i_reset));
  FDRE \r_pc_reg[6] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[7]_i_1_n_5 ),
        .Q(o_romAddress[6]),
        .R(i_reset));
  FDRE \r_pc_reg[7] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[7]_i_1_n_4 ),
        .Q(o_romAddress[7]),
        .R(i_reset));
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
        .Q(o_romAddress[8]),
        .R(i_reset));
  FDRE \r_pc_reg[9] 
       (.C(i_clk),
        .CE(\r_pc[14]_i_1_n_0 ),
        .D(\r_pc_reg[11]_i_1_n_6 ),
        .Q(o_romAddress[9]),
        .R(i_reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_sp0_carry
       (.CI(1'b0),
        .CO({r_sp0_carry_n_0,r_sp0_carry_n_1,r_sp0_carry_n_2,r_sp0_carry_n_3}),
        .CYINIT(r_sp_reg[0]),
        .DI({r_sp_reg[3:2],i_ctrlSpUp,r_sp_reg[1]}),
        .O(p_0_in__0[4:1]),
        .S({r_sp0_carry_i_1_n_0,r_sp0_carry_i_2_n_0,r_sp0_carry_i_3_n_0,r_sp0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_sp0_carry__0
       (.CI(r_sp0_carry_n_0),
        .CO({NLW_r_sp0_carry__0_CO_UNCONNECTED[3:2],r_sp0_carry__0_n_2,r_sp0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,r_sp_reg[5:4]}),
        .O({NLW_r_sp0_carry__0_O_UNCONNECTED[3],p_0_in__0[7:5]}),
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
  LUT1 #(
    .INIT(2'h1)) 
    \r_sp[0]_i_1 
       (.I0(r_sp_reg[0]),
        .O(p_0_in__0[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \r_sp[7]_i_1 
       (.I0(i_ctrlSpNEn),
        .O(sel));
  FDRE \r_sp_reg[0] 
       (.C(i_clk),
        .CE(sel),
        .D(p_0_in__0[0]),
        .Q(r_sp_reg[0]),
        .R(i_reset));
  FDRE \r_sp_reg[1] 
       (.C(i_clk),
        .CE(sel),
        .D(p_0_in__0[1]),
        .Q(r_sp_reg[1]),
        .R(i_reset));
  FDRE \r_sp_reg[2] 
       (.C(i_clk),
        .CE(sel),
        .D(p_0_in__0[2]),
        .Q(r_sp_reg[2]),
        .R(i_reset));
  FDRE \r_sp_reg[3] 
       (.C(i_clk),
        .CE(sel),
        .D(p_0_in__0[3]),
        .Q(r_sp_reg[3]),
        .R(i_reset));
  FDRE \r_sp_reg[4] 
       (.C(i_clk),
        .CE(sel),
        .D(p_0_in__0[4]),
        .Q(r_sp_reg[4]),
        .R(i_reset));
  FDRE \r_sp_reg[5] 
       (.C(i_clk),
        .CE(sel),
        .D(p_0_in__0[5]),
        .Q(r_sp_reg[5]),
        .R(i_reset));
  FDRE \r_sp_reg[6] 
       (.C(i_clk),
        .CE(sel),
        .D(p_0_in__0[6]),
        .Q(r_sp_reg[6]),
        .R(i_reset));
  FDRE \r_sp_reg[7] 
       (.C(i_clk),
        .CE(sel),
        .D(p_0_in__0[7]),
        .Q(r_sp_reg[7]),
        .R(i_reset));
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
