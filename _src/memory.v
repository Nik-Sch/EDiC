module memory(
  input wire i_clk,
  input wire i_reset,

  input wire [7:0] i_bus,
  output wire [7:0] o_bus,

  output reg [7:0] o_instrCode,

  input wire i_ctrlNotPCIncr,
  input wire i_ctrlNotPCLoad,
  input wire i_ctrlSpDirection, // 0: down, 1: up
  input wire i_ctrlNotSpEn,
  input wire i_ctrlInstrNWE,
  input wire i_ctrlInstrImmNOE,
  input wire i_ctrlRamNOE,
  input wire i_ctrlRamNWE,

  output wire [14:0] o_romAddress,
  input wire [23:0] i_romData,

  output wire [16:0] o_ramAddress,
  input  wire [7:0] i_ramData,
  output wire [7:0] o_ramData,
  output wire o_ramWE
);

reg [15:0] r_pc;
reg [7:0] r_sp;
reg [16:0] r_instrImm;
wire s_selectStackMem;

assign o_romAddress = r_pc[14:0];

assign o_ramData = i_bus;
assign o_ramWE = ~i_ctrlRamNWE;
assign s_selectStackMem = &r_instrImm[15:8];
always @* begin
  o_ramAddress[7:0] <= r_instrImm[7:0];
  o_ramAddress[15:8] <= s_selectStackMem ? r_sp : r_instrImm[15:8];
  o_ramAddress[16] <= s_selectStackMem;
end


always @(posedge i_clk) begin
  if (i_ctrlNotPCIncr) begin
    r_pc <= r_pc + 1;
  end
  if (!i_ctrlNotPCLoad) begin
    r_pc <= r_instrImm;
  end

  if (!i_ctrlNotSpEn) begin
    r_sp <= r_sp + (i_ctrlSpDirection ? 1 : -1);
  end

  if (!i_ctrlInstrNWE) begin
    o_instrCode <= i_romData[23:16];
    r_instrImm <= i_romData[15:0];
  end

  if (i_reset) begin
    r_pc <= 0;
    r_sp <= 0;
  end
end

transmitter inst_txInstrImm(
  .a(r_instrImm[7:0]),
  .b(o_bus),
  .noe(i_ctrlInstrImmNOE)
);

transmitter inst_txRam(
  .a(i_ramData),
  .b(o_bus),
  .noe(i_ctrlRamNOE)
);

endmodule