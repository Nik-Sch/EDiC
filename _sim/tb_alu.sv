module tb_alu;

logic clk = 0;
always #(10/2) clk = ~clk;

logic i_sub = 0;
logic[7:0] i_a = 0;
logic[7:0] i_b = 0;
wire[7:0] o_y;
logic ce = 0;

wire o_negative;
wire o_zero;

logic[1:0] i_aluOp = 0;
logic i_shiftLeft = 0;

alu inst_alu(
  .i_sub(i_sub),
  .i_a(i_a),
  .i_b(i_b),
  .o_y(o_y),
  .ce(ce),
  .o_negative(o_negative),
  .o_zero(o_zero),
  .i_aluOp(i_aluOp),
  .i_shiftLeft(i_shiftLeft)
);

initial begin
  repeat(10) begin
    @(posedge clk);
  end

  i_a = 20;
  i_b = 22;
  i_aluOp = 2'b00;
  i_sub = 0;
  ce = 0;
  @(posedge clk);
  assert (o_y === 8'bzzzz_zzzz) else $error("ce is low but o_y is %0x", o_y);
  @(posedge clk);
  
  i_a = 20;
  i_b = 22;
  i_aluOp = 2'b00;
  i_sub = 0;
  ce = 1;
  @(posedge clk);
  assert (o_y === 42) else $error("%d + %d != %d", i_a, i_b, o_y);
  @(posedge clk);

  i_a = 200;
  i_b = 56;
  i_aluOp = 2'b00;
  i_sub = 0;
  ce = 1;
  @(posedge clk);
  assert (o_y === 0) else $error("%d + %d != %d", i_a, i_b, o_y);
  @(posedge clk);

  i_a = 42;
  i_b = 15;
  i_aluOp = 2'b00;
  i_sub = 1;
  ce = 1;
  @(posedge clk);
  assert (o_y === 27) else $error("%d - %d != %d", i_a, i_b, o_y);
  @(posedge clk);

  i_a = 42;
  i_b = 15;
  i_aluOp = 2'b01;
  i_sub = 0;
  ce = 1;
  @(posedge clk);
  assert (o_y === 10) else $error("%d & %d != %d", i_a, i_b, o_y);
  @(posedge clk);

  i_a = 'h2a;
  i_b = 'hf;
  i_aluOp = 2'b10;
  i_sub = 0;
  ce = 1;
  @(posedge clk);
  assert (o_y === 'h25) else $error("%d ^ %d != %d", i_a, i_b, o_y);
  @(posedge clk);

  i_a = 'h2a;
  i_b = 'h1;
  i_aluOp = 2'b11;
  i_sub = 0;
  i_shiftLeft = 1;
  ce = 1;
  @(posedge clk);
  assert (o_y === 'h54) else $error("%d << %d != %d", i_a, i_b, o_y);
  @(posedge clk);

  i_a = 'h2a;
  i_b = 'h3;
  i_aluOp = 2'b11;
  i_sub = 0;
  i_shiftLeft = 1;
  ce = 0;
  @(posedge clk);
  assert (o_y === 8'bzzzz_zzzz) else $error("ce is low but o_y is %0x", o_y);
  @(posedge clk);

  i_a = 'h2a;
  i_b = 'h3;
  i_aluOp = 2'b11;
  i_sub = 0;
  i_shiftLeft = 1;
  ce = 1;
  @(posedge clk);
  assert (o_y === 'h50) else $error("%d << %d != %d", i_a, i_b, o_y);
  @(posedge clk);

  i_a = 'h2a;
  i_b = 'h5;
  i_aluOp = 2'b11;
  i_sub = 0;
  i_shiftLeft = 1;
  @(posedge clk);
  assert (o_y === 'h40) else $error("%d << %d != %d", i_a, i_b, o_y);
  @(posedge clk);

  i_a = 'h2a;
  i_b = 'h1;
  i_aluOp = 2'b11;
  i_sub = 0;
  i_shiftLeft = 0;
  @(posedge clk);
  assert (o_y === 'h15) else $error("%d >> %d != %d", i_a, i_b, o_y);
  @(posedge clk);
end

endmodule