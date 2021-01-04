module tb_datapath;

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

logic s_button = 0;
initial begin
  s_button = 0;
  repeat(50) begin
    @(negedge clk);
  end
  s_button = 1;
  repeat(10) begin
    @(negedge clk);
  end
  s_button = 0;
end


datapath inst_datapath(
  .i_clk(clk),
  .i_reset(reset),
  .i_button(s_button)
);

endmodule