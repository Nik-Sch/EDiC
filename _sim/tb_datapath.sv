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

initial begin
end


datapath inst_datapath(
  .i_clk(clk),
  .i_reset(reset)
);

endmodule