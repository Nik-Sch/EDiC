module displayDriver(
  input wire i_clk, // 5MHz
  input wire i_resetn,

  input [7:0] data,
  output [7:0] cathodes, // dot + gfedcba
  output [7:0] anodes
);
//  a
// f b
//  g
// e c
//  d  dot

parameter COUNTER_MAX = 10000; // 2ms
reg [3:0] r_currentDigit = 0;
reg [15:0] r_counter = 0;
reg [7:0] cathodesAH;
reg [7:0] anodesAH;

wire [3:0] s_bits;

assign s_bits = data[4*(r_currentDigit+1)-1-:4];
assign anodes = ~anodesAH;
assign cathodes = ~cathodesAH;

always @(posedge i_clk) begin
  r_counter <= r_counter + 1;
  if (r_counter == COUNTER_MAX) begin
    r_counter <= 0;
    r_currentDigit <= r_currentDigit + 1;
    if (r_currentDigit == 1) begin
      r_currentDigit <= 0;
    end
  end

  anodesAH <= 0;
  anodesAH[r_currentDigit] <= 1;

  cathodesAH[7] <= 0;
  cathodesAH[6] <= s_bits == 4'h2 // g
                || s_bits == 4'h3
                || s_bits == 4'h4
                || s_bits == 4'h5
                || s_bits == 4'h6
                || s_bits == 4'h8
                || s_bits == 4'h9
                || s_bits == 4'ha
                || s_bits == 4'hb
                || s_bits == 4'hd
                || s_bits == 4'he
                || s_bits == 4'hf;
  cathodesAH[5] <= s_bits == 4'h4 // f
                || s_bits == 4'h5
                || s_bits == 4'h6
                || s_bits == 4'h8
                || s_bits == 4'h9
                || s_bits == 4'ha
                || s_bits == 4'hb
                || s_bits == 4'hc
                || s_bits == 4'he
                || s_bits == 4'hf;
  cathodesAH[4] <= s_bits == 4'h2 // e
                || s_bits == 4'h6
                || s_bits == 4'h8
                || s_bits == 4'ha
                || s_bits == 4'hb
                || s_bits == 4'hc
                || s_bits == 4'hd
                || s_bits == 4'he
                || s_bits == 4'hf;
  cathodesAH[3] <= s_bits == 4'h2 // d
                || s_bits == 4'h3
                || s_bits == 4'h5
                || s_bits == 4'h6
                || s_bits == 4'h8
                || s_bits == 4'h9
                || s_bits == 4'hb
                || s_bits == 4'hc
                || s_bits == 4'hd
                || s_bits == 4'he;
  cathodesAH[2] <= s_bits == 4'h1 // c
                || s_bits == 4'h3
                || s_bits == 4'h4
                || s_bits == 4'h5
                || s_bits == 4'h6
                || s_bits == 4'h7
                || s_bits == 4'h8
                || s_bits == 4'h9
                || s_bits == 4'ha
                || s_bits == 4'hb
                || s_bits == 4'hd;
  cathodesAH[1] <= s_bits == 4'h1 // b
                || s_bits == 4'h2
                || s_bits == 4'h3
                || s_bits == 4'h4
                || s_bits == 4'h7
                || s_bits == 4'h8
                || s_bits == 4'h9
                || s_bits == 4'ha
                || s_bits == 4'hd;
  cathodesAH[0] <= s_bits == 4'h2 // a
                || s_bits == 4'h3
                || s_bits == 4'h5
                || s_bits == 4'h6
                || s_bits == 4'h7
                || s_bits == 4'h8
                || s_bits == 4'h9
                || s_bits == 4'ha
                || s_bits == 4'hc
                || s_bits == 4'he
                || s_bits == 4'hf;

  if (~i_resetn) begin
    r_currentDigit <= 0;
    r_counter <= 0;
  end
end

endmodule