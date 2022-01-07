
module ic28C256(
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
input wire port13,
input wire port14,
input wire port15,
input wire port16,
input wire port17,
input wire port18,
input wire port19,
input wire port20,
input wire port21,
input wire port22,
input wire port23,
input wire port24,
input wire port25,
input wire port26,
input wire port27,
input wire port28
);

always @* begin
  if (!port27) begin
    $fatal(1, "EEPROM: nwe cannot be low");
  end
  if (port22) begin
    $fatal(1, "28C256: noe not supported");
  end
  if (port20) begin
    $fatal(1, "28C256: nce not supported");
  end
end

endmodule