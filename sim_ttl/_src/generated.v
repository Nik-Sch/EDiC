
module generated(
  
// clocks
input wire i_oszClk,
input wire i_asyncRamSpecialClock,
input wire i_resetn,

// button controls
// 1 is closed, 0 is open
input wire i_btnStep,
input wire i_swInstrNCycle,
input wire i_swStepNRun,
input wire i_swEnableBreakpoint,
input wire i_btnReset,
input wire [15:0] i_breakpointAddress,

// io card
input wire [7:0] i_bus,
output wire [7:0] o_bus,
input wire i_busNOE,

output wire o_ioNCE,
output wire [7:0] o_ioAddress,
output wire o_ioNOE,
output wire o_ioNWE,

// fpga specific ports
output wire [7:0] o_cathodes, // dot + gfedcba
output wire [7:0] o_anodes,
input wire [7:0] i_switches,
output wire [7:0] o_r0,
output wire [7:0] o_r1

);

wire AluA0;
wire AluA1;
wire AluA2;
wire AluA3;
wire AluA4;
wire AluA5;
wire AluA6;
wire AluA7;
wire AluAdder0;
wire AluAdder0B0;
wire AluAdder0B1;
wire AluAdder0B2;
wire AluAdder0B3;
wire AluAdder0Bit1Cin;
wire AluAdder0Bit2Cin;
wire AluAdder0SignCout;
wire AluAdder1;
wire AluAdder1B0;
wire AluAdder1B1;
wire AluAdder1B2;
wire AluAdder1B3;
wire AluAdder1Bit1Cin;
wire AluAdder1Bit2Cin;
wire AluAdder1Cin;
wire AluAdder1Cout;
wire AluAdder2;
wire AluAdder3;
wire AluAdder4;
wire AluAdder5;
wire AluAdder6;
wire AluAdder7;
wire AluAnd0;
wire AluAnd1;
wire AluAnd2;
wire AluAnd3;
wire AluAnd4;
wire AluAnd5;
wire AluAnd6;
wire AluAnd7;
wire AluFlagC;
wire AluFlagCShift;
wire AluFlagN;
wire AluFlagV;
wire AluFlagZ;
wire AluShift0;
wire AluShift1;
wire AluShift2;
wire AluShift3;
wire AluShift4;
wire AluShift5;
wire AluShift6;
wire AluShift7;
wire AluXor0;
wire AluXor1;
wire AluXor2;
wire AluXor3;
wire AluXor4;
wire AluXor5;
wire AluXor6;
wire AluXor7;
wire Bus0;
wire Bus0_U10;
wire Bus0_U44;
wire Bus0_U45;
wire Bus0_U75;
wire Bus0_U91;
wire Bus0_U99;
wire Bus0_noe;
wire Bus1;
wire Bus1_U10;
wire Bus1_U44;
wire Bus1_U45;
wire Bus1_U75;
wire Bus1_U91;
wire Bus1_U99;
wire Bus1_noe;
wire Bus2;
wire Bus2_U10;
wire Bus2_U44;
wire Bus2_U45;
wire Bus2_U75;
wire Bus2_U91;
wire Bus2_U99;
wire Bus2_noe;
wire Bus3;
wire Bus3_U10;
wire Bus3_U44;
wire Bus3_U45;
wire Bus3_U75;
wire Bus3_U91;
wire Bus3_U99;
wire Bus3_noe;
wire Bus4;
wire Bus4_U10;
wire Bus4_U44;
wire Bus4_U45;
wire Bus4_U75;
wire Bus4_U91;
wire Bus4_U99;
wire Bus4_noe;
wire Bus5;
wire Bus5_U10;
wire Bus5_U44;
wire Bus5_U45;
wire Bus5_U75;
wire Bus5_U91;
wire Bus5_U99;
wire Bus5_noe;
wire Bus6;
wire Bus6_U10;
wire Bus6_U44;
wire Bus6_U45;
wire Bus6_U75;
wire Bus6_U91;
wire Bus6_U99;
wire Bus6_noe;
wire Bus7;
wire Bus7_U10;
wire Bus7_U44;
wire Bus7_U45;
wire Bus7_U75;
wire Bus7_U91;
wire Bus7_U99;
wire Bus7_noe;
wire ClockClk;
wire ClockI0;
wire ClockI1;
wire ClockI2;
wire ClockR0;
wire ClockR1;
wire ClockR2;
wire ClockS0;
wire ClockS1;
wire ClockS2;
wire ClockS3;
wire ClockS4;
wire ClockS5;
wire ControlA0;
wire ControlA1;
wire ControlA10;
wire ControlA11;
wire ControlA12;
wire ControlA13;
wire ControlA14;
wire ControlA2;
wire ControlA6;
wire ControlA7;
wire ControlA8;
wire ControlA9;
wire ControlS0;
wire ControlS1;
wire ControlS2;
wire MemoryComp0;
wire MemoryComp1;
wire MemoryComp10;
wire MemoryComp11;
wire MemoryComp12;
wire MemoryComp13;
wire MemoryComp14;
wire MemoryComp15;
wire MemoryComp2;
wire MemoryComp3;
wire MemoryComp4;
wire MemoryComp5;
wire MemoryComp6;
wire MemoryComp7;
wire MemoryComp8;
wire MemoryComp9;
wire MemoryInstr0;
wire MemoryInstr1;
wire MemoryInstr2;
wire MemoryInstr3;
wire MemoryInstr4;
wire MemoryInstr5;
wire MemoryInstr6;
wire MemoryInstr7;
wire MemoryInstrImm0;
wire MemoryInstrImm1;
wire MemoryInstrImm10;
wire MemoryInstrImm11;
wire MemoryInstrImm12;
wire MemoryInstrImm13;
wire MemoryInstrImm14;
wire MemoryInstrImm15;
wire MemoryInstrImm2;
wire MemoryInstrImm3;
wire MemoryInstrImm4;
wire MemoryInstrImm5;
wire MemoryInstrImm6;
wire MemoryInstrImm7;
wire MemoryInstrImm8;
wire MemoryInstrImm9;
wire MemoryMar10;
wire MemoryMar11;
wire MemoryMar12;
wire MemoryMar13;
wire MemoryMar14;
wire MemoryMar15;
wire MemoryMar8;
wire MemoryMar9;
wire MemoryPc0;
wire MemoryPc1;
wire MemoryPc10;
wire MemoryPc11;
wire MemoryPc12;
wire MemoryPc13;
wire MemoryPc14;
wire MemoryPc15;
wire MemoryPc2;
wire MemoryPc3;
wire MemoryPc4;
wire MemoryPc5;
wire MemoryPc6;
wire MemoryPc7;
wire MemoryPc8;
wire MemoryPc9;
wire MemoryPcIn0;
wire MemoryPcIn0_U51;
wire MemoryPcIn0_U52;
wire MemoryPcIn0_noe;
wire MemoryPcIn1;
wire MemoryPcIn10;
wire MemoryPcIn10_U49;
wire MemoryPcIn10_U50;
wire MemoryPcIn10_noe;
wire MemoryPcIn11;
wire MemoryPcIn11_U49;
wire MemoryPcIn11_U50;
wire MemoryPcIn11_noe;
wire MemoryPcIn12;
wire MemoryPcIn12_U49;
wire MemoryPcIn12_U50;
wire MemoryPcIn12_noe;
wire MemoryPcIn13;
wire MemoryPcIn13_U49;
wire MemoryPcIn13_U50;
wire MemoryPcIn13_noe;
wire MemoryPcIn14;
wire MemoryPcIn14_U49;
wire MemoryPcIn14_U50;
wire MemoryPcIn14_noe;
wire MemoryPcIn15;
wire MemoryPcIn15_U49;
wire MemoryPcIn15_U50;
wire MemoryPcIn15_noe;
wire MemoryPcIn1_U51;
wire MemoryPcIn1_U52;
wire MemoryPcIn1_noe;
wire MemoryPcIn2;
wire MemoryPcIn2_U51;
wire MemoryPcIn2_U52;
wire MemoryPcIn2_noe;
wire MemoryPcIn3;
wire MemoryPcIn3_U51;
wire MemoryPcIn3_U52;
wire MemoryPcIn3_noe;
wire MemoryPcIn4;
wire MemoryPcIn4_U51;
wire MemoryPcIn4_U52;
wire MemoryPcIn4_noe;
wire MemoryPcIn5;
wire MemoryPcIn5_U51;
wire MemoryPcIn5_U52;
wire MemoryPcIn5_noe;
wire MemoryPcIn6;
wire MemoryPcIn6_U51;
wire MemoryPcIn6_U52;
wire MemoryPcIn6_noe;
wire MemoryPcIn7;
wire MemoryPcIn7_U51;
wire MemoryPcIn7_U52;
wire MemoryPcIn7_noe;
wire MemoryPcIn8;
wire MemoryPcIn8_U49;
wire MemoryPcIn8_U50;
wire MemoryPcIn8_noe;
wire MemoryPcIn9;
wire MemoryPcIn9_U49;
wire MemoryPcIn9_U50;
wire MemoryPcIn9_noe;
wire MemoryPcS0;
wire MemoryRam2data0;
wire MemoryRam2data0_U98;
wire MemoryRam2data0_noe;
wire MemoryRam2data1;
wire MemoryRam2data1_U98;
wire MemoryRam2data1_noe;
wire MemoryRam2data2;
wire MemoryRam2data2_U98;
wire MemoryRam2data2_noe;
wire MemoryRam2data3;
wire MemoryRam2data3_U98;
wire MemoryRam2data3_noe;
wire MemoryRam2data4;
wire MemoryRam2data4_U98;
wire MemoryRam2data4_noe;
wire MemoryRam2data5;
wire MemoryRam2data5_U98;
wire MemoryRam2data5_noe;
wire MemoryRam2data6;
wire MemoryRam2data6_U98;
wire MemoryRam2data6_noe;
wire MemoryRam2data7;
wire MemoryRam2data7_U98;
wire MemoryRam2data7_noe;
wire MemoryRamAddress10;
wire MemoryRamAddress10_U61;
wire MemoryRamAddress10_U66;
wire MemoryRamAddress10_U72;
wire MemoryRamAddress10_noe;
wire MemoryRamAddress11;
wire MemoryRamAddress11_U61;
wire MemoryRamAddress11_U66;
wire MemoryRamAddress11_U72;
wire MemoryRamAddress11_noe;
wire MemoryRamAddress12;
wire MemoryRamAddress12_U61;
wire MemoryRamAddress12_U66;
wire MemoryRamAddress12_U72;
wire MemoryRamAddress12_noe;
wire MemoryRamAddress13;
wire MemoryRamAddress13_U61;
wire MemoryRamAddress13_U66;
wire MemoryRamAddress13_U72;
wire MemoryRamAddress13_noe;
wire MemoryRamAddress14;
wire MemoryRamAddress14_U61;
wire MemoryRamAddress14_U66;
wire MemoryRamAddress14_U72;
wire MemoryRamAddress14_noe;
wire MemoryRamAddress15;
wire MemoryRamAddress15_U61;
wire MemoryRamAddress15_U66;
wire MemoryRamAddress15_U72;
wire MemoryRamAddress15_noe;
wire MemoryRamAddress8;
wire MemoryRamAddress8_U61;
wire MemoryRamAddress8_U66;
wire MemoryRamAddress8_U72;
wire MemoryRamAddress8_noe;
wire MemoryRamAddress9;
wire MemoryRamAddress9_U61;
wire MemoryRamAddress9_U66;
wire MemoryRamAddress9_U72;
wire MemoryRamAddress9_noe;
wire MemorySelect0;
wire MemorySelect0_U73;
wire MemorySelect0_U74;
wire MemorySelect0_noe;
wire MemorySelect1;
wire MemorySelect1_U73;
wire MemorySelect1_U74;
wire MemorySelect1_noe;
wire MemorySelect2;
wire MemorySelect2_U73;
wire MemorySelect2_U74;
wire MemorySelect2_noe;
wire MemorySelect3;
wire MemorySelect3_U73;
wire MemorySelect3_U74;
wire MemorySelect3_noe;
wire MemorySelect4;
wire MemorySelect4_U73;
wire MemorySelect4_U74;
wire MemorySelect4_noe;
wire MemorySelect5;
wire MemorySelect5_U73;
wire MemorySelect5_U74;
wire MemorySelect5_noe;
wire MemorySelect6;
wire MemorySelect6_U73;
wire MemorySelect6_U74;
wire MemorySelect6_noe;
wire MemorySelect7;
wire MemorySelect7_U73;
wire MemorySelect7_U74;
wire MemorySelect7_noe;
wire MemorySpS1;
wire MemoryinstrImm0ToRamN;
wire MemoryinstrImm1ToRamN;
wire Memorymar1ToRamN;
wire MemorypcEnN;
wire MemoryramCEN;
wire MemoryselectStackMemN;
wire MemoryspEnN;
wire Net_C1_Pad1;
wire Net_C2_Pad1;
wire Net_C3_Pad1;
wire Net_C4_Pad1;
wire Net_D10_Pad1;
wire Net_D11_Pad1;
wire Net_D12_Pad1;
wire Net_D13_Pad1;
wire Net_D14_Pad1;
wire Net_D15_Pad1;
wire Net_D16_Pad1;
wire Net_D17_Pad1;
wire Net_D18_Pad1;
wire Net_D19_Pad1;
wire Net_D1_Pad1;
wire Net_D20_Pad1;
wire Net_D21_Pad1;
wire Net_D22_Pad1;
wire Net_D23_Pad1;
wire Net_D24_Pad1;
wire Net_D25_Pad1;
wire Net_D26_Pad1;
wire Net_D27_Pad1;
wire Net_D28_Pad1;
wire Net_D29_Pad1;
wire Net_D2_Pad1;
wire Net_D30_Pad1;
wire Net_D31_Pad1;
wire Net_D32_Pad1;
wire Net_D33_Pad1;
wire Net_D34_Pad1;
wire Net_D35_Pad1;
wire Net_D36_Pad1;
wire Net_D37_Pad1;
wire Net_D38_Pad1;
wire Net_D39_Pad1;
wire Net_D3_Pad1;
wire Net_D40_Pad1;
wire Net_D41_Pad1;
wire Net_D42_Pad1;
wire Net_D43_Pad1;
wire Net_D44_Pad1;
wire Net_D45_Pad1;
wire Net_D46_Pad1;
wire Net_D47_Pad1;
wire Net_D48_Pad1;
wire Net_D49_Pad1;
wire Net_D4_Pad1;
wire Net_D50_Pad1;
wire Net_D51_Pad1;
wire Net_D52_Pad1;
wire Net_D53_Pad1;
wire Net_D54_Pad1;
wire Net_D55_Pad1;
wire Net_D56_Pad1;
wire Net_D5_Pad1;
wire Net_D6_Pad1;
wire Net_D7_Pad1;
wire Net_D8_Pad1;
wire Net_D9_Pad1;
wire Net_RN10_Pad2;
wire Net_RN10_Pad3;
wire Net_RN10_Pad4;
wire Net_RN10_Pad5;
wire Net_RN10_Pad6;
wire Net_RN10_Pad7;
wire Net_RN10_Pad8;
wire Net_RN10_Pad9;
wire Net_U100_Pad24;
wire Net_U101_Pad5;
wire Net_U102_Pad1;
wire Net_U102_Pad12;
wire Net_U102_Pad13;
wire Net_U102_Pad14;
wire Net_U102_Pad15;
wire Net_U102_Pad2;
wire Net_U102_Pad3;
wire Net_U103_Pad6;
wire Net_U106_Pad3;
wire Net_U10_Pad2;
wire Net_U10_Pad3;
wire Net_U10_Pad4;
wire Net_U10_Pad5;
wire Net_U10_Pad6;
wire Net_U10_Pad7;
wire Net_U10_Pad8;
wire Net_U10_Pad9;
wire Net_U12_Pad12;
wire Net_U12_Pad14;
wire Net_U12_Pad16;
wire Net_U12_Pad19;
wire Net_U12_Pad3;
wire Net_U12_Pad5;
wire Net_U12_Pad7;
wire Net_U12_Pad9;
wire Net_U14_Pad12;
wire Net_U15_Pad12;
wire Net_U15_Pad4;
wire Net_U15_Pad7;
wire Net_U15_Pad9;
wire Net_U16_Pad12;
wire Net_U16_Pad4;
wire Net_U16_Pad7;
wire Net_U16_Pad9;
wire Net_U17_Pad12;
wire Net_U17_Pad4;
wire Net_U17_Pad7;
wire Net_U17_Pad9;
wire Net_U18_Pad12;
wire Net_U18_Pad4;
wire Net_U18_Pad7;
wire Net_U18_Pad9;
wire Net_U19_Pad12;
wire Net_U19_Pad4;
wire Net_U19_Pad7;
wire Net_U19_Pad9;
wire Net_U20_Pad12;
wire Net_U20_Pad4;
wire Net_U20_Pad7;
wire Net_U20_Pad9;
wire Net_U26_Pad11;
wire Net_U26_Pad3;
wire Net_U26_Pad6;
wire Net_U26_Pad8;
wire Net_U31_Pad11;
wire Net_U31_Pad3;
wire Net_U31_Pad6;
wire Net_U31_Pad8;
wire Net_U33_Pad10;
wire Net_U33_Pad12;
wire Net_U36_Pad3;
wire Net_U37_Pad3;
wire Net_U37_Pad4;
wire Net_U38_Pad11;
wire Net_U38_Pad8;
wire Net_U48_Pad10;
wire Net_U48_Pad8;
wire Net_U53_Pad19;
wire Net_U54_Pad13;
wire Net_U56_Pad15;
wire Net_U56_Pad16;
wire Net_U56_Pad17;
wire Net_U56_Pad18;
wire Net_U56_Pad19;
wire Net_U56_Pad20;
wire Net_U56_Pad21;
wire Net_U56_Pad22;
wire Net_U59_Pad11;
wire Net_U59_Pad8;
wire Net_U62_Pad11;
wire Net_U62_Pad12;
wire Net_U62_Pad13;
wire Net_U62_Pad15;
wire Net_U62_Pad16;
wire Net_U62_Pad17;
wire Net_U62_Pad18;
wire Net_U62_Pad19;
wire Net_U67_Pad11;
wire Net_U67_Pad12;
wire Net_U67_Pad13;
wire Net_U67_Pad15;
wire Net_U67_Pad16;
wire Net_U67_Pad17;
wire Net_U67_Pad18;
wire Net_U67_Pad19;
wire Net_U69_Pad11;
wire Net_U69_Pad12;
wire Net_U69_Pad13;
wire Net_U69_Pad15;
wire Net_U69_Pad16;
wire Net_U69_Pad17;
wire Net_U69_Pad18;
wire Net_U69_Pad19;
wire Net_U88_Pad19;
wire Net_U89_Pad3;
wire Net_U90_Pad3;
wire Net_U92_Pad12;
wire Net_U92_Pad15;
wire Net_U92_Pad16;
wire Net_U92_Pad19;
wire Net_U92_Pad2;
wire Net_U92_Pad5;
wire Net_U92_Pad6;
wire Net_U92_Pad9;
wire Net_U95_Pad2;
wire RegsetR00;
wire RegsetR01;
wire RegsetR02;
wire RegsetR03;
wire RegsetR04;
wire RegsetR05;
wire RegsetR06;
wire RegsetR07;
wire RegsetR10;
wire RegsetR11;
wire RegsetR12;
wire RegsetR13;
wire RegsetR14;
wire RegsetR15;
wire RegsetR16;
wire RegsetR17;
wire breakpointEnableN;
wire breakpointHitN;
wire clk;
wire clkN;
wire ctrlAluOEN;
wire ctrlAluOp0;
wire ctrlAluOp1;
wire ctrlAluSub;
wire ctrlAluYWEN;
wire ctrlInstrFinishedN;
wire ctrlMemInstrImmToRamAddr;
wire ctrlMemInstrOEN;
wire ctrlMemInstrWEN;
wire ctrlMemMar0WEN;
wire ctrlMemMar1WEN;
wire ctrlMemPCEnN;
wire ctrlMemPCFromImm;
wire ctrlMemPCLoadN;
wire ctrlMemPCToRamN;
wire ctrlMemRamOEN;
wire ctrlMemRamWEN;
wire ctrlMemSPEnN;
wire ctrlMemSPUp;
wire ctrlReg0BusOEN;
wire ctrlReg0WEN;
wire ctrlReg1BusOEN;
wire ctrlReg1WEN;
wire ctrlRegAluSel;
wire flagCarry;
wire flagNegative;
wire flagOverflow;
wire flagZero;
wire halt;
wire ioAddr0;
wire ioAddr0_U65;
wire ioAddr0_noe;
wire ioAddr1;
wire ioAddr1_U65;
wire ioAddr1_noe;
wire ioAddr2;
wire ioAddr2_U65;
wire ioAddr2_noe;
wire ioAddr3;
wire ioAddr3_U65;
wire ioAddr3_noe;
wire ioAddr4;
wire ioAddr4_U65;
wire ioAddr4_noe;
wire ioAddr5;
wire ioAddr5_U65;
wire ioAddr5_noe;
wire ioAddr6;
wire ioAddr6_U65;
wire ioAddr6_noe;
wire ioAddr7;
wire ioAddr7_U65;
wire ioAddr7_noe;
wire ioCEN;
wire resetN;


