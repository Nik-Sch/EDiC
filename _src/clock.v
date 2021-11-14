`timescale 1ns/1ps
module clock (
  input wire i_oszClk,

  output wire o_clk,
  output wire o_clkn,
  output wire o_resetn,

  // 1 is closed, 0 is open
  input wire i_btnStep,
  input wire i_swInstrNCycle,
  input wire i_swStepNRun,
  input wire i_swEnableBreakpoint,
  input wire i_btnReset,

  input wire i_breakpointHitN,
  input wire i_ctrlInstrFinishedN,
  output wire o_breakpointEnableN,
  output reg o_halt
);

assign o_clk = ~i_oszClk;
assign o_clkn = ~o_clk;

reg resetn_init = 0;
initial begin
  resetn_init = 0;
  #(1000) resetn_init = 1; // 5 clock cycled (5MHz)
end
assign o_resetn = i_btnReset ? 0 : resetn_init;

reg r_step1;
reg r_step2;
reg r_step3;
reg r_instrNCycle1;
reg r_instrNCycle2;
reg r_stepNRun1;
reg r_stepNRun2;
reg r_stepToHalt;
reg r_instrToHalt;
reg [1:0] r_haltSelect;

assign o_breakpointEnableN = ~i_swEnableBreakpoint;

always @* begin
  case (r_haltSelect)
    2'b00: o_halt <= i_breakpointHitN;
    2'b01: o_halt <= i_breakpointHitN;
    2'b10: o_halt <= r_stepToHalt;
    2'b11: o_halt <= r_instrToHalt;
  endcase
end

always @(posedge o_clk) begin
  r_step1 <= ~i_btnStep;
  r_step2 <= r_step1;
  r_step3 <= r_step2;

  r_instrNCycle1 <= ~i_swInstrNCycle;
  r_instrNCycle2 <= r_instrNCycle1;
  r_stepNRun1 <= ~i_swStepNRun;
  r_stepNRun2 <= r_stepNRun1;

  r_stepToHalt <= r_step2 & ~r_step3;
  r_instrToHalt <= ((r_instrToHalt | r_stepToHalt) & i_ctrlInstrFinishedN) | (~r_instrNCycle2);

  r_haltSelect[0] <= r_instrNCycle2;
  r_haltSelect[1] <= r_stepNRun1;

  if (~o_resetn) begin
    r_instrToHalt <= 0;
  end
end

endmodule