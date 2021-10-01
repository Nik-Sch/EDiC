module alu(
  input wire i_clk,
  input wire i_reset,


  input wire[7:0] i_a,
  input wire [7:0] i_bus,
  output wire [7:0] o_bus,

  output reg o_flagNegative,
  output reg o_flagNZero,
  output reg o_flagOverflow,
  output reg o_flagCarry,

  input wire i_ctrlAluYNWE,
  input wire i_ctrlAluNOE,
  input wire i_ctrlAluSub,
  input wire[1:0] i_ctrlAluOp
);
wire[7:0] s_b;

wire [8:0] s_cin;
wire [7:0] s_yAdder;
wire [7:0] s_yAnd;
wire [7:0] s_yXor;
wire [7:0] s_yShift;

wire[7:0] s_shift1, s_shift2, s_a, s_shift3;

reg[7:0] r_y;
reg[7:0] s_y;


always @(posedge i_clk) begin
  if (!i_ctrlAluYNWE) begin
    r_y <= s_y;
    o_flagNegative <= s_y[7];
    o_flagNZero <= s_y != 8'h00;
    o_flagCarry <= s_cin[8];
    o_flagOverflow <= s_cin[7] ^ s_cin[8];
  end
  if (i_reset) begin
    r_y <= 0;
    o_flagNegative <= 0;
    o_flagNZero <= 0;
    o_flagCarry <= 0;
    o_flagOverflow <= 0;
  end
end

transmitter inst_tx(
  .a(r_y),
  .b(o_bus),
  .noe(i_ctrlAluNOE)
);

genvar i;
for (i = 0; i < 8; i=i+1) begin
  assign s_b[i] = i_bus[i] ^ i_ctrlAluSub;
end

assign s_cin[0] = i_ctrlAluSub;
for (i = 0; i < 8; i=i+1) begin
  assign s_yXor[i] = i_a[i] ^ s_b[i];
  assign s_yAnd[i] = i_a[i] & s_b[i];
  assign s_yAdder[i] = s_cin[i] ^ s_yXor[i];
  assign s_cin[i + 1] = s_yAnd[i] | (s_cin[i] & s_yXor[i]);
end

assign s_a = i_ctrlAluSub ? {i_a[0], i_a[1], i_a[2], i_a[3], i_a[4], i_a[5], i_a[6], i_a[7]} : i_a;
assign s_shift1 = i_bus[0] ? s_a >> 1 : s_a;
assign s_shift2 = i_bus[1] ? s_shift1 >> 2 : s_shift1;
assign s_shift3 = i_bus[2] ? s_shift2 >> 4 : s_shift2;
assign s_yShift = i_ctrlAluSub ? {s_shift3[0], s_shift3[1], s_shift3[2], s_shift3[3], s_shift3[4], s_shift3[5], s_shift3[6], s_shift3[7]} : s_shift3;

always @* begin
  case (i_ctrlAluOp)
    2'b00: s_y <= s_yAdder;
    2'b01: s_y <= s_yAnd;
    2'b10: s_y <= s_yXor;
    2'b11: s_y <= s_yShift;
  endcase
end

endmodule