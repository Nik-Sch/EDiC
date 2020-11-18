module control(
  input wire i_clk,
  input wire i_reset,

  input wire i_aluFlagN,
  input wire i_aluFlagZ,

  input wire[7:0] i_instruction,
  output wire[7:0] o_immediate,

  output wire o_ctrlAluOE,
  output wire o_ctrlAluSubShiftDir,
  output wire[1:0] o_ctrlAluOp,
  output wire o_ctrlAluBWr,

  output wire o_ctrlRegWr0,
  output wire o_ctrlRegWr1,
  output wire o_ctrlRegBusSel,
  output wire o_ctrlRegBusEn,
  output wire o_ctrlAluSel,

  output wire o_ctrlRamAddressEn,
  output wire o_ctrlRamWriteEn,
  output wire o_ctrlRamReadDataSelect,
  output wire o_ctrlRamOE,

  output wire o_ctrlLoadPC,
  output wire o_ctrlIncrPC,
  output wire o_ctrlPCOe
);
logic[2:0] r_step;
logic[7:0] r_instruction;
logic[15:0] s_controlSignals;

dist_mem_gen_1 inst_controlStore (
  .a({i_aluFlagZ, i_aluFlagN, r_instruction, r_step[2:0]}),
  .spo(s_controlSignals)
);

assign {o_ctrlAluOE, o_ctrlAluSubShiftDir, o_ctrlAluOp,
o_ctrlAluBWr, o_ctrlRegWr0, o_ctrlRegWr1, o_ctrlRegBusSel,
o_ctrlRegBusEn, o_ctrlAluSel, o_ctrlRamAddressEn, o_ctrlRamWriteEn,
o_ctrlRamOE, o_ctrlLoadPC, o_ctrlIncrPC, s_immOut} = s_controlSignals;

assign o_ctrlRamReadDataSelect = r_step <= 1;
assign o_ctrlPCOe = r_step == 0;

transmitter inst_tx(
  .a({5'b0, r_instruction[5-:3]}),
  .b(o_immediate),
  .ce(s_immOut)
);

always @(posedge i_clk) begin
  r_step <= r_step + 1;
  if (r_step === 2) begin
    r_instruction <= i_instruction;
  end
  // if (r_step === 4) begin
  //   r_step <= 0;
  // end

  if (i_reset) begin
    r_step <= 0;
    r_instruction <= 0;
  end
end

endmodule