module tristatenet #(
  parameter INPUT_COUNT = 2
)
(
  input wire [INPUT_COUNT-1:0] i_data,
  input wire [INPUT_COUNT-1:0] i_noe,
  output reg o_data,
  output reg o_noe
);

initial begin
  //shall print %t with scaled in ns (-9), with 2 precision digits, and would print the " ns" string
  $timeformat(-9, 2, "ns", 20);
end

integer i;
reg [INPUT_COUNT-1:0] ones;

always @* begin
  o_data <= 1'b1;
  ones = 0;
  for (i = 0; i < INPUT_COUNT; i = i + 1) begin
    if (i_noe[i] === 0) begin
      o_data <= i_data[i];
      ones = ones + 1;
    end
  end
  if (ones > 1) begin
    o_data <= 1'bx;
    $display("More than one output enable is high (%m) at %0t.", $time);
    // $stop;
  end
  o_noe <= !(ones == 1);
end

endmodule