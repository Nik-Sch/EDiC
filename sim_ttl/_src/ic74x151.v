// 8 to 1 mux https://www.ti.com/lit/ds/symlink/sn74ls151.pdf
module ic74x151(
input wire port1,
input wire port2,
input wire port3,
input wire port4,
output reg port5,
output wire port6,
input wire port7,
input wire port8,
input wire port9,
input wire port10,
input wire port11,
input wire port12,
input wire port13,
input wire port14,
input wire port15,
input wire port16
);
wire [2:0] address;
wire [7:0] data;

assign address = {port9, port10, port11};
assign data = {port12, port13, port14, port15, port1, port2, port3, port4};

assign port6 = ~port5;

always @* begin
  port5 <= data[address];
  if (port7) begin
    port5 <= 1;
  end
end

endmodule