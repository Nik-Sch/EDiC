module tb_alu;

logic clk = 0;
always #(10/2) clk = ~clk;
logic reset = 1;
initial begin
  reset = 1;
  repeat(10) begin
    @(posedge clk);
  end
  reset = 0;
end

logic i_sub = 0;
logic[7:0] i_a = 0;
logic[7:0] i_b = 0;
logic i_bWr = 1;
wire[7:0] o_y;
logic i_oe = 0;

wire o_negative;
wire o_zero;

logic[1:0] i_aluOp = 0;
logic i_shiftLeft = 0;

alu inst_alu(
  .i_clk(clk),
  .i_reset(reset),
  .i_sub(i_sub),
  .i_a(i_a),
  .i_b(i_b),
  .i_bWr(i_bWr),
  .o_y(o_y),
  .i_oe(i_oe),
  .o_negative(o_negative),
  .o_zero(o_zero),
  .i_aluOp(i_aluOp),
  .i_shiftLeft(i_shiftLeft)
);

initial begin
  repeat(10) begin
    @(negedge clk);
  end

  i_a = 'h14;
  i_b = 'h16;
  i_aluOp = 2'b00;
  i_sub = 0;
  i_oe = 0;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 8'bzzzz_zzzz) else $error("i_oe is low but o_y is %0h", o_y);
  @(negedge clk);
  
  i_a = 'h14;
  i_b = 'h16;
  i_aluOp = 2'b00;
  i_sub = 0;
  i_oe = 1;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 42) else $error("%0h + %0h != %0h", i_a, i_b, o_y);
  @(negedge clk);

  i_a = 'hc8;
  i_b = 'h38;
  i_aluOp = 2'b00;
  i_sub = 0;
  i_oe = 1;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 0) else $error("%0h + %0h != %0h", i_a, i_b, o_y);
  @(negedge clk);

  i_a = 'h2a;
  i_b = 'hf;
  i_aluOp = 2'b00;
  i_sub = 1;
  i_oe = 1;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 27) else $error("%0h - %0h != %0h", i_a, i_b, o_y);
  @(negedge clk);

  i_a = 'h2a;
  i_b = 'hf;
  i_aluOp = 2'b01;
  i_sub = 0;
  i_oe = 1;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 10) else $error("%0h & %0h != %0h", i_a, i_b, o_y);
  @(negedge clk);

  i_a = 'h2a;
  i_b = 'hf;
  i_aluOp = 2'b10;
  i_sub = 0;
  i_oe = 1;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 'h25) else $error("%0h ^ %0h != %0h", i_a, i_b, o_y);
  @(negedge clk);

  i_a = 'h2a;
  i_b = 'h1;
  i_aluOp = 2'b11;
  i_sub = 0;
  i_shiftLeft = 1;
  i_oe = 1;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 'h54) else $error("%0h << %0h != %0h", i_a, i_b, o_y);
  @(negedge clk);

  i_a = 'h2a;
  i_b = 'h3;
  i_aluOp = 2'b11;
  i_sub = 0;
  i_shiftLeft = 1;
  i_oe = 0;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 8'bzzzz_zzzz) else $error("i_oe is low but o_y is %0x", o_y);
  @(negedge clk);

  i_a = 'h2a;
  i_b = 'h3;
  i_aluOp = 2'b11;
  i_sub = 0;
  i_shiftLeft = 1;
  i_oe = 1;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 'h50) else $error("%0h << %0h != %0h", i_a, i_b, o_y);
  @(negedge clk);

  i_a = 'h2a;
  i_b = 'h5;
  i_aluOp = 2'b11;
  i_sub = 0;
  i_shiftLeft = 1;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 'h40) else $error("%0h << %0h != %0h", i_a, i_b, o_y);
  @(negedge clk);

  i_a = 'h2a;
  i_b = 'h1;
  i_aluOp = 2'b11;
  i_sub = 0;
  i_shiftLeft = 0;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 'h15) else $error("%0h >> %0h != %0h", i_a, i_b, o_y);
  @(negedge clk);
end

endmodule