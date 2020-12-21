module control(
  input wire i_clk,
  input wire i_reset,

  input wire i_aluFlagN,
  input wire i_aluFlagNZ,

  input wire[7:0] i_instruction,
  output wire[7:0] o_immediate,

  output wire o_ctrlHlt,

  output wire o_ctrlAluNOE,
  output wire o_ctrlAluSubShiftDir,
  output wire[1:0] o_ctrlAluOp,
  output wire o_ctrlAluWr,

  output wire o_ctrlRegWr0,
  output wire o_ctrlRegWr1,
  output wire o_ctrlRegBusSel,
  output wire o_ctrlRegNBusEn,
  output wire o_ctrlAluSel,

  output wire o_ctrlRamAddressEn,
  output wire o_ctrlRamWriteNEn,
  output wire o_ctrlRamReadDataSelect,
  output wire o_ctrlRamOE,

  output wire o_ctrlLoadPC,
  output wire o_ctrlIncrPC,
  output wire o_ctrlPCNOe,
  output wire o_ctrlWrOut,
  output wire o_ctrlInNoe
);
logic[2:0] r_step;
logic[7:0] r_instruction;
logic[15:0] s_controlSignals;

dist_mem_gen_1 inst_controlStore (
  .a({i_aluFlagNZ, i_aluFlagN, r_instruction, r_step[2:0]}),
  .spo(s_controlSignals)
);

assign o_ctrlAluSubShiftDir = r_instruction[0];
assign o_ctrlAluOp = r_instruction[2:1];

assign {o_ctrlAluNOE, o_ctrlAluWr, o_ctrlRegWr0, o_ctrlRegWr1,
o_ctrlRegBusSel, o_ctrlRegNBusEn, o_ctrlAluSel, o_ctrlRamAddressEn,
o_ctrlRamWriteNEn, o_ctrlRamOE, o_ctrlLoadPC, s_nImmOut, o_ctrlWrOut,
o_ctrlPCNOe, o_ctrlInNoe
} = s_controlSignals[15:1];

assign r_stepEqual1 = ~((~r_step[0] | r_step[1]) | r_step[2]);

assign o_ctrlRamReadDataSelect = r_stepEqual1;
assign o_ctrlIncrPC = r_stepEqual1;
// assign o_ctrlPCNOe = (r_step[0] | r_step[1]) | r_step[2]; // at step 0
assign o_ctrlHlt = & r_instruction;

transmitter inst_tx(
  .a({5'b0, r_instruction[5-:3]}),
  .b(o_immediate),
  .noe(s_nImmOut)
);

always @(posedge i_clk) begin
  r_step <= r_step + 1;
  if (r_stepEqual1) begin
    r_instruction <= i_instruction;
  end
  // if (r_step === 4) begin
  //   r_step <= 0;
  // end

  if (i_reset) begin
    r_step <= 0;
    r_instruction <= 0; // should not be needed in ttl
  end
end

endmodule