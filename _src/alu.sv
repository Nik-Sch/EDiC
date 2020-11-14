module alu(
  input wire i_sub,
  input wire[7:0] i_a,
  input wire[7:0] i_b,
  output wire[7:0] o_y,
  input wire i_oe,

  output wire o_negative,
  output wire o_zero,

  input wire[1:0] i_aluOp,
  input wire i_shiftLeft
);
logic[7:0] s_shift1, s_shift2;
logic[7:0] s_b;
logic[7:0] s_y;

transceiver inst_tx(
  .a(s_y),
  .b(o_y),
  .ce(i_oe)
);

assign o_negative = s_y[7];
assign o_zero = ~(s_y[7] | s_y[6] | s_y[5] | s_y[4] | s_y[3] | s_y[2] | s_y[1] | s_y[0]);
assign s_b = i_sub ? ~i_b : i_b;

always @(i_a, i_b, i_aluOp, i_sub) begin
  case (i_aluOp)
    2'b00: s_y <= i_a + s_b + i_sub;
    2'b01: s_y <= i_a & i_b;
    2'b10: s_y <= i_a ^ i_b;
    2'b11: begin
      if (i_shiftLeft) begin
        s_shift1 = i_b[0] ? i_a << 1 : i_a;
        s_shift2 = i_b[1] ? s_shift1 << 2 : s_shift1;
        s_y      = i_b[2] ? s_shift2 << 4 : s_shift2;
      end else begin
        s_shift1 = i_b[0] ? i_a >> 1 : i_a;
        s_shift2 = i_b[1] ? s_shift1 >> 2 : s_shift1;
        s_y      = i_b[2] ? s_shift2 >> 4 : s_shift2;
      end
      
    end
  endcase
end

endmodule