tristatenet #(
  .INPUT_COUNT(6)
) inst_triBus (
  .i_data({Bus7_U10, Bus7_U44, Bus7_U45, Bus7_U75, Bus7_U99, Bus7_U91}),
  .i_noe({ctrlAluOEN, ctrlReg0BusOEN, ctrlReg1BusOEN, ctrlMemInstrOEN, ctrlMemPCToRamN, Net_U90_Pad3}),
  .o_data(Bus7),
  .o_noe(Bus7_noe)
);

tristatenet #(
  .INPUT_COUNT(6)
) inst_triBus (
  .i_data({Bus6_U10, Bus6_U44, Bus6_U45, Bus6_U75, Bus6_U99, Bus6_U91}),
  .i_noe({ctrlAluOEN, ctrlReg0BusOEN, ctrlReg1BusOEN, ctrlMemInstrOEN, ctrlMemPCToRamN, Net_U90_Pad3}),
  .o_data(Bus6),
  .o_noe(Bus6_noe)
);

tristatenet #(
  .INPUT_COUNT(6)
) inst_triBus (
  .i_data({Bus5_U10, Bus5_U44, Bus5_U45, Bus5_U75, Bus5_U99, Bus5_U91}),
  .i_noe({ctrlAluOEN, ctrlReg0BusOEN, ctrlReg1BusOEN, ctrlMemInstrOEN, ctrlMemPCToRamN, Net_U90_Pad3}),
  .o_data(Bus5),
  .o_noe(Bus5_noe)
);

tristatenet #(
  .INPUT_COUNT(6)
) inst_triBus (
  .i_data({Bus4_U10, Bus4_U44, Bus4_U45, Bus4_U75, Bus4_U99, Bus4_U91}),
  .i_noe({ctrlAluOEN, ctrlReg0BusOEN, ctrlReg1BusOEN, ctrlMemInstrOEN, ctrlMemPCToRamN, Net_U90_Pad3}),
  .o_data(Bus4),
  .o_noe(Bus4_noe)
);

tristatenet #(
  .INPUT_COUNT(6)
) inst_triBus (
  .i_data({Bus3_U10, Bus3_U44, Bus3_U45, Bus3_U75, Bus3_U99, Bus3_U91}),
  .i_noe({ctrlAluOEN, ctrlReg0BusOEN, ctrlReg1BusOEN, ctrlMemInstrOEN, ctrlMemPCToRamN, Net_U90_Pad3}),
  .o_data(Bus3),
  .o_noe(Bus3_noe)
);

tristatenet #(
  .INPUT_COUNT(6)
) inst_triBus (
  .i_data({Bus2_U10, Bus2_U44, Bus2_U45, Bus2_U75, Bus2_U99, Bus2_U91}),
  .i_noe({ctrlAluOEN, ctrlReg0BusOEN, ctrlReg1BusOEN, ctrlMemInstrOEN, ctrlMemPCToRamN, Net_U90_Pad3}),
  .o_data(Bus2),
  .o_noe(Bus2_noe)
);

tristatenet #(
  .INPUT_COUNT(6)
) inst_triBus (
  .i_data({Bus1_U10, Bus1_U44, Bus1_U45, Bus1_U75, Bus1_U99, Bus1_U91}),
  .i_noe({ctrlAluOEN, ctrlReg0BusOEN, ctrlReg1BusOEN, ctrlMemInstrOEN, ctrlMemPCToRamN, Net_U90_Pad3}),
  .o_data(Bus1),
  .o_noe(Bus1_noe)
);

