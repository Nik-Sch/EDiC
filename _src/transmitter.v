module transmitter(
  input wire[7:0] a,
  output wire[7:0] b,
  input wire noe
);

assign b = noe ? 8'bzzzz_zzzz : a;

endmodule