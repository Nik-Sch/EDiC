module memory(
  input wire i_clk,
  input wire i_reset,

  input wire [7:0] i_bus,
  output wire [7:0] o_bus,
  output wire o_busNOE,

  output reg [7:0] o_instrCode,

  input wire i_ctrlPCLoadN,
  input wire i_ctrlPCNEn,
  input wire i_ctrlPCFromImm,
  input wire i_ctrlMemPCToRamN,
  input wire i_ctrlSpUp, // 0: down, 1: up
  input wire i_ctrlSpNEn,
  input wire i_ctrlInstrNWE,
  input wire i_ctrlInstrNOE,
  input wire i_ctrlRamNOE,
  input wire i_ctrlRamNWE,
  input wire i_ctrlMemMar0NWE,
  input wire i_ctrlMemMar1NWE,
  input wire i_ctrlMemInstrImmToRamAddr,

  output wire [14:0] o_romAddress,
  input wire [23:0] i_romData,

  output wire [16:0] o_ramAddress,
  input  wire [7:0] i_ramData,
  output wire [7:0] o_ramData,
  input  wire [7:0] i_ram2Data,
  output wire [7:0] o_ram2Data,
  output wire o_ramWE,
  output wire o_ramCE,

  output wire o_ioSelect,
  output wire [7:0] o_ioAddress,
  output wire o_ioNOE,
  output wire o_ioNWE,

  input wire i_halt,
  input wire [15:0] i_breakpointAddress,
  input wire i_breakpointEnableN,
  output wire o_breakpointHitN,
  output wire [15:0] o_dbgPc
);

reg [15:0] r_pc;
reg [7:0] r_sp;
reg [15:0] r_mar;
reg [15:0] r_instrImm;
wire s_selectStackMem;
wire [7:0] s_select;
wire [15:0] s_pcIn;

assign o_dbgPc = r_pc;


assign o_breakpointHitN = ~((!i_breakpointEnableN) && (r_pc == i_breakpointAddress));

assign o_romAddress = r_pc[14:0];

assign o_ramData = i_bus;
assign o_ramWE = ~i_ctrlRamNWE;
assign s_selectStackMem = s_select == 8'hff;
assign o_ramCE = ~o_ioSelect;
assign o_ioSelect = s_select == 8'hfe;
assign o_ioAddress = o_ramAddress[7:0];
assign o_ioNOE = i_ctrlRamNOE;
assign o_ioNWE = i_ctrlRamNWE;


tristatenet #(
  .INPUT_COUNT(3)
) inst_triBus (
  .i_data({r_instrImm[7:0], r_pc[7:0], i_ramData}),
  .i_noe({i_ctrlInstrNOE, i_ctrlMemPCToRamN, i_ctrlRamNOE | ~o_ramCE}),
  .o_data(o_bus),
  .o_noe(o_busNOE)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triRamAddressLow (
  .i_data({r_instrImm[7:0], r_mar[7:0]}),
  .i_noe({~i_ctrlMemInstrImmToRamAddr, i_ctrlMemInstrImmToRamAddr}),
  .o_data(o_ramAddress[7:0])
);

wire s_marHighNOE;
wire s_instrImmHighNOE;
assign s_marHighNOE = ~((~i_ctrlMemInstrImmToRamAddr) & (~s_selectStackMem));
assign s_instrImmHighNOE = ~(i_ctrlMemInstrImmToRamAddr & (~s_selectStackMem));
tristatenet #(
  .INPUT_COUNT(3)
) inst_triRamAddressHigh (
  .i_data({r_instrImm[15:8], r_mar[15:8], r_sp}),
  .i_noe({s_instrImmHighNOE, s_marHighNOE, ~s_selectStackMem}),
  .o_data(o_ramAddress[15:8])
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triSelect (
  .i_data({r_instrImm[15:8], r_mar[15:8]}),
  .i_noe({~i_ctrlMemInstrImmToRamAddr, i_ctrlMemInstrImmToRamAddr}),
  .o_data(s_select)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triPcInLow (
  .i_data({r_instrImm[7:0], i_bus}),
  .i_noe({~i_ctrlPCFromImm, i_ctrlPCFromImm}),
  .o_data(s_pcIn[7:0])
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triPcInHigh (
  .i_data({r_instrImm[15:8], i_ram2Data}),
  .i_noe({~i_ctrlPCFromImm, i_ctrlPCFromImm}),
  .o_data(s_pcIn[15:8])
);

assign o_ram2Data = r_pc[15:8];

assign o_ramAddress[16] = s_selectStackMem;

always @(posedge i_clk) begin

  if (!((i_ctrlPCNEn | i_halt) & i_ctrlPCLoadN)) begin
    if (i_ctrlPCLoadN) begin // increment
      r_pc <= r_pc + 1;
    end else begin // load from instrImm or bus
      r_pc <= s_pcIn;
    end
  end

  if (!i_ctrlMemMar0NWE) begin
    r_mar[7:0] <= i_bus;
  end
  if (!i_ctrlMemMar1NWE) begin
    r_mar[15:8] <= i_bus;
  end

  if (!(i_ctrlSpNEn | i_halt)) begin
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

endmodule