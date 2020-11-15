module transmitter(
  input logic[7:0] a,
  output logic[7:0] b,
  input logic ce
);

assign b = ce ? a : 8'bzzzz_zzzz;

endmodule