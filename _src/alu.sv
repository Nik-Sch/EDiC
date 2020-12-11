module alu(
  input wire i_clk,
  input wire i_reset,


  input wire[7:0] i_a,
  input wire[7:0] i_b,
  output wire[7:0] o_y,

  output logic o_negative,
  output logic o_zero,

  input wire i_aluWr,
  input wire i_oe,
  input wire i_subShiftDir,
  input wire[1:0] i_aluOp
);
logic[7:0] s_b;
logic[7:0] s_y;
logic[7:0] r_y;
wire s_negative;
wire s_zero;
logic[7:0] s_shift1, s_shift2, s_a, s_shift3;


always @(posedge i_clk) begin
  if (i_aluWr) begin
    r_y <= s_y;
  end
  if (i_reset) begin // should not be needed in ttl
    o_zero <= 0;
    o_negative <= 0;
  end
end

transmitter inst_tx(
  .a(r_y),
  .b(o_y),
  .ce(i_oe)
);

assign s_negative = r_y[7];
assign s_zero = ~(r_y[7] | r_y[6] | r_y[5] | r_y[4] | r_y[3] | r_y[2] | r_y[1] | r_y[0]);

genvar i;
for (i = 0; i < 8; i++) begin
  assign s_b[i] = i_b[i] ^ i_subShiftDir;
end

always @* begin
  case (i_aluOp)
    2'b00: s_y <= i_a + s_b + i_subShiftDir;
    2'b01: s_y <= i_a & s_b;
    2'b10: s_y <= i_a ^ s_b;
    2'b11: begin
      s_a = i_subShiftDir ? {i_a[0], i_a[1], i_a[2], i_a[3], i_a[4], i_a[5], i_a[6], i_a[7]} : i_a;
      s_shift1 = i_b[0] ? s_a >> 1 : s_a;
      s_shift2 = i_b[1] ? s_shift1 >> 2 : s_shift1;
      s_shift3 = i_b[2] ? s_shift2 >> 4 : s_shift2;
      s_y <= i_subShiftDir ? {s_shift3[0], s_shift3[1], s_shift3[2], s_shift3[3], s_shift3[4], s_shift3[5], s_shift3[6], s_shift3[7]} : s_shift3;
      
      
    end
  endcase
end

endmodule