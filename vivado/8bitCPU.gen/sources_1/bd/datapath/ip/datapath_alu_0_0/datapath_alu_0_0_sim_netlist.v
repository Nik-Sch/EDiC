// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Sep 24 22:40:36 2021
// Host        : niklasPC running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/niklas/dev/8bitCpu/vivado/8bitCPU.gen/sources_1/bd/datapath/ip/datapath_alu_0_0/datapath_alu_0_0_sim_netlist.v
// Design      : datapath_alu_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "datapath_alu_0_0,alu,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "alu,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module datapath_alu_0_0
   (i_clk,
    i_reset,
    i_a,
    io_bus,
    o_flagNegative,
    o_flagNZero,
    i_ctrlAluYNWE,
    i_ctrlAluNOE,
    i_ctrlAluSub,
    i_ctrlAluOp);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN datapath_i_clk, INSERT_VIP 0" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input i_reset;
  input [7:0]i_a;
  inout [7:0]io_bus;
  output o_flagNegative;
  output o_flagNZero;
  input i_ctrlAluYNWE;
  input i_ctrlAluNOE;
  input i_ctrlAluSub;
  input [1:0]i_ctrlAluOp;

  wire [7:0]i_a;
  wire i_clk;
  wire i_ctrlAluNOE;
  wire [1:0]i_ctrlAluOp;
  wire i_ctrlAluSub;
  wire i_ctrlAluYNWE;
  wire i_reset;
  wire [7:0]io_bus;
  wire o_flagNZero;
  wire o_flagNegative;

  datapath_alu_0_0_alu inst
       (.i_a(i_a),
        .i_clk(i_clk),
        .i_ctrlAluNOE(i_ctrlAluNOE),
        .i_ctrlAluOp(i_ctrlAluOp),
        .i_ctrlAluSub(i_ctrlAluSub),
        .i_ctrlAluYNWE(i_ctrlAluYNWE),
        .i_reset(i_reset),
        .io_bus(io_bus),
        .o_flagNZero(o_flagNZero),
        .o_flagNegative(o_flagNegative));
endmodule

