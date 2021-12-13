
module generated(
  
  // clocks
  input wire i_oszClk,
  input wire i_asyncRamSpecialClock,
  input wire i_asyncEEPROMSpecialClock,
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
wire AluAdder0Bit0Cout;
wire AluAdder0Bit1Cout;
wire AluAdder0Cout;
wire AluAdder0SignCout;
wire AluAdder1;
wire AluAdder1B0;
wire AluAdder1B1;
wire AluAdder1B2;
wire AluAdder1B3;
wire AluAdder1Bit0Cout;
wire AluAdder1Bit1Cout;
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
wire Bus0_U77;
wire Bus0_U91;
wire Bus0_U99;
wire Bus0_noe;
wire Bus1;
wire Bus1_U10;
wire Bus1_U44;
wire Bus1_U45;
wire Bus1_U75;
wire Bus1_U77;
wire Bus1_U91;
wire Bus1_U99;
wire Bus1_noe;
wire Bus2;
wire Bus2_U10;
wire Bus2_U44;
wire Bus2_U45;
wire Bus2_U75;
wire Bus2_U77;
wire Bus2_U91;
wire Bus2_U99;
wire Bus2_noe;
wire Bus3;
wire Bus3_U10;
wire Bus3_U44;
wire Bus3_U45;
wire Bus3_U75;
wire Bus3_U77;
wire Bus3_U91;
wire Bus3_U99;
wire Bus3_noe;
wire Bus4;
wire Bus4_U10;
wire Bus4_U44;
wire Bus4_U45;
wire Bus4_U75;
wire Bus4_U77;
wire Bus4_U91;
wire Bus4_U99;
wire Bus4_noe;
wire Bus5;
wire Bus5_U10;
wire Bus5_U44;
wire Bus5_U45;
wire Bus5_U75;
wire Bus5_U77;
wire Bus5_U91;
wire Bus5_U99;
wire Bus5_noe;
wire Bus6;
wire Bus6_U10;
wire Bus6_U44;
wire Bus6_U45;
wire Bus6_U75;
wire Bus6_U77;
wire Bus6_U91;
wire Bus6_U99;
wire Bus6_noe;
wire Bus7;
wire Bus7_U10;
wire Bus7_U44;
wire Bus7_U45;
wire Bus7_U75;
wire Bus7_U77;
wire Bus7_U91;
wire Bus7_U99;
wire Bus7_noe;
wire ClockClkN;
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
wire ControlA0_U83;
wire ControlA0_noe;
wire ControlA1;
wire ControlA10;
wire ControlA11;
wire ControlA11_U83;
wire ControlA11_noe;
wire ControlA12;
wire ControlA12_U83;
wire ControlA12_noe;
wire ControlA13;
wire ControlA13_U83;
wire ControlA13_noe;
wire ControlA14;
wire ControlA14_U83;
wire ControlA14_noe;
wire ControlA1_U83;
wire ControlA1_noe;
wire ControlA2;
wire ControlA2_U83;
wire ControlA2_noe;
wire ControlA6;
wire ControlA7;
wire ControlA8;
wire ControlA9;
wire ControlInstrCode0;
wire ControlInstrCode0_U64;
wire ControlInstrCode0_noe;
wire ControlInstrCode1;
wire ControlInstrCode1_U64;
wire ControlInstrCode1_noe;
wire ControlInstrCode2;
wire ControlInstrCode2_U64;
wire ControlInstrCode2_noe;
wire ControlInstrCode3;
wire ControlInstrCode3_U64;
wire ControlInstrCode3_noe;
wire ControlInstrCode4;
wire ControlInstrCode4_U64;
wire ControlInstrCode4_noe;
wire ControlInstrCode5;
wire ControlInstrCode5_U64;
wire ControlInstrCode5_noe;
wire ControlInstrCode6;
wire ControlInstrCode6_U64;
wire ControlInstrCode6_noe;
wire ControlInstrCode7;
wire ControlInstrCode7_U64;
wire ControlInstrCode7_noe;
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
wire MemoryInstrImm0;
wire MemoryInstrImm0_U70;
wire MemoryInstrImm0_noe;
wire MemoryInstrImm1;
wire MemoryInstrImm10;
wire MemoryInstrImm10_U71;
wire MemoryInstrImm10_noe;
wire MemoryInstrImm11;
wire MemoryInstrImm11_U71;
wire MemoryInstrImm11_noe;
wire MemoryInstrImm12;
wire MemoryInstrImm12_U71;
wire MemoryInstrImm12_noe;
wire MemoryInstrImm13;
wire MemoryInstrImm13_U71;
wire MemoryInstrImm13_noe;
wire MemoryInstrImm14;
wire MemoryInstrImm14_U71;
wire MemoryInstrImm14_noe;
wire MemoryInstrImm15;
wire MemoryInstrImm15_U71;
wire MemoryInstrImm15_noe;
wire MemoryInstrImm1_U70;
wire MemoryInstrImm1_noe;
wire MemoryInstrImm2;
wire MemoryInstrImm2_U70;
wire MemoryInstrImm2_noe;
wire MemoryInstrImm3;
wire MemoryInstrImm3_U70;
wire MemoryInstrImm3_noe;
wire MemoryInstrImm4;
wire MemoryInstrImm4_U70;
wire MemoryInstrImm4_noe;
wire MemoryInstrImm5;
wire MemoryInstrImm5_U70;
wire MemoryInstrImm5_noe;
wire MemoryInstrImm6;
wire MemoryInstrImm6_U70;
wire MemoryInstrImm6_noe;
wire MemoryInstrImm7;
wire MemoryInstrImm7_U70;
wire MemoryInstrImm7_noe;
wire MemoryInstrImm8;
wire MemoryInstrImm8_U71;
wire MemoryInstrImm8_noe;
wire MemoryInstrImm9;
wire MemoryInstrImm9_U71;
wire MemoryInstrImm9_noe;
wire MemoryMar10;
wire MemoryMar10_U68;
wire MemoryMar10_noe;
wire MemoryMar11;
wire MemoryMar11_U68;
wire MemoryMar11_noe;
wire MemoryMar12;
wire MemoryMar12_U68;
wire MemoryMar12_noe;
wire MemoryMar13;
wire MemoryMar13_U68;
wire MemoryMar13_noe;
wire MemoryMar14;
wire MemoryMar14_U68;
wire MemoryMar14_noe;
wire MemoryMar15;
wire MemoryMar15_U68;
wire MemoryMar15_noe;
wire MemoryMar8;
wire MemoryMar8_U68;
wire MemoryMar8_noe;
wire MemoryMar9;
wire MemoryMar9_U68;
wire MemoryMar9_noe;
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
wire MemoryRam2data0_U100;
wire MemoryRam2data0_U98;
wire MemoryRam2data0_noe;
wire MemoryRam2data1;
wire MemoryRam2data1_U100;
wire MemoryRam2data1_U98;
wire MemoryRam2data1_noe;
wire MemoryRam2data2;
wire MemoryRam2data2_U100;
wire MemoryRam2data2_U98;
wire MemoryRam2data2_noe;
wire MemoryRam2data3;
wire MemoryRam2data3_U100;
wire MemoryRam2data3_U98;
wire MemoryRam2data3_noe;
wire MemoryRam2data4;
wire MemoryRam2data4_U100;
wire MemoryRam2data4_U98;
wire MemoryRam2data4_noe;
wire MemoryRam2data5;
wire MemoryRam2data5_U100;
wire MemoryRam2data5_U98;
wire MemoryRam2data5_noe;
wire MemoryRam2data6;
wire MemoryRam2data6_U100;
wire MemoryRam2data6_U98;
wire MemoryRam2data6_noe;
wire MemoryRam2data7;
wire MemoryRam2data7_U100;
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
wire Net_U10_Pad2_U9;
wire Net_U10_Pad2_noe;
wire Net_U10_Pad3;
wire Net_U10_Pad3_U9;
wire Net_U10_Pad3_noe;
wire Net_U10_Pad4;
wire Net_U10_Pad4_U9;
wire Net_U10_Pad4_noe;
wire Net_U10_Pad5;
wire Net_U10_Pad5_U9;
wire Net_U10_Pad5_noe;
wire Net_U10_Pad6;
wire Net_U10_Pad6_U9;
wire Net_U10_Pad6_noe;
wire Net_U10_Pad7;
wire Net_U10_Pad7_U9;
wire Net_U10_Pad7_noe;
wire Net_U10_Pad8;
wire Net_U10_Pad8_U9;
wire Net_U10_Pad8_noe;
wire Net_U10_Pad9;
wire Net_U10_Pad9_U9;
wire Net_U10_Pad9_noe;
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
wire Net_U90_Pad3;
wire Net_U92_Pad14;
wire Net_U93_Pad1;
wire Net_U93_Pad1_U92;
wire Net_U93_Pad1_noe;
wire Net_U93_Pad2;
wire Net_U93_Pad2_U92;
wire Net_U93_Pad2_noe;
wire Net_U93_Pad3;
wire Net_U93_Pad3_U92;
wire Net_U93_Pad3_noe;
wire Net_U93_Pad8;
wire Net_U93_Pad8_U92;
wire Net_U93_Pad8_noe;
wire Net_U94_Pad1;
wire Net_U94_Pad1_U92;
wire Net_U94_Pad1_noe;
wire Net_U94_Pad2;
wire Net_U94_Pad2_U92;
wire Net_U94_Pad2_noe;
wire Net_U94_Pad3;
wire Net_U94_Pad3_U92;
wire Net_U94_Pad3_noe;
wire Net_U94_Pad8;
wire Net_U94_Pad8_U92;
wire Net_U94_Pad8_noe;
wire Net_U95_Pad2;
wire RegsetR00;
wire RegsetR00_U40;
wire RegsetR00_noe;
wire RegsetR01;
wire RegsetR01_U40;
wire RegsetR01_noe;
wire RegsetR02;
wire RegsetR02_U40;
wire RegsetR02_noe;
wire RegsetR03;
wire RegsetR03_U40;
wire RegsetR03_noe;
wire RegsetR04;
wire RegsetR04_U40;
wire RegsetR04_noe;
wire RegsetR05;
wire RegsetR05_U40;
wire RegsetR05_noe;
wire RegsetR06;
wire RegsetR06_U40;
wire RegsetR06_noe;
wire RegsetR07;
wire RegsetR07_U40;
wire RegsetR07_noe;
wire RegsetR10;
wire RegsetR10_U41;
wire RegsetR10_noe;
wire RegsetR11;
wire RegsetR11_U41;
wire RegsetR11_noe;
wire RegsetR12;
wire RegsetR12_U41;
wire RegsetR12_noe;
wire RegsetR13;
wire RegsetR13_U41;
wire RegsetR13_noe;
wire RegsetR14;
wire RegsetR14_U41;
wire RegsetR14_noe;
wire RegsetR15;
wire RegsetR15_U41;
wire RegsetR15_noe;
wire RegsetR16;
wire RegsetR16_U41;
wire RegsetR16_noe;
wire RegsetR17;
wire RegsetR17_U41;
wire RegsetR17_noe;
wire U100_noe;
wire U40_noe;
wire U41_noe;
wire U63_noe;
wire U64_noe;
wire U68_noe;
wire U70_noe;
wire U71_noe;
wire U77_noe;
wire U83_noe;
wire U92_noe;
wire U97_noe;
wire U9_noe;
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
wire flagCarry_U97;
wire flagCarry_noe;
wire flagNegative;
wire flagNegative_U97;
wire flagNegative_noe;
wire flagOverflow;
wire flagOverflow_U97;
wire flagOverflow_noe;
wire flagZero;
wire flagZero_U97;
wire flagZero_noe;
wire halt;
wire ioAddr0;
wire ioAddr0_U63;
wire ioAddr0_U65;
wire ioAddr0_noe;
wire ioAddr1;
wire ioAddr1_U63;
wire ioAddr1_U65;
wire ioAddr1_noe;
wire ioAddr2;
wire ioAddr2_U63;
wire ioAddr2_U65;
wire ioAddr2_noe;
wire ioAddr3;
wire ioAddr3_U63;
wire ioAddr3_U65;
wire ioAddr3_noe;
wire ioAddr4;
wire ioAddr4_U63;
wire ioAddr4_U65;
wire ioAddr4_noe;
wire ioAddr5;
wire ioAddr5_U63;
wire ioAddr5_U65;
wire ioAddr5_noe;
wire ioAddr6;
wire ioAddr6_U63;
wire ioAddr6_U65;
wire ioAddr6_noe;
wire ioAddr7;
wire ioAddr7_U63;
wire ioAddr7_U65;
wire ioAddr7_noe;
wire ioCEN;
wire resetN;
wire unconnected_U100_Pad1;
wire unconnected_U100_Pad30;
wire unconnected_U101_Pad12;
wire unconnected_U101_Pad13;
wire unconnected_U101_Pad14;
wire unconnected_U101_Pad15;
wire unconnected_U101_Pad6;
wire unconnected_U102_Pad6;
wire unconnected_U2_Pad10;
wire unconnected_U2_Pad11;
wire unconnected_U2_Pad12;
wire unconnected_U2_Pad13;
wire unconnected_U2_Pad8;
wire unconnected_U2_Pad9;
wire unconnected_U36_Pad11;
wire unconnected_U36_Pad8;
wire unconnected_U37_Pad11;
wire unconnected_U37_Pad8;
wire unconnected_U38_Pad4;
wire unconnected_U38_Pad5;
wire unconnected_U38_Pad6;
wire unconnected_U39_Pad5;
wire unconnected_U55_Pad13;
wire unconnected_U56_Pad13;
wire unconnected_U77_Pad1;
wire unconnected_U77_Pad30;
wire unconnected_U78_Pad1;
wire unconnected_U78_Pad2;
wire unconnected_U78_Pad3;
wire unconnected_U81_Pad1;
wire unconnected_U81_Pad2;
wire unconnected_U81_Pad3;
wire unconnected_U83_Pad18;
wire unconnected_U83_Pad18_U83;
wire unconnected_U83_Pad18_noe;
wire unconnected_U83_Pad7;
wire unconnected_U87_Pad17;
wire unconnected_U87_Pad18;
wire unconnected_U87_Pad19;
wire unconnected_U95_Pad11;
wire unconnected_U95_Pad12;
wire unconnected_U95_Pad13;
wire unconnected_U95_Pad16;
wire unconnected_U95_Pad17;
wire unconnected_U97_Pad15;
wire unconnected_U97_Pad15_U97;
wire unconnected_U97_Pad15_noe;
wire unconnected_U97_Pad16;
wire unconnected_U97_Pad16_U97;
wire unconnected_U97_Pad16_noe;
wire unconnected_U97_Pad17;
wire unconnected_U97_Pad17_U97;
wire unconnected_U97_Pad17_noe;
wire unconnected_U97_Pad18;
wire unconnected_U97_Pad18_U97;
wire unconnected_U97_Pad18_noe;

assign o_bus[0] = Bus0;
assign o_bus[1] = Bus1;
assign o_bus[2] = Bus2;
assign o_bus[3] = Bus3;
assign o_bus[4] = Bus4;
assign o_bus[5] = Bus5;
assign o_bus[6] = Bus6;
assign o_bus[7] = Bus7;
assign MemoryComp0 = i_breakpointAddress[0];
assign MemoryComp1 = i_breakpointAddress[1];
assign MemoryComp2 = i_breakpointAddress[2];
assign MemoryComp3 = i_breakpointAddress[3];
assign MemoryComp4 = i_breakpointAddress[4];
assign MemoryComp5 = i_breakpointAddress[5];
assign MemoryComp6 = i_breakpointAddress[6];
assign MemoryComp7 = i_breakpointAddress[7];
assign MemoryComp8 = i_breakpointAddress[8];
assign MemoryComp9 = i_breakpointAddress[9];
assign MemoryComp10 = i_breakpointAddress[10];
assign MemoryComp11 = i_breakpointAddress[11];
assign MemoryComp12 = i_breakpointAddress[12];
assign MemoryComp13 = i_breakpointAddress[13];
assign MemoryComp14 = i_breakpointAddress[14];
assign MemoryComp15 = i_breakpointAddress[15];
assign o_ioAddress[0] = ioAddr0;
assign o_ioAddress[1] = ioAddr1;
assign o_ioAddress[2] = ioAddr2;
assign o_ioAddress[3] = ioAddr3;
assign o_ioAddress[4] = ioAddr4;
assign o_ioAddress[5] = ioAddr5;
assign o_ioAddress[6] = ioAddr6;
assign o_ioAddress[7] = ioAddr7;
assign Net_RN10_Pad9 = i_switches[0];
assign Net_RN10_Pad8 = i_switches[1];
assign Net_RN10_Pad7 = i_switches[2];
assign Net_RN10_Pad6 = i_switches[3];
assign Net_RN10_Pad5 = i_switches[4];
assign Net_RN10_Pad4 = i_switches[5];
assign Net_RN10_Pad3 = i_switches[6];
assign Net_RN10_Pad2 = i_switches[7];
assign Net_U95_Pad2 = i_oszClk;
assign resetN = i_resetn;
assign Net_C2_Pad1 = ~i_btnStep;
assign Net_C3_Pad1 = ~i_swInstrNCycle;
assign Net_C4_Pad1 = ~i_swStepNRun;
assign Net_C1_Pad1 = ~i_swEnableBreakpoint;
assign o_ioNCE = ioCEN;
assign o_ioNOE = ctrlMemRamOEN;
assign o_ioNWE = ctrlMemRamWEN;



displayDriver inst_7seg(
  .i_clk(clk),
  .i_resetn(resetN),
  .data({
    MemoryPc11,
    MemoryPc10,
    MemoryPc9,
    MemoryPc8,
    MemoryPc7,
    MemoryPc6,
    MemoryPc5,
    MemoryPc4,
    MemoryPc3,
    MemoryPc2,
    MemoryPc1,
    MemoryPc0,
    1'b0,
    ControlA2,
    ControlA1,
    ControlA0,
    8'h00,
    Net_U94_Pad3_U92,
    Net_U94_Pad2_U92,
    Net_U94_Pad1_U92,
    Net_U94_Pad8_U92,
    Net_U93_Pad3_U92,
    Net_U93_Pad2_U92,
    Net_U93_Pad1_U92,
    Net_U93_Pad8_U92
  }),
  .enableDigit(halt ? 8'b11110011: 8'b00000011),
  .dots(halt ? 8'b00100000 : 8'h00),
  .cathodes(o_cathodes),
  .anodes(o_anodes)
);


microCodeRom inst_microCodeRom (
  .clka(i_asyncEEPROMSpecialClock),
  .addra({ControlA14, ControlA13, ControlA12, ControlA11, ControlA10, ControlA9, ControlA8, ControlA7, ControlA6, ctrlAluOp1, ctrlAluOp0, ctrlAluSub, ControlA2, ControlA1, ControlA0}),
  .douta({unconnected_U87_Pad19, unconnected_U87_Pad18, unconnected_U87_Pad17, ctrlInstrFinishedN, ctrlMemPCToRamN, ctrlMemPCFromImm, ctrlMemPCEnN, ctrlMemRamOEN, ctrlMemRamWEN, ctrlMemInstrImmToRamAddr, ctrlMemMar1WEN, ctrlMemMar0WEN, ctrlMemInstrOEN, ctrlMemInstrWEN, ctrlMemSPEnN, ctrlMemSPUp, ctrlMemPCLoadN, ctrlReg1BusOEN, ctrlReg0BusOEN, ctrlRegAluSel, ctrlReg1WEN, ctrlReg0WEN, ctrlAluOEN, ctrlAluYWEN})
);

instructionRom inst_instructionRom (
  .clka(i_asyncEEPROMSpecialClock),
  .addra({MemoryPc14, MemoryPc13, MemoryPc12, MemoryPc11, MemoryPc10, MemoryPc9, MemoryPc8, MemoryPc7, MemoryPc6, MemoryPc5, MemoryPc4, MemoryPc3, MemoryPc2, MemoryPc1, MemoryPc0}),
  .douta({Net_U62_Pad19, Net_U62_Pad18, Net_U62_Pad17, Net_U62_Pad16, Net_U62_Pad15, Net_U62_Pad13, Net_U62_Pad12, Net_U62_Pad11, Net_U69_Pad19, Net_U69_Pad18, Net_U69_Pad17, Net_U69_Pad16, Net_U69_Pad15, Net_U69_Pad13, Net_U69_Pad12, Net_U69_Pad11, Net_U67_Pad19, Net_U67_Pad18, Net_U67_Pad17, Net_U67_Pad16, Net_U67_Pad15, Net_U67_Pad13, Net_U67_Pad12, Net_U67_Pad11})
);


tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusNet_U10_Pad2 (
  .i_data({Net_U10_Pad2_U9}),
  .i_noe({U9_noe}),
  .o_data(Net_U10_Pad2),
  .o_noe(Net_U10_Pad2_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusNet_U10_Pad3 (
  .i_data({Net_U10_Pad3_U9}),
  .i_noe({U9_noe}),
  .o_data(Net_U10_Pad3),
  .o_noe(Net_U10_Pad3_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusNet_U10_Pad4 (
  .i_data({Net_U10_Pad4_U9}),
  .i_noe({U9_noe}),
  .o_data(Net_U10_Pad4),
  .o_noe(Net_U10_Pad4_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusNet_U10_Pad5 (
  .i_data({Net_U10_Pad5_U9}),
  .i_noe({U9_noe}),
  .o_data(Net_U10_Pad5),
  .o_noe(Net_U10_Pad5_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusNet_U10_Pad6 (
  .i_data({Net_U10_Pad6_U9}),
  .i_noe({U9_noe}),
  .o_data(Net_U10_Pad6),
  .o_noe(Net_U10_Pad6_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusNet_U10_Pad7 (
  .i_data({Net_U10_Pad7_U9}),
  .i_noe({U9_noe}),
  .o_data(Net_U10_Pad7),
  .o_noe(Net_U10_Pad7_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusNet_U10_Pad8 (
  .i_data({Net_U10_Pad8_U9}),
  .i_noe({U9_noe}),
  .o_data(Net_U10_Pad8),
  .o_noe(Net_U10_Pad8_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusNet_U10_Pad9 (
  .i_data({Net_U10_Pad9_U9}),
  .i_noe({U9_noe}),
  .o_data(Net_U10_Pad9),
  .o_noe(Net_U10_Pad9_noe)
);

tristatenet #(
  .INPUT_COUNT(8)
) inst_triBusBus7 (
  .i_data({Bus7_U10, Bus7_U91, Bus7_U75, Bus7_U77, Bus7_U99, Bus7_U44, Bus7_U45, i_bus[7]}),
  .i_noe({ctrlAluOEN, Net_U90_Pad3, ctrlMemInstrOEN, U77_noe, ctrlMemPCToRamN, ctrlReg0BusOEN, ctrlReg1BusOEN, i_busNOE}),
  .o_data(Bus7),
  .o_noe(Bus7_noe)
);

tristatenet #(
  .INPUT_COUNT(8)
) inst_triBusBus6 (
  .i_data({Bus6_U10, Bus6_U91, Bus6_U75, Bus6_U77, Bus6_U99, Bus6_U44, Bus6_U45, i_bus[6]}),
  .i_noe({ctrlAluOEN, Net_U90_Pad3, ctrlMemInstrOEN, U77_noe, ctrlMemPCToRamN, ctrlReg0BusOEN, ctrlReg1BusOEN, i_busNOE}),
  .o_data(Bus6),
  .o_noe(Bus6_noe)
);

tristatenet #(
  .INPUT_COUNT(8)
) inst_triBusBus5 (
  .i_data({Bus5_U10, Bus5_U91, Bus5_U75, Bus5_U77, Bus5_U99, Bus5_U44, Bus5_U45, i_bus[5]}),
  .i_noe({ctrlAluOEN, Net_U90_Pad3, ctrlMemInstrOEN, U77_noe, ctrlMemPCToRamN, ctrlReg0BusOEN, ctrlReg1BusOEN, i_busNOE}),
  .o_data(Bus5),
  .o_noe(Bus5_noe)
);

tristatenet #(
  .INPUT_COUNT(8)
) inst_triBusBus4 (
  .i_data({Bus4_U10, Bus4_U91, Bus4_U75, Bus4_U77, Bus4_U99, Bus4_U44, Bus4_U45, i_bus[4]}),
  .i_noe({ctrlAluOEN, Net_U90_Pad3, ctrlMemInstrOEN, U77_noe, ctrlMemPCToRamN, ctrlReg0BusOEN, ctrlReg1BusOEN, i_busNOE}),
  .o_data(Bus4),
  .o_noe(Bus4_noe)
);

tristatenet #(
  .INPUT_COUNT(8)
) inst_triBusBus3 (
  .i_data({Bus3_U10, Bus3_U91, Bus3_U75, Bus3_U77, Bus3_U99, Bus3_U44, Bus3_U45, i_bus[3]}),
  .i_noe({ctrlAluOEN, Net_U90_Pad3, ctrlMemInstrOEN, U77_noe, ctrlMemPCToRamN, ctrlReg0BusOEN, ctrlReg1BusOEN, i_busNOE}),
  .o_data(Bus3),
  .o_noe(Bus3_noe)
);

tristatenet #(
  .INPUT_COUNT(8)
) inst_triBusBus2 (
  .i_data({Bus2_U10, Bus2_U91, Bus2_U75, Bus2_U77, Bus2_U99, Bus2_U44, Bus2_U45, i_bus[2]}),
  .i_noe({ctrlAluOEN, Net_U90_Pad3, ctrlMemInstrOEN, U77_noe, ctrlMemPCToRamN, ctrlReg0BusOEN, ctrlReg1BusOEN, i_busNOE}),
  .o_data(Bus2),
  .o_noe(Bus2_noe)
);

tristatenet #(
  .INPUT_COUNT(8)
) inst_triBusBus1 (
  .i_data({Bus1_U10, Bus1_U91, Bus1_U75, Bus1_U77, Bus1_U99, Bus1_U44, Bus1_U45, i_bus[1]}),
  .i_noe({ctrlAluOEN, Net_U90_Pad3, ctrlMemInstrOEN, U77_noe, ctrlMemPCToRamN, ctrlReg0BusOEN, ctrlReg1BusOEN, i_busNOE}),
  .o_data(Bus1),
  .o_noe(Bus1_noe)
);

tristatenet #(
  .INPUT_COUNT(8)
) inst_triBusBus0 (
  .i_data({Bus0_U10, Bus0_U91, Bus0_U75, Bus0_U77, Bus0_U99, Bus0_U44, Bus0_U45, i_bus[0]}),
  .i_noe({ctrlAluOEN, Net_U90_Pad3, ctrlMemInstrOEN, U77_noe, ctrlMemPCToRamN, ctrlReg0BusOEN, ctrlReg1BusOEN, i_busNOE}),
  .o_data(Bus0),
  .o_noe(Bus0_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusflagNegative (
  .i_data({flagNegative_U97}),
  .i_noe({U97_noe}),
  .o_data(flagNegative),
  .o_noe(flagNegative_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusflagZero (
  .i_data({flagZero_U97}),
  .i_noe({U97_noe}),
  .o_data(flagZero),
  .o_noe(flagZero_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusflagCarry (
  .i_data({flagCarry_U97}),
  .i_noe({U97_noe}),
  .o_data(flagCarry),
  .o_noe(flagCarry_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusflagOverflow (
  .i_data({flagOverflow_U97}),
  .i_noe({U97_noe}),
  .o_data(flagOverflow),
  .o_noe(flagOverflow_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusunconnected_U97_Pad18 (
  .i_data({unconnected_U97_Pad18_U97}),
  .i_noe({U97_noe}),
  .o_data(unconnected_U97_Pad18),
  .o_noe(unconnected_U97_Pad18_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusunconnected_U97_Pad17 (
  .i_data({unconnected_U97_Pad17_U97}),
  .i_noe({U97_noe}),
  .o_data(unconnected_U97_Pad17),
  .o_noe(unconnected_U97_Pad17_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusunconnected_U97_Pad16 (
  .i_data({unconnected_U97_Pad16_U97}),
  .i_noe({U97_noe}),
  .o_data(unconnected_U97_Pad16),
  .o_noe(unconnected_U97_Pad16_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusunconnected_U97_Pad15 (
  .i_data({unconnected_U97_Pad15_U97}),
  .i_noe({U97_noe}),
  .o_data(unconnected_U97_Pad15),
  .o_noe(unconnected_U97_Pad15_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusControlA11 (
  .i_data({ControlA11_U83}),
  .i_noe({U83_noe}),
  .o_data(ControlA11),
  .o_noe(ControlA11_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusControlA12 (
  .i_data({ControlA12_U83}),
  .i_noe({U83_noe}),
  .o_data(ControlA12),
  .o_noe(ControlA12_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusControlA13 (
  .i_data({ControlA13_U83}),
  .i_noe({U83_noe}),
  .o_data(ControlA13),
  .o_noe(ControlA13_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusControlA14 (
  .i_data({ControlA14_U83}),
  .i_noe({U83_noe}),
  .o_data(ControlA14),
  .o_noe(ControlA14_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusunconnected_U83_Pad18 (
  .i_data({unconnected_U83_Pad18_U83}),
  .i_noe({U83_noe}),
  .o_data(unconnected_U83_Pad18),
  .o_noe(unconnected_U83_Pad18_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusControlA0 (
  .i_data({ControlA0_U83}),
  .i_noe({U83_noe}),
  .o_data(ControlA0),
  .o_noe(ControlA0_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusControlA1 (
  .i_data({ControlA1_U83}),
  .i_noe({U83_noe}),
  .o_data(ControlA1),
  .o_noe(ControlA1_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusControlA2 (
  .i_data({ControlA2_U83}),
  .i_noe({U83_noe}),
  .o_data(ControlA2),
  .o_noe(ControlA2_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusNet_U93_Pad8 (
  .i_data({Net_U93_Pad8_U92}),
  .i_noe({U92_noe}),
  .o_data(Net_U93_Pad8),
  .o_noe(Net_U93_Pad8_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusNet_U93_Pad1 (
  .i_data({Net_U93_Pad1_U92}),
  .i_noe({U92_noe}),
  .o_data(Net_U93_Pad1),
  .o_noe(Net_U93_Pad1_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusNet_U93_Pad2 (
  .i_data({Net_U93_Pad2_U92}),
  .i_noe({U92_noe}),
  .o_data(Net_U93_Pad2),
  .o_noe(Net_U93_Pad2_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusNet_U93_Pad3 (
  .i_data({Net_U93_Pad3_U92}),
  .i_noe({U92_noe}),
  .o_data(Net_U93_Pad3),
  .o_noe(Net_U93_Pad3_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusNet_U94_Pad8 (
  .i_data({Net_U94_Pad8_U92}),
  .i_noe({U92_noe}),
  .o_data(Net_U94_Pad8),
  .o_noe(Net_U94_Pad8_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusNet_U94_Pad1 (
  .i_data({Net_U94_Pad1_U92}),
  .i_noe({U92_noe}),
  .o_data(Net_U94_Pad1),
  .o_noe(Net_U94_Pad1_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusNet_U94_Pad2 (
  .i_data({Net_U94_Pad2_U92}),
  .i_noe({U92_noe}),
  .o_data(Net_U94_Pad2),
  .o_noe(Net_U94_Pad2_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusNet_U94_Pad3 (
  .i_data({Net_U94_Pad3_U92}),
  .i_noe({U92_noe}),
  .o_data(Net_U94_Pad3),
  .o_noe(Net_U94_Pad3_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryPcIn15 (
  .i_data({MemoryPcIn15_U50, MemoryPcIn15_U49}),
  .i_noe({Net_U48_Pad10, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn15),
  .o_noe(MemoryPcIn15_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryPcIn14 (
  .i_data({MemoryPcIn14_U50, MemoryPcIn14_U49}),
  .i_noe({Net_U48_Pad10, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn14),
  .o_noe(MemoryPcIn14_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryPcIn13 (
  .i_data({MemoryPcIn13_U50, MemoryPcIn13_U49}),
  .i_noe({Net_U48_Pad10, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn13),
  .o_noe(MemoryPcIn13_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryPcIn12 (
  .i_data({MemoryPcIn12_U50, MemoryPcIn12_U49}),
  .i_noe({Net_U48_Pad10, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn12),
  .o_noe(MemoryPcIn12_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryPcIn11 (
  .i_data({MemoryPcIn11_U50, MemoryPcIn11_U49}),
  .i_noe({Net_U48_Pad10, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn11),
  .o_noe(MemoryPcIn11_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryPcIn10 (
  .i_data({MemoryPcIn10_U50, MemoryPcIn10_U49}),
  .i_noe({Net_U48_Pad10, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn10),
  .o_noe(MemoryPcIn10_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryPcIn9 (
  .i_data({MemoryPcIn9_U50, MemoryPcIn9_U49}),
  .i_noe({Net_U48_Pad10, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn9),
  .o_noe(MemoryPcIn9_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryPcIn8 (
  .i_data({MemoryPcIn8_U50, MemoryPcIn8_U49}),
  .i_noe({Net_U48_Pad10, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn8),
  .o_noe(MemoryPcIn8_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryPcIn7 (
  .i_data({MemoryPcIn7_U52, MemoryPcIn7_U51}),
  .i_noe({Net_U48_Pad8, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn7),
  .o_noe(MemoryPcIn7_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryPcIn6 (
  .i_data({MemoryPcIn6_U52, MemoryPcIn6_U51}),
  .i_noe({Net_U48_Pad8, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn6),
  .o_noe(MemoryPcIn6_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryPcIn5 (
  .i_data({MemoryPcIn5_U52, MemoryPcIn5_U51}),
  .i_noe({Net_U48_Pad8, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn5),
  .o_noe(MemoryPcIn5_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryPcIn4 (
  .i_data({MemoryPcIn4_U52, MemoryPcIn4_U51}),
  .i_noe({Net_U48_Pad8, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn4),
  .o_noe(MemoryPcIn4_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryPcIn3 (
  .i_data({MemoryPcIn3_U52, MemoryPcIn3_U51}),
  .i_noe({Net_U48_Pad8, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn3),
  .o_noe(MemoryPcIn3_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryPcIn2 (
  .i_data({MemoryPcIn2_U52, MemoryPcIn2_U51}),
  .i_noe({Net_U48_Pad8, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn2),
  .o_noe(MemoryPcIn2_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryPcIn1 (
  .i_data({MemoryPcIn1_U52, MemoryPcIn1_U51}),
  .i_noe({Net_U48_Pad8, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn1),
  .o_noe(MemoryPcIn1_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryPcIn0 (
  .i_data({MemoryPcIn0_U52, MemoryPcIn0_U51}),
  .i_noe({Net_U48_Pad8, ctrlMemPCFromImm}),
  .o_data(MemoryPcIn0),
  .o_noe(MemoryPcIn0_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusControlInstrCode0 (
  .i_data({ControlInstrCode0_U64}),
  .i_noe({U64_noe}),
  .o_data(ControlInstrCode0),
  .o_noe(ControlInstrCode0_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusControlInstrCode1 (
  .i_data({ControlInstrCode1_U64}),
  .i_noe({U64_noe}),
  .o_data(ControlInstrCode1),
  .o_noe(ControlInstrCode1_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusControlInstrCode2 (
  .i_data({ControlInstrCode2_U64}),
  .i_noe({U64_noe}),
  .o_data(ControlInstrCode2),
  .o_noe(ControlInstrCode2_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusControlInstrCode3 (
  .i_data({ControlInstrCode3_U64}),
  .i_noe({U64_noe}),
  .o_data(ControlInstrCode3),
  .o_noe(ControlInstrCode3_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusControlInstrCode4 (
  .i_data({ControlInstrCode4_U64}),
  .i_noe({U64_noe}),
  .o_data(ControlInstrCode4),
  .o_noe(ControlInstrCode4_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusControlInstrCode5 (
  .i_data({ControlInstrCode5_U64}),
  .i_noe({U64_noe}),
  .o_data(ControlInstrCode5),
  .o_noe(ControlInstrCode5_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusControlInstrCode6 (
  .i_data({ControlInstrCode6_U64}),
  .i_noe({U64_noe}),
  .o_data(ControlInstrCode6),
  .o_noe(ControlInstrCode6_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusControlInstrCode7 (
  .i_data({ControlInstrCode7_U64}),
  .i_noe({U64_noe}),
  .o_data(ControlInstrCode7),
  .o_noe(ControlInstrCode7_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryInstrImm8 (
  .i_data({MemoryInstrImm8_U71}),
  .i_noe({U71_noe}),
  .o_data(MemoryInstrImm8),
  .o_noe(MemoryInstrImm8_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryInstrImm9 (
  .i_data({MemoryInstrImm9_U71}),
  .i_noe({U71_noe}),
  .o_data(MemoryInstrImm9),
  .o_noe(MemoryInstrImm9_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryInstrImm10 (
  .i_data({MemoryInstrImm10_U71}),
  .i_noe({U71_noe}),
  .o_data(MemoryInstrImm10),
  .o_noe(MemoryInstrImm10_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryInstrImm11 (
  .i_data({MemoryInstrImm11_U71}),
  .i_noe({U71_noe}),
  .o_data(MemoryInstrImm11),
  .o_noe(MemoryInstrImm11_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryInstrImm12 (
  .i_data({MemoryInstrImm12_U71}),
  .i_noe({U71_noe}),
  .o_data(MemoryInstrImm12),
  .o_noe(MemoryInstrImm12_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryInstrImm13 (
  .i_data({MemoryInstrImm13_U71}),
  .i_noe({U71_noe}),
  .o_data(MemoryInstrImm13),
  .o_noe(MemoryInstrImm13_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryInstrImm14 (
  .i_data({MemoryInstrImm14_U71}),
  .i_noe({U71_noe}),
  .o_data(MemoryInstrImm14),
  .o_noe(MemoryInstrImm14_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryInstrImm15 (
  .i_data({MemoryInstrImm15_U71}),
  .i_noe({U71_noe}),
  .o_data(MemoryInstrImm15),
  .o_noe(MemoryInstrImm15_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryInstrImm0 (
  .i_data({MemoryInstrImm0_U70}),
  .i_noe({U70_noe}),
  .o_data(MemoryInstrImm0),
  .o_noe(MemoryInstrImm0_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryInstrImm1 (
  .i_data({MemoryInstrImm1_U70}),
  .i_noe({U70_noe}),
  .o_data(MemoryInstrImm1),
  .o_noe(MemoryInstrImm1_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryInstrImm2 (
  .i_data({MemoryInstrImm2_U70}),
  .i_noe({U70_noe}),
  .o_data(MemoryInstrImm2),
  .o_noe(MemoryInstrImm2_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryInstrImm3 (
  .i_data({MemoryInstrImm3_U70}),
  .i_noe({U70_noe}),
  .o_data(MemoryInstrImm3),
  .o_noe(MemoryInstrImm3_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryInstrImm4 (
  .i_data({MemoryInstrImm4_U70}),
  .i_noe({U70_noe}),
  .o_data(MemoryInstrImm4),
  .o_noe(MemoryInstrImm4_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryInstrImm5 (
  .i_data({MemoryInstrImm5_U70}),
  .i_noe({U70_noe}),
  .o_data(MemoryInstrImm5),
  .o_noe(MemoryInstrImm5_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryInstrImm6 (
  .i_data({MemoryInstrImm6_U70}),
  .i_noe({U70_noe}),
  .o_data(MemoryInstrImm6),
  .o_noe(MemoryInstrImm6_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryInstrImm7 (
  .i_data({MemoryInstrImm7_U70}),
  .i_noe({U70_noe}),
  .o_data(MemoryInstrImm7),
  .o_noe(MemoryInstrImm7_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBusMemoryRamAddress15 (
  .i_data({MemoryRamAddress15_U72, MemoryRamAddress15_U61, MemoryRamAddress15_U66}),
  .i_noe({Memorymar1ToRamN, MemoryselectStackMemN, MemoryinstrImm1ToRamN}),
  .o_data(MemoryRamAddress15),
  .o_noe(MemoryRamAddress15_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBusMemoryRamAddress14 (
  .i_data({MemoryRamAddress14_U72, MemoryRamAddress14_U61, MemoryRamAddress14_U66}),
  .i_noe({Memorymar1ToRamN, MemoryselectStackMemN, MemoryinstrImm1ToRamN}),
  .o_data(MemoryRamAddress14),
  .o_noe(MemoryRamAddress14_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBusMemoryRamAddress13 (
  .i_data({MemoryRamAddress13_U72, MemoryRamAddress13_U61, MemoryRamAddress13_U66}),
  .i_noe({Memorymar1ToRamN, MemoryselectStackMemN, MemoryinstrImm1ToRamN}),
  .o_data(MemoryRamAddress13),
  .o_noe(MemoryRamAddress13_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBusMemoryRamAddress12 (
  .i_data({MemoryRamAddress12_U72, MemoryRamAddress12_U61, MemoryRamAddress12_U66}),
  .i_noe({Memorymar1ToRamN, MemoryselectStackMemN, MemoryinstrImm1ToRamN}),
  .o_data(MemoryRamAddress12),
  .o_noe(MemoryRamAddress12_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBusMemoryRamAddress11 (
  .i_data({MemoryRamAddress11_U72, MemoryRamAddress11_U61, MemoryRamAddress11_U66}),
  .i_noe({Memorymar1ToRamN, MemoryselectStackMemN, MemoryinstrImm1ToRamN}),
  .o_data(MemoryRamAddress11),
  .o_noe(MemoryRamAddress11_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBusMemoryRamAddress10 (
  .i_data({MemoryRamAddress10_U72, MemoryRamAddress10_U61, MemoryRamAddress10_U66}),
  .i_noe({Memorymar1ToRamN, MemoryselectStackMemN, MemoryinstrImm1ToRamN}),
  .o_data(MemoryRamAddress10),
  .o_noe(MemoryRamAddress10_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBusMemoryRamAddress9 (
  .i_data({MemoryRamAddress9_U72, MemoryRamAddress9_U61, MemoryRamAddress9_U66}),
  .i_noe({Memorymar1ToRamN, MemoryselectStackMemN, MemoryinstrImm1ToRamN}),
  .o_data(MemoryRamAddress9),
  .o_noe(MemoryRamAddress9_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBusMemoryRamAddress8 (
  .i_data({MemoryRamAddress8_U72, MemoryRamAddress8_U61, MemoryRamAddress8_U66}),
  .i_noe({Memorymar1ToRamN, MemoryselectStackMemN, MemoryinstrImm1ToRamN}),
  .o_data(MemoryRamAddress8),
  .o_noe(MemoryRamAddress8_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusioAddr0 (
  .i_data({ioAddr0_U63, ioAddr0_U65}),
  .i_noe({U63_noe, MemoryinstrImm0ToRamN}),
  .o_data(ioAddr0),
  .o_noe(ioAddr0_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusioAddr1 (
  .i_data({ioAddr1_U63, ioAddr1_U65}),
  .i_noe({U63_noe, MemoryinstrImm0ToRamN}),
  .o_data(ioAddr1),
  .o_noe(ioAddr1_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusioAddr2 (
  .i_data({ioAddr2_U63, ioAddr2_U65}),
  .i_noe({U63_noe, MemoryinstrImm0ToRamN}),
  .o_data(ioAddr2),
  .o_noe(ioAddr2_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusioAddr3 (
  .i_data({ioAddr3_U63, ioAddr3_U65}),
  .i_noe({U63_noe, MemoryinstrImm0ToRamN}),
  .o_data(ioAddr3),
  .o_noe(ioAddr3_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusioAddr4 (
  .i_data({ioAddr4_U63, ioAddr4_U65}),
  .i_noe({U63_noe, MemoryinstrImm0ToRamN}),
  .o_data(ioAddr4),
  .o_noe(ioAddr4_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusioAddr5 (
  .i_data({ioAddr5_U63, ioAddr5_U65}),
  .i_noe({U63_noe, MemoryinstrImm0ToRamN}),
  .o_data(ioAddr5),
  .o_noe(ioAddr5_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusioAddr6 (
  .i_data({ioAddr6_U63, ioAddr6_U65}),
  .i_noe({U63_noe, MemoryinstrImm0ToRamN}),
  .o_data(ioAddr6),
  .o_noe(ioAddr6_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusioAddr7 (
  .i_data({ioAddr7_U63, ioAddr7_U65}),
  .i_noe({U63_noe, MemoryinstrImm0ToRamN}),
  .o_data(ioAddr7),
  .o_noe(ioAddr7_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryMar8 (
  .i_data({MemoryMar8_U68}),
  .i_noe({U68_noe}),
  .o_data(MemoryMar8),
  .o_noe(MemoryMar8_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryMar9 (
  .i_data({MemoryMar9_U68}),
  .i_noe({U68_noe}),
  .o_data(MemoryMar9),
  .o_noe(MemoryMar9_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryMar10 (
  .i_data({MemoryMar10_U68}),
  .i_noe({U68_noe}),
  .o_data(MemoryMar10),
  .o_noe(MemoryMar10_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryMar11 (
  .i_data({MemoryMar11_U68}),
  .i_noe({U68_noe}),
  .o_data(MemoryMar11),
  .o_noe(MemoryMar11_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryMar12 (
  .i_data({MemoryMar12_U68}),
  .i_noe({U68_noe}),
  .o_data(MemoryMar12),
  .o_noe(MemoryMar12_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryMar13 (
  .i_data({MemoryMar13_U68}),
  .i_noe({U68_noe}),
  .o_data(MemoryMar13),
  .o_noe(MemoryMar13_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryMar14 (
  .i_data({MemoryMar14_U68}),
  .i_noe({U68_noe}),
  .o_data(MemoryMar14),
  .o_noe(MemoryMar14_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMemoryMar15 (
  .i_data({MemoryMar15_U68}),
  .i_noe({U68_noe}),
  .o_data(MemoryMar15),
  .o_noe(MemoryMar15_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryRam2data0 (
  .i_data({MemoryRam2data0_U100, MemoryRam2data0_U98}),
  .i_noe({U100_noe, ctrlMemPCToRamN}),
  .o_data(MemoryRam2data0),
  .o_noe(MemoryRam2data0_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryRam2data1 (
  .i_data({MemoryRam2data1_U100, MemoryRam2data1_U98}),
  .i_noe({U100_noe, ctrlMemPCToRamN}),
  .o_data(MemoryRam2data1),
  .o_noe(MemoryRam2data1_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryRam2data2 (
  .i_data({MemoryRam2data2_U100, MemoryRam2data2_U98}),
  .i_noe({U100_noe, ctrlMemPCToRamN}),
  .o_data(MemoryRam2data2),
  .o_noe(MemoryRam2data2_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryRam2data3 (
  .i_data({MemoryRam2data3_U100, MemoryRam2data3_U98}),
  .i_noe({U100_noe, ctrlMemPCToRamN}),
  .o_data(MemoryRam2data3),
  .o_noe(MemoryRam2data3_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryRam2data4 (
  .i_data({MemoryRam2data4_U100, MemoryRam2data4_U98}),
  .i_noe({U100_noe, ctrlMemPCToRamN}),
  .o_data(MemoryRam2data4),
  .o_noe(MemoryRam2data4_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryRam2data5 (
  .i_data({MemoryRam2data5_U100, MemoryRam2data5_U98}),
  .i_noe({U100_noe, ctrlMemPCToRamN}),
  .o_data(MemoryRam2data5),
  .o_noe(MemoryRam2data5_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryRam2data6 (
  .i_data({MemoryRam2data6_U100, MemoryRam2data6_U98}),
  .i_noe({U100_noe, ctrlMemPCToRamN}),
  .o_data(MemoryRam2data6),
  .o_noe(MemoryRam2data6_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemoryRam2data7 (
  .i_data({MemoryRam2data7_U100, MemoryRam2data7_U98}),
  .i_noe({U100_noe, ctrlMemPCToRamN}),
  .o_data(MemoryRam2data7),
  .o_noe(MemoryRam2data7_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemorySelect7 (
  .i_data({MemorySelect7_U73, MemorySelect7_U74}),
  .i_noe({ctrlMemInstrImmToRamAddr, MemoryinstrImm0ToRamN}),
  .o_data(MemorySelect7),
  .o_noe(MemorySelect7_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemorySelect6 (
  .i_data({MemorySelect6_U73, MemorySelect6_U74}),
  .i_noe({ctrlMemInstrImmToRamAddr, MemoryinstrImm0ToRamN}),
  .o_data(MemorySelect6),
  .o_noe(MemorySelect6_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemorySelect5 (
  .i_data({MemorySelect5_U73, MemorySelect5_U74}),
  .i_noe({ctrlMemInstrImmToRamAddr, MemoryinstrImm0ToRamN}),
  .o_data(MemorySelect5),
  .o_noe(MemorySelect5_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemorySelect4 (
  .i_data({MemorySelect4_U73, MemorySelect4_U74}),
  .i_noe({ctrlMemInstrImmToRamAddr, MemoryinstrImm0ToRamN}),
  .o_data(MemorySelect4),
  .o_noe(MemorySelect4_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemorySelect3 (
  .i_data({MemorySelect3_U73, MemorySelect3_U74}),
  .i_noe({ctrlMemInstrImmToRamAddr, MemoryinstrImm0ToRamN}),
  .o_data(MemorySelect3),
  .o_noe(MemorySelect3_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemorySelect2 (
  .i_data({MemorySelect2_U73, MemorySelect2_U74}),
  .i_noe({ctrlMemInstrImmToRamAddr, MemoryinstrImm0ToRamN}),
  .o_data(MemorySelect2),
  .o_noe(MemorySelect2_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemorySelect1 (
  .i_data({MemorySelect1_U73, MemorySelect1_U74}),
  .i_noe({ctrlMemInstrImmToRamAddr, MemoryinstrImm0ToRamN}),
  .o_data(MemorySelect1),
  .o_noe(MemorySelect1_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusMemorySelect0 (
  .i_data({MemorySelect0_U73, MemorySelect0_U74}),
  .i_noe({ctrlMemInstrImmToRamAddr, MemoryinstrImm0ToRamN}),
  .o_data(MemorySelect0),
  .o_noe(MemorySelect0_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRegsetR10 (
  .i_data({RegsetR10_U41}),
  .i_noe({U41_noe}),
  .o_data(RegsetR10),
  .o_noe(RegsetR10_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRegsetR11 (
  .i_data({RegsetR11_U41}),
  .i_noe({U41_noe}),
  .o_data(RegsetR11),
  .o_noe(RegsetR11_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRegsetR12 (
  .i_data({RegsetR12_U41}),
  .i_noe({U41_noe}),
  .o_data(RegsetR12),
  .o_noe(RegsetR12_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRegsetR13 (
  .i_data({RegsetR13_U41}),
  .i_noe({U41_noe}),
  .o_data(RegsetR13),
  .o_noe(RegsetR13_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRegsetR14 (
  .i_data({RegsetR14_U41}),
  .i_noe({U41_noe}),
  .o_data(RegsetR14),
  .o_noe(RegsetR14_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRegsetR15 (
  .i_data({RegsetR15_U41}),
  .i_noe({U41_noe}),
  .o_data(RegsetR15),
  .o_noe(RegsetR15_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRegsetR16 (
  .i_data({RegsetR16_U41}),
  .i_noe({U41_noe}),
  .o_data(RegsetR16),
  .o_noe(RegsetR16_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRegsetR17 (
  .i_data({RegsetR17_U41}),
  .i_noe({U41_noe}),
  .o_data(RegsetR17),
  .o_noe(RegsetR17_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRegsetR00 (
  .i_data({RegsetR00_U40}),
  .i_noe({U40_noe}),
  .o_data(RegsetR00),
  .o_noe(RegsetR00_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRegsetR01 (
  .i_data({RegsetR01_U40}),
  .i_noe({U40_noe}),
  .o_data(RegsetR01),
  .o_noe(RegsetR01_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRegsetR02 (
  .i_data({RegsetR02_U40}),
  .i_noe({U40_noe}),
  .o_data(RegsetR02),
  .o_noe(RegsetR02_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRegsetR03 (
  .i_data({RegsetR03_U40}),
  .i_noe({U40_noe}),
  .o_data(RegsetR03),
  .o_noe(RegsetR03_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRegsetR04 (
  .i_data({RegsetR04_U40}),
  .i_noe({U40_noe}),
  .o_data(RegsetR04),
  .o_noe(RegsetR04_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRegsetR05 (
  .i_data({RegsetR05_U40}),
  .i_noe({U40_noe}),
  .o_data(RegsetR05),
  .o_noe(RegsetR05_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRegsetR06 (
  .i_data({RegsetR06_U40}),
  .i_noe({U40_noe}),
  .o_data(RegsetR06),
  .o_noe(RegsetR06_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRegsetR07 (
  .i_data({RegsetR07_U40}),
  .i_noe({U40_noe}),
  .o_data(RegsetR07),
  .o_noe(RegsetR07_noe)
);


ic74ABT540 inst_U1 (
  .port1(1'b0),
  .port2(Bus0),
  .port3(Bus1),
  .port4(Bus2),
  .port5(Bus3),
  .port6(Bus4),
  .port7(Bus5),
  .port8(Bus6),
  .port9(Bus7),
  .port10(1'b0),
  .port11(Net_D8_Pad1),
  .port12(Net_D7_Pad1),
  .port13(Net_D6_Pad1),
  .port14(Net_D5_Pad1),
  .port15(Net_D4_Pad1),
  .port16(Net_D3_Pad1),
  .port17(Net_D2_Pad1),
  .port18(Net_D1_Pad1),
  .port19(1'b0),
  .port20(1'b1)
);

ic74LS08 inst_U29 (
  .port1(AluA0),
  .port2(AluAdder0B0),
  .port3(AluAnd0),
  .port4(AluA1),
  .port5(AluAdder0B1),
  .port6(AluAnd1),
  .port7(1'b0),
  .port8(AluAnd2),
  .port9(AluA2),
  .port10(AluAdder0B2),
  .port11(AluAnd3),
  .port12(AluA3),
  .port13(AluAdder0B3),
  .port14(1'b1)
);

ic74LS86 inst_U30 (
  .port1(ctrlAluSub),
  .port2(AluXor0),
  .port3(AluAdder0),
  .port4(AluAdder0Bit0Cout),
  .port5(AluXor1),
  .port6(AluAdder1),
  .port7(1'b0),
  .port8(AluAdder2),
  .port9(AluAdder0Bit1Cout),
  .port10(AluXor2),
  .port11(AluAdder3),
  .port12(AluAdder0SignCout),
  .port13(AluXor3),
  .port14(1'b1)
);

ic74LS86 inst_U28 (
  .port1(AluA0),
  .port2(AluAdder0B0),
  .port3(AluXor0),
  .port4(AluA1),
  .port5(AluAdder0B1),
  .port6(AluXor1),
  .port7(1'b0),
  .port8(AluXor2),
  .port9(AluA2),
  .port10(AluAdder0B2),
  .port11(AluXor3),
  .port12(AluA3),
  .port13(AluAdder0B3),
  .port14(1'b1)
);

ic74LS08 inst_U31 (
  .port1(ctrlAluSub),
  .port2(AluXor0),
  .port3(Net_U31_Pad3),
  .port4(AluAdder0Bit0Cout),
  .port5(AluXor1),
  .port6(Net_U31_Pad6),
  .port7(1'b0),
  .port8(Net_U31_Pad8),
  .port9(AluAdder0Bit1Cout),
  .port10(AluXor2),
  .port11(Net_U31_Pad11),
  .port12(AluAdder0SignCout),
  .port13(AluXor3),
  .port14(1'b1)
);

ic74LS32 inst_U32 (
  .port1(AluAnd0),
  .port2(Net_U31_Pad3),
  .port3(AluAdder0Bit0Cout),
  .port4(AluAnd1),
  .port5(Net_U31_Pad6),
  .port6(AluAdder0Bit1Cout),
  .port7(1'b0),
  .port8(AluAdder0SignCout),
  .port9(AluAnd2),
  .port10(Net_U31_Pad8),
  .port11(AluAdder0Cout),
  .port12(AluAnd3),
  .port13(Net_U31_Pad11),
  .port14(1'b1)
);

ic74LS08 inst_U24 (
  .port1(AluA4),
  .port2(AluAdder1B0),
  .port3(AluAnd4),
  .port4(AluA5),
  .port5(AluAdder1B1),
  .port6(AluAnd5),
  .port7(1'b0),
  .port8(AluAnd6),
  .port9(AluA6),
  .port10(AluAdder1B2),
  .port11(AluAnd7),
  .port12(AluA7),
  .port13(AluAdder1B3),
  .port14(1'b1)
);

ic74LS86 inst_U25 (
  .port1(AluAdder0Cout),
  .port2(AluXor4),
  .port3(AluAdder4),
  .port4(AluAdder1Bit0Cout),
  .port5(AluXor5),
  .port6(AluAdder5),
  .port7(1'b0),
  .port8(AluAdder6),
  .port9(AluAdder1Bit1Cout),
  .port10(AluXor6),
  .port11(AluAdder7),
  .port12(AluFlagC),
  .port13(AluXor7),
  .port14(1'b1)
);

ic74LS86 inst_U23 (
  .port1(AluA4),
  .port2(AluAdder1B0),
  .port3(AluXor4),
  .port4(AluA5),
  .port5(AluAdder1B1),
  .port6(AluXor5),
  .port7(1'b0),
  .port8(AluXor6),
  .port9(AluA6),
  .port10(AluAdder1B2),
  .port11(AluXor7),
  .port12(AluA7),
  .port13(AluAdder1B3),
  .port14(1'b1)
);

ic74LS08 inst_U26 (
  .port1(AluAdder0Cout),
  .port2(AluXor4),
  .port3(Net_U26_Pad3),
  .port4(AluAdder1Bit0Cout),
  .port5(AluXor5),
  .port6(Net_U26_Pad6),
  .port7(1'b0),
  .port8(Net_U26_Pad8),
  .port9(AluAdder1Bit1Cout),
  .port10(AluXor6),
  .port11(Net_U26_Pad11),
  .port12(AluFlagC),
  .port13(AluXor7),
  .port14(1'b1)
);

ic74LS32 inst_U27 (
  .port1(AluAnd4),
  .port2(Net_U26_Pad3),
  .port3(AluAdder1Bit0Cout),
  .port4(AluAnd5),
  .port5(Net_U26_Pad6),
  .port6(AluAdder1Bit1Cout),
  .port7(1'b0),
  .port8(AluFlagC),
  .port9(AluAnd6),
  .port10(Net_U26_Pad8),
  .port11(AluAdder1Cout),
  .port12(AluAnd7),
  .port13(Net_U26_Pad11),
  .port14(1'b1)
);

ic74LS86 inst_U3 (
  .port1(Bus0),
  .port2(ctrlAluSub),
  .port3(AluAdder0B0),
  .port4(Bus1),
  .port5(ctrlAluSub),
  .port6(AluAdder0B1),
  .port7(1'b0),
  .port8(AluAdder0B2),
  .port9(Bus2),
  .port10(ctrlAluSub),
  .port11(AluAdder0B3),
  .port12(Bus3),
  .port13(ctrlAluSub),
  .port14(1'b1)
);

ic74LS86 inst_U2 (
  .port1(AluFlagC),
  .port2(AluAdder1Cout),
  .port3(AluFlagV),
  .port7(1'b0),
  .port8(unconnected_U2_Pad8),
  .port9(unconnected_U2_Pad9),
  .port10(unconnected_U2_Pad10),
  .port11(unconnected_U2_Pad11),
  .port12(unconnected_U2_Pad12),
  .port13(unconnected_U2_Pad13),
  .port14(1'b1)
);

ic74LS86 inst_U4 (
  .port1(Bus4),
  .port2(ctrlAluSub),
  .port3(AluAdder1B0),
  .port4(Bus5),
  .port5(ctrlAluSub),
  .port6(AluAdder1B1),
  .port7(1'b0),
  .port8(AluAdder1B2),
  .port9(Bus6),
  .port10(ctrlAluSub),
  .port11(AluAdder1B3),
  .port12(Bus7),
  .port13(ctrlAluSub),
  .port14(1'b1)
);

ic74LS153 inst_U8 (
  .port1(1'b0),
  .port2(ctrlAluOp1),
  .port3(AluShift6),
  .port4(AluXor6),
  .port5(AluAnd6),
  .port6(AluAdder6),
  .port7(Net_U12_Pad16),
  .port8(1'b0),
  .port9(AluFlagN),
  .port10(AluAdder7),
  .port11(AluAnd7),
  .port12(AluXor7),
  .port13(AluShift7),
  .port14(ctrlAluOp0),
  .port15(1'b0),
  .port16(1'b1)
);

ic74LS153 inst_U7 (
  .port1(1'b0),
  .port2(ctrlAluOp1),
  .port3(AluShift4),
  .port4(AluXor4),
  .port5(AluAnd4),
  .port6(AluAdder4),
  .port7(Net_U12_Pad12),
  .port8(1'b0),
  .port9(Net_U12_Pad14),
  .port10(AluAdder5),
  .port11(AluAnd5),
  .port12(AluXor5),
  .port13(AluShift5),
  .port14(ctrlAluOp0),
  .port15(1'b0),
  .port16(1'b1)
);

ic74LS153 inst_U6 (
  .port1(1'b0),
  .port2(ctrlAluOp1),
  .port3(AluShift2),
  .port4(AluXor2),
  .port5(AluAnd2),
  .port6(AluAdder2),
  .port7(Net_U12_Pad7),
  .port8(1'b0),
  .port9(Net_U12_Pad9),
  .port10(AluAdder3),
  .port11(AluAnd3),
  .port12(AluXor3),
  .port13(AluShift3),
  .port14(ctrlAluOp0),
  .port15(1'b0),
  .port16(1'b1)
);

ic74LS153 inst_U5 (
  .port1(1'b0),
  .port2(ctrlAluOp1),
  .port3(AluShift0),
  .port4(AluXor0),
  .port5(AluAnd0),
  .port6(AluAdder0),
  .port7(Net_U12_Pad3),
  .port8(1'b0),
  .port9(Net_U12_Pad5),
  .port10(AluAdder1),
  .port11(AluAnd1),
  .port12(AluXor1),
  .port13(AluShift1),
  .port14(ctrlAluOp0),
  .port15(1'b0),
  .port16(1'b1)
);

ic74F521 inst_U12 (
  .port1(1'b0),
  .port2(1'b0),
  .port3(Net_U12_Pad3),
  .port4(1'b0),
  .port5(Net_U12_Pad5),
  .port6(1'b0),
  .port7(Net_U12_Pad7),
  .port8(1'b0),
  .port9(Net_U12_Pad9),
  .port10(1'b0),
  .port11(1'b0),
  .port12(Net_U12_Pad12),
  .port13(1'b0),
  .port14(Net_U12_Pad14),
  .port15(1'b0),
  .port16(Net_U12_Pad16),
  .port17(1'b0),
  .port18(AluFlagN),
  .port19(Net_U12_Pad19),
  .port20(1'b1)
);

ic74LS04 inst_U104 (
  .port1(Net_U12_Pad19),
  .port2(AluFlagZ)
);

ic74AS825 inst_U9 (
  .port1(1'b0),
  .port2(1'b0),
  .port3(Net_U12_Pad3),
  .port4(Net_U12_Pad5),
  .port5(Net_U12_Pad7),
  .port6(Net_U12_Pad9),
  .port7(Net_U12_Pad12),
  .port8(Net_U12_Pad14),
  .port9(Net_U12_Pad16),
  .port10(AluFlagN),
  .port11(resetN),
  .port12(1'b0),
  .port13(clk),
  .port14(ctrlAluYWEN),
  .port15(Net_U10_Pad9_U9),
  .port16(Net_U10_Pad8_U9),
  .port17(Net_U10_Pad7_U9),
  .port18(Net_U10_Pad6_U9),
  .port19(Net_U10_Pad5_U9),
  .port20(Net_U10_Pad4_U9),
  .port21(Net_U10_Pad3_U9),
  .port22(Net_U10_Pad2_U9),
  .port23(1'b0),
  .port24(1'b1),
  .port25(U9_noe)
);

ic74ABT540 inst_U11 (
  .port1(1'b0),
  .port2(Net_U10_Pad2),
  .port3(Net_U10_Pad3),
  .port4(Net_U10_Pad4),
  .port5(Net_U10_Pad5),
  .port6(Net_U10_Pad6),
  .port7(Net_U10_Pad7),
  .port8(Net_U10_Pad8),
  .port9(Net_U10_Pad9),
  .port10(1'b0),
  .port11(Net_D16_Pad1),
  .port12(Net_D15_Pad1),
  .port13(Net_D14_Pad1),
  .port14(Net_D13_Pad1),
  .port15(Net_D12_Pad1),
  .port16(Net_D11_Pad1),
  .port17(Net_D10_Pad1),
  .port18(Net_D9_Pad1),
  .port19(1'b0),
  .port20(1'b1)
);

ic74LS245 inst_U10 (
  .port1(1'b1),
  .port2(Net_U10_Pad2),
  .port3(Net_U10_Pad3),
  .port4(Net_U10_Pad4),
  .port5(Net_U10_Pad5),
  .port6(Net_U10_Pad6),
  .port7(Net_U10_Pad7),
  .port8(Net_U10_Pad8),
  .port9(Net_U10_Pad9),
  .port10(1'b0),
  .port11(Bus7_U10),
  .port12(Bus6_U10),
  .port13(Bus5_U10),
  .port14(Bus4_U10),
  .port15(Bus3_U10),
  .port16(Bus2_U10),
  .port17(Bus1_U10),
  .port18(Bus0_U10),
  .port19(ctrlAluOEN),
  .port20(1'b1)
);

ic74AS825 inst_U97 (
  .port1(1'b0),
  .port2(1'b0),
  .port3(AluFlagN),
  .port4(AluFlagZ),
  .port5(Net_U101_Pad5),
  .port6(AluFlagV),
  .port7(1'b1),
  .port8(1'b1),
  .port9(1'b1),
  .port10(1'b1),
  .port11(resetN),
  .port12(1'b0),
  .port13(clk),
  .port14(ctrlAluYWEN),
  .port15(unconnected_U97_Pad15_U97),
  .port16(unconnected_U97_Pad16_U97),
  .port17(unconnected_U97_Pad17_U97),
  .port18(unconnected_U97_Pad18_U97),
  .port19(flagOverflow_U97),
  .port20(flagCarry_U97),
  .port21(flagZero_U97),
  .port22(flagNegative_U97),
  .port23(1'b0),
  .port24(1'b1),
  .port25(U97_noe)
);

ic74LS151 inst_U101 (
  .port1(AluFlagCShift),
  .port2(AluFlagC),
  .port3(AluFlagC),
  .port4(AluFlagC),
  .port5(Net_U101_Pad5),
  .port6(unconnected_U101_Pad6),
  .port7(1'b0),
  .port8(1'b0),
  .port9(1'b0),
  .port10(ctrlAluOp1),
  .port11(ctrlAluOp0),
  .port12(unconnected_U101_Pad12),
  .port13(unconnected_U101_Pad13),
  .port14(unconnected_U101_Pad14),
  .port15(unconnected_U101_Pad15),
  .port16(1'b1)
);

ic74LS151 inst_U39 (
  .port1(ClockS5),
  .port2(Net_U36_Pad3),
  .port3(breakpointHitN),
  .port4(breakpointHitN),
  .port5(unconnected_U39_Pad5),
  .port6(halt),
  .port7(1'b0),
  .port8(1'b0),
  .port9(1'b0),
  .port10(ClockR2),
  .port11(ClockI2),
  .port12(1'b1),
  .port13(1'b1),
  .port14(1'b1),
  .port15(1'b1),
  .port16(1'b1)
);

ic74LS32 inst_U37 (
  .port1(ClockS5),
  .port2(Net_U36_Pad3),
  .port3(Net_U37_Pad3),
  .port4(Net_U37_Pad4),
  .port5(Net_U33_Pad12),
  .port6(ClockS4),
  .port7(1'b0),
  .port8(unconnected_U37_Pad8),
  .port9(1'b1),
  .port10(1'b1),
  .port11(unconnected_U37_Pad11),
  .port12(1'b1),
  .port13(1'b1),
  .port14(1'b1)
);

ic74LS08 inst_U38 (
  .port1(Net_U37_Pad3),
  .port2(ctrlInstrFinishedN),
  .port3(Net_U37_Pad4),
  .port4(unconnected_U38_Pad4),
  .port5(unconnected_U38_Pad5),
  .port6(unconnected_U38_Pad6),
  .port7(1'b0),
  .port8(Net_U38_Pad8),
  .port9(MemoryinstrImm0ToRamN),
  .port10(MemoryselectStackMemN),
  .port11(Net_U38_Pad11),
  .port12(ctrlMemInstrImmToRamAddr),
  .port13(MemoryselectStackMemN),
  .port14(1'b1)
);

ic74LS14 inst_U33 (
  .port1(Net_C2_Pad1),
  .port2(ClockS0),
  .port3(Net_C3_Pad1),
  .port4(ClockI0),
  .port5(Net_C4_Pad1),
  .port6(ClockR0),
  .port7(1'b0),
  .port8(breakpointEnableN),
  .port9(Net_C1_Pad1),
  .port10(Net_U33_Pad10),
  .port11(ClockS3),
  .port12(Net_U33_Pad12),
  .port13(ClockI2),
  .port14(1'b1)
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
  .port10(1'b0),
  .port11(clk),
  .port12(ClockS1),
  .port13(ClockS0),
  .port14(ClockS1),
  .port15(ClockS2),
  .port16(ClockS3),
  .port17(ClockS2),
  .port18(ClockS4),
  .port19(ClockS5),
  .port20(1'b1)
);

ic74LS08 inst_U36 (
  .port1(ClockS2),
  .port2(Net_U33_Pad10),
  .port3(Net_U36_Pad3),
  .port4(ctrlMemPCLoadN),
  .port5(resetN),
  .port6(MemoryPcS0),
  .port7(1'b0),
  .port8(unconnected_U36_Pad8),
  .port9(1'b1),
  .port10(1'b1),
  .port11(unconnected_U36_Pad11),
  .port12(1'b1),
  .port13(1'b1),
  .port14(1'b1)
);

ic74ABT540 inst_U95 (
  .port1(1'b0),
  .port2(Net_U95_Pad2),
  .port3(Net_U95_Pad2),
  .port4(Net_U95_Pad2),
  .port5(Net_U95_Pad2),
  .port6(ClockClkN),
  .port7(ClockClkN),
  .port8(ClockClkN),
  .port9(ClockClkN),
  .port10(1'b0),
  .port11(unconnected_U95_Pad11),
  .port12(unconnected_U95_Pad12),
  .port13(unconnected_U95_Pad13),
  .port14(clkN),
  .port15(ClockClkN),
  .port16(unconnected_U95_Pad16),
  .port17(unconnected_U95_Pad17),
  .port18(clk),
  .port19(1'b0),
  .port20(1'b1)
);

icds1813 inst_U34 (
  .port1(resetN),
  .port2(1'b1),
  .port3(1'b0)
);

ic74LS08 inst_U59 (
  .port1(ctrlMemSPUp),
  .port2(resetN),
  .port3(MemorySpS1),
  .port7(1'b0),
  .port8(Net_U59_Pad8),
  .port9(Net_U106_Pad3),
  .port10(resetN),
  .port11(Net_U59_Pad11),
  .port12(ControlA0),
  .port13(ControlA1),
  .port14(1'b1)
);

ic74LS86 inst_U81 (
  .port1(unconnected_U81_Pad1),
  .port2(unconnected_U81_Pad2),
  .port3(unconnected_U81_Pad3),
  .port4(1'b1),
  .port5(ControlA0),
  .port6(ControlS0),
  .port7(1'b0),
  .port8(ControlS2),
  .port9(ControlA2),
  .port10(Net_U59_Pad11),
  .port11(ControlS1),
  .port12(ControlA0),
  .port13(ControlA1),
  .port14(1'b1)
);

ic74LS32 inst_U106 (
  .port1(ctrlInstrFinishedN),
  .port2(halt),
  .port3(Net_U106_Pad3)
);

ic74LS08 inst_U78 (
  .port1(unconnected_U78_Pad1),
  .port2(unconnected_U78_Pad2),
  .port3(unconnected_U78_Pad3),
  .port7(1'b0),
  .port14(1'b1)
);

ic74LS08 inst_U82 (
  .port7(1'b0),
  .port14(1'b1)
);

ic74ABT540 inst_U96 (
  .port1(1'b0),
  .port2(ControlA0),
  .port3(ControlA1),
  .port4(ControlA2),
  .port5(1'b0),
  .port6(1'b0),
  .port7(1'b0),
  .port8(1'b0),
  .port9(1'b0),
  .port10(1'b0),
  .port11(Net_D56_Pad1),
  .port12(Net_D55_Pad1),
  .port13(Net_D54_Pad1),
  .port14(Net_D53_Pad1),
  .port15(Net_D52_Pad1),
  .port16(Net_D51_Pad1),
  .port17(Net_D50_Pad1),
  .port18(Net_D49_Pad1),
  .port19(1'b0),
  .port20(1'b1)
);

ic74AS825 inst_U83 (
  .port1(1'b0),
  .port2(1'b0),
  .port3(flagNegative),
  .port4(flagZero),
  .port5(flagCarry),
  .port6(flagOverflow),
  .port7(unconnected_U83_Pad7),
  .port8(ControlS0),
  .port9(ControlS1),
  .port10(ControlS2),
  .port11(Net_U59_Pad8),
  .port12(1'b0),
  .port13(clkN),
  .port14(halt),
  .port15(ControlA2_U83),
  .port16(ControlA1_U83),
  .port17(ControlA0_U83),
  .port18(unconnected_U83_Pad18_U83),
  .port19(ControlA14_U83),
  .port20(ControlA13_U83),
  .port21(ControlA12_U83),
  .port22(ControlA11_U83),
  .port23(1'b0),
  .port24(1'b1),
  .port25(U83_noe)
);

ic74LS374 inst_U84 (
  .port1(1'b0),
  .port2(ctrlAluSub),
  .port3(ControlInstrCode0),
  .port4(ControlInstrCode1),
  .port5(ctrlAluOp0),
  .port6(ctrlAluOp1),
  .port7(ControlInstrCode2),
  .port8(ControlInstrCode3),
  .port9(ControlA6),
  .port10(1'b0),
  .port11(clkN),
  .port12(ControlA7),
  .port13(ControlInstrCode4),
  .port14(ControlInstrCode5),
  .port15(ControlA8),
  .port16(ControlA9),
  .port17(ControlInstrCode6),
  .port18(ControlInstrCode7),
  .port19(ControlA10),
  .port20(1'b1)
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
  .port14(1'b0),
  .port15(ctrlReg1WEN),
  .port16(ctrlRegAluSel),
  .port17(ctrlReg0BusOEN),
  .port18(ctrlReg1BusOEN),
  .port19(ctrlMemPCLoadN),
  .port20(1'b0),
  .port21(ControlA10),
  .port22(1'b0),
  .port23(ControlA11),
  .port24(ControlA9),
  .port25(ControlA8),
  .port26(ControlA13),
  .port27(1'b1),
  .port28(1'b1)
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
  .port14(1'b0),
  .port15(ctrlMemInstrOEN),
  .port16(ctrlMemMar0WEN),
  .port17(ctrlMemMar1WEN),
  .port18(ctrlMemInstrImmToRamAddr),
  .port19(ctrlMemRamWEN),
  .port20(1'b0),
  .port21(ControlA10),
  .port22(1'b0),
  .port23(ControlA11),
  .port24(ControlA9),
  .port25(ControlA8),
  .port26(ControlA13),
  .port27(1'b1),
  .port28(1'b1)
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
  .port14(1'b0),
  .port15(ctrlMemPCToRamN),
  .port16(ctrlInstrFinishedN),
  .port17(unconnected_U87_Pad17),
  .port18(unconnected_U87_Pad18),
  .port19(unconnected_U87_Pad19),
  .port20(1'b0),
  .port21(ControlA10),
  .port22(1'b0),
  .port23(ControlA11),
  .port24(ControlA9),
  .port25(ControlA8),
  .port26(ControlA13),
  .port27(1'b1),
  .port28(1'b1)
);

ic5082_7340 inst_U94 (
  .port1(Net_U94_Pad1),
  .port2(Net_U94_Pad2),
  .port3(Net_U94_Pad3),
  .port4(1'b0),
  .port5(1'b0),
  .port6(1'b0),
  .port7(1'b1),
  .port8(Net_U94_Pad8)
);

ic5082_7340 inst_U93 (
  .port1(Net_U93_Pad1),
  .port2(Net_U93_Pad2),
  .port3(Net_U93_Pad3),
  .port4(1'b0),
  .port5(1'b0),
  .port6(1'b0),
  .port7(1'b1),
  .port8(Net_U93_Pad8)
);

ic74AS825 inst_U92 (
  .port1(1'b0),
  .port2(1'b0),
  .port3(Bus0),
  .port4(Bus1),
  .port5(Bus2),
  .port6(Bus3),
  .port7(Bus4),
  .port8(Bus5),
  .port9(Bus6),
  .port10(Bus7),
  .port11(resetN),
  .port12(1'b0),
  .port13(clk),
  .port14(Net_U92_Pad14),
  .port15(Net_U94_Pad3_U92),
  .port16(Net_U94_Pad2_U92),
  .port17(Net_U94_Pad1_U92),
  .port18(Net_U94_Pad8_U92),
  .port19(Net_U93_Pad3_U92),
  .port20(Net_U93_Pad2_U92),
  .port21(Net_U93_Pad1_U92),
  .port22(Net_U93_Pad8_U92),
  .port23(1'b0),
  .port24(1'b1),
  .port25(U92_noe)
);

ic74LS32 inst_U90 (
  .port1(Net_U88_Pad19),
  .port2(ctrlMemRamOEN),
  .port3(Net_U90_Pad3)
);

ic74LS32 inst_U89 (
  .port1(Net_U88_Pad19),
  .port2(ctrlMemRamWEN),
  .port3(Net_U92_Pad14)
);

ic74LS245 inst_U91 (
  .port1(1'b1),
  .port2(Net_RN10_Pad9),
  .port3(Net_RN10_Pad8),
  .port4(Net_RN10_Pad7),
  .port5(Net_RN10_Pad6),
  .port6(Net_RN10_Pad5),
  .port7(Net_RN10_Pad4),
  .port8(Net_RN10_Pad3),
  .port9(Net_RN10_Pad2),
  .port10(1'b1),
  .port11(Bus7_U91),
  .port12(Bus6_U91),
  .port13(Bus5_U91),
  .port14(Bus4_U91),
  .port15(Bus3_U91),
  .port16(Bus2_U91),
  .port17(Bus1_U91),
  .port18(Bus0_U91),
  .port19(Net_U90_Pad3),
  .port20(1'b0)
);

ic74F521 inst_U88 (
  .port1(ioCEN),
  .port2(ioAddr0),
  .port3(1'b0),
  .port4(ioAddr1),
  .port5(1'b0),
  .port6(ioAddr2),
  .port7(1'b0),
  .port8(ioAddr3),
  .port9(1'b0),
  .port10(1'b0),
  .port11(ioAddr4),
  .port12(1'b0),
  .port13(ioAddr5),
  .port14(1'b0),
  .port15(ioAddr6),
  .port16(1'b0),
  .port17(ioAddr7),
  .port18(1'b0),
  .port19(Net_U88_Pad19),
  .port20(1'b1)
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
  .port11(1'b0),
  .port12(1'b0),
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
  .port24(1'b1)
);

ic74LS245 inst_U50 (
  .port1(1'b1),
  .port2(MemoryInstrImm8),
  .port3(MemoryInstrImm9),
  .port4(MemoryInstrImm10),
  .port5(MemoryInstrImm11),
  .port6(MemoryInstrImm12),
  .port7(MemoryInstrImm13),
  .port8(MemoryInstrImm14),
  .port9(MemoryInstrImm15),
  .port10(1'b0),
  .port11(MemoryPcIn15_U50),
  .port12(MemoryPcIn14_U50),
  .port13(MemoryPcIn13_U50),
  .port14(MemoryPcIn12_U50),
  .port15(MemoryPcIn11_U50),
  .port16(MemoryPcIn10_U50),
  .port17(MemoryPcIn9_U50),
  .port18(MemoryPcIn8_U50),
  .port19(Net_U48_Pad10),
  .port20(1'b1)
);

ic74LS08 inst_U105 (
  .port1(Net_U103_Pad6),
  .port2(ctrlMemPCLoadN),
  .port3(MemorypcEnN)
);

ic74LS32 inst_U103 (
  .port1(ctrlMemSPEnN),
  .port2(halt),
  .port3(MemoryspEnN),
  .port4(ctrlMemPCEnN),
  .port5(halt),
  .port6(Net_U103_Pad6)
);

ic74LS245 inst_U52 (
  .port1(1'b1),
  .port2(MemoryInstrImm0),
  .port3(MemoryInstrImm1),
  .port4(MemoryInstrImm2),
  .port5(MemoryInstrImm3),
  .port6(MemoryInstrImm4),
  .port7(MemoryInstrImm5),
  .port8(MemoryInstrImm6),
  .port9(MemoryInstrImm7),
  .port10(1'b0),
  .port11(MemoryPcIn7_U52),
  .port12(MemoryPcIn6_U52),
  .port13(MemoryPcIn5_U52),
  .port14(MemoryPcIn4_U52),
  .port15(MemoryPcIn3_U52),
  .port16(MemoryPcIn2_U52),
  .port17(MemoryPcIn1_U52),
  .port18(MemoryPcIn0_U52),
  .port19(Net_U48_Pad8),
  .port20(1'b1)
);

ic74LS245 inst_U51 (
  .port1(1'b1),
  .port2(Bus0),
  .port3(Bus1),
  .port4(Bus2),
  .port5(Bus3),
  .port6(Bus4),
  .port7(Bus5),
  .port8(Bus6),
  .port9(Bus7),
  .port10(1'b0),
  .port11(MemoryPcIn7_U51),
  .port12(MemoryPcIn6_U51),
  .port13(MemoryPcIn5_U51),
  .port14(MemoryPcIn4_U51),
  .port15(MemoryPcIn3_U51),
  .port16(MemoryPcIn2_U51),
  .port17(MemoryPcIn1_U51),
  .port18(MemoryPcIn0_U51),
  .port19(ctrlMemPCFromImm),
  .port20(1'b1)
);

ic74LS04 inst_U48 (
  .port1(ctrlMemInstrImmToRamAddr),
  .port2(MemoryinstrImm0ToRamN),
  .port5(Net_U38_Pad11),
  .port6(MemoryinstrImm1ToRamN),
  .port7(1'b0),
  .port8(Net_U48_Pad8),
  .port9(ctrlMemPCFromImm),
  .port10(Net_U48_Pad10),
  .port11(ctrlMemPCFromImm),
  .port12(Memorymar1ToRamN),
  .port13(Net_U38_Pad8),
  .port14(1'b1)
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
  .port14(1'b0),
  .port15(Net_U62_Pad15),
  .port16(Net_U62_Pad16),
  .port17(Net_U62_Pad17),
  .port18(Net_U62_Pad18),
  .port19(Net_U62_Pad19),
  .port20(1'b0),
  .port21(MemoryPc10),
  .port22(1'b0),
  .port23(MemoryPc11),
  .port24(MemoryPc9),
  .port25(MemoryPc8),
  .port26(MemoryPc13),
  .port27(1'b1),
  .port28(1'b1)
);

ic74AS825 inst_U64 (
  .port1(1'b0),
  .port2(1'b0),
  .port3(Net_U62_Pad11),
  .port4(Net_U62_Pad12),
  .port5(Net_U62_Pad13),
  .port6(Net_U62_Pad15),
  .port7(Net_U62_Pad16),
  .port8(Net_U62_Pad17),
  .port9(Net_U62_Pad18),
  .port10(Net_U62_Pad19),
  .port11(resetN),
  .port12(1'b0),
  .port13(clk),
  .port14(ctrlMemInstrWEN),
  .port15(ControlInstrCode7_U64),
  .port16(ControlInstrCode6_U64),
  .port17(ControlInstrCode5_U64),
  .port18(ControlInstrCode4_U64),
  .port19(ControlInstrCode3_U64),
  .port20(ControlInstrCode2_U64),
  .port21(ControlInstrCode1_U64),
  .port22(ControlInstrCode0_U64),
  .port23(1'b0),
  .port24(1'b1),
  .port25(U64_noe)
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
  .port14(1'b0),
  .port15(Net_U67_Pad15),
  .port16(Net_U67_Pad16),
  .port17(Net_U67_Pad17),
  .port18(Net_U67_Pad18),
  .port19(Net_U67_Pad19),
  .port20(1'b0),
  .port21(MemoryPc10),
  .port22(1'b0),
  .port23(MemoryPc11),
  .port24(MemoryPc9),
  .port25(MemoryPc8),
  .port26(MemoryPc13),
  .port27(1'b1),
  .port28(1'b1)
);

ic74AS825 inst_U71 (
  .port1(1'b0),
  .port2(1'b0),
  .port3(Net_U69_Pad11),
  .port4(Net_U69_Pad12),
  .port5(Net_U69_Pad13),
  .port6(Net_U69_Pad15),
  .port7(Net_U69_Pad16),
  .port8(Net_U69_Pad17),
  .port9(Net_U69_Pad18),
  .port10(Net_U69_Pad19),
  .port11(resetN),
  .port12(1'b0),
  .port13(clk),
  .port14(ctrlMemInstrWEN),
  .port15(MemoryInstrImm15_U71),
  .port16(MemoryInstrImm14_U71),
  .port17(MemoryInstrImm13_U71),
  .port18(MemoryInstrImm12_U71),
  .port19(MemoryInstrImm11_U71),
  .port20(MemoryInstrImm10_U71),
  .port21(MemoryInstrImm9_U71),
  .port22(MemoryInstrImm8_U71),
  .port23(1'b0),
  .port24(1'b1),
  .port25(U71_noe)
);

ic74LS245 inst_U75 (
  .port1(1'b1),
  .port2(MemoryInstrImm0),
  .port3(MemoryInstrImm1),
  .port4(MemoryInstrImm2),
  .port5(MemoryInstrImm3),
  .port6(MemoryInstrImm4),
  .port7(MemoryInstrImm5),
  .port8(MemoryInstrImm6),
  .port9(MemoryInstrImm7),
  .port10(1'b0),
  .port11(Bus7_U75),
  .port12(Bus6_U75),
  .port13(Bus5_U75),
  .port14(Bus4_U75),
  .port15(Bus3_U75),
  .port16(Bus2_U75),
  .port17(Bus1_U75),
  .port18(Bus0_U75),
  .port19(ctrlMemInstrOEN),
  .port20(1'b1)
);

ic74AS825 inst_U70 (
  .port1(1'b0),
  .port2(1'b0),
  .port3(Net_U67_Pad11),
  .port4(Net_U67_Pad12),
  .port5(Net_U67_Pad13),
  .port6(Net_U67_Pad15),
  .port7(Net_U67_Pad16),
  .port8(Net_U67_Pad17),
  .port9(Net_U67_Pad18),
  .port10(Net_U67_Pad19),
  .port11(resetN),
  .port12(1'b0),
  .port13(clk),
  .port14(ctrlMemInstrWEN),
  .port15(MemoryInstrImm7_U70),
  .port16(MemoryInstrImm6_U70),
  .port17(MemoryInstrImm5_U70),
  .port18(MemoryInstrImm4_U70),
  .port19(MemoryInstrImm3_U70),
  .port20(MemoryInstrImm2_U70),
  .port21(MemoryInstrImm1_U70),
  .port22(MemoryInstrImm0_U70),
  .port23(1'b0),
  .port24(1'b1),
  .port25(U70_noe)
);

icAS6C4008_55PCN inst_U77 (
  .port1(unconnected_U77_Pad1),
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
  .port13(Bus0_U77),
  .port14(Bus1_U77),
  .port15(Bus2_U77),
  .port16(1'b0),
  .port17(Bus3_U77),
  .port18(Bus4_U77),
  .port19(Bus5_U77),
  .port20(Bus6_U77),
  .port21(Bus7_U77),
  .port22(MemoryramCEN),
  .port23(MemoryRamAddress10),
  .port24(ctrlMemRamOEN),
  .port25(MemoryRamAddress11),
  .port26(MemoryRamAddress9),
  .port27(MemoryRamAddress8),
  .port28(MemoryRamAddress13),
  .port29(ctrlMemRamWEN),
  .port30(unconnected_U77_Pad30),
  .port31(MemoryRamAddress15),
  .port32(1'b1),
  .port33(U77_noe),
  .port34(i_asyncRamSpecialClock),
  .port113(Bus0),
  .port114(Bus1),
  .port115(Bus2),
  .port117(Bus3),
  .port118(Bus4),
  .port119(Bus5),
  .port120(Bus6),
  .port121(Bus7)
);

ic74LS245 inst_U72 (
  .port1(1'b1),
  .port2(MemoryMar8),
  .port3(MemoryMar9),
  .port4(MemoryMar10),
  .port5(MemoryMar11),
  .port6(MemoryMar12),
  .port7(MemoryMar13),
  .port8(MemoryMar14),
  .port9(MemoryMar15),
  .port10(1'b0),
  .port11(MemoryRamAddress15_U72),
  .port12(MemoryRamAddress14_U72),
  .port13(MemoryRamAddress13_U72),
  .port14(MemoryRamAddress12_U72),
  .port15(MemoryRamAddress11_U72),
  .port16(MemoryRamAddress10_U72),
  .port17(MemoryRamAddress9_U72),
  .port18(MemoryRamAddress8_U72),
  .port19(Memorymar1ToRamN),
  .port20(1'b1)
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
  .port14(1'b0),
  .port15(Net_U69_Pad15),
  .port16(Net_U69_Pad16),
  .port17(Net_U69_Pad17),
  .port18(Net_U69_Pad18),
  .port19(Net_U69_Pad19),
  .port20(1'b0),
  .port21(MemoryPc10),
  .port22(1'b0),
  .port23(MemoryPc11),
  .port24(MemoryPc9),
  .port25(MemoryPc8),
  .port26(MemoryPc13),
  .port27(1'b1),
  .port28(1'b1)
);

ic74LS245 inst_U61 (
  .port1(1'b1),
  .port2(Net_U56_Pad22),
  .port3(Net_U56_Pad21),
  .port4(Net_U56_Pad20),
  .port5(Net_U56_Pad19),
  .port6(Net_U56_Pad18),
  .port7(Net_U56_Pad17),
  .port8(Net_U56_Pad16),
  .port9(Net_U56_Pad15),
  .port10(1'b0),
  .port11(MemoryRamAddress15_U61),
  .port12(MemoryRamAddress14_U61),
  .port13(MemoryRamAddress13_U61),
  .port14(MemoryRamAddress12_U61),
  .port15(MemoryRamAddress11_U61),
  .port16(MemoryRamAddress10_U61),
  .port17(MemoryRamAddress9_U61),
  .port18(MemoryRamAddress8_U61),
  .port19(MemoryselectStackMemN),
  .port20(1'b1)
);

ic74AS825 inst_U63 (
  .port1(ctrlMemInstrImmToRamAddr),
  .port2(1'b0),
  .port3(Bus0),
  .port4(Bus1),
  .port5(Bus2),
  .port6(Bus3),
  .port7(Bus4),
  .port8(Bus5),
  .port9(Bus6),
  .port10(Bus7),
  .port11(resetN),
  .port12(1'b0),
  .port13(clk),
  .port14(ctrlMemMar0WEN),
  .port15(ioAddr7_U63),
  .port16(ioAddr6_U63),
  .port17(ioAddr5_U63),
  .port18(ioAddr4_U63),
  .port19(ioAddr3_U63),
  .port20(ioAddr2_U63),
  .port21(ioAddr1_U63),
  .port22(ioAddr0_U63),
  .port23(1'b0),
  .port24(1'b1),
  .port25(U63_noe)
);

ic74AS825 inst_U68 (
  .port1(1'b0),
  .port2(1'b0),
  .port3(Bus0),
  .port4(Bus1),
  .port5(Bus2),
  .port6(Bus3),
  .port7(Bus4),
  .port8(Bus5),
  .port9(Bus6),
  .port10(Bus7),
  .port11(resetN),
  .port12(1'b0),
  .port13(clk),
  .port14(ctrlMemMar1WEN),
  .port15(MemoryMar15_U68),
  .port16(MemoryMar14_U68),
  .port17(MemoryMar13_U68),
  .port18(MemoryMar12_U68),
  .port19(MemoryMar11_U68),
  .port20(MemoryMar10_U68),
  .port21(MemoryMar9_U68),
  .port22(MemoryMar8_U68),
  .port23(1'b0),
  .port24(1'b1),
  .port25(U68_noe)
);

ic74LS245 inst_U65 (
  .port1(1'b1),
  .port2(MemoryInstrImm0),
  .port3(MemoryInstrImm1),
  .port4(MemoryInstrImm2),
  .port5(MemoryInstrImm3),
  .port6(MemoryInstrImm4),
  .port7(MemoryInstrImm5),
  .port8(MemoryInstrImm6),
  .port9(MemoryInstrImm7),
  .port10(1'b0),
  .port11(ioAddr7_U65),
  .port12(ioAddr6_U65),
  .port13(ioAddr5_U65),
  .port14(ioAddr4_U65),
  .port15(ioAddr3_U65),
  .port16(ioAddr2_U65),
  .port17(ioAddr1_U65),
  .port18(ioAddr0_U65),
  .port19(MemoryinstrImm0ToRamN),
  .port20(1'b1)
);

ic74LS245 inst_U66 (
  .port1(1'b1),
  .port2(MemoryInstrImm8),
  .port3(MemoryInstrImm9),
  .port4(MemoryInstrImm10),
  .port5(MemoryInstrImm11),
  .port6(MemoryInstrImm12),
  .port7(MemoryInstrImm13),
  .port8(MemoryInstrImm14),
  .port9(MemoryInstrImm15),
  .port10(1'b0),
  .port11(MemoryRamAddress15_U66),
  .port12(MemoryRamAddress14_U66),
  .port13(MemoryRamAddress13_U66),
  .port14(MemoryRamAddress12_U66),
  .port15(MemoryRamAddress11_U66),
  .port16(MemoryRamAddress10_U66),
  .port17(MemoryRamAddress9_U66),
  .port18(MemoryRamAddress8_U66),
  .port19(MemoryinstrImm1ToRamN),
  .port20(1'b1)
);

ic74AS867 inst_U56 (
  .port1(resetN),
  .port2(MemorySpS1),
  .port3(1'b0),
  .port4(1'b0),
  .port5(1'b0),
  .port6(1'b0),
  .port7(1'b0),
  .port8(1'b0),
  .port9(1'b0),
  .port10(1'b0),
  .port11(1'b0),
  .port12(1'b0),
  .port13(unconnected_U56_Pad13),
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
  .port24(1'b1)
);

icAS6C4008_55PCN inst_U100 (
  .port1(unconnected_U100_Pad1),
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
  .port13(MemoryRam2data0_U100),
  .port14(MemoryRam2data1_U100),
  .port15(MemoryRam2data2_U100),
  .port16(1'b0),
  .port17(MemoryRam2data3_U100),
  .port18(MemoryRam2data4_U100),
  .port19(MemoryRam2data5_U100),
  .port20(MemoryRam2data6_U100),
  .port21(MemoryRam2data7_U100),
  .port22(MemoryramCEN),
  .port23(MemoryRamAddress10),
  .port24(Net_U100_Pad24),
  .port25(MemoryRamAddress11),
  .port26(MemoryRamAddress9),
  .port27(MemoryRamAddress8),
  .port28(MemoryRamAddress13),
  .port29(ctrlMemRamWEN),
  .port30(unconnected_U100_Pad30),
  .port31(MemoryRamAddress15),
  .port32(1'b1),
  .port33(U100_noe),
  .port34(i_asyncRamSpecialClock),
  .port113(MemoryRam2data0),
  .port114(MemoryRam2data1),
  .port115(MemoryRam2data2),
  .port117(MemoryRam2data3),
  .port118(MemoryRam2data4),
  .port119(MemoryRam2data5),
  .port120(MemoryRam2data6),
  .port121(MemoryRam2data7)
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
  .port12(1'b0),
  .port13(unconnected_U55_Pad13),
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
  .port24(1'b1)
);

ic74LS245 inst_U49 (
  .port1(1'b1),
  .port2(MemoryRam2data0),
  .port3(MemoryRam2data1),
  .port4(MemoryRam2data2),
  .port5(MemoryRam2data3),
  .port6(MemoryRam2data4),
  .port7(MemoryRam2data5),
  .port8(MemoryRam2data6),
  .port9(MemoryRam2data7),
  .port10(1'b0),
  .port11(MemoryPcIn15_U49),
  .port12(MemoryPcIn14_U49),
  .port13(MemoryPcIn13_U49),
  .port14(MemoryPcIn12_U49),
  .port15(MemoryPcIn11_U49),
  .port16(MemoryPcIn10_U49),
  .port17(MemoryPcIn9_U49),
  .port18(MemoryPcIn8_U49),
  .port19(ctrlMemPCFromImm),
  .port20(1'b1)
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
  .port10(1'b0),
  .port11(MemoryPc4),
  .port12(MemoryComp4),
  .port13(MemoryPc5),
  .port14(MemoryComp5),
  .port15(MemoryPc6),
  .port16(MemoryComp6),
  .port17(MemoryPc7),
  .port18(MemoryComp7),
  .port19(Net_U53_Pad19),
  .port20(1'b1)
);

ic74LS245 inst_U99 (
  .port1(1'b1),
  .port2(MemoryPc0),
  .port3(MemoryPc1),
  .port4(MemoryPc2),
  .port5(MemoryPc3),
  .port6(MemoryPc4),
  .port7(MemoryPc5),
  .port8(MemoryPc6),
  .port9(MemoryPc7),
  .port10(1'b0),
  .port11(Bus7_U99),
  .port12(Bus6_U99),
  .port13(Bus5_U99),
  .port14(Bus4_U99),
  .port15(Bus3_U99),
  .port16(Bus2_U99),
  .port17(Bus1_U99),
  .port18(Bus0_U99),
  .port19(ctrlMemPCToRamN),
  .port20(1'b1)
);

ic74LS245 inst_U98 (
  .port1(1'b1),
  .port2(MemoryPc8),
  .port3(MemoryPc9),
  .port4(MemoryPc10),
  .port5(MemoryPc11),
  .port6(MemoryPc12),
  .port7(MemoryPc13),
  .port8(MemoryPc14),
  .port9(MemoryPc15),
  .port10(1'b0),
  .port11(MemoryRam2data7_U98),
  .port12(MemoryRam2data6_U98),
  .port13(MemoryRam2data5_U98),
  .port14(MemoryRam2data4_U98),
  .port15(MemoryRam2data3_U98),
  .port16(MemoryRam2data2_U98),
  .port17(MemoryRam2data1_U98),
  .port18(MemoryRam2data0_U98),
  .port19(ctrlMemPCToRamN),
  .port20(1'b1)
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
  .port10(1'b0),
  .port11(MemoryPc12),
  .port12(MemoryComp12),
  .port13(MemoryPc13),
  .port14(MemoryComp13),
  .port15(MemoryPc14),
  .port16(MemoryComp14),
  .port17(MemoryPc15),
  .port18(MemoryComp15),
  .port19(breakpointHitN),
  .port20(1'b1)
);

ic74ABT540 inst_U58 (
  .port1(1'b0),
  .port2(MemoryPc8),
  .port3(MemoryPc9),
  .port4(MemoryPc10),
  .port5(MemoryPc11),
  .port6(MemoryPc12),
  .port7(MemoryPc13),
  .port8(MemoryPc14),
  .port9(MemoryPc15),
  .port10(1'b0),
  .port11(Net_D48_Pad1),
  .port12(Net_D47_Pad1),
  .port13(Net_D46_Pad1),
  .port14(Net_D45_Pad1),
  .port15(Net_D44_Pad1),
  .port16(Net_D43_Pad1),
  .port17(Net_D42_Pad1),
  .port18(Net_D41_Pad1),
  .port19(1'b0),
  .port20(1'b1)
);

ic74ABT540 inst_U57 (
  .port1(1'b0),
  .port2(MemoryPc0),
  .port3(MemoryPc1),
  .port4(MemoryPc2),
  .port5(MemoryPc3),
  .port6(MemoryPc4),
  .port7(MemoryPc5),
  .port8(MemoryPc6),
  .port9(MemoryPc7),
  .port10(1'b0),
  .port11(Net_D40_Pad1),
  .port12(Net_D39_Pad1),
  .port13(Net_D38_Pad1),
  .port14(Net_D37_Pad1),
  .port15(Net_D36_Pad1),
  .port16(Net_D35_Pad1),
  .port17(Net_D34_Pad1),
  .port18(Net_D33_Pad1),
  .port19(1'b0),
  .port20(1'b1)
);

ic74LS245 inst_U73 (
  .port1(1'b1),
  .port2(MemoryMar8),
  .port3(MemoryMar9),
  .port4(MemoryMar10),
  .port5(MemoryMar11),
  .port6(MemoryMar12),
  .port7(MemoryMar13),
  .port8(MemoryMar14),
  .port9(MemoryMar15),
  .port10(1'b0),
  .port11(MemorySelect7_U73),
  .port12(MemorySelect6_U73),
  .port13(MemorySelect5_U73),
  .port14(MemorySelect4_U73),
  .port15(MemorySelect3_U73),
  .port16(MemorySelect2_U73),
  .port17(MemorySelect1_U73),
  .port18(MemorySelect0_U73),
  .port19(ctrlMemInstrImmToRamAddr),
  .port20(1'b1)
);

ic74LS245 inst_U74 (
  .port1(1'b1),
  .port2(MemoryInstrImm8),
  .port3(MemoryInstrImm9),
  .port4(MemoryInstrImm10),
  .port5(MemoryInstrImm11),
  .port6(MemoryInstrImm12),
  .port7(MemoryInstrImm13),
  .port8(MemoryInstrImm14),
  .port9(MemoryInstrImm15),
  .port10(1'b0),
  .port11(MemorySelect7_U74),
  .port12(MemorySelect6_U74),
  .port13(MemorySelect5_U74),
  .port14(MemorySelect4_U74),
  .port15(MemorySelect3_U74),
  .port16(MemorySelect2_U74),
  .port17(MemorySelect1_U74),
  .port18(MemorySelect0_U74),
  .port19(MemoryinstrImm0ToRamN),
  .port20(1'b1)
);

ic74LS04 inst_U80 (
  .port1(ioCEN),
  .port2(MemoryramCEN),
  .port3(ctrlMemPCToRamN),
  .port4(Net_U100_Pad24)
);

ic74F521 inst_U76 (
  .port1(1'b0),
  .port2(MemorySelect0),
  .port3(1'b1),
  .port4(MemorySelect1),
  .port5(1'b1),
  .port6(MemorySelect2),
  .port7(1'b1),
  .port8(MemorySelect3),
  .port9(1'b1),
  .port10(1'b0),
  .port11(MemorySelect4),
  .port12(1'b1),
  .port13(MemorySelect5),
  .port14(1'b1),
  .port15(MemorySelect6),
  .port16(1'b1),
  .port17(MemorySelect7),
  .port18(1'b1),
  .port19(MemoryselectStackMemN),
  .port20(1'b1)
);

ic74F521 inst_U79 (
  .port1(1'b0),
  .port2(MemorySelect0),
  .port3(1'b0),
  .port4(MemorySelect1),
  .port5(1'b1),
  .port6(MemorySelect2),
  .port7(1'b1),
  .port8(MemorySelect3),
  .port9(1'b1),
  .port10(1'b0),
  .port11(MemorySelect4),
  .port12(1'b1),
  .port13(MemorySelect5),
  .port14(1'b1),
  .port15(MemorySelect6),
  .port16(1'b1),
  .port17(MemorySelect7),
  .port18(1'b1),
  .port19(ioCEN),
  .port20(1'b1)
);

ic74AS825 inst_U41 (
  .port1(1'b0),
  .port2(1'b0),
  .port3(Bus0),
  .port4(Bus1),
  .port5(Bus2),
  .port6(Bus3),
  .port7(Bus4),
  .port8(Bus5),
  .port9(Bus6),
  .port10(Bus7),
  .port11(resetN),
  .port12(1'b0),
  .port13(clk),
  .port14(ctrlReg1WEN),
  .port15(RegsetR17_U41),
  .port16(RegsetR16_U41),
  .port17(RegsetR15_U41),
  .port18(RegsetR14_U41),
  .port19(RegsetR13_U41),
  .port20(RegsetR12_U41),
  .port21(RegsetR11_U41),
  .port22(RegsetR10_U41),
  .port23(1'b0),
  .port24(1'b1),
  .port25(U41_noe)
);

ic74LS245 inst_U44 (
  .port1(1'b1),
  .port2(RegsetR00),
  .port3(RegsetR01),
  .port4(RegsetR02),
  .port5(RegsetR03),
  .port6(RegsetR04),
  .port7(RegsetR05),
  .port8(RegsetR06),
  .port9(RegsetR07),
  .port10(1'b0),
  .port11(Bus7_U44),
  .port12(Bus6_U44),
  .port13(Bus5_U44),
  .port14(Bus4_U44),
  .port15(Bus3_U44),
  .port16(Bus2_U44),
  .port17(Bus1_U44),
  .port18(Bus0_U44),
  .port19(ctrlReg0BusOEN),
  .port20(1'b1)
);

ic74LS245 inst_U45 (
  .port1(1'b1),
  .port2(RegsetR10),
  .port3(RegsetR11),
  .port4(RegsetR12),
  .port5(RegsetR13),
  .port6(RegsetR14),
  .port7(RegsetR15),
  .port8(RegsetR16),
  .port9(RegsetR17),
  .port10(1'b0),
  .port11(Bus7_U45),
  .port12(Bus6_U45),
  .port13(Bus5_U45),
  .port14(Bus4_U45),
  .port15(Bus3_U45),
  .port16(Bus2_U45),
  .port17(Bus1_U45),
  .port18(Bus0_U45),
  .port19(ctrlReg1BusOEN),
  .port20(1'b1)
);

ic74AS825 inst_U40 (
  .port1(1'b0),
  .port2(1'b0),
  .port3(Bus0),
  .port4(Bus1),
  .port5(Bus2),
  .port6(Bus3),
  .port7(Bus4),
  .port8(Bus5),
  .port9(Bus6),
  .port10(Bus7),
  .port11(resetN),
  .port12(1'b0),
  .port13(clk),
  .port14(ctrlReg0WEN),
  .port15(RegsetR07_U40),
  .port16(RegsetR06_U40),
  .port17(RegsetR05_U40),
  .port18(RegsetR04_U40),
  .port19(RegsetR03_U40),
  .port20(RegsetR02_U40),
  .port21(RegsetR01_U40),
  .port22(RegsetR00_U40),
  .port23(1'b0),
  .port24(1'b1),
  .port25(U40_noe)
);

ic74ABT540 inst_U46 (
  .port1(1'b0),
  .port2(RegsetR00),
  .port3(RegsetR01),
  .port4(RegsetR02),
  .port5(RegsetR03),
  .port6(RegsetR04),
  .port7(RegsetR05),
  .port8(RegsetR06),
  .port9(RegsetR07),
  .port10(1'b0),
  .port11(Net_D24_Pad1),
  .port12(Net_D23_Pad1),
  .port13(Net_D22_Pad1),
  .port14(Net_D21_Pad1),
  .port15(Net_D20_Pad1),
  .port16(Net_D19_Pad1),
  .port17(Net_D18_Pad1),
  .port18(Net_D17_Pad1),
  .port19(1'b0),
  .port20(1'b1)
);

ic74LS157 inst_U43 (
  .port1(ctrlRegAluSel),
  .port2(RegsetR04),
  .port3(RegsetR14),
  .port4(AluA4),
  .port5(RegsetR05),
  .port6(RegsetR15),
  .port7(AluA5),
  .port8(1'b0),
  .port9(AluA6),
  .port10(RegsetR16),
  .port11(RegsetR06),
  .port12(AluA7),
  .port13(RegsetR17),
  .port14(RegsetR07),
  .port15(1'b0),
  .port16(1'b1)
);

ic74LS157 inst_U42 (
  .port1(ctrlRegAluSel),
  .port2(RegsetR00),
  .port3(RegsetR10),
  .port4(AluA0),
  .port5(RegsetR01),
  .port6(RegsetR11),
  .port7(AluA1),
  .port8(1'b0),
  .port9(AluA2),
  .port10(RegsetR12),
  .port11(RegsetR02),
  .port12(AluA3),
  .port13(RegsetR13),
  .port14(RegsetR03),
  .port15(1'b0),
  .port16(1'b1)
);

ic74ABT540 inst_U47 (
  .port1(1'b0),
  .port2(RegsetR10),
  .port3(RegsetR11),
  .port4(RegsetR12),
  .port5(RegsetR13),
  .port6(RegsetR14),
  .port7(RegsetR15),
  .port8(RegsetR16),
  .port9(RegsetR17),
  .port10(1'b0),
  .port11(Net_D32_Pad1),
  .port12(Net_D31_Pad1),
  .port13(Net_D30_Pad1),
  .port14(Net_D29_Pad1),
  .port15(Net_D28_Pad1),
  .port16(Net_D27_Pad1),
  .port17(Net_D26_Pad1),
  .port18(Net_D25_Pad1),
  .port19(1'b0),
  .port20(1'b1)
);

ic74LS157 inst_U14 (
  .port1(ctrlAluSub),
  .port2(AluA4),
  .port3(AluA3),
  .port4(Net_U102_Pad14),
  .port5(AluA5),
  .port6(AluA2),
  .port7(Net_U102_Pad13),
  .port8(1'b0),
  .port9(Net_U102_Pad12),
  .port10(AluA1),
  .port11(AluA6),
  .port12(Net_U14_Pad12),
  .port13(AluA0),
  .port14(AluA7),
  .port15(1'b0),
  .port16(1'b1)
);

ic74LS157 inst_U13 (
  .port1(ctrlAluSub),
  .port2(AluA0),
  .port3(AluA7),
  .port4(Net_U102_Pad3),
  .port5(AluA1),
  .port6(AluA6),
  .port7(Net_U102_Pad2),
  .port8(1'b0),
  .port9(Net_U102_Pad1),
  .port10(AluA5),
  .port11(AluA2),
  .port12(Net_U102_Pad15),
  .port13(AluA4),
  .port14(AluA3),
  .port15(1'b0),
  .port16(1'b1)
);

ic74LS157 inst_U15 (
  .port1(Bus0),
  .port2(Net_U102_Pad3),
  .port3(Net_U102_Pad2),
  .port4(Net_U15_Pad4),
  .port5(Net_U102_Pad2),
  .port6(Net_U102_Pad1),
  .port7(Net_U15_Pad7),
  .port8(1'b0),
  .port9(Net_U15_Pad9),
  .port10(Net_U102_Pad15),
  .port11(Net_U102_Pad1),
  .port12(Net_U15_Pad12),
  .port13(Net_U102_Pad14),
  .port14(Net_U102_Pad15),
  .port15(1'b0),
  .port16(1'b1)
);

ic74LS157 inst_U16 (
  .port1(Bus0),
  .port2(Net_U102_Pad14),
  .port3(Net_U102_Pad13),
  .port4(Net_U16_Pad4),
  .port5(Net_U102_Pad13),
  .port6(Net_U102_Pad12),
  .port7(Net_U16_Pad7),
  .port8(1'b0),
  .port9(Net_U16_Pad9),
  .port10(Net_U14_Pad12),
  .port11(Net_U102_Pad12),
  .port12(Net_U16_Pad12),
  .port13(1'b0),
  .port14(Net_U14_Pad12),
  .port15(1'b0),
  .port16(1'b1)
);

ic74LS151 inst_U102 (
  .port1(Net_U102_Pad1),
  .port2(Net_U102_Pad2),
  .port3(Net_U102_Pad3),
  .port4(flagCarry),
  .port5(AluFlagCShift),
  .port6(unconnected_U102_Pad6),
  .port7(1'b0),
  .port8(1'b0),
  .port9(Bus2),
  .port10(Bus1),
  .port11(Bus0),
  .port12(Net_U102_Pad12),
  .port13(Net_U102_Pad13),
  .port14(Net_U102_Pad14),
  .port15(Net_U102_Pad15),
  .port16(1'b1)
);

ic74LS157 inst_U22 (
  .port1(ctrlAluSub),
  .port2(Net_U20_Pad4),
  .port3(Net_U19_Pad12),
  .port4(AluShift4),
  .port5(Net_U20_Pad7),
  .port6(Net_U19_Pad9),
  .port7(AluShift5),
  .port8(1'b0),
  .port9(AluShift6),
  .port10(Net_U19_Pad7),
  .port11(Net_U20_Pad9),
  .port12(AluShift7),
  .port13(Net_U19_Pad4),
  .port14(Net_U20_Pad12),
  .port15(1'b0),
  .port16(1'b1)
);

ic74LS157 inst_U20 (
  .port1(Bus2),
  .port2(Net_U18_Pad4),
  .port3(1'b0),
  .port4(Net_U20_Pad4),
  .port5(Net_U18_Pad7),
  .port6(1'b0),
  .port7(Net_U20_Pad7),
  .port8(1'b0),
  .port9(Net_U20_Pad9),
  .port10(1'b0),
  .port11(Net_U18_Pad9),
  .port12(Net_U20_Pad12),
  .port13(1'b0),
  .port14(Net_U18_Pad12),
  .port15(1'b0),
  .port16(1'b1)
);

ic74LS157 inst_U18 (
  .port1(Bus1),
  .port2(Net_U16_Pad4),
  .port3(Net_U16_Pad9),
  .port4(Net_U18_Pad4),
  .port5(Net_U16_Pad7),
  .port6(Net_U16_Pad12),
  .port7(Net_U18_Pad7),
  .port8(1'b0),
  .port9(Net_U18_Pad9),
  .port10(1'b0),
  .port11(Net_U16_Pad9),
  .port12(Net_U18_Pad12),
  .port13(1'b0),
  .port14(Net_U16_Pad12),
  .port15(1'b0),
  .port16(1'b1)
);

ic74LS157 inst_U17 (
  .port1(Bus1),
  .port2(Net_U15_Pad4),
  .port3(Net_U15_Pad9),
  .port4(Net_U17_Pad4),
  .port5(Net_U15_Pad7),
  .port6(Net_U15_Pad12),
  .port7(Net_U17_Pad7),
  .port8(1'b0),
  .port9(Net_U17_Pad9),
  .port10(Net_U16_Pad4),
  .port11(Net_U15_Pad9),
  .port12(Net_U17_Pad12),
  .port13(Net_U16_Pad7),
  .port14(Net_U15_Pad12),
  .port15(1'b0),
  .port16(1'b1)
);

ic74LS157 inst_U19 (
  .port1(Bus2),
  .port2(Net_U17_Pad4),
  .port3(Net_U18_Pad4),
  .port4(Net_U19_Pad4),
  .port5(Net_U17_Pad7),
  .port6(Net_U18_Pad7),
  .port7(Net_U19_Pad7),
  .port8(1'b0),
  .port9(Net_U19_Pad9),
  .port10(Net_U18_Pad9),
  .port11(Net_U17_Pad9),
  .port12(Net_U19_Pad12),
  .port13(Net_U18_Pad12),
  .port14(Net_U17_Pad12),
  .port15(1'b0),
  .port16(1'b1)
);

ic74LS157 inst_U21 (
  .port1(ctrlAluSub),
  .port2(Net_U19_Pad4),
  .port3(Net_U20_Pad12),
  .port4(AluShift0),
  .port5(Net_U19_Pad7),
  .port6(Net_U20_Pad9),
  .port7(AluShift1),
  .port8(1'b0),
  .port9(AluShift2),
  .port10(Net_U20_Pad7),
  .port11(Net_U19_Pad9),
  .port12(AluShift3),
  .port13(Net_U20_Pad4),
  .port14(Net_U19_Pad12),
  .port15(1'b0),
  .port16(1'b1)
);

endmodule