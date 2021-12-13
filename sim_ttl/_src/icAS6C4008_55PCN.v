// 512k * 8bit sram https://www.mouser.de/datasheet/2/12/AS6C4008-1265427.pdf
module icAS6C4008_55PCN(
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
output wire port13,
output wire port14,
output wire port15,
input wire port16,
output wire port17,
output wire port18,
output wire port19,
output wire port20,
output wire port21,
input wire port22,
input wire port23,
input wire port24,
input wire port25,
input wire port26,
input wire port27,
input wire port28,
input wire port29,
input wire port30,
input wire port31,
input wire port32,

input wire port34,
output wire port33,
input wire port113,
input wire port114,
input wire port115,
input wire port117,
input wire port118,
input wire port119,
input wire port120,
input wire port121
);

wire [16:0] address;
wire [7:0] readData;
wire [7:0] writeData;


assign address = {
  port2,
  port31,
  port3,
  port28,
  port4,
  port25,
  port23,
  port26,
  port27,
  port5,
  port6,
  port7,
  port8,
  port9,
  port10,
  port11,
  port12
};

assign port21 = readData[7];
assign port20 = readData[6];
assign port19 = readData[5];
assign port18 = readData[4];
assign port17 = readData[3];
assign port15 = readData[2];
assign port14 = readData[1];
assign port13 = readData[0];

assign writeData = {
port121,
port120,
port119,
port118,
port117,
port115,
port114,
port113
};

assign port33 = port24 | port22; // nce or noe

as6c4008_55pcn_mem inst_mem (
  .clka(port34),
  .ena(~port22), // !nce
  .wea(~port29),
  .addra(address),
  .dina(writeData),
  .douta(readData)
);

endmodule