module datapath(
  input wire i_clk,
  input wire i_reset,
  input wire i_button
);

logic s_hlt;
wire s_clk;
assign s_clk = i_clk & ~s_hlt;

always @* begin
  if (s_ctrlHlt) begin
    s_hlt <= 1;
  end
  if (i_reset | i_button) begin
    s_hlt <= 0;
  end
end

wire s_aluFlagN;
wire s_aluFlagNZ;

wire s_ctrlHlt;

wire s_ctrlAluNOE;
wire s_ctrlAluSubShiftDir;
wire[1:0] s_ctrlAluOp;
wire s_ctrlAluWr;

wire s_ctrlRegWr0;
wire s_ctrlRegWr1;
wire s_ctrlRegBusSel;
wire s_ctrlRegNBusEn;
wire s_ctrlAluSel;

wire s_ctrlRamAddressEn;
wire s_ctrlRamWriteNEn;
wire s_ctrlRamReadDataSelect;
wire s_ctrlRamOE;

wire s_ctrlLoadPC;
wire s_ctrlPCNOe;
wire s_ctrlWrOut;
wire s_ctrlIncrPC;

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

wire[7:0] s_iData;
wire[7:0] s_oData;

wire[7:0] s_BUS;

assign s_BUS = s_aluY;
assign s_BUS = s_iData;
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
assign s_oData = s_BUS;

assign s_aluA = s_regAlu;

control inst_control(
  .i_clk(s_clk),
  .i_reset(i_reset),

  .i_aluFlagN(s_aluFlagN),
  .i_aluFlagNZ(s_aluFlagNZ),

  .i_instruction(s_instruction),
  .o_immediate(s_immediate),

  .o_ctrlHlt(s_ctrlHlt),
  .o_ctrlAluNOE(s_ctrlAluNOE),
  .o_ctrlAluSubShiftDir(s_ctrlAluSubShiftDir),
  .o_ctrlAluOp(s_ctrlAluOp),
  .o_ctrlAluWr(s_ctrlAluWr),
  .o_ctrlRegWr0(s_ctrlRegWr0),
  .o_ctrlRegWr1(s_ctrlRegWr1),
  .o_ctrlRegBusSel(s_ctrlRegBusSel),
  .o_ctrlRegNBusEn(s_ctrlRegNBusEn),
  .o_ctrlAluSel(s_ctrlAluSel),
  .o_ctrlRamAddressEn(s_ctrlRamAddressEn),
  .o_ctrlRamWriteNEn(s_ctrlRamWriteNEn),
  .o_ctrlRamReadDataSelect(s_ctrlRamReadDataSelect),
  .o_ctrlRamOE(s_ctrlRamOE),
  .o_ctrlLoadPC(s_ctrlLoadPC),
  .o_ctrlPCNOe(s_ctrlPCNOe),
  .o_ctrlWrOut(s_ctrlWrOut),
  .o_ctrlIncrPC(s_ctrlIncrPC),
  .o_ctrlInNoe(s_ctrlInNoe)
);

alu inst_alu(
  .i_clk(s_clk),
  .i_reset(i_reset),

  .i_a(s_aluA),
  .i_b(s_aluB),
  .o_y(s_aluY),
  
  .o_negative(s_aluFlagN),
  .o_nZero(s_aluFlagNZ),

  .i_noe(s_ctrlAluNOE),
  .i_subShiftDir(s_ctrlAluSubShiftDir),
  .i_aluOp(s_ctrlAluOp),
  .i_aluWr(s_ctrlAluWr)
);

regset inst_regs(
  .i_clk(s_clk),
  .i_reset(i_reset),

  .i_d(s_regData),
  .i_write0(s_ctrlRegWr0),
  .i_write1(s_ctrlRegWr1),

  .i_busSel(s_ctrlRegBusSel),
  .i_nBusEn(s_ctrlRegNBusEn),
  .o_bus(s_regBus),

  .i_aluSel(s_ctrlAluSel),
  .o_alu(s_regAlu)
);

io inst_io(
  .i_clk(s_clk),

  .i_data(s_oData),
  .o_data(s_iData),

  .i_wrOut(s_ctrlWrOut),
  .i_inNOe(s_ctrlInNoe)
);

ram inst_ram(
  .i_clk(s_clk),

  .i_address(s_ramAddress),
  .i_addressEn(s_ctrlRamAddressEn),

  .i_writeData(s_ramWriteData),
  .i_writeNEn(s_ctrlRamWriteNEn),

  .i_readDataSelect(s_ctrlRamReadDataSelect),
  .o_readData(s_ramReadData),
  .i_outEnable(s_ctrlRamOE)
);

pc inst_pc(
  .i_clk(s_clk),
  .i_reset(i_reset),

  .i_data(s_pcData),
  .i_loadData(s_ctrlLoadPC),
  .i_incr(s_ctrlIncrPC),
  .i_noe(s_ctrlPCNOe),
  .o_addr(s_pcAddr)

);

endmodule