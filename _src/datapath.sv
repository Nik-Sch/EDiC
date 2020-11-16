module datapath(
  input wire i_clk,
  input wire i_reset
);

wire s_aluFlagN;
wire s_aluFlagZ;

wire s_ctrlAluOE;
wire s_ctrlAluSubShiftDir;
wire[1:0] s_ctrlAluOp;
wire s_ctrlAluBWr;

wire s_ctrlRegWr0;
wire s_ctrlRegWr1;
wire s_ctrlRegBusSel;
wire s_ctrlRegBusEn;
wire s_ctrlAluSel;

wire s_ctrlRamAddressEn;
wire s_ctrlRamWriteEn;
wire s_ctrlRamReadDataSelect;
wire s_ctrlRamOE;

wire s_ctrlLoadPC;
wire s_ctrlIncrPC;
wire s_ctrlPCOe;

wire[7:0] s_instruction;
wire[7:0] s_immediate;

wire[7:0] s_aluA;
wire[7:0] s_aluB;
wire[7:0] s_aluY;

wire[7:0] s_regData;
wire[7:0] s_regBus;
wire[7:0] s_regAlu;

wire[7:0] s_ramAddress;
wire[7:0] s_ramWriteData;
wire[7:0] s_ramReadData;

wire[7:0] s_pcAddr;
wire[7:0] s_pcData;

wire[7:0] s_BUS;

assign s_BUS = s_aluY;
assign s_BUS = s_regBus;
assign s_BUS = s_ramReadData;
assign s_BUS = s_pcAddr;
assign s_BUS = s_immediate;
assign s_aluB = s_BUS;
assign s_regData = s_BUS;
assign s_ramAddress = s_BUS;
assign s_ramWriteData = s_BUS;
assign s_pcData = s_BUS;
assign s_instruction = s_BUS;

assign s_aluA = s_regAlu;

control inst_control(
  .i_clk(i_clk),
  .i_reset(i_reset),

  .i_aluFlagN(s_aluFlagN),
  .i_aluFlagZ(s_aluFlagZ),

  .i_instruction(s_instruction),
  .o_immediate(s_immediate),

  .o_ctrlAluOE(s_ctrlAluOE),
  .o_ctrlAluSubShiftDir(s_ctrlAluSubShiftDir),
  .o_ctrlAluOp(s_ctrlAluOp),
  .o_ctrlAluBWr(s_ctrlAluBWr),
  .o_ctrlRegWr0(s_ctrlRegWr0),
  .o_ctrlRegWr1(s_ctrlRegWr1),
  .o_ctrlRegBusSel(s_ctrlRegBusSel),
  .o_ctrlRegBusEn(s_ctrlRegBusEn),
  .o_ctrlAluSel(s_ctrlAluSel),
  .o_ctrlRamAddressEn(s_ctrlRamAddressEn),
  .o_ctrlRamWriteEn(s_ctrlRamWriteEn),
  .o_ctrlRamReadDataSelect(s_ctrlRamReadDataSelect),
  .o_ctrlRamOE(s_ctrlRamOE),
  .o_ctrlLoadPC(s_ctrlLoadPC),
  .o_ctrlIncrPC(s_ctrlIncrPC),
  .o_ctrlPCOe(s_ctrlPCOe)
);

alu inst_alu(
  .i_clk(i_clk),
  .i_reset(i_reset),

  .i_a(s_aluA),
  .i_b(s_aluB),
  .o_y(s_aluY),
  
  .o_negative(s_aluFlagN),
  .o_zero(s_aluFlagZ),

  .i_oe(s_ctrlAluOE),
  .i_subShiftDir(s_ctrlAluSubShiftDir),
  .i_aluOp(s_ctrlAluOp),
  .i_bWr(s_ctrlAluBWr)
);

regset inst_regs(
  .i_clk(i_clk),
  .i_reset(i_reset),

  .i_d(s_regData),
  .i_write0(s_ctrlRegWr0),
  .i_write1(s_ctrlRegWr1),

  .i_busSel(s_ctrlRegBusSel),
  .i_busEn(s_ctrlRegBusEn),
  .o_bus(s_regBus),

  .i_aluSel(s_ctrlAluSel),
  .o_alu(s_regAlu)
);

ram inst_ram(
  .i_clk(i_clk),
  .i_reset(i_reset),

  .i_address(s_ramAddress),
  .i_addressEn(s_ctrlRamAddressEn),

  .i_writeData(s_ramWriteData),
  .i_writeEn(s_ctrlRamWriteEn),

  .i_readDataSelect(s_ctrlRamReadDataSelect),
  .o_readData(s_ramReadData),
  .i_outEnable(s_ctrlRamOE)
);

pc inst_pc(
  .i_clk(i_clk),
  .i_reset(i_reset),

  .i_data(s_pcData),
  .i_loadData(s_ctrlLoadPC),
  .i_incr(s_ctrlIncrPC),
  .i_oe(s_ctrlPCOe),
  .o_addr(s_pcAddr)

);

endmodule