// synchronous 8 bit cascaded counter with loading https://www.ti.com/lit/ds/symlink/sn74als867a.pdf
module ic74AS867(
input wire port1,
input wire port2,
input wire port3,
input wire port4,
input wire port5,
input wire port6,
input wire port7,
input wire port8,
input wire port9,
input wire port10,
input wire port11,
input wire port12,
output reg port13,
input wire port14,
output wire port15,
output wire port16,
output wire port17,
output wire port18,
output wire port19,
output wire port20,
output wire port21,
output wire port22,
input wire port23,
input wire port24
);

wire [1:0] S;
wire enpN;
wire entN;
reg [7:0] r_data;
wire [7:0] s_data;
wire asyncResetN;

assign S = {port2, port1};
assign asyncResetN = S[0] | S[1];
assign enpN = port23;
assign entN = port11;
assign s_data = {port10, port9, port8, port7, port6, port5, port4, port3};
assign port22 = r_data[0];
assign port21 = r_data[1];
assign port20 = r_data[2];
assign port19 = r_data[3];
assign port18 = r_data[4];
assign port17 = r_data[5];
assign port16 = r_data[6];
assign port15 = r_data[7];

always @(posedge port14, negedge asyncResetN) begin
  if (~(enpN | entN)) begin
    if (S == 2'b00) begin
      r_data <= 0;
    end
    if (S == 2'b01) begin
      r_data <= r_data - 1;
    end
    if (S == 2'b11) begin
      r_data <= r_data + 1;
    end
  end
  // loading is independent of enable
  if (S == 2'b10) begin
    r_data <= s_data;
  end

  // only for AS867
  if (!asyncResetN) begin
    r_data <= 0;
  end
end

// rcoN
always @* begin
  port13 <= 1;
  if (~entN) begin // enable rco
    if (S == 2'b01) begin // counting down
      port13 <= r_data != 0; // low level pulse when data is 0
    end
    if (S == 2'b10) begin // counting down
      port13 <= r_data != 255; // low level pulse when data is 255
    end
  end
end

endmodule