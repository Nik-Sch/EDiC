module control(
  input wire i_clk,
  input wire i_reset,

  input wire[7:0] i_instrCode,

  output wire[14:0] o_decodeAddr,
  input wire[23:0] i_decodeData,

  input wire i_flagNegative,
  input wire i_flagNZero,

  // alu
  output wire[1:0] o_ctrlAluOp,
  output wire o_ctrlAluSub,
  output wire o_ctrlAluYNWE,
  output wire o_ctrlAluNOE,
  // regset
  output wire o_ctrlReg0NWE,
  output wire o_ctrlReg1NWE,
  output wire o_ctrlRegAluSel,
  output wire o_ctrlRegBusSel,
  output wire o_ctrlRegBusNOE,
  // memory
  output wire o_ctrlMemPCIncrN,
  output wire o_ctrlMemPCLoadN,
  output wire o_ctrlMemSPUp,
  output wire o_ctrlMemSPNEn,
  output wire o_ctrlMemInstrNWE,
  output wire o_ctrlMemInstrNOE,
  output wire o_ctrlMemMar0NWE,
  output wire o_ctrlMemMar1NWE,
  output wire o_ctrlMemInstrImmToRam,
  output wire o_ctrlMemRamNWE,
  output wire o_ctrlMemRamNOE,
  // IO: Todo

  output wire o_ctrlHlt
);
reg[2:0] r_step;
reg[7:0] r_instructionFallingEdge;

wire s_stepEqual1N;

assign s_stepEqual1N = (~r_step[0] | r_step[1]) | r_step[2];


assign o_decodeAddr = {2'b00, i_flagNZero, i_flagNegative, r_instructionFallingEdge, r_step};

assign o_ctrlAluSub = r_instructionFallingEdge[0];
assign o_ctrlAluOp = r_instructionFallingEdge[2:1];
assign o_ctrlAluYNWE = i_decodeData[0];
assign o_ctrlAluNOE = i_decodeData[1];
assign o_ctrlReg0NWE = i_decodeData[2];
assign o_ctrlReg1NWE = i_decodeData[3];
assign o_ctrlRegAluSel = i_decodeData[4];
assign o_ctrlRegBusSel = i_decodeData[5];
assign o_ctrlRegBusNOE = i_decodeData[6];
assign o_ctrlMemPCIncrN = s_stepEqual1N;
assign o_ctrlMemPCLoadN = i_decodeData[7];
assign o_ctrlMemSPUp = i_decodeData[8];
assign o_ctrlMemSPNEn = i_decodeData[9];
assign o_ctrlMemInstrNWE = i_decodeData[10];
assign o_ctrlMemInstrNOE = i_decodeData[11];
assign o_ctrlMemMar0NWE = i_decodeData[12];
assign o_ctrlMemMar1NWE = i_decodeData[13];
assign o_ctrlMemInstrImmToRam = i_decodeData[14];
assign o_ctrlMemRamNWE = i_decodeData[15];
assign o_ctrlMemRamNOE = i_decodeData[16];

always @(negedge i_clk) begin
  r_step <= r_step + 1;
  r_instructionFallingEdge <= i_instrCode;

  if (i_reset) begin
    r_step <= 0;
  end
end

endmodule