(* ORIG_REF_NAME = "alu" *) 
module datapath_alu_0_0_alu
   (o_flagNegative,
    o_flagNZero,
    io_bus,
    i_a,
    i_ctrlAluSub,
    i_reset,
    i_clk,
    i_ctrlAluOp,
    i_ctrlAluNOE,
    i_ctrlAluYNWE);
  output o_flagNegative;
  output o_flagNZero;
  inout [7:0]io_bus;
  input [7:0]i_a;
  input i_ctrlAluSub;
  input i_reset;
  input i_clk;
  input [1:0]i_ctrlAluOp;
  input i_ctrlAluNOE;
  input i_ctrlAluYNWE;

  wire [7:0]i_a;
  wire i_clk;
  wire i_ctrlAluNOE;
  wire [1:0]i_ctrlAluOp;
  wire i_ctrlAluSub;
  wire i_ctrlAluYNWE;
  wire i_reset;
  wire [7:0]io_bus;
  wire \io_bus[7]_INST_0_i_1_n_0 ;
  wire o_flagNZero;
  wire o_flagNZero_INST_0_i_1_n_0;
  wire o_flagNegative;
  wire p_0_in;
  wire [6:0]r_y;
  wire \r_y[0]_i_2_n_0 ;
  wire \r_y[1]_i_2_n_0 ;
  wire \r_y[2]_i_2_n_0 ;
  wire \r_y[3]_i_2_n_0 ;
  wire \r_y[4]_i_2_n_0 ;
  wire \r_y[4]_i_4_n_0 ;
  wire \r_y[4]_i_5_n_0 ;
  wire \r_y[5]_i_2_n_0 ;
  wire \r_y[5]_i_4_n_0 ;
  wire \r_y[5]_i_5_n_0 ;
  wire \r_y[6]_i_2_n_0 ;
  wire \r_y[6]_i_4_n_0 ;
  wire \r_y[6]_i_5_n_0 ;
  wire \r_y[6]_i_6_n_0 ;
  wire \r_y[6]_i_7_n_0 ;
  wire \r_y[6]_i_8_n_0 ;
  wire \r_y[7]_i_10_n_0 ;
  wire \r_y[7]_i_11_n_0 ;
  wire \r_y[7]_i_3_n_0 ;
  wire \r_y[7]_i_4_n_0 ;
  wire \r_y[7]_i_5_n_0 ;
  wire \r_y[7]_i_6_n_0 ;
  wire \r_y[7]_i_7_n_0 ;
  wire \r_y[7]_i_8_n_0 ;
  wire \r_y[7]_i_9_n_0 ;
  wire [6:0]s_b;
  wire [7:0]s_y;
  wire [7:0]s_y02_in;
  wire s_y0_carry__0_i_1_n_0;
  wire s_y0_carry__0_i_2_n_0;
  wire s_y0_carry__0_i_3_n_0;
  wire s_y0_carry__0_i_4_n_0;
  wire s_y0_carry__0_n_1;
  wire s_y0_carry__0_n_2;
  wire s_y0_carry__0_n_3;
  wire s_y0_carry_i_2_n_0;
  wire s_y0_carry_i_3_n_0;
  wire s_y0_carry_i_4_n_0;
  wire s_y0_carry_i_5_n_0;
  wire s_y0_carry_n_0;
  wire s_y0_carry_n_1;
  wire s_y0_carry_n_2;
  wire s_y0_carry_n_3;
  wire [3:3]NLW_s_y0_carry__0_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \io_bus[0]_INST_0 
       (.I0(r_y[0]),
        .I1(\io_bus[7]_INST_0_i_1_n_0 ),
        .O(io_bus[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \io_bus[1]_INST_0 
       (.I0(r_y[1]),
        .I1(\io_bus[7]_INST_0_i_1_n_0 ),
        .O(io_bus[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \io_bus[2]_INST_0 
       (.I0(r_y[2]),
        .I1(\io_bus[7]_INST_0_i_1_n_0 ),
        .O(io_bus[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \io_bus[3]_INST_0 
       (.I0(r_y[3]),
        .I1(\io_bus[7]_INST_0_i_1_n_0 ),
        .O(io_bus[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \io_bus[4]_INST_0 
       (.I0(r_y[4]),
        .I1(\io_bus[7]_INST_0_i_1_n_0 ),
        .O(io_bus[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \io_bus[5]_INST_0 
       (.I0(r_y[5]),
        .I1(\io_bus[7]_INST_0_i_1_n_0 ),
        .O(io_bus[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \io_bus[6]_INST_0 
       (.I0(r_y[6]),
        .I1(\io_bus[7]_INST_0_i_1_n_0 ),
        .O(io_bus[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \io_bus[7]_INST_0 
       (.I0(o_flagNegative),
        .I1(\io_bus[7]_INST_0_i_1_n_0 ),
        .O(io_bus[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \io_bus[7]_INST_0_i_1 
       (.I0(i_ctrlAluNOE),
        .O(\io_bus[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_flagNZero_INST_0
       (.I0(r_y[2]),
        .I1(r_y[3]),
        .I2(r_y[0]),
        .I3(r_y[1]),
        .I4(o_flagNZero_INST_0_i_1_n_0),
        .O(o_flagNZero));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_flagNZero_INST_0_i_1
       (.I0(r_y[5]),
        .I1(r_y[4]),
        .I2(o_flagNegative),
        .I3(r_y[6]),
        .O(o_flagNZero_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAEABEFFAAEABEAA)) 
    \r_y[0]_i_1 
       (.I0(\r_y[0]_i_2_n_0 ),
        .I1(i_a[0]),
        .I2(s_b[0]),
        .I3(i_ctrlAluOp[1]),
        .I4(i_ctrlAluOp[0]),
        .I5(s_y02_in[0]),
        .O(s_y[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE2000000)) 
    \r_y[0]_i_2 
       (.I0(\r_y[7]_i_6_n_0 ),
        .I1(i_ctrlAluSub),
        .I2(\r_y[7]_i_5_n_0 ),
        .I3(i_ctrlAluOp[0]),
        .I4(i_ctrlAluOp[1]),
        .O(\r_y[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAABEEAFFAABEEAAA)) 
    \r_y[1]_i_1 
       (.I0(\r_y[1]_i_2_n_0 ),
        .I1(s_b[1]),
        .I2(i_a[1]),
        .I3(i_ctrlAluOp[0]),
        .I4(i_ctrlAluOp[1]),
        .I5(s_y02_in[1]),
        .O(s_y[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE2000000)) 
    \r_y[1]_i_2 
       (.I0(\r_y[6]_i_5_n_0 ),
        .I1(i_ctrlAluSub),
        .I2(\r_y[6]_i_4_n_0 ),
        .I3(i_ctrlAluOp[0]),
        .I4(i_ctrlAluOp[1]),
        .O(\r_y[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_y[1]_i_3 
       (.I0(io_bus[1]),
        .I1(i_ctrlAluSub),
        .O(s_b[1]));
  LUT6 #(
    .INIT(64'hAABEEAFFAABEEAAA)) 
    \r_y[2]_i_1 
       (.I0(\r_y[2]_i_2_n_0 ),
        .I1(s_b[2]),
        .I2(i_a[2]),
        .I3(i_ctrlAluOp[0]),
        .I4(i_ctrlAluOp[1]),
        .I5(s_y02_in[2]),
        .O(s_y[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hE2000000)) 
    \r_y[2]_i_2 
       (.I0(\r_y[5]_i_5_n_0 ),
        .I1(i_ctrlAluSub),
        .I2(\r_y[5]_i_4_n_0 ),
        .I3(i_ctrlAluOp[0]),
        .I4(i_ctrlAluOp[1]),
        .O(\r_y[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_y[2]_i_3 
       (.I0(i_ctrlAluSub),
        .I1(io_bus[2]),
        .O(s_b[2]));
  LUT6 #(
    .INIT(64'hAABEEAFFAABEEAAA)) 
    \r_y[3]_i_1 
       (.I0(\r_y[3]_i_2_n_0 ),
        .I1(s_b[3]),
        .I2(i_a[3]),
        .I3(i_ctrlAluOp[0]),
        .I4(i_ctrlAluOp[1]),
        .I5(s_y02_in[3]),
        .O(s_y[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hE2000000)) 
    \r_y[3]_i_2 
       (.I0(\r_y[4]_i_5_n_0 ),
        .I1(i_ctrlAluSub),
        .I2(\r_y[4]_i_4_n_0 ),
        .I3(i_ctrlAluOp[0]),
        .I4(i_ctrlAluOp[1]),
        .O(\r_y[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_y[3]_i_3 
       (.I0(i_ctrlAluSub),
        .I1(io_bus[3]),
        .O(s_b[3]));
  LUT6 #(
    .INIT(64'hAABEEAFFAABEEAAA)) 
    \r_y[4]_i_1 
       (.I0(\r_y[4]_i_2_n_0 ),
        .I1(s_b[4]),
        .I2(i_a[4]),
        .I3(i_ctrlAluOp[0]),
        .I4(i_ctrlAluOp[1]),
        .I5(s_y02_in[4]),
        .O(s_y[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hE2000000)) 
    \r_y[4]_i_2 
       (.I0(\r_y[4]_i_4_n_0 ),
        .I1(i_ctrlAluSub),
        .I2(\r_y[4]_i_5_n_0 ),
        .I3(i_ctrlAluOp[0]),
        .I4(i_ctrlAluOp[1]),
        .O(\r_y[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_y[4]_i_3 
       (.I0(i_ctrlAluSub),
        .I1(io_bus[4]),
        .O(s_b[4]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \r_y[4]_i_4 
       (.I0(io_bus[1]),
        .I1(\r_y[7]_i_8_n_0 ),
        .I2(\r_y[7]_i_9_n_0 ),
        .I3(io_bus[2]),
        .O(\r_y[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h5500E4E4)) 
    \r_y[4]_i_5 
       (.I0(io_bus[1]),
        .I1(\r_y[6]_i_8_n_0 ),
        .I2(\r_y[6]_i_6_n_0 ),
        .I3(\r_y[7]_i_7_n_0 ),
        .I4(io_bus[2]),
        .O(\r_y[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAABEEAFFAABEEAAA)) 
    \r_y[5]_i_1 
       (.I0(\r_y[5]_i_2_n_0 ),
        .I1(s_b[5]),
        .I2(i_a[5]),
        .I3(i_ctrlAluOp[0]),
        .I4(i_ctrlAluOp[1]),
        .I5(s_y02_in[5]),
        .O(s_y[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hE2000000)) 
    \r_y[5]_i_2 
       (.I0(\r_y[5]_i_4_n_0 ),
        .I1(i_ctrlAluSub),
        .I2(\r_y[5]_i_5_n_0 ),
        .I3(i_ctrlAluOp[0]),
        .I4(i_ctrlAluOp[1]),
        .O(\r_y[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_y[5]_i_3 
       (.I0(i_ctrlAluSub),
        .I1(io_bus[5]),
        .O(s_b[5]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \r_y[5]_i_4 
       (.I0(io_bus[1]),
        .I1(\r_y[6]_i_6_n_0 ),
        .I2(\r_y[7]_i_7_n_0 ),
        .I3(io_bus[2]),
        .O(\r_y[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h5500E4E4)) 
    \r_y[5]_i_5 
       (.I0(io_bus[1]),
        .I1(\r_y[7]_i_11_n_0 ),
        .I2(\r_y[7]_i_8_n_0 ),
        .I3(\r_y[7]_i_9_n_0 ),
        .I4(io_bus[2]),
        .O(\r_y[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAABEEAFFAABEEAAA)) 
    \r_y[6]_i_1 
       (.I0(\r_y[6]_i_2_n_0 ),
        .I1(s_b[6]),
        .I2(i_a[6]),
        .I3(i_ctrlAluOp[0]),
        .I4(i_ctrlAluOp[1]),
        .I5(s_y02_in[6]),
        .O(s_y[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE2000000)) 
    \r_y[6]_i_2 
       (.I0(\r_y[6]_i_4_n_0 ),
        .I1(i_ctrlAluSub),
        .I2(\r_y[6]_i_5_n_0 ),
        .I3(i_ctrlAluOp[0]),
        .I4(i_ctrlAluOp[1]),
        .O(\r_y[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_y[6]_i_3 
       (.I0(i_ctrlAluSub),
        .I1(io_bus[6]),
        .O(s_b[6]));
  LUT3 #(
    .INIT(8'h02)) 
    \r_y[6]_i_4 
       (.I0(\r_y[7]_i_9_n_0 ),
        .I1(io_bus[1]),
        .I2(io_bus[2]),
        .O(\r_y[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E4FFAA5500)) 
    \r_y[6]_i_5 
       (.I0(io_bus[1]),
        .I1(\r_y[6]_i_6_n_0 ),
        .I2(\r_y[7]_i_7_n_0 ),
        .I3(\r_y[6]_i_7_n_0 ),
        .I4(\r_y[6]_i_8_n_0 ),
        .I5(io_bus[2]),
        .O(\r_y[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \r_y[6]_i_6 
       (.I0(i_a[1]),
        .I1(i_ctrlAluSub),
        .I2(i_a[6]),
        .I3(i_a[2]),
        .I4(i_a[5]),
        .I5(io_bus[0]),
        .O(\r_y[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \r_y[6]_i_7 
       (.I0(i_a[6]),
        .I1(i_ctrlAluSub),
        .I2(i_a[1]),
        .I3(i_a[5]),
        .I4(i_a[2]),
        .I5(io_bus[0]),
        .O(\r_y[6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hB8E2)) 
    \r_y[6]_i_8 
       (.I0(i_a[3]),
        .I1(i_ctrlAluSub),
        .I2(i_a[4]),
        .I3(io_bus[0]),
        .O(\r_y[6]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_y[7]_i_1 
       (.I0(i_ctrlAluYNWE),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \r_y[7]_i_10 
       (.I0(i_a[6]),
        .I1(i_ctrlAluSub),
        .I2(i_a[1]),
        .I3(i_a[7]),
        .I4(i_a[0]),
        .I5(io_bus[0]),
        .O(\r_y[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \r_y[7]_i_11 
       (.I0(i_a[4]),
        .I1(i_ctrlAluSub),
        .I2(i_a[3]),
        .I3(i_a[5]),
        .I4(i_a[2]),
        .I5(io_bus[0]),
        .O(\r_y[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAAEABEFFAAEABEAA)) 
    \r_y[7]_i_2 
       (.I0(\r_y[7]_i_3_n_0 ),
        .I1(i_a[7]),
        .I2(\r_y[7]_i_4_n_0 ),
        .I3(i_ctrlAluOp[1]),
        .I4(i_ctrlAluOp[0]),
        .I5(s_y02_in[7]),
        .O(s_y[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE2000000)) 
    \r_y[7]_i_3 
       (.I0(\r_y[7]_i_5_n_0 ),
        .I1(i_ctrlAluSub),
        .I2(\r_y[7]_i_6_n_0 ),
        .I3(i_ctrlAluOp[0]),
        .I4(i_ctrlAluOp[1]),
        .O(\r_y[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_y[7]_i_4 
       (.I0(i_ctrlAluSub),
        .I1(io_bus[7]),
        .O(\r_y[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \r_y[7]_i_5 
       (.I0(\r_y[7]_i_7_n_0 ),
        .I1(io_bus[1]),
        .I2(io_bus[2]),
        .O(\r_y[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E4FFAA5500)) 
    \r_y[7]_i_6 
       (.I0(io_bus[1]),
        .I1(\r_y[7]_i_8_n_0 ),
        .I2(\r_y[7]_i_9_n_0 ),
        .I3(\r_y[7]_i_10_n_0 ),
        .I4(\r_y[7]_i_11_n_0 ),
        .I5(io_bus[2]),
        .O(\r_y[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \r_y[7]_i_7 
       (.I0(i_a[0]),
        .I1(i_ctrlAluSub),
        .I2(i_a[7]),
        .I3(io_bus[0]),
        .O(\r_y[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \r_y[7]_i_8 
       (.I0(i_a[2]),
        .I1(i_ctrlAluSub),
        .I2(i_a[5]),
        .I3(i_a[3]),
        .I4(i_a[4]),
        .I5(io_bus[0]),
        .O(\r_y[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \r_y[7]_i_9 
       (.I0(i_a[1]),
        .I1(i_ctrlAluSub),
        .I2(i_a[6]),
        .I3(i_a[0]),
        .I4(i_a[7]),
        .I5(io_bus[0]),
        .O(\r_y[7]_i_9_n_0 ));
  FDRE \r_y_reg[0] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(s_y[0]),
        .Q(r_y[0]),
        .R(i_reset));
  FDRE \r_y_reg[1] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(s_y[1]),
        .Q(r_y[1]),
        .R(i_reset));
  FDRE \r_y_reg[2] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(s_y[2]),
        .Q(r_y[2]),
        .R(i_reset));
  FDRE \r_y_reg[3] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(s_y[3]),
        .Q(r_y[3]),
        .R(i_reset));
  FDRE \r_y_reg[4] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(s_y[4]),
        .Q(r_y[4]),
        .R(i_reset));
  FDRE \r_y_reg[5] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(s_y[5]),
        .Q(r_y[5]),
        .R(i_reset));
  FDRE \r_y_reg[6] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(s_y[6]),
        .Q(r_y[6]),
        .R(i_reset));
  FDRE \r_y_reg[7] 
       (.C(i_clk),
        .CE(p_0_in),
        .D(s_y[7]),
        .Q(o_flagNegative),
        .R(i_reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_y0_carry
       (.CI(1'b0),
        .CO({s_y0_carry_n_0,s_y0_carry_n_1,s_y0_carry_n_2,s_y0_carry_n_3}),
        .CYINIT(s_b[0]),
        .DI(i_a[3:0]),
        .O(s_y02_in[3:0]),
        .S({s_y0_carry_i_2_n_0,s_y0_carry_i_3_n_0,s_y0_carry_i_4_n_0,s_y0_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s_y0_carry__0
       (.CI(s_y0_carry_n_0),
        .CO({NLW_s_y0_carry__0_CO_UNCONNECTED[3],s_y0_carry__0_n_1,s_y0_carry__0_n_2,s_y0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,i_a[6:4]}),
        .O(s_y02_in[7:4]),
        .S({s_y0_carry__0_i_1_n_0,s_y0_carry__0_i_2_n_0,s_y0_carry__0_i_3_n_0,s_y0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    s_y0_carry__0_i_1
       (.I0(i_a[7]),
        .I1(\r_y[7]_i_4_n_0 ),
        .O(s_y0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s_y0_carry__0_i_2
       (.I0(i_a[6]),
        .I1(s_b[6]),
        .O(s_y0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s_y0_carry__0_i_3
       (.I0(i_a[5]),
        .I1(s_b[5]),
        .O(s_y0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s_y0_carry__0_i_4
       (.I0(i_a[4]),
        .I1(s_b[4]),
        .O(s_y0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s_y0_carry_i_1
       (.I0(i_ctrlAluSub),
        .I1(io_bus[0]),
        .O(s_b[0]));
  LUT2 #(
    .INIT(4'h6)) 
    s_y0_carry_i_2
       (.I0(i_a[3]),
        .I1(s_b[3]),
        .O(s_y0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s_y0_carry_i_3
       (.I0(i_a[2]),
        .I1(s_b[2]),
        .O(s_y0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s_y0_carry_i_4
       (.I0(i_a[1]),
        .I1(s_b[1]),
        .O(s_y0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s_y0_carry_i_5
       (.I0(i_a[0]),
        .I1(i_ctrlAluSub),
        .O(s_y0_carry_i_5_n_0));
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