tristatenet #(
  .INPUT_COUNT(6)
) inst_triBus (
  .i_data({Bus0_U10, Bus0_U44, Bus0_U45, Bus0_U75, Bus0_U99, Bus0_U91}),
  .i_noe({ctrlAluOEN, ctrlReg0BusOEN, ctrlReg1BusOEN, ctrlMemInstrOEN, ctrlMemPCToRamN, Net_U90_Pad3}),
  .o_data(Bus0),
  .o_noe(Bus0_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBus (
  .i_data({MemoryRamAddress15_U61, MemoryRamAddress15_U66, MemoryRamAddress15_U72}),
  .i_noe({MemoryselectStackMemN, MemoryinstrImm1ToRamN, Memorymar1ToRamN}),
  .o_data(MemoryRamAddress15),
  .o_noe(MemoryRamAddress15_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBus (
  .i_data({MemoryRamAddress14_U61, MemoryRamAddress14_U66, MemoryRamAddress14_U72}),
  .i_noe({MemoryselectStackMemN, MemoryinstrImm1ToRamN, Memorymar1ToRamN}),
  .o_data(MemoryRamAddress14),
  .o_noe(MemoryRamAddress14_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBus (
  .i_data({MemoryRamAddress13_U61, MemoryRamAddress13_U66, MemoryRamAddress13_U72}),
  .i_noe({MemoryselectStackMemN, MemoryinstrImm1ToRamN, Memorymar1ToRamN}),
  .o_data(MemoryRamAddress13),
  .o_noe(MemoryRamAddress13_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBus (
  .i_data({MemoryRamAddress12_U61, MemoryRamAddress12_U66, MemoryRamAddress12_U72}),
  .i_noe({MemoryselectStackMemN, MemoryinstrImm1ToRamN, Memorymar1ToRamN}),
  .o_data(MemoryRamAddress12),
  .o_noe(MemoryRamAddress12_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBus (
  .i_data({MemoryRamAddress11_U61, MemoryRamAddress11_U66, MemoryRamAddress11_U72}),
  .i_noe({MemoryselectStackMemN, MemoryinstrImm1ToRamN, Memorymar1ToRamN}),
  .o_data(MemoryRamAddress11),
  .o_noe(MemoryRamAddress11_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBus (
  .i_data({MemoryRamAddress10_U61, MemoryRamAddress10_U66, MemoryRamAddress10_U72}),
  .i_noe({MemoryselectStackMemN, MemoryinstrImm1ToRamN, Memorymar1ToRamN}),
  .o_data(MemoryRamAddress10),
  .o_noe(MemoryRamAddress10_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBus (
  .i_data({MemoryRamAddress9_U61, MemoryRamAddress9_U66, MemoryRamAddress9_U72}),
  .i_noe({MemoryselectStackMemN, MemoryinstrImm1ToRamN, Memorymar1ToRamN}),
  .o_data(MemoryRamAddress9),
  .o_noe(MemoryRamAddress9_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBus (
  .i_data({MemoryRamAddress8_U61, MemoryRamAddress8_U66, MemoryRamAddress8_U72}),
  .i_noe({MemoryselectStackMemN, MemoryinstrImm1ToRamN, Memorymar1ToRamN}),
  .o_data(MemoryRamAddress8),
  .o_noe(MemoryRamAddress8_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBus (
  .i_data({ioAddr7_U65}),
  .i_noe({MemoryinstrImm0ToRamN}),
  .o_data(ioAddr7),
  .o_noe(ioAddr7_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBus (
  .i_data({ioAddr6_U65}),
  .i_noe({MemoryinstrImm0ToRamN}),
  .o_data(ioAddr6),
  .o_noe(ioAddr6_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBus (
  .i_data({ioAddr5_U65}),
  .i_noe({MemoryinstrImm0ToRamN}),
  .o_data(ioAddr5),
  .o_noe(ioAddr5_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBus (
  .i_data({ioAddr4_U65}),
  .i_noe({MemoryinstrImm0ToRamN}),
  .o_data(ioAddr4),
  .o_noe(ioAddr4_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBus (
  .i_data({ioAddr3_U65}),
  .i_noe({MemoryinstrImm0ToRamN}),
  .o_data(ioAddr3),
  .o_noe(ioAddr3_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBus (
  .i_data({ioAddr2_U65}),
  .i_noe({MemoryinstrImm0ToRamN}),
  .o_data(ioAddr2),
  .o_noe(ioAddr2_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBus (
  .i_data({ioAddr1_U65}),
  .i_noe({MemoryinstrImm0ToRamN}),
  .o_data(ioAddr1),
  .o_noe(ioAddr1_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBus (
  .i_data({ioAddr0_U65}),
  .i_noe({MemoryinstrImm0ToRamN}),
  .o_data(ioAddr0),
  .o_noe(ioAddr0_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemorySelect7_U73, MemorySelect7_U74}),
  .i_noe({ctrlMemInstrImmToRamAddr, MemoryinstrImm0ToRamN}),
  .o_data(MemorySelect7),
  .o_noe(MemorySelect7_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemorySelect6_U73, MemorySelect6_U74}),
  .i_noe({ctrlMemInstrImmToRamAddr, MemoryinstrImm0ToRamN}),
  .o_data(MemorySelect6),
  .o_noe(MemorySelect6_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemorySelect5_U73, MemorySelect5_U74}),
  .i_noe({ctrlMemInstrImmToRamAddr, MemoryinstrImm0ToRamN}),
  .o_data(MemorySelect5),
  .o_noe(MemorySelect5_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemorySelect4_U73, MemorySelect4_U74}),
  .i_noe({ctrlMemInstrImmToRamAddr, MemoryinstrImm0ToRamN}),
  .o_data(MemorySelect4),
  .o_noe(MemorySelect4_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemorySelect3_U73, MemorySelect3_U74}),
  .i_noe({ctrlMemInstrImmToRamAddr, MemoryinstrImm0ToRamN}),
  .o_data(MemorySelect3),
  .o_noe(MemorySelect3_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemorySelect2_U73, MemorySelect2_U74}),
  .i_noe({ctrlMemInstrImmToRamAddr, MemoryinstrImm0ToRamN}),
  .o_data(MemorySelect2),
  .o_noe(MemorySelect2_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemorySelect1_U73, MemorySelect1_U74}),
  .i_noe({ctrlMemInstrImmToRamAddr, MemoryinstrImm0ToRamN}),
  .o_data(MemorySelect1),
  .o_noe(MemorySelect1_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemorySelect0_U73, MemorySelect0_U74}),
  .i_noe({ctrlMemInstrImmToRamAddr, MemoryinstrImm0ToRamN}),
  .o_data(MemorySelect0),
  .o_noe(MemorySelect0_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemoryPcIn7_U52, MemoryPcIn7_U51}),
  .i_noe({Net_U48_Pad8, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn7),
  .o_noe(MemoryPcIn7_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemoryPcIn6_U52, MemoryPcIn6_U51}),
  .i_noe({Net_U48_Pad8, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn6),
  .o_noe(MemoryPcIn6_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemoryPcIn5_U52, MemoryPcIn5_U51}),
  .i_noe({Net_U48_Pad8, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn5),
  .o_noe(MemoryPcIn5_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemoryPcIn4_U52, MemoryPcIn4_U51}),
  .i_noe({Net_U48_Pad8, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn4),
  .o_noe(MemoryPcIn4_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemoryPcIn3_U52, MemoryPcIn3_U51}),
  .i_noe({Net_U48_Pad8, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn3),
  .o_noe(MemoryPcIn3_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemoryPcIn2_U52, MemoryPcIn2_U51}),
  .i_noe({Net_U48_Pad8, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn2),
  .o_noe(MemoryPcIn2_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemoryPcIn1_U52, MemoryPcIn1_U51}),
  .i_noe({Net_U48_Pad8, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn1),
  .o_noe(MemoryPcIn1_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemoryPcIn0_U52, MemoryPcIn0_U51}),
  .i_noe({Net_U48_Pad8, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn0),
  .o_noe(MemoryPcIn0_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemoryPcIn15_U50, MemoryPcIn15_U49}),
  .i_noe({Net_U48_Pad10, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn15),
  .o_noe(MemoryPcIn15_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemoryPcIn14_U50, MemoryPcIn14_U49}),
  .i_noe({Net_U48_Pad10, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn14),
  .o_noe(MemoryPcIn14_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemoryPcIn13_U50, MemoryPcIn13_U49}),
  .i_noe({Net_U48_Pad10, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn13),
  .o_noe(MemoryPcIn13_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemoryPcIn12_U50, MemoryPcIn12_U49}),
  .i_noe({Net_U48_Pad10, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn12),
  .o_noe(MemoryPcIn12_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemoryPcIn11_U50, MemoryPcIn11_U49}),
  .i_noe({Net_U48_Pad10, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn11),
  .o_noe(MemoryPcIn11_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemoryPcIn10_U50, MemoryPcIn10_U49}),
  .i_noe({Net_U48_Pad10, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn10),
  .o_noe(MemoryPcIn10_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemoryPcIn9_U50, MemoryPcIn9_U49}),
  .i_noe({Net_U48_Pad10, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn9),
  .o_noe(MemoryPcIn9_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBus (
  .i_data({MemoryPcIn8_U50, MemoryPcIn8_U49}),
  .i_noe({Net_U48_Pad10, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn8),
  .o_noe(MemoryPcIn8_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBus (
  .i_data({MemoryRam2data7_U98}),
  .i_noe({ctrlMemPCToRamN}),
  .o_data(MemoryRam2data7),
  .o_noe(MemoryRam2data7_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBus (
  .i_data({MemoryRam2data6_U98}),
  .i_noe({ctrlMemPCToRamN}),
  .o_data(MemoryRam2data6),
  .o_noe(MemoryRam2data6_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBus (
  .i_data({MemoryRam2data5_U98}),
  .i_noe({ctrlMemPCToRamN}),
  .o_data(MemoryRam2data5),
  .o_noe(MemoryRam2data5_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBus (
  .i_data({MemoryRam2data4_U98}),
  .i_noe({ctrlMemPCToRamN}),
  .o_data(MemoryRam2data4),
  .o_noe(MemoryRam2data4_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBus (
  .i_data({MemoryRam2data3_U98}),
  .i_noe({ctrlMemPCToRamN}),
  .o_data(MemoryRam2data3),
  .o_noe(MemoryRam2data3_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBus (
  .i_data({MemoryRam2data2_U98}),
  .i_noe({ctrlMemPCToRamN}),
  .o_data(MemoryRam2data2),
  .o_noe(MemoryRam2data2_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBus (
  .i_data({MemoryRam2data1_U98}),
  .i_noe({ctrlMemPCToRamN}),
  .o_data(MemoryRam2data1),
  .o_noe(MemoryRam2data1_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBus (
  .i_data({MemoryRam2data0_U98}),
  .i_noe({ctrlMemPCToRamN}),
  .o_data(MemoryRam2data0),
  .o_noe(MemoryRam2data0_noe)
);


assign o_bus[0] = Bus0;
assign o_bus[1] = Bus1;
assign o_bus[2] = Bus2;
assign o_bus[3] = Bus3;
assign o_bus[4] = Bus4;
assign o_bus[5] = Bus5;
assign o_bus[6] = Bus6;
assign o_bus[7] = Bus7;
assign Bus0 = i_bus[0];
assign Bus1 = i_bus[1];
assign Bus2 = i_bus[2];
assign Bus3 = i_bus[3];
assign Bus4 = i_bus[4];
assign Bus5 = i_bus[5];
assign Bus6 = i_bus[6];
assign Bus7 = i_bus[7];
assign Net_U95_Pad2 = i_oszClk;



ic74ABT540 inst_U1 (
  .port1(0),
  .port2(Bus0),
  .port3(Bus1),
  .port4(Bus2),
  .port5(Bus3),
  .port6(Bus4),
  .port7(Bus5),
  .port8(Bus6),
  .port9(Bus7),
  .port10(0),
  .port11(Net_D8_Pad1),
  .port12(Net_D7_Pad1),
  .port13(Net_D6_Pad1),
  .port14(Net_D5_Pad1),
  .port15(Net_D4_Pad1),
  .port16(Net_D3_Pad1),
  .port17(Net_D2_Pad1),
  .port18(Net_D1_Pad1),
  .port19(0),
  .port20(1)
);

ic74LS245 inst_U10 (
  .port1(1),
  .port2(Net_U10_Pad2),
  .port3(Net_U10_Pad3),
  .port4(Net_U10_Pad4),
  .port5(Net_U10_Pad5),
  .port6(Net_U10_Pad6),
  .port7(Net_U10_Pad7),
  .port8(Net_U10_Pad8),
  .port9(Net_U10_Pad9),
  .port10(0),
  .port11(Bus7_U10),
  .port12(Bus6_U10),
  .port13(Bus5_U10),
  .port14(Bus4_U10),
  .port15(Bus3_U10),
  .port16(Bus2_U10),
  .port17(Bus1_U10),
  .port18(Bus0_U10),
  .port19(ctrlAluOEN),
  .port20(1)
);

ic74LS86 inst_U2 (
  .port1(Bus0),
  .port2(ctrlAluSub),
  .port3(AluAdder0B0),
  .port4(Net_U12_Pad19),
  .port5(Net_U12_Pad19),
  .port6(AluFlagZ),
  .port7(0),
  .port14(1)
);

ic74LS86 inst_U4 (
  .port1(AluFlagC),
  .port2(AluAdder1Cout),
  .port3(AluFlagV),
  .port4(Bus5),
  .port5(ctrlAluSub),
  .port6(AluAdder1B1),
  .port7(0),
  .port8(AluAdder1B2),
  .port9(Bus6),
  .port10(ctrlAluSub),
  .port11(AluAdder1B3),
  .port12(Bus7),
  .port13(ctrlAluSub),
  .port14(1)
);

ic74LS86 inst_U3 (
  .port1(Bus4),
  .port2(ctrlAluSub),
  .port3(AluAdder1B0),
  .port4(Bus1),
  .port5(ctrlAluSub),
  .port6(AluAdder0B1),
  .port7(0),
  .port8(AluAdder0B2),
  .port9(Bus2),
  .port10(ctrlAluSub),
  .port11(AluAdder0B3),
  .port12(Bus3),
  .port13(ctrlAluSub),
  .port14(1)
);

ic74AS825 inst_U9 (
  .port1(0),
  .port2(0),
  .port3(Net_U12_Pad3),
  .port4(Net_U12_Pad5),
  .port5(Net_U12_Pad7),
  .port6(Net_U12_Pad9),
  .port7(Net_U12_Pad12),
  .port8(Net_U12_Pad14),
  .port9(Net_U12_Pad16),
  .port10(AluFlagN),
  .port11(resetN),
  .port12(0),
  .port13(clk),
  .port14(ctrlAluYWEN),
  .port15(Net_U10_Pad9),
  .port16(Net_U10_Pad8),
  .port17(Net_U10_Pad7),
  .port18(Net_U10_Pad6),
  .port19(Net_U10_Pad5),
  .port20(Net_U10_Pad4),
  .port21(Net_U10_Pad3),
  .port22(Net_U10_Pad2),
  .port23(0),
  .port24(1)
);

ic74LS153 inst_U6 (
  .port1(0),
  .port2(ctrlAluOp1),
  .port3(AluShift2),
  .port4(AluXor2),
  .port5(AluAnd2),
  .port6(AluAdder2),
  .port7(Net_U12_Pad7),
  .port8(0),
  .port9(Net_U12_Pad9),
  .port10(AluAdder3),
  .port11(AluAnd3),
  .port12(AluXor3),
  .port13(AluShift3),
  .port14(ctrlAluOp0),
  .port15(0),
  .port16(1)
);

ic74LS153 inst_U7 (
  .port1(0),
  .port2(ctrlAluOp1),
  .port3(AluShift4),
  .port4(AluXor4),
  .port5(AluAnd4),
  .port6(AluAdder4),
  .port7(Net_U12_Pad12),
  .port8(0),
  .port9(Net_U12_Pad14),
  .port10(AluAdder5),
  .port11(AluAnd5),
  .port12(AluXor5),
  .port13(AluShift5),
  .port14(ctrlAluOp0),
  .port15(0),
  .port16(1)
);

ic74LS153 inst_U8 (
  .port1(0),
  .port2(ctrlAluOp1),
  .port3(AluShift6),
  .port4(AluXor6),
  .port5(AluAnd6),
  .port6(AluAdder6),
  .port7(Net_U12_Pad16),
  .port8(0),
  .port9(AluFlagN),
  .port10(AluAdder7),
  .port11(AluAnd7),
  .port12(AluXor7),
  .port13(AluShift7),
  .port14(ctrlAluOp0),
  .port15(0),
  .port16(1)
);

ic74LS153 inst_U5 (
  .port1(0),
  .port2(ctrlAluOp1),
  .port3(AluShift0),
  .port4(AluXor0),
  .port5(AluAnd0),
  .port6(AluAdder0),
  .port7(Net_U12_Pad3),
  .port8(0),
  .port9(Net_U12_Pad5),
  .port10(AluAdder1),
  .port11(AluAnd1),
  .port12(AluXor1),
  .port13(AluShift1),
  .port14(ctrlAluOp0),
  .port15(0),
  .port16(1)
);

ic74F521 inst_U12 (
  .port1(0),
  .port2(0),
  .port3(Net_U12_Pad3),
  .port4(0),
  .port5(Net_U12_Pad5),
  .port6(0),
  .port7(Net_U12_Pad7),
  .port8(0),
  .port9(Net_U12_Pad9),
  .port10(0),
  .port11(0),
  .port12(Net_U12_Pad12),
  .port13(0),
  .port14(Net_U12_Pad14),
  .port15(0),
  .port16(Net_U12_Pad16),
  .port17(0),
  .port18(AluFlagN),
  .port19(Net_U12_Pad19),
  .port20(1)
);

ic74ABT540 inst_U11 (
  .port1(0),
  .port2(Net_U10_Pad2),
  .port3(Net_U10_Pad3),
  .port4(Net_U10_Pad4),
  .port5(Net_U10_Pad5),
  .port6(Net_U10_Pad6),
  .port7(Net_U10_Pad7),
  .port8(Net_U10_Pad8),
  .port9(Net_U10_Pad9),
  .port10(0),
  .port11(Net_D16_Pad1),
  .port12(Net_D15_Pad1),
  .port13(Net_D14_Pad1),
  .port14(Net_D13_Pad1),
  .port15(Net_D12_Pad1),
  .port16(Net_D11_Pad1),
  .port17(Net_D10_Pad1),
  .port18(Net_D9_Pad1),
  .port19(0),
  .port20(1)
);

ic74AS825 inst_U97 (
  .port1(0),
  .port2(0),
  .port3(AluFlagN),
  .port4(AluFlagZ),
  .port5(Net_U101_Pad5),
  .port6(AluFlagV),
  .port7(1),
  .port8(1),
  .port9(1),
  .port10(1),
  .port11(resetN),
  .port12(0),
  .port13(clk),
  .port14(ctrlAluYWEN),
  .port19(flagOverflow),
  .port20(flagCarry),
  .port21(flagZero),
  .port22(flagNegative),
  .port23(0),
  .port24(1)
);

ic74LS151 inst_U101 (
  .port1(AluFlagCShift),
  .port2(AluFlagC),
  .port3(AluFlagC),
  .port4(AluFlagC),
  .port5(Net_U101_Pad5),
  .port7(0),
  .port8(0),
  .port9(0),
  .port10(ctrlAluOp1),
  .port11(ctrlAluOp0),
  .port16(1)
);

ic74LS157 inst_U13 (
  .port1(ctrlAluSub),
  .port2(AluA0),
  .port3(AluA7),
  .port4(Net_U102_Pad3),
  .port5(AluA1),
  .port6(AluA6),
  .port7(Net_U102_Pad2),
  .port8(0),
  .port9(Net_U102_Pad1),
  .port10(AluA5),
  .port11(AluA2),
  .port12(Net_U102_Pad15),
  .port13(AluA4),
  .port14(AluA3),
  .port15(0),
  .port16(1)
);

ic74LS157 inst_U14 (
  .port1(ctrlAluSub),
  .port2(AluA4),
  .port3(AluA3),
  .port4(Net_U102_Pad14),
  .port5(AluA5),
  .port6(AluA2),
  .port7(Net_U102_Pad13),
  .port8(0),
  .port9(Net_U102_Pad12),
  .port10(AluA1),
  .port11(AluA6),
  .port12(Net_U14_Pad12),
  .port13(AluA0),
  .port14(AluA7),
  .port15(0),
  .port16(1)
);

ic74LS157 inst_U15 (
  .port1(Bus0),
  .port2(Net_U102_Pad3),
  .port3(Net_U102_Pad2),
  .port4(Net_U15_Pad4),
  .port5(Net_U102_Pad2),
  .port6(Net_U102_Pad1),
  .port7(Net_U15_Pad7),
  .port8(0),
  .port9(Net_U15_Pad9),
  .port10(Net_U102_Pad15),
  .port11(Net_U102_Pad1),
  .port12(Net_U15_Pad12),
  .port13(Net_U102_Pad14),
  .port14(Net_U102_Pad15),
  .port15(0),
  .port16(1)
);

ic74LS157 inst_U16 (
  .port1(Bus0),
  .port2(Net_U102_Pad14),
  .port3(Net_U102_Pad13),
  .port4(Net_U16_Pad4),
  .port5(Net_U102_Pad13),
  .port6(Net_U102_Pad12),
  .port7(Net_U16_Pad7),
  .port8(0),
  .port9(Net_U16_Pad9),
  .port10(Net_U14_Pad12),
  .port11(Net_U102_Pad12),
  .port12(Net_U16_Pad12),
  .port13(0),
  .port14(Net_U14_Pad12),
  .port15(0),
  .port16(1)
);

ic74LS157 inst_U17 (
  .port1(Bus1),
  .port2(Net_U15_Pad4),
  .port3(Net_U15_Pad9),
  .port4(Net_U17_Pad4),
  .port5(Net_U15_Pad7),
  .port6(Net_U15_Pad12),
  .port7(Net_U17_Pad7),
  .port8(0),
  .port9(Net_U17_Pad9),
  .port10(Net_U16_Pad4),
  .port11(Net_U15_Pad9),
  .port12(Net_U17_Pad12),
  .port13(Net_U16_Pad7),
  .port14(Net_U15_Pad12),
  .port15(0),
  .port16(1)
);

ic74LS157 inst_U18 (
  .port1(Bus1),
  .port2(Net_U16_Pad4),
  .port3(Net_U16_Pad9),
  .port4(Net_U18_Pad4),
  .port5(Net_U16_Pad7),
  .port6(Net_U16_Pad12),
  .port7(Net_U18_Pad7),
  .port8(0),
  .port9(Net_U18_Pad9),
  .port10(0),
  .port11(Net_U16_Pad9),
  .port12(Net_U18_Pad12),
  .port13(0),
  .port14(Net_U16_Pad12),
  .port15(0),
  .port16(1)
);

ic74LS157 inst_U19 (
  .port1(Bus2),
  .port2(Net_U17_Pad4),
  .port3(Net_U18_Pad4),
  .port4(Net_U19_Pad4),
  .port5(Net_U17_Pad7),
  .port6(Net_U18_Pad7),
  .port7(Net_U19_Pad7),
  .port8(0),
  .port9(Net_U19_Pad9),
  .port10(Net_U18_Pad9),
  .port11(Net_U17_Pad9),
  .port12(Net_U19_Pad12),
  .port13(Net_U18_Pad12),
  .port14(Net_U17_Pad12),
  .port15(0),
  .port16(1)
);

ic74LS157 inst_U20 (
  .port1(Bus2),
  .port2(Net_U18_Pad4),
  .port3(0),
  .port4(Net_U20_Pad4),
  .port5(Net_U18_Pad7),
  .port6(0),
  .port7(Net_U20_Pad7),
  .port8(0),
  .port9(Net_U20_Pad9),
  .port10(0),
  .port11(Net_U18_Pad9),
  .port12(Net_U20_Pad12),
  .port13(0),
  .port14(Net_U18_Pad12),
  .port15(0),
  .port16(1)
);

ic74LS157 inst_U21 (
  .port1(ctrlAluSub),
  .port2(Net_U19_Pad4),
  .port3(Net_U20_Pad12),
  .port4(AluShift0),
  .port5(Net_U19_Pad7),
  .port6(Net_U20_Pad9),
  .port7(AluShift1),
  .port8(0),
  .port9(AluShift2),
  .port10(Net_U20_Pad7),
  .port11(Net_U19_Pad9),
  .port12(AluShift3),
  .port13(Net_U20_Pad4),
  .port14(Net_U19_Pad12),
  .port15(0),
  .port16(1)
);

ic74LS157 inst_U22 (
  .port1(ctrlAluSub),
  .port2(Net_U20_Pad4),
  .port3(Net_U19_Pad12),
  .port4(AluShift4),
  .port5(Net_U20_Pad7),
  .port6(Net_U19_Pad9),
  .port7(AluShift5),
  .port8(0),
  .port9(AluShift6),
  .port10(Net_U19_Pad7),
  .port11(Net_U20_Pad9),
  .port12(AluShift7),
  .port13(Net_U19_Pad4),
  .port14(Net_U20_Pad12),
  .port15(0),
  .port16(1)
);

ic74LS151 inst_U102 (
  .port1(Net_U102_Pad1),
  .port2(Net_U102_Pad2),
  .port3(Net_U102_Pad3),
  .port4(flagCarry),
  .port5(AluFlagCShift),
  .port7(0),
  .port8(0),
  .port9(Bus2),
  .port10(Bus1),
  .port11(Bus0),
  .port12(Net_U102_Pad12),
  .port13(Net_U102_Pad13),
  .port14(Net_U102_Pad14),
  .port15(Net_U102_Pad15),
  .port16(1)
);

ic74LS08 inst_U26 (
  .port1(AluAdder1Cin),
  .port2(AluXor4),
  .port3(Net_U26_Pad3),
  .port4(AluAdder1Bit1Cin),
  .port5(AluXor5),
  .port6(Net_U26_Pad6),
  .port7(0),
  .port8(Net_U26_Pad8),
  .port9(AluAdder1Bit2Cin),
  .port10(AluXor6),
  .port11(Net_U26_Pad11),
  .port12(AluFlagC),
  .port13(AluXor7),
  .port14(1)
);

ic74LS32 inst_U27 (
  .port1(AluAnd4),
  .port2(Net_U26_Pad3),
  .port3(AluAdder1Bit1Cin),
  .port4(AluAnd5),
  .port5(Net_U26_Pad6),
  .port6(AluAdder1Bit2Cin),
  .port7(0),
  .port8(AluFlagC),
  .port9(AluAnd6),
  .port10(Net_U26_Pad8),
  .port11(AluAdder1Cout),
  .port12(AluAnd7),
  .port13(Net_U26_Pad11),
  .port14(1)
);

ic74LS08 inst_U24 (
  .port1(AluA4),
  .port2(AluAdder1B0),
  .port3(AluAnd4),
  .port4(AluA5),
  .port5(AluAdder1B1),
  .port6(AluAnd5),
  .port7(0),
  .port8(AluAnd6),
  .port9(AluA6),
  .port10(AluAdder1B2),
  .port11(AluAnd7),
  .port12(AluA7),
  .port13(AluAdder1B3),
  .port14(1)
);

ic74LS86 inst_U25 (
  .port1(AluAdder1Cin),
  .port2(AluXor4),
  .port3(AluAdder4),
  .port4(AluAdder1Bit1Cin),
  .port5(AluXor5),
  .port6(AluAdder5),
  .port7(0),
  .port8(AluAdder6),
  .port9(AluAdder1Bit2Cin),
  .port10(AluXor6),
  .port11(AluAdder7),
  .port12(AluFlagC),
  .port13(AluXor7),
  .port14(1)
);

ic74LS86 inst_U23 (
  .port1(AluA4),
  .port2(AluAdder1B0),
  .port3(AluXor4),
  .port4(AluA5),
  .port5(AluAdder1B1),
  .port6(AluXor5),
  .port7(0),
  .port8(AluXor6),
  .port9(AluA6),
  .port10(AluAdder1B2),
  .port11(AluXor7),
  .port12(AluA7),
  .port13(AluAdder1B3),
  .port14(1)
);

ic74LS08 inst_U31 (
  .port1(ctrlAluSub),
  .port2(AluXor0),
  .port3(Net_U31_Pad3),
  .port4(AluAdder0Bit1Cin),
  .port5(AluXor1),
  .port6(Net_U31_Pad6),
  .port7(0),
  .port8(Net_U31_Pad8),
  .port9(AluAdder0Bit2Cin),
  .port10(AluXor2),
  .port11(Net_U31_Pad11),
  .port12(AluAdder0SignCout),
  .port13(AluXor3),
  .port14(1)
);

ic74LS32 inst_U32 (
  .port1(AluAnd0),
  .port2(Net_U31_Pad3),
  .port3(AluAdder0Bit1Cin),
  .port4(AluAnd1),
  .port5(Net_U31_Pad6),
  .port6(AluAdder0Bit2Cin),
  .port7(0),
  .port8(AluAdder0SignCout),
  .port9(AluAnd2),
  .port10(Net_U31_Pad8),
  .port11(AluAdder1Cin),
  .port12(AluAnd3),
  .port13(Net_U31_Pad11),
  .port14(1)
);

ic74LS08 inst_U29 (
  .port1(AluA0),
  .port2(AluAdder0B0),
  .port3(AluAnd0),
  .port4(AluA1),
  .port5(AluAdder0B1),
  .port6(AluAnd1),
  .port7(0),
  .port8(AluAnd2),
  .port9(AluA2),
  .port10(AluAdder0B2),
  .port11(AluAnd3),
  .port12(AluA3),
  .port13(AluAdder0B3),
  .port14(1)
);

ic74LS86 inst_U30 (
  .port1(ctrlAluSub),
  .port2(AluXor0),
  .port3(AluAdder0),
  .port4(AluAdder0Bit1Cin),
  .port5(AluXor1),
  .port6(AluAdder1),
  .port7(0),
  .port8(AluAdder2),
  .port9(AluAdder0Bit2Cin),
  .port10(AluXor2),
  .port11(AluAdder3),
  .port12(AluAdder0SignCout),
  .port13(AluXor3),
  .port14(1)
);

ic74LS86 inst_U28 (
  .port1(AluA0),
  .port2(AluAdder0B0),
  .port3(AluXor0),
  .port4(AluA1),
  .port5(AluAdder0B1),
  .port6(AluXor1),
  .port7(0),
  .port8(AluXor2),
  .port9(AluA2),
  .port10(AluAdder0B2),
  .port11(AluXor3),
  .port12(AluA3),
  .port13(AluAdder0B3),
  .port14(1)
);

ic74LS151 inst_U39 (
  .port1(ClockS5),
  .port2(Net_U36_Pad3),
  .port3(breakpointHitN),
  .port4(breakpointHitN),
  .port6(halt),
  .port7(0),
  .port8(0),
  .port9(0),
  .port10(ClockR2),
  .port11(ClockI2),
  .port12(1),
  .port13(1),
  .port14(1),
  .port15(1),
  .port16(1)
);

ic74LS273 inst_U35 (
  .port1(resetN),
  .port2(ClockI1),
  .port3(ClockI0),
  .port4(ClockI1),
  .port5(ClockI2),
  .port6(ClockR1),
  .port7(ClockR0),
  .port8(ClockR1),
  .port9(ClockR2),
  .port10(0),
  .port11(clk),
  .port12(ClockS1),
  .port13(ClockS0),
  .port14(ClockS1),
  .port15(ClockS2),
  .port16(ClockS3),
  .port17(ClockS2),
  .port18(ClockS4),
  .port19(ClockS5),
  .port20(1)
);

ic74LS14 inst_U33 (
  .port1(Net_C2_Pad1),
  .port2(ClockS0),
  .port3(Net_C3_Pad1),
  .port4(ClockI0),
  .port5(Net_C4_Pad1),
  .port6(ClockR0),
  .port7(0),
  .port8(breakpointEnableN),
  .port9(Net_C1_Pad1),
  .port10(Net_U33_Pad10),
  .port11(ClockS3),
  .port12(Net_U33_Pad12),
  .port13(ClockI2),
  .port14(1)
);

ic74LS08 inst_U36 (
  .port1(ClockS2),
  .port2(Net_U33_Pad10),
  .port3(Net_U36_Pad3),
  .port4(ctrlMemPCLoadN),
  .port5(resetN),
  .port6(MemoryPcS0),
  .port7(0),
  .port9(1),
  .port10(1),
  .port12(1),
  .port13(1),
  .port14(1)
);

ic74LS32 inst_U37 (
  .port1(ClockS5),
  .port2(Net_U36_Pad3),
  .port3(Net_U37_Pad3),
  .port4(Net_U37_Pad4),
  .port5(Net_U33_Pad12),
  .port6(ClockS4),
  .port7(0),
  .port9(1),
  .port10(1),
  .port12(1),
  .port13(1),
  .port14(1)
);

ic74LS08 inst_U38 (
  .port1(Net_U37_Pad3),
  .port2(ctrlInstrFinishedN),
  .port3(Net_U37_Pad4),
  .port7(0),
  .port8(Net_U38_Pad8),
  .port9(MemoryinstrImm0ToRamN),
  .port10(MemoryselectStackMemN),
  .port11(Net_U38_Pad11),
  .port12(ctrlMemInstrImmToRamAddr),
  .port13(MemoryselectStackMemN),
  .port14(1)
);

icds1813 inst_U34 (
  .port1(resetN),
  .port2(1),
  .port3(0)
);

ic74ABT540 inst_U95 (
  .port1(0),
  .port2(Net_U95_Pad2),
  .port3(Net_U95_Pad2),
  .port4(Net_U95_Pad2),
  .port5(Net_U95_Pad2),
  .port6(ClockClk),
  .port7(ClockClk),
  .port8(ClockClk),
  .port9(ClockClk),
  .port10(0),
  .port14(clkN),
  .port15(ClockClk),
  .port18(clk),
  .port19(0),
  .port20(1)
);

ic74AS825 inst_U40 (
  .port1(0),
  .port2(0),
  .port3(Bus0),
  .port4(Bus1),
  .port5(Bus2),
  .port6(Bus3),
  .port7(Bus4),
  .port8(Bus5),
  .port9(Bus6),
  .port10(Bus7),
  .port11(resetN),
  .port12(0),
  .port13(clk),
  .port14(ctrlReg0WEN),
  .port15(RegsetR07),
  .port16(RegsetR06),
  .port17(RegsetR05),
  .port18(RegsetR04),
  .port19(RegsetR03),
  .port20(RegsetR02),
  .port21(RegsetR01),
  .port22(RegsetR00),
  .port23(0),
  .port24(1)
);

ic74LS157 inst_U42 (
  .port1(ctrlRegAluSel),
  .port2(RegsetR00),
  .port3(RegsetR10),
  .port4(AluA0),
  .port5(RegsetR01),
  .port6(RegsetR11),
  .port7(AluA1),
  .port8(0),
  .port9(AluA2),
  .port10(RegsetR12),
  .port11(RegsetR02),
  .port12(AluA3),
  .port13(RegsetR13),
  .port14(RegsetR03),
  .port15(0),
  .port16(1)
);

ic74LS157 inst_U43 (
  .port1(ctrlRegAluSel),
  .port2(RegsetR04),
  .port3(RegsetR14),
  .port4(AluA4),
  .port5(RegsetR05),
  .port6(RegsetR15),
  .port7(AluA5),
  .port8(0),
  .port9(AluA6),
  .port10(RegsetR16),
  .port11(RegsetR06),
  .port12(AluA7),
  .port13(RegsetR17),
  .port14(RegsetR07),
  .port15(0),
  .port16(1)
);

ic74LS245 inst_U44 (
  .port1(1),
  .port2(RegsetR00),
  .port3(RegsetR01),
  .port4(RegsetR02),
  .port5(RegsetR03),
  .port6(RegsetR04),
  .port7(RegsetR05),
  .port8(RegsetR06),
  .port9(RegsetR07),
  .port10(0),
  .port11(Bus7_U44),
  .port12(Bus6_U44),
  .port13(Bus5_U44),
  .port14(Bus4_U44),
  .port15(Bus3_U44),
  .port16(Bus2_U44),
  .port17(Bus1_U44),
  .port18(Bus0_U44),
  .port19(ctrlReg0BusOEN),
  .port20(1)
);

ic74AS825 inst_U41 (
  .port1(0),
  .port2(0),
  .port3(Bus0),
  .port4(Bus1),
  .port5(Bus2),
  .port6(Bus3),
  .port7(Bus4),
  .port8(Bus5),
  .port9(Bus6),
  .port10(Bus7),
  .port11(resetN),
  .port12(0),
  .port13(clk),
  .port14(ctrlReg1WEN),
  .port15(RegsetR17),
  .port16(RegsetR16),
  .port17(RegsetR15),
  .port18(RegsetR14),
  .port19(RegsetR13),
  .port20(RegsetR12),
  .port21(RegsetR11),
  .port22(RegsetR10),
  .port23(0),
  .port24(1)
);

ic74LS245 inst_U45 (
  .port1(1),
  .port2(RegsetR10),
  .port3(RegsetR11),
  .port4(RegsetR12),
  .port5(RegsetR13),
  .port6(RegsetR14),
  .port7(RegsetR15),
  .port8(RegsetR16),
  .port9(RegsetR17),
  .port10(0),
  .port11(Bus7_U45),
  .port12(Bus6_U45),
  .port13(Bus5_U45),
  .port14(Bus4_U45),
  .port15(Bus3_U45),
  .port16(Bus2_U45),
  .port17(Bus1_U45),
  .port18(Bus0_U45),
  .port19(ctrlReg1BusOEN),
  .port20(1)
);

ic74ABT540 inst_U46 (
  .port1(0),
  .port2(RegsetR00),
  .port3(RegsetR01),
  .port4(RegsetR02),
  .port5(RegsetR03),
  .port6(RegsetR04),
  .port7(RegsetR05),
  .port8(RegsetR06),
  .port9(RegsetR07),
  .port10(0),
  .port11(Net_D24_Pad1),
  .port12(Net_D23_Pad1),
  .port13(Net_D22_Pad1),
  .port14(Net_D21_Pad1),
  .port15(Net_D20_Pad1),
  .port16(Net_D19_Pad1),
  .port17(Net_D18_Pad1),
  .port18(Net_D17_Pad1),
  .port19(0),
  .port20(1)
);

ic74ABT540 inst_U47 (
  .port1(0),
  .port2(RegsetR10),
  .port3(RegsetR11),
  .port4(RegsetR12),
  .port5(RegsetR13),
  .port6(RegsetR14),
  .port7(RegsetR15),
  .port8(RegsetR16),
  .port9(RegsetR17),
  .port10(0),
  .port11(Net_D32_Pad1),
  .port12(Net_D31_Pad1),
  .port13(Net_D30_Pad1),
  .port14(Net_D29_Pad1),
  .port15(Net_D28_Pad1),
  .port16(Net_D27_Pad1),
  .port17(Net_D26_Pad1),
  .port18(Net_D25_Pad1),
  .port19(0),
  .port20(1)
);

icAS6C4008_55PCN inst_U77 (
  .port2(MemoryselectStackMemN),
  .port3(MemoryRamAddress14),
  .port4(MemoryRamAddress12),
  .port5(ioAddr7),
  .port6(ioAddr6),
  .port7(ioAddr5),
  .port8(ioAddr4),
  .port9(ioAddr3),
  .port10(ioAddr2),
  .port11(ioAddr1),
  .port12(ioAddr0),
  .port13(Bus0),
  .port14(Bus1),
  .port15(Bus2),
  .port16(0),
  .port17(Bus3),
  .port18(Bus4),
  .port19(Bus5),
  .port20(Bus6),
  .port21(Bus7),
  .port22(MemoryramCEN),
  .port23(MemoryRamAddress10),
  .port24(ctrlMemRamOEN),
  .port25(MemoryRamAddress11),
  .port26(MemoryRamAddress9),
  .port27(MemoryRamAddress8),
  .port28(MemoryRamAddress13),
  .port29(ctrlMemRamWEN),
  .port31(MemoryRamAddress15),
  .port32(1)
);

ic28C256 inst_U62 (
  .port1(MemoryPc14),
  .port2(MemoryPc12),
  .port3(MemoryPc7),
  .port4(MemoryPc6),
  .port5(MemoryPc5),
  .port6(MemoryPc4),
  .port7(MemoryPc3),
  .port8(MemoryPc2),
  .port9(MemoryPc1),
  .port10(MemoryPc0),
  .port11(Net_U62_Pad11),
  .port12(Net_U62_Pad12),
  .port13(Net_U62_Pad13),
  .port14(0),
  .port15(Net_U62_Pad15),
  .port16(Net_U62_Pad16),
  .port17(Net_U62_Pad17),
  .port18(Net_U62_Pad18),
  .port19(Net_U62_Pad19),
  .port20(0),
  .port21(MemoryPc10),
  .port22(0),
  .port23(MemoryPc11),
  .port24(MemoryPc9),
  .port25(MemoryPc8),
  .port26(MemoryPc13),
  .port27(1),
  .port28(1)
);

ic28C256 inst_U67 (
  .port1(MemoryPc14),
  .port2(MemoryPc12),
  .port3(MemoryPc7),
  .port4(MemoryPc6),
  .port5(MemoryPc5),
  .port6(MemoryPc4),
  .port7(MemoryPc3),
  .port8(MemoryPc2),
  .port9(MemoryPc1),
  .port10(MemoryPc0),
  .port11(Net_U67_Pad11),
  .port12(Net_U67_Pad12),
  .port13(Net_U67_Pad13),
  .port14(0),
  .port15(Net_U67_Pad15),
  .port16(Net_U67_Pad16),
  .port17(Net_U67_Pad17),
  .port18(Net_U67_Pad18),
  .port19(Net_U67_Pad19),
  .port20(0),
  .port21(MemoryPc10),
  .port22(0),
  .port23(MemoryPc11),
  .port24(MemoryPc9),
  .port25(MemoryPc8),
  .port26(MemoryPc13),
  .port27(1),
  .port28(1)
);

ic28C256 inst_U69 (
  .port1(MemoryPc14),
  .port2(MemoryPc12),
  .port3(MemoryPc7),
  .port4(MemoryPc6),
  .port5(MemoryPc5),
  .port6(MemoryPc4),
  .port7(MemoryPc3),
  .port8(MemoryPc2),
  .port9(MemoryPc1),
  .port10(MemoryPc0),
  .port11(Net_U69_Pad11),
  .port12(Net_U69_Pad12),
  .port13(Net_U69_Pad13),
  .port14(0),
  .port15(Net_U69_Pad15),
  .port16(Net_U69_Pad16),
  .port17(Net_U69_Pad17),
  .port18(Net_U69_Pad18),
  .port19(Net_U69_Pad19),
  .port20(0),
  .port21(MemoryPc10),
  .port22(0),
  .port23(MemoryPc11),
  .port24(MemoryPc9),
  .port25(MemoryPc8),
  .port26(MemoryPc13),
  .port27(1),
  .port28(1)
);

ic74AS867 inst_U54 (
  .port1(MemoryPcS0),
  .port2(resetN),
  .port3(MemoryPcIn0),
  .port4(MemoryPcIn1),
  .port5(MemoryPcIn2),
  .port6(MemoryPcIn3),
  .port7(MemoryPcIn4),
  .port8(MemoryPcIn5),
  .port9(MemoryPcIn6),
  .port10(MemoryPcIn7),
  .port11(0),
  .port12(0),
  .port13(Net_U54_Pad13),
  .port14(clk),
  .port15(MemoryPc7),
  .port16(MemoryPc6),
  .port17(MemoryPc5),
  .port18(MemoryPc4),
  .port19(MemoryPc3),
  .port20(MemoryPc2),
  .port21(MemoryPc1),
  .port22(MemoryPc0),
  .port23(MemorypcEnN),
  .port24(1)
);

ic74AS867 inst_U55 (
  .port1(MemoryPcS0),
  .port2(resetN),
  .port3(MemoryPcIn8),
  .port4(MemoryPcIn9),
  .port5(MemoryPcIn10),
  .port6(MemoryPcIn11),
  .port7(MemoryPcIn12),
  .port8(MemoryPcIn13),
  .port9(MemoryPcIn14),
  .port10(MemoryPcIn15),
  .port11(Net_U54_Pad13),
  .port12(0),
  .port14(clk),
  .port15(MemoryPc15),
  .port16(MemoryPc14),
  .port17(MemoryPc13),
  .port18(MemoryPc12),
  .port19(MemoryPc11),
  .port20(MemoryPc10),
  .port21(MemoryPc9),
  .port22(MemoryPc8),
  .port23(MemorypcEnN),
  .port24(1)
);

ic74AS867 inst_U56 (
  .port1(resetN),
  .port2(MemorySpS1),
  .port3(0),
  .port4(0),
  .port5(0),
  .port6(0),
  .port7(0),
  .port8(0),
  .port9(0),
  .port10(0),
  .port11(0),
  .port12(0),
  .port14(clk),
  .port15(Net_U56_Pad15),
  .port16(Net_U56_Pad16),
  .port17(Net_U56_Pad17),
  .port18(Net_U56_Pad18),
  .port19(Net_U56_Pad19),
  .port20(Net_U56_Pad20),
  .port21(Net_U56_Pad21),
  .port22(Net_U56_Pad22),
  .port23(MemoryspEnN),
  .port24(1)
);

ic74LS08 inst_U59 (
  .port1(ctrlMemSPUp),
  .port2(resetN),
  .port3(MemorySpS1),
  .port7(0),
  .port8(Net_U59_Pad8),
  .port9(Net_U106_Pad3),
  .port10(resetN),
  .port11(Net_U59_Pad11),
  .port12(ControlA0),
  .port13(ControlA1),
  .port14(1)
);

ic74LS08 inst_U78 (
  .port7(0),
  .port14(1)
);

ic74AS825 inst_U70 (
  .port1(0),
  .port2(0),
  .port3(Net_U67_Pad11),
  .port4(Net_U67_Pad12),
  .port5(Net_U67_Pad13),
  .port6(Net_U67_Pad15),
  .port7(Net_U67_Pad16),
  .port8(Net_U67_Pad17),
  .port9(Net_U67_Pad18),
  .port10(Net_U67_Pad19),
  .port11(resetN),
  .port12(0),
  .port13(clk),
  .port14(ctrlMemInstrWEN),
  .port15(MemoryInstrImm7),
  .port16(MemoryInstrImm6),
  .port17(MemoryInstrImm5),
  .port18(MemoryInstrImm4),
  .port19(MemoryInstrImm3),
  .port20(MemoryInstrImm2),
  .port21(MemoryInstrImm1),
  .port22(MemoryInstrImm0),
  .port23(0),
  .port24(1)
);

ic74LS245 inst_U75 (
  .port1(1),
  .port2(MemoryInstrImm0),
  .port3(MemoryInstrImm1),
  .port4(MemoryInstrImm2),
  .port5(MemoryInstrImm3),
  .port6(MemoryInstrImm4),
  .port7(MemoryInstrImm5),
  .port8(MemoryInstrImm6),
  .port9(MemoryInstrImm7),
  .port10(0),
  .port11(Bus7_U75),
  .port12(Bus6_U75),
  .port13(Bus5_U75),
  .port14(Bus4_U75),
  .port15(Bus3_U75),
  .port16(Bus2_U75),
  .port17(Bus1_U75),
  .port18(Bus0_U75),
  .port19(ctrlMemInstrOEN),
  .port20(1)
);

ic74AS825 inst_U71 (
  .port1(0),
  .port2(0),
  .port3(Net_U69_Pad11),
  .port4(Net_U69_Pad12),
  .port5(Net_U69_Pad13),
  .port6(Net_U69_Pad15),
  .port7(Net_U69_Pad16),
  .port8(Net_U69_Pad17),
  .port9(Net_U69_Pad18),
  .port10(Net_U69_Pad19),
  .port11(resetN),
  .port12(0),
  .port13(clk),
  .port14(ctrlMemInstrWEN),
  .port15(MemoryInstrImm15),
  .port16(MemoryInstrImm14),
  .port17(MemoryInstrImm13),
  .port18(MemoryInstrImm12),
  .port19(MemoryInstrImm11),
  .port20(MemoryInstrImm10),
  .port21(MemoryInstrImm9),
  .port22(MemoryInstrImm8),
  .port23(0),
  .port24(1)
);

ic74AS825 inst_U64 (
  .port1(0),
  .port2(0),
  .port3(Net_U62_Pad11),
  .port4(Net_U62_Pad12),
  .port5(Net_U62_Pad13),
  .port6(Net_U62_Pad15),
  .port7(Net_U62_Pad16),
  .port8(Net_U62_Pad17),
  .port9(Net_U62_Pad18),
  .port10(Net_U62_Pad19),
  .port11(resetN),
  .port12(0),
  .port13(clk),
  .port14(ctrlMemInstrWEN),
  .port15(MemoryInstr7),
  .port16(MemoryInstr6),
  .port17(MemoryInstr5),
  .port18(MemoryInstr4),
  .port19(MemoryInstr3),
  .port20(MemoryInstr2),
  .port21(MemoryInstr1),
  .port22(MemoryInstr0),
  .port23(0),
  .port24(1)
);

ic74AS825 inst_U63 (
  .port1(ctrlMemInstrImmToRamAddr),
  .port2(0),
  .port3(Bus0),
  .port4(Bus1),
  .port5(Bus2),
  .port6(Bus3),
  .port7(Bus4),
  .port8(Bus5),
  .port9(Bus6),
  .port10(Bus7),
  .port11(resetN),
  .port12(0),
  .port13(clk),
  .port14(ctrlMemMar0WEN),
  .port15(ioAddr7),
  .port16(ioAddr6),
  .port17(ioAddr5),
  .port18(ioAddr4),
  .port19(ioAddr3),
  .port20(ioAddr2),
  .port21(ioAddr1),
  .port22(ioAddr0),
  .port23(0),
  .port24(1)
);

ic74AS825 inst_U68 (
  .port1(0),
  .port2(0),
  .port3(Bus0),
  .port4(Bus1),
  .port5(Bus2),
  .port6(Bus3),
  .port7(Bus4),
  .port8(Bus5),
  .port9(Bus6),
  .port10(Bus7),
  .port11(resetN),
  .port12(0),
  .port13(clk),
  .port14(ctrlMemMar1WEN),
  .port15(MemoryMar15),
  .port16(MemoryMar14),
  .port17(MemoryMar13),
  .port18(MemoryMar12),
  .port19(MemoryMar11),
  .port20(MemoryMar10),
  .port21(MemoryMar9),
  .port22(MemoryMar8),
  .port23(0),
  .port24(1)
);

ic74LS245 inst_U61 (
  .port1(1),
  .port2(Net_U56_Pad22),
  .port3(Net_U56_Pad21),
  .port4(Net_U56_Pad20),
  .port5(Net_U56_Pad19),
  .port6(Net_U56_Pad18),
  .port7(Net_U56_Pad17),
  .port8(Net_U56_Pad16),
  .port9(Net_U56_Pad15),
  .port10(0),
  .port11(MemoryRamAddress15_U61),
  .port12(MemoryRamAddress14_U61),
  .port13(MemoryRamAddress13_U61),
  .port14(MemoryRamAddress12_U61),
  .port15(MemoryRamAddress11_U61),
  .port16(MemoryRamAddress10_U61),
  .port17(MemoryRamAddress9_U61),
  .port18(MemoryRamAddress8_U61),
  .port19(MemoryselectStackMemN),
  .port20(1)
);

ic74LS245 inst_U65 (
  .port1(1),
  .port2(MemoryInstrImm0),
  .port3(MemoryInstrImm1),
  .port4(MemoryInstrImm2),
  .port5(MemoryInstrImm3),
  .port6(MemoryInstrImm4),
  .port7(MemoryInstrImm5),
  .port8(MemoryInstrImm6),
  .port9(MemoryInstrImm7),
  .port10(0),
  .port11(ioAddr7_U65),
  .port12(ioAddr6_U65),
  .port13(ioAddr5_U65),
  .port14(ioAddr4_U65),
  .port15(ioAddr3_U65),
  .port16(ioAddr2_U65),
  .port17(ioAddr1_U65),
  .port18(ioAddr0_U65),
  .port19(MemoryinstrImm0ToRamN),
  .port20(1)
);

ic74LS245 inst_U66 (
  .port1(1),
  .port2(MemoryInstrImm8),
  .port3(MemoryInstrImm9),
  .port4(MemoryInstrImm10),
  .port5(MemoryInstrImm11),
  .port6(MemoryInstrImm12),
  .port7(MemoryInstrImm13),
  .port8(MemoryInstrImm14),
  .port9(MemoryInstrImm15),
  .port10(0),
  .port11(MemoryRamAddress15_U66),
  .port12(MemoryRamAddress14_U66),
  .port13(MemoryRamAddress13_U66),
  .port14(MemoryRamAddress12_U66),
  .port15(MemoryRamAddress11_U66),
  .port16(MemoryRamAddress10_U66),
  .port17(MemoryRamAddress9_U66),
  .port18(MemoryRamAddress8_U66),
  .port19(MemoryinstrImm1ToRamN),
  .port20(1)
);

ic74LS04 inst_U48 (
  .port1(ctrlMemInstrImmToRamAddr),
  .port2(MemoryinstrImm0ToRamN),
  .port5(Net_U38_Pad11),
  .port6(MemoryinstrImm1ToRamN),
  .port7(0),
  .port8(Net_U48_Pad8),
  .port9(ctrlMemPCFromImm),
  .port10(Net_U48_Pad10),
  .port11(ctrlMemPCFromImm),
  .port12(Memorymar1ToRamN),
  .port13(Net_U38_Pad8),
  .port14(1)
);

ic74LS245 inst_U72 (
  .port1(1),
  .port2(MemoryMar8),
  .port3(MemoryMar9),
  .port4(MemoryMar10),
  .port5(MemoryMar11),
  .port6(MemoryMar12),
  .port7(MemoryMar13),
  .port8(MemoryMar14),
  .port9(MemoryMar15),
  .port10(0),
  .port11(MemoryRamAddress15_U72),
  .port12(MemoryRamAddress14_U72),
  .port13(MemoryRamAddress13_U72),
  .port14(MemoryRamAddress12_U72),
  .port15(MemoryRamAddress11_U72),
  .port16(MemoryRamAddress10_U72),
  .port17(MemoryRamAddress9_U72),
  .port18(MemoryRamAddress8_U72),
  .port19(Memorymar1ToRamN),
  .port20(1)
);

ic74LS245 inst_U73 (
  .port1(1),
  .port2(MemoryMar8),
  .port3(MemoryMar9),
  .port4(MemoryMar10),
  .port5(MemoryMar11),
  .port6(MemoryMar12),
  .port7(MemoryMar13),
  .port8(MemoryMar14),
  .port9(MemoryMar15),
  .port10(0),
  .port11(MemorySelect7_U73),
  .port12(MemorySelect6_U73),
  .port13(MemorySelect5_U73),
  .port14(MemorySelect4_U73),
  .port15(MemorySelect3_U73),
  .port16(MemorySelect2_U73),
  .port17(MemorySelect1_U73),
  .port18(MemorySelect0_U73),
  .port19(ctrlMemInstrImmToRamAddr),
  .port20(1)
);

ic74LS245 inst_U74 (
  .port1(1),
  .port2(MemoryInstrImm8),
  .port3(MemoryInstrImm9),
  .port4(MemoryInstrImm10),
  .port5(MemoryInstrImm11),
  .port6(MemoryInstrImm12),
  .port7(MemoryInstrImm13),
  .port8(MemoryInstrImm14),
  .port9(MemoryInstrImm15),
  .port10(0),
  .port11(MemorySelect7_U74),
  .port12(MemorySelect6_U74),
  .port13(MemorySelect5_U74),
  .port14(MemorySelect4_U74),
  .port15(MemorySelect3_U74),
  .port16(MemorySelect2_U74),
  .port17(MemorySelect1_U74),
  .port18(MemorySelect0_U74),
  .port19(MemoryinstrImm0ToRamN),
  .port20(1)
);

ic74LS245 inst_U52 (
  .port1(1),
  .port2(MemoryInstrImm0),
  .port3(MemoryInstrImm1),
  .port4(MemoryInstrImm2),
  .port5(MemoryInstrImm3),
  .port6(MemoryInstrImm4),
  .port7(MemoryInstrImm5),
  .port8(MemoryInstrImm6),
  .port9(MemoryInstrImm7),
  .port10(0),
  .port11(MemoryPcIn7_U52),
  .port12(MemoryPcIn6_U52),
  .port13(MemoryPcIn5_U52),
  .port14(MemoryPcIn4_U52),
  .port15(MemoryPcIn3_U52),
  .port16(MemoryPcIn2_U52),
  .port17(MemoryPcIn1_U52),
  .port18(MemoryPcIn0_U52),
  .port19(Net_U48_Pad8),
  .port20(1)
);

ic74LS245 inst_U51 (
  .port1(1),
  .port2(Bus0),
  .port3(Bus1),
  .port4(Bus2),
  .port5(Bus3),
  .port6(Bus4),
  .port7(Bus5),
  .port8(Bus6),
  .port9(Bus7),
  .port10(0),
  .port11(MemoryPcIn7_U51),
  .port12(MemoryPcIn6_U51),
  .port13(MemoryPcIn5_U51),
  .port14(MemoryPcIn4_U51),
  .port15(MemoryPcIn3_U51),
  .port16(MemoryPcIn2_U51),
  .port17(MemoryPcIn1_U51),
  .port18(MemoryPcIn0_U51),
  .port19(ctrlMemPCFromImm),
  .port20(1)
);

ic74LS245 inst_U50 (
  .port1(1),
  .port2(MemoryInstrImm8),
  .port3(MemoryInstrImm9),
  .port4(MemoryInstrImm10),
  .port5(MemoryInstrImm11),
  .port6(MemoryInstrImm12),
  .port7(MemoryInstrImm13),
  .port8(MemoryInstrImm14),
  .port9(MemoryInstrImm15),
  .port10(0),
  .port11(MemoryPcIn15_U50),
  .port12(MemoryPcIn14_U50),
  .port13(MemoryPcIn13_U50),
  .port14(MemoryPcIn12_U50),
  .port15(MemoryPcIn11_U50),
  .port16(MemoryPcIn10_U50),
  .port17(MemoryPcIn9_U50),
  .port18(MemoryPcIn8_U50),
  .port19(Net_U48_Pad10),
  .port20(1)
);

ic74LS245 inst_U49 (
  .port1(1),
  .port2(MemoryRam2data0),
  .port3(MemoryRam2data1),
  .port4(MemoryRam2data2),
  .port5(MemoryRam2data3),
  .port6(MemoryRam2data4),
  .port7(MemoryRam2data5),
  .port8(MemoryRam2data6),
  .port9(MemoryRam2data7),
  .port10(0),
  .port11(MemoryPcIn15_U49),
  .port12(MemoryPcIn14_U49),
  .port13(MemoryPcIn13_U49),
  .port14(MemoryPcIn12_U49),
  .port15(MemoryPcIn11_U49),
  .port16(MemoryPcIn10_U49),
  .port17(MemoryPcIn9_U49),
  .port18(MemoryPcIn8_U49),
  .port19(ctrlMemPCFromImm),
  .port20(1)
);

ic74F521 inst_U53 (
  .port1(breakpointEnableN),
  .port2(MemoryPc0),
  .port3(MemoryComp0),
  .port4(MemoryPc1),
  .port5(MemoryComp1),
  .port6(MemoryPc2),
  .port7(MemoryComp2),
  .port8(MemoryPc3),
  .port9(MemoryComp3),
  .port10(0),
  .port11(MemoryPc4),
  .port12(MemoryComp4),
  .port13(MemoryPc5),
  .port14(MemoryComp5),
  .port15(MemoryPc6),
  .port16(MemoryComp6),
  .port17(MemoryPc7),
  .port18(MemoryComp7),
  .port19(Net_U53_Pad19),
  .port20(1)
);

ic74F521 inst_U60 (
  .port1(Net_U53_Pad19),
  .port2(MemoryPc8),
  .port3(MemoryComp8),
  .port4(MemoryPc9),
  .port5(MemoryComp9),
  .port6(MemoryPc10),
  .port7(MemoryComp10),
  .port8(MemoryPc11),
  .port9(MemoryComp11),
  .port10(0),
  .port11(MemoryPc12),
  .port12(MemoryComp12),
  .port13(MemoryPc13),
  .port14(MemoryComp13),
  .port15(MemoryPc14),
  .port16(MemoryComp14),
  .port17(MemoryPc15),
  .port18(MemoryComp15),
  .port19(breakpointHitN),
  .port20(1)
);

ic74F521 inst_U76 (
  .port1(0),
  .port2(MemorySelect0),
  .port3(1),
  .port4(MemorySelect1),
  .port5(1),
  .port6(MemorySelect2),
  .port7(1),
  .port8(MemorySelect3),
  .port9(1),
  .port10(0),
  .port11(MemorySelect4),
  .port12(1),
  .port13(MemorySelect5),
  .port14(1),
  .port15(MemorySelect6),
  .port16(1),
  .port17(MemorySelect7),
  .port18(1),
  .port19(MemoryselectStackMemN),
  .port20(1)
);

ic74F521 inst_U79 (
  .port1(0),
  .port2(MemorySelect0),
  .port3(0),
  .port4(MemorySelect1),
  .port5(1),
  .port6(MemorySelect2),
  .port7(1),
  .port8(MemorySelect3),
  .port9(1),
  .port10(0),
  .port11(MemorySelect4),
  .port12(1),
  .port13(MemorySelect5),
  .port14(1),
  .port15(MemorySelect6),
  .port16(1),
  .port17(MemorySelect7),
  .port18(1),
  .port19(ioCEN),
  .port20(1)
);

ic74LS04 inst_U80 (
  .port1(ioCEN),
  .port2(MemoryramCEN),
  .port3(ctrlMemPCToRamN),
  .port4(Net_U100_Pad24)
);

ic74ABT540 inst_U57 (
  .port1(0),
  .port2(MemoryPc0),
  .port3(MemoryPc1),
  .port4(MemoryPc2),
  .port5(MemoryPc3),
  .port6(MemoryPc4),
  .port7(MemoryPc5),
  .port8(MemoryPc6),
  .port9(MemoryPc7),
  .port10(0),
  .port11(Net_D40_Pad1),
  .port12(Net_D39_Pad1),
  .port13(Net_D38_Pad1),
  .port14(Net_D37_Pad1),
  .port15(Net_D36_Pad1),
  .port16(Net_D35_Pad1),
  .port17(Net_D34_Pad1),
  .port18(Net_D33_Pad1),
  .port19(0),
  .port20(1)
);

ic74ABT540 inst_U58 (
  .port1(0),
  .port2(MemoryPc8),
  .port3(MemoryPc9),
  .port4(MemoryPc10),
  .port5(MemoryPc11),
  .port6(MemoryPc12),
  .port7(MemoryPc13),
  .port8(MemoryPc14),
  .port9(MemoryPc15),
  .port10(0),
  .port11(Net_D48_Pad1),
  .port12(Net_D47_Pad1),
  .port13(Net_D46_Pad1),
  .port14(Net_D45_Pad1),
  .port15(Net_D44_Pad1),
  .port16(Net_D43_Pad1),
  .port17(Net_D42_Pad1),
  .port18(Net_D41_Pad1),
  .port19(0),
  .port20(1)
);

ic74LS245 inst_U99 (
  .port1(1),
  .port2(MemoryPc0),
  .port3(MemoryPc1),
  .port4(MemoryPc2),
  .port5(MemoryPc3),
  .port6(MemoryPc4),
  .port7(MemoryPc5),
  .port8(MemoryPc6),
  .port9(MemoryPc7),
  .port10(0),
  .port11(Bus7_U99),
  .port12(Bus6_U99),
  .port13(Bus5_U99),
  .port14(Bus4_U99),
  .port15(Bus3_U99),
  .port16(Bus2_U99),
  .port17(Bus1_U99),
  .port18(Bus0_U99),
  .port19(ctrlMemPCToRamN),
  .port20(1)
);

icAS6C4008_55PCN inst_U100 (
  .port2(MemoryselectStackMemN),
  .port3(MemoryRamAddress14),
  .port4(MemoryRamAddress12),
  .port5(ioAddr7),
  .port6(ioAddr6),
  .port7(ioAddr5),
  .port8(ioAddr4),
  .port9(ioAddr3),
  .port10(ioAddr2),
  .port11(ioAddr1),
  .port12(ioAddr0),
  .port13(MemoryRam2data0),
  .port14(MemoryRam2data1),
  .port15(MemoryRam2data2),
  .port16(0),
  .port17(MemoryRam2data3),
  .port18(MemoryRam2data4),
  .port19(MemoryRam2data5),
  .port20(MemoryRam2data6),
  .port21(MemoryRam2data7),
  .port22(MemoryramCEN),
  .port23(MemoryRamAddress10),
  .port24(Net_U100_Pad24),
  .port25(MemoryRamAddress11),
  .port26(MemoryRamAddress9),
  .port27(MemoryRamAddress8),
  .port28(MemoryRamAddress13),
  .port29(ctrlMemRamWEN),
  .port31(MemoryRamAddress15),
  .port32(1)
);

ic74LS245 inst_U98 (
  .port1(1),
  .port2(MemoryPc8),
  .port3(MemoryPc9),
  .port4(MemoryPc10),
  .port5(MemoryPc11),
  .port6(MemoryPc12),
  .port7(MemoryPc13),
  .port8(MemoryPc14),
  .port9(MemoryPc15),
  .port10(0),
  .port11(MemoryRam2data7_U98),
  .port12(MemoryRam2data6_U98),
  .port13(MemoryRam2data5_U98),
  .port14(MemoryRam2data4_U98),
  .port15(MemoryRam2data3_U98),
  .port16(MemoryRam2data2_U98),
  .port17(MemoryRam2data1_U98),
  .port18(MemoryRam2data0_U98),
  .port19(ctrlMemPCToRamN),
  .port20(1)
);

ic74LS32 inst_U103 (
  .port1(ctrlMemSPEnN),
  .port2(halt),
  .port3(MemoryspEnN),
  .port4(ctrlMemPCEnN),
  .port5(halt),
  .port6(Net_U103_Pad6)
);

ic74LS08 inst_U105 (
  .port1(Net_U103_Pad6),
  .port2(ctrlMemPCLoadN),
  .port3(MemorypcEnN)
);

ic74LS374 inst_U84 (
  .port1(0),
  .port2(ctrlAluSub),
  .port3(MemoryInstr0),
  .port4(MemoryInstr1),
  .port5(ctrlAluOp0),
  .port6(ctrlAluOp1),
  .port7(MemoryInstr2),
  .port8(MemoryInstr3),
  .port9(ControlA6),
  .port10(0),
  .port11(clkN),
  .port12(ControlA7),
  .port13(MemoryInstr4),
  .port14(MemoryInstr5),
  .port15(ControlA8),
  .port16(ControlA9),
  .port17(MemoryInstr6),
  .port18(MemoryInstr7),
  .port19(ControlA10),
  .port20(1)
);

ic74LS86 inst_U81 (
  .port4(1),
  .port5(ControlA0),
  .port6(ControlS0),
  .port7(0),
  .port8(ControlS2),
  .port9(ControlA2),
  .port10(Net_U59_Pad11),
  .port11(ControlS1),
  .port12(ControlA0),
  .port13(ControlA1),
  .port14(1)
);

ic74LS08 inst_U82 (
  .port7(0),
  .port14(1)
);

ic28C256 inst_U85 (
  .port1(ControlA14),
  .port2(ControlA12),
  .port3(ControlA7),
  .port4(ControlA6),
  .port5(ctrlAluOp1),
  .port6(ctrlAluOp0),
  .port7(ctrlAluSub),
  .port8(ControlA2),
  .port9(ControlA1),
  .port10(ControlA0),
  .port11(ctrlAluYWEN),
  .port12(ctrlAluOEN),
  .port13(ctrlReg0WEN),
  .port14(0),
  .port15(ctrlReg1WEN),
  .port16(ctrlRegAluSel),
  .port17(ctrlReg0BusOEN),
  .port18(ctrlReg1BusOEN),
  .port19(ctrlMemPCLoadN),
  .port20(0),
  .port21(ControlA10),
  .port22(0),
  .port23(ControlA11),
  .port24(ControlA9),
  .port25(ControlA8),
  .port26(ControlA13),
  .port27(1),
  .port28(1)
);

ic28C256 inst_U86 (
  .port1(ControlA14),
  .port2(ControlA12),
  .port3(ControlA7),
  .port4(ControlA6),
  .port5(ctrlAluOp1),
  .port6(ctrlAluOp0),
  .port7(ctrlAluSub),
  .port8(ControlA2),
  .port9(ControlA1),
  .port10(ControlA0),
  .port11(ctrlMemSPUp),
  .port12(ctrlMemSPEnN),
  .port13(ctrlMemInstrWEN),
  .port14(0),
  .port15(ctrlMemInstrOEN),
  .port16(ctrlMemMar0WEN),
  .port17(ctrlMemMar1WEN),
  .port18(ctrlMemInstrImmToRamAddr),
  .port19(ctrlMemRamWEN),
  .port20(0),
  .port21(ControlA10),
  .port22(0),
  .port23(ControlA11),
  .port24(ControlA9),
  .port25(ControlA8),
  .port26(ControlA13),
  .port27(1),
  .port28(1)
);

ic28C256 inst_U87 (
  .port1(ControlA14),
  .port2(ControlA12),
  .port3(ControlA7),
  .port4(ControlA6),
  .port5(ctrlAluOp1),
  .port6(ctrlAluOp0),
  .port7(ctrlAluSub),
  .port8(ControlA2),
  .port9(ControlA1),
  .port10(ControlA0),
  .port11(ctrlMemRamOEN),
  .port12(ctrlMemPCEnN),
  .port13(ctrlMemPCFromImm),
  .port14(0),
  .port15(ctrlMemPCToRamN),
  .port16(ctrlInstrFinishedN),
  .port20(0),
  .port21(ControlA10),
  .port22(0),
  .port23(ControlA11),
  .port24(ControlA9),
  .port25(ControlA8),
  .port26(ControlA13),
  .port27(1),
  .port28(1)
);

ic74AS825 inst_U83 (
  .port1(0),
  .port2(0),
  .port3(flagNegative),
  .port4(flagZero),
  .port5(flagCarry),
  .port6(flagOverflow),
  .port8(ControlS0),
  .port9(ControlS1),
  .port10(ControlS2),
  .port11(Net_U59_Pad8),
  .port12(0),
  .port13(clkN),
  .port14(halt),
  .port15(ControlA2),
  .port16(ControlA1),
  .port17(ControlA0),
  .port19(ControlA14),
  .port20(ControlA13),
  .port21(ControlA12),
  .port22(ControlA11),
  .port23(0),
  .port24(1)
);

ic74ABT540 inst_U96 (
  .port1(0),
  .port2(ControlA0),
  .port3(ControlA1),
  .port4(ControlA2),
  .port5(0),
  .port6(0),
  .port7(0),
  .port8(0),
  .port9(0),
  .port10(0),
  .port11(Net_D56_Pad1),
  .port12(Net_D55_Pad1),
  .port13(Net_D54_Pad1),
  .port14(Net_D53_Pad1),
  .port15(Net_D52_Pad1),
  .port16(Net_D51_Pad1),
  .port17(Net_D50_Pad1),
  .port18(Net_D49_Pad1),
  .port19(0),
  .port20(1)
);

ic74LS32 inst_U106 (
  .port1(ctrlInstrFinishedN),
  .port2(halt),
  .port3(Net_U106_Pad3)
);

ic74LS273 inst_U92 (
  .port1(resetN),
  .port2(Net_U92_Pad2),
  .port3(Bus0),
  .port4(Bus1),
  .port5(Net_U92_Pad5),
  .port6(Net_U92_Pad6),
  .port7(Bus2),
  .port8(Bus3),
  .port9(Net_U92_Pad9),
  .port10(0),
  .port11(Net_U89_Pad3),
  .port12(Net_U92_Pad12),
  .port13(Bus4),
  .port14(Bus5),
  .port15(Net_U92_Pad15),
  .port16(Net_U92_Pad16),
  .port17(Bus6),
  .port18(Bus7),
  .port19(Net_U92_Pad19),
  .port20(1)
);

ic74F521 inst_U88 (
  .port1(ioCEN),
  .port2(ioAddr0),
  .port3(0),
  .port4(ioAddr1),
  .port5(0),
  .port6(ioAddr2),
  .port7(0),
  .port8(ioAddr3),
  .port9(0),
  .port10(0),
  .port11(ioAddr4),
  .port12(0),
  .port13(ioAddr5),
  .port14(0),
  .port15(ioAddr6),
  .port16(0),
  .port17(ioAddr7),
  .port18(0),
  .port19(Net_U88_Pad19),
  .port20(1)
);

ic74LS32 inst_U89 (
  .port1(Net_U88_Pad19),
  .port2(ctrlMemRamWEN),
  .port3(Net_U89_Pad3)
);

ic74LS245 inst_U91 (
  .port1(1),
  .port2(Net_RN10_Pad9),
  .port3(Net_RN10_Pad8),
  .port4(Net_RN10_Pad7),
  .port5(Net_RN10_Pad6),
  .port6(Net_RN10_Pad5),
  .port7(Net_RN10_Pad4),
  .port8(Net_RN10_Pad3),
  .port9(Net_RN10_Pad2),
  .port10(1),
  .port11(Bus0_U91),
  .port12(Bus1_U91),
  .port13(Bus2_U91),
  .port14(Bus3_U91),
  .port15(Bus4_U91),
  .port16(Bus5_U91),
  .port17(Bus6_U91),
  .port18(Bus7_U91),
  .port19(Net_U90_Pad3),
  .port20(0)
);

ic74LS32 inst_U90 (
  .port1(Net_U88_Pad19),
  .port2(ctrlMemRamOEN),
  .port3(Net_U90_Pad3)
);

ic5082_7340 inst_U93 (
  .port1(Net_U92_Pad5),
  .port2(Net_U92_Pad6),
  .port3(Net_U92_Pad9),
  .port4(0),
  .port5(0),
  .port6(0),
  .port7(1),
  .port8(Net_U92_Pad2)
);

ic5082_7340 inst_U94 (
  .port1(Net_U92_Pad15),
  .port2(Net_U92_Pad16),
  .port3(Net_U92_Pad19),
  .port4(0),
  .port5(0),
  .port6(0),
  .port7(1),
  .port8(Net_U92_Pad12)
);

endmodule