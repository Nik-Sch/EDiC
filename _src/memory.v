module memory(
  input wire i_clk,
  input wire i_reset,

  input wire [7:0] i_bus,
  output wire [7:0] o_bus,

  output reg [7:0] o_instrCode,

  input wire i_ctrlPCIncrN,
  input wire i_ctrlPCLoadN,
  input wire i_ctrlSpUp, // 0: down, 1: up
  input wire i_ctrlSpNEn,
  input wire i_ctrlInstrNWE,
  input wire i_ctrlInstrNOE,
  input wire i_ctrlRamNOE,
  input wire i_ctrlRamNWE,
  input wire i_ctrlMemMar0NWE,
  input wire i_ctrlMemMar1NWE,
  input wire i_ctrlMemInstrImmToRam,

  output wire [14:0] o_romAddress,
  input wire [23:0] i_romData,

  output wire [16:0] o_ramAddress,
  input  wire [7:0] i_ramData,
  output wire [7:0] o_ramData,
  output wire o_ramWE
);

reg [15:0] r_pc;
reg [7:0] r_sp;
reg [15:0] r_mar;
reg [15:0] r_instrImm;
wire s_selectStackMem;
wire [7:0] s_select;

assign o_romAddress = r_pc[14:0];

assign o_ramData = i_bus;
assign o_ramWE = ~i_ctrlRamNWE;
assign s_selectStackMem = &s_select;


transmitter inst_instrImm0(
  .a(r_instrImm[7:0]),
  .b(o_ramAddress[7:0]),
  .noe(~i_ctrlMemInstrImmToRam)
);
transmitter inst_instrImm1Ram(
  .a(r_instrImm[15:8]),
  .b(o_ramAddress[15:8]),
  .noe(~(i_ctrlMemInstrImmToRam & (~s_selectStackMem)))
);
transmitter inst_instrImm1Select(
  .a(r_instrImm[15:8]),
  .b(s_select),
  .noe(~i_ctrlMemInstrImmToRam)
);
transmitter inst_mar0(
  .a(r_mar[7:0]),
  .b(o_ramAddress[7:0]),
  .noe(i_ctrlMemInstrImmToRam)
);
transmitter inst_mar1Ram(
  .a(r_mar[15:8]),
  .b(o_ramAddress[15:8]),
  .noe(~((~i_ctrlMemInstrImmToRam) & (~s_selectStackMem)))
);
transmitter inst_mar1Select(
  .a(r_mar[15:8]),
  .b(s_select),
  .noe(i_ctrlMemInstrImmToRam)
);
transmitter inst_sp(
  .a(r_sp),
  .b(o_ramAddress[15:8]),
  .noe(i_ctrlMemInstrImmToRam & s_selectStackMem)
);

assign o_ramAddress[16] = s_selectStackMem;

always @(posedge i_clk) begin
  if (!i_ctrlPCIncrN) begin
    r_pc <= r_pc + 1;
  end
  if (!i_ctrlPCLoadN) begin
    r_pc <= r_instrImm;
  end
  if (!i_ctrlMemMar0NWE) begin
    r_mar[7:0] <= i_bus;
  end
  if (!i_ctrlMemMar1NWE) begin
    r_mar[15:8] <= i_bus;
  end

  if (!i_ctrlSpNEn) begin
    r_sp <= r_sp + (i_ctrlSpUp ? 1 : -1);
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
  .noe(i_ctrlInstrNOE)
);

transmitter inst_txRam(
  .a(i_ramData),
  .b(o_bus),
  .noe(i_ctrlRamNOE)
);

endmodule