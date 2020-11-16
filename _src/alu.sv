module alu(
  input wire i_clk,
  input wire i_reset,


  input wire[7:0] i_a,
  input wire[7:0] i_b,
  output wire[7:0] o_y,

  output logic o_negative,
  output logic o_zero,

  input wire i_bWr,
  input wire i_oe,
  input wire i_subShiftDir,
  input wire[1:0] i_aluOp
);
logic[7:0] s_shift1, s_shift2;
logic[7:0] s_b;
logic[7:0] r_b;
logic[7:0] s_y;
wire s_negative;
wire s_zero;


always @(posedge i_clk) begin
  if (i_bWr) begin
    r_b <= i_b;
  end
  if (i_oe) begin
    o_zero <= s_zero;
    o_negative <= s_negative;
  end
  if (i_reset) begin
    r_b <= 0;
    o_zero <= 0;
    o_negative <= 0;
  end
end

transmitter inst_tx(
  .a(s_y),
  .b(o_y),
  .ce(i_oe)
);

assign s_negative = s_y[7];
assign s_zero = ~(s_y[7] | s_y[6] | s_y[5] | s_y[4] | s_y[3] | s_y[2] | s_y[1] | s_y[0]);

genvar i;
for (i = 0; i < 8; i++) begin
  assign s_b[i] = r_b[i] ^ i_subShiftDir;
end

always @* begin
  case (i_aluOp)
    2'b00: s_y <= i_a + s_b + i_subShiftDir;
    2'b01: s_y <= i_a & r_b;
    2'b10: s_y <= i_a ^ r_b;
    2'b11: begin
      if (i_subShiftDir) begin
        s_shift1 <= r_b[0] ? i_a << 1 : i_a;
        s_shift2 <= r_b[1] ? s_shift1 << 2 : s_shift1;
        s_y      <= r_b[2] ? s_shift2 << 4 : s_shift2;
      end else begin
        s_shift1 <= r_b[0] ? i_a >> 1 : i_a;
        s_shift2 <= r_b[1] ? s_shift1 >> 2 : s_shift1;
        s_y      <= r_b[2] ? s_shift2 >> 4 : s_shift2;
      end
      
    end
  endcase
end

endmodule