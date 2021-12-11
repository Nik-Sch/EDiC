// 2 * 4 to 1 mux https://www.ti.com/lit/ds/symlink/sn74ls153.pdf
module ic74LS153(
input wire port1,
input wire port2,
input wire port3,
input wire port4,
input wire port5,
input wire port6,
output wire port7,
input wire port8,
output wire port9,
input wire port10,
input wire port11,
input wire port12,
input wire port13,
input wire port14,
input wire port15,
input wire port16
);

wire [1:0] address;
wire [3:0] data1;
wire [3:0] data2;

assign address = {port2, port14};
assign data1 = {port3, port4, port5, port6};
assign data2 = {port13, port12, port11, port10};


always @* begin
  port7 <= data1[address];
  port9 <= data2[address];
  if (port1) begin
    port5 <= 0;
  end
end

endmodule