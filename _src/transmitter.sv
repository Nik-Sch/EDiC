module transmitter(
  input logic[7:0] a,
  output logic[7:0] b,
  input logic noe
);

assign b = noe ? 8'bzzzz_zzzz : a;

endmodule