module alu(
  input wire i_clk,
  input wire i_reset,


  input wire[7:0] i_a,
  input wire [7:0] i_bus,
  output wire [7:0] o_bus,

  output wire o_flagNegative,
  output wire o_flagNZero,

  input wire i_ctrlAluYNWE,
  input wire i_ctrlAluNOE,
  input wire i_ctrlAluSub,
  input wire[1:0] i_ctrlAluOp
);
wire[7:0] s_b;
reg[7:0] s_y;
reg[7:0] r_y;
reg[7:0] s_shift1, s_shift2, s_a, s_shift3;


always @(posedge i_clk) begin
  if (!i_ctrlAluYNWE) begin
    r_y <= s_y;
  end
  if (i_reset) begin
    r_y <= 0;
  end
end

transmitter inst_tx(
  .a(r_y),
  .b(o_bus),
  .noe(i_ctrlAluNOE)
);

assign o_flagNegative = r_y[7];
assign o_flagNZero = | r_y;

genvar i;
for (i = 0; i < 8; i=i+1) begin
  assign s_b[i] = i_bus[i] ^ i_ctrlAluSub;
end

always @* begin
  case (i_ctrlAluOp)
    2'b00: s_y <= i_a + s_b + i_ctrlAluSub;
    2'b01: s_y <= i_a & s_b;
    2'b10: s_y <= i_a ^ s_b;
    2'b11: begin
      s_a = i_ctrlAluSub ? {i_a[0], i_a[1], i_a[2], i_a[3], i_a[4], i_a[5], i_a[6], i_a[7]} : i_a;
      s_shift1 = i_bus[0] ? s_a >> 1 : s_a;
      s_shift2 = i_bus[1] ? s_shift1 >> 2 : s_shift1;
      s_shift3 = i_bus[2] ? s_shift2 >> 4 : s_shift2;
      s_y <= i_ctrlAluSub ? {s_shift3[0], s_shift3[1], s_shift3[2], s_shift3[3], s_shift3[4], s_shift3[5], s_shift3[6], s_shift3[7]} : s_shift3;
    end
  endcase
end

endmodule