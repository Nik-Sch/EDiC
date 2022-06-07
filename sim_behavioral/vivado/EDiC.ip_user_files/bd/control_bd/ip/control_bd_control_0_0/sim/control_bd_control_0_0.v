// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:control:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module control_bd_control_0_0 (
  i_clk,
  i_reset,
  i_instrCode,
  o_decodeAddr,
  i_decodeData,
  i_halt,
  i_flagNegative,
  i_flagZero,
  i_flagCarry,
  i_flagOverflow,
  o_ctrlAluOp,
  o_ctrlAluSub,
  o_ctrlAluYNWE,
  o_ctrlAluNOE,
  o_ctrlReg0NWE,
  o_ctrlReg1NWE,
  o_ctrlRegAluSel,
  o_ctrlReg0BusNOE,
  o_ctrlReg1BusNOE,
  o_ctrlMemPCLoadN,
  o_ctrlMemPCNEn,
  o_ctrlMemPCFromImm,
  o_ctrlMemSPUp,
  o_ctrlMemSPNEn,
  o_ctrlMemInstrNWE,
  o_ctrlMemInstrNOE,
  o_ctrlMemMar0NWE,
  o_ctrlMemMar1NWE,
  o_ctrlMemInstrImmToRamAddr,
  o_ctrlMemRamNWE,
  o_ctrlMemRamNOE,
  o_ctrlMemPCToRamN,
  o_ctrlInstrFinishedN,
  o_dbgStep
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN control_bd_i_nclk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
input wire i_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_reset RST" *)
input wire i_reset;
input wire [7 : 0] i_instrCode;
output wire [14 : 0] o_decodeAddr;
input wire [23 : 0] i_decodeData;
input wire i_halt;
input wire i_flagNegative;
input wire i_flagZero;
input wire i_flagCarry;
input wire i_flagOverflow;
output wire [1 : 0] o_ctrlAluOp;
output wire o_ctrlAluSub;
output wire o_ctrlAluYNWE;
output wire o_ctrlAluNOE;
output wire o_ctrlReg0NWE;
output wire o_ctrlReg1NWE;
output wire o_ctrlRegAluSel;
output wire o_ctrlReg0BusNOE;
output wire o_ctrlReg1BusNOE;
output wire o_ctrlMemPCLoadN;
output wire o_ctrlMemPCNEn;
output wire o_ctrlMemPCFromImm;
output wire o_ctrlMemSPUp;
output wire o_ctrlMemSPNEn;
output wire o_ctrlMemInstrNWE;
output wire o_ctrlMemInstrNOE;
output wire o_ctrlMemMar0NWE;
output wire o_ctrlMemMar1NWE;
output wire o_ctrlMemInstrImmToRamAddr;
output wire o_ctrlMemRamNWE;
output wire o_ctrlMemRamNOE;
output wire o_ctrlMemPCToRamN;
output wire o_ctrlInstrFinishedN;
output wire [2 : 0] o_dbgStep;

  control inst (
    .i_clk(i_clk),
    .i_reset(i_reset),
    .i_instrCode(i_instrCode),
    .o_decodeAddr(o_decodeAddr),
    .i_decodeData(i_decodeData),
    .i_halt(i_halt),
    .i_flagNegative(i_flagNegative),
    .i_flagZero(i_flagZero),
    .i_flagCarry(i_flagCarry),
    .i_flagOverflow(i_flagOverflow),
    .o_ctrlAluOp(o_ctrlAluOp),
    .o_ctrlAluSub(o_ctrlAluSub),
    .o_ctrlAluYNWE(o_ctrlAluYNWE),
    .o_ctrlAluNOE(o_ctrlAluNOE),
    .o_ctrlReg0NWE(o_ctrlReg0NWE),
    .o_ctrlReg1NWE(o_ctrlReg1NWE),
    .o_ctrlRegAluSel(o_ctrlRegAluSel),
    .o_ctrlReg0BusNOE(o_ctrlReg0BusNOE),
    .o_ctrlReg1BusNOE(o_ctrlReg1BusNOE),
    .o_ctrlMemPCLoadN(o_ctrlMemPCLoadN),
    .o_ctrlMemPCNEn(o_ctrlMemPCNEn),
    .o_ctrlMemPCFromImm(o_ctrlMemPCFromImm),
    .o_ctrlMemSPUp(o_ctrlMemSPUp),
    .o_ctrlMemSPNEn(o_ctrlMemSPNEn),
    .o_ctrlMemInstrNWE(o_ctrlMemInstrNWE),
    .o_ctrlMemInstrNOE(o_ctrlMemInstrNOE),
    .o_ctrlMemMar0NWE(o_ctrlMemMar0NWE),
    .o_ctrlMemMar1NWE(o_ctrlMemMar1NWE),
    .o_ctrlMemInstrImmToRamAddr(o_ctrlMemInstrImmToRamAddr),
    .o_ctrlMemRamNWE(o_ctrlMemRamNWE),
    .o_ctrlMemRamNOE(o_ctrlMemRamNOE),
    .o_ctrlMemPCToRamN(o_ctrlMemPCToRamN),
    .o_ctrlInstrFinishedN(o_ctrlInstrFinishedN),
    .o_dbgStep(o_dbgStep)
  );
endmodule
