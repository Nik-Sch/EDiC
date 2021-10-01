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

logic[7:0] i_a = 0;
logic[7:0] i_b = 0;
wire[7:0] o_y;
logic i_oe = 0;

wire o_negative;
wire o_nzero;
wire o_flagOverflow;
wire o_flagCarry;

logic[1:0] i_aluOp = 0;
logic i_sub = 0;

alu inst_alu(
  .i_clk(clk),
  .i_reset(reset),

  .i_a(i_a),
  .i_bus(i_b),
  .o_bus(o_y),

  .i_ctrlAluNOE(~i_oe),
  .i_ctrlAluOp(i_aluOp),
  .i_ctrlAluSub(i_sub),
  .i_ctrlAluYNWE(1'b0),

  .o_flagNegative(o_negative),
  .o_flagNZero(o_nzero),
  .o_flagOverflow(o_flagOverflow),
  .o_flagCarry(o_flagCarry)
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
  assert (o_y === 8'bzzzz_zzzz) else $fatal("i_oe is low but o_y is %0h", o_y);
  @(negedge clk);
  
  i_a = 'h14;
  i_b = 'h16;
  i_aluOp = 2'b00;
  i_sub = 0;
  i_oe = 1;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 42) else $fatal("%0h + %0h != %0h", i_a, i_b, o_y);
  @(negedge clk);

  i_a = 'hc8;
  i_b = 'h38;
  i_aluOp = 2'b00;
  i_sub = 0;
  i_oe = 1;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 0) else $fatal("%0h + %0h != %0h", i_a, i_b, o_y);
  assert (o_flagCarry == 1) else $fatal("carry should be 1");
  @(negedge clk);

  i_a = 'h48;
  i_b = 'h4f;
  i_aluOp = 2'b00;
  i_sub = 0;
  i_oe = 1;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 'h97) else $fatal("%0h + %0h != %0h", i_a, i_b, o_y);
  assert (o_flagOverflow == 1) else $fatal("overflow should be 1");
  @(negedge clk);

  i_a = 'hc8;
  i_b = 'h8a;
  i_aluOp = 2'b00;
  i_sub = 0;
  i_oe = 1;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 'h52) else $fatal("%0h + %0h != %0h", i_a, i_b, o_y);
  assert (o_flagOverflow == 1) else $fatal("overflow should be 1");
  @(negedge clk);

  i_a = 'hf8;
  i_b = 'hff;
  i_aluOp = 2'b00;
  i_sub = 0;
  i_oe = 1;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 'hf7) else $fatal("%0h + %0h != %0h", i_a, i_b, o_y);
  assert (o_flagOverflow == 0) else $fatal("overflow should be 0");
  @(negedge clk);

  i_a = 'h2a;
  i_b = 'h0f;
  i_aluOp = 2'b00;
  i_sub = 1;
  i_oe = 1;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 27) else $fatal("%0h - %0h != %0h", i_a, i_b, o_y);
  @(negedge clk);

  i_a = 'h2a;
  i_b = 'hf;
  i_aluOp = 2'b01;
  i_sub = 0;
  i_oe = 1;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 10) else $fatal("%0h & %0h != %0h", i_a, i_b, o_y);
  @(negedge clk);

  i_a = 'h2a;
  i_b = 'hf;
  i_aluOp = 2'b10;
  i_sub = 0;
  i_oe = 1;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 'h25) else $fatal("%0h ^ %0h != %0h", i_a, i_b, o_y);
  @(negedge clk);

  i_a = 'h2a;
  i_b = 'h1;
  i_aluOp = 2'b11;
  i_sub = 1;
  i_oe = 1;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 'h54) else $fatal("%0h << %0h != %0h", i_a, i_b, o_y);
  @(negedge clk);

  i_a = 'h2a;
  i_b = 'h3;
  i_aluOp = 2'b11;
  i_sub = 1;
  i_oe = 0;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 8'bzzzz_zzzz) else $fatal("i_oe is low but o_y is %0x", o_y);
  @(negedge clk);

  i_a = 'h2a;
  i_b = 'h3;
  i_aluOp = 2'b11;
  i_sub = 1;
  i_oe = 1;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 'h50) else $fatal("%0h << %0h != %0h", i_a, i_b, o_y);
  @(negedge clk);

  i_a = 'h2a;
  i_b = 'h5;
  i_aluOp = 2'b11;
  i_sub = 1;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 'h40) else $fatal("%0h << %0h != %0h", i_a, i_b, o_y);
  @(negedge clk);

  i_a = 'h2a;
  i_b = 'h1;
  i_aluOp = 2'b11;
  i_sub = 0;
  @(negedge clk);
  @(negedge clk);
  assert (o_y === 'h15) else $fatal("%0h >> %0h != %0h", i_a, i_b, o_y);
  @(negedge clk);

  $display("All tests successful.");
  $finish();
end

endmodule