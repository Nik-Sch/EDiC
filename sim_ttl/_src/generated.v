
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
  output wire [7:0] o_output,

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

wire A0;
wire A0_SRC;
wire A1;
wire A1_SRC;
wire A2;
wire A2_SRC;
wire A3;
wire A3_SRC;
wire A4;
wire A4_SRC;
wire A5;
wire A5_SRC;
wire A6;
wire A6_SRC;
wire A7;
wire A7_SRC;
wire ADDER0;
wire ADDER1;
wire ADDER2;
wire ADDER3;
wire ADDER4;
wire ADDER5;
wire ADDER6;
wire ADDER7;
wire ALU_OUT0;
wire ALU_OUT0_SRC;
wire ALU_OUT1;
wire ALU_OUT1_SRC;
wire ALU_OUT2;
wire ALU_OUT2_SRC;
wire ALU_OUT3;
wire ALU_OUT3_SRC;
wire ALU_OUT4;
wire ALU_OUT4_SRC;
wire ALU_OUT5;
wire ALU_OUT5_SRC;
wire ALU_OUT6;
wire ALU_OUT6_SRC;
wire ALU_OUT7;
wire ALU_OUT7_SRC;
wire ALU_OUT_REG0;
wire ALU_OUT_REG0_U9;
wire ALU_OUT_REG0_noe;
wire ALU_OUT_REG1;
wire ALU_OUT_REG1_U9;
wire ALU_OUT_REG1_noe;
wire ALU_OUT_REG2;
wire ALU_OUT_REG2_U9;
wire ALU_OUT_REG2_noe;
wire ALU_OUT_REG3;
wire ALU_OUT_REG3_U9;
wire ALU_OUT_REG3_noe;
wire ALU_OUT_REG4;
wire ALU_OUT_REG4_U9;
wire ALU_OUT_REG4_noe;
wire ALU_OUT_REG5;
wire ALU_OUT_REG5_U9;
wire ALU_OUT_REG5_noe;
wire ALU_OUT_REG6;
wire ALU_OUT_REG6_U9;
wire ALU_OUT_REG6_noe;
wire ALU_OUT_REG7;
wire ALU_OUT_REG7_U9;
wire ALU_OUT_REG7_noe;
wire AND0;
wire AND1;
wire AND2;
wire AND3;
wire AND4;
wire AND5;
wire AND6;
wire AND7;
wire BREAKPOINTENABLE;
wire BREAKPOINTHIT;
wire BRKPT0;
wire BRKPT1;
wire BRKPT10;
wire BRKPT11;
wire BRKPT12;
wire BRKPT13;
wire BRKPT14;
wire BRKPT15;
wire BRKPT2;
wire BRKPT3;
wire BRKPT4;
wire BRKPT5;
wire BRKPT6;
wire BRKPT7;
wire BRKPT8;
wire BRKPT9;
wire BUS_BUF0;
wire BUS_BUF0_U201;
wire BUS_BUF0_U77;
wire BUS_BUF0_noe;
wire BUS_BUF1;
wire BUS_BUF1_U201;
wire BUS_BUF1_U77;
wire BUS_BUF1_noe;
wire BUS_BUF2;
wire BUS_BUF2_U201;
wire BUS_BUF2_U77;
wire BUS_BUF2_noe;
wire BUS_BUF3;
wire BUS_BUF3_U201;
wire BUS_BUF3_U77;
wire BUS_BUF3_noe;
wire BUS_BUF4;
wire BUS_BUF4_U201;
wire BUS_BUF4_U77;
wire BUS_BUF4_noe;
wire BUS_BUF5;
wire BUS_BUF5_U201;
wire BUS_BUF5_U77;
wire BUS_BUF5_noe;
wire BUS_BUF6;
wire BUS_BUF6_U201;
wire BUS_BUF6_U77;
wire BUS_BUF6_noe;
wire BUS_BUF7;
wire BUS_BUF7_U201;
wire BUS_BUF7_U77;
wire BUS_BUF7_noe;
wire Bus0;
wire Bus0_U10;
wire Bus0_U201;
wire Bus0_U44;
wire Bus0_U45;
wire Bus0_U75;
wire Bus0_U91;
wire Bus0_U99;
wire Bus0_noe;
wire Bus1;
wire Bus1_U10;
wire Bus1_U201;
wire Bus1_U44;
wire Bus1_U45;
wire Bus1_U75;
wire Bus1_U91;
wire Bus1_U99;
wire Bus1_noe;
wire Bus2;
wire Bus2_U10;
wire Bus2_U201;
wire Bus2_U44;
wire Bus2_U45;
wire Bus2_U75;
wire Bus2_U91;
wire Bus2_U99;
wire Bus2_noe;
wire Bus3;
wire Bus3_U10;
wire Bus3_U201;
wire Bus3_U44;
wire Bus3_U45;
wire Bus3_U75;
wire Bus3_U91;
wire Bus3_U99;
wire Bus3_noe;
wire Bus4;
wire Bus4_U10;
wire Bus4_U201;
wire Bus4_U44;
wire Bus4_U45;
wire Bus4_U75;
wire Bus4_U91;
wire Bus4_U99;
wire Bus4_noe;
wire Bus5;
wire Bus5_U10;
wire Bus5_U201;
wire Bus5_U44;
wire Bus5_U45;
wire Bus5_U75;
wire Bus5_U91;
wire Bus5_U99;
wire Bus5_noe;
wire Bus6;
wire Bus6_U10;
wire Bus6_U201;
wire Bus6_U44;
wire Bus6_U45;
wire Bus6_U75;
wire Bus6_U91;
wire Bus6_U99;
wire Bus6_noe;
wire Bus7;
wire Bus7_U10;
wire Bus7_U201;
wire Bus7_U44;
wire Bus7_U45;
wire Bus7_U75;
wire Bus7_U91;
wire Bus7_U99;
wire Bus7_noe;
wire CLK1;
wire CLK1_U95;
wire CLK1_noe;
wire CLK_BUF;
wire CLK_BUF_U204;
wire CLK_BUF_noe;
wire CLK_UNBUF;
wire CLK_UNBUF_SRC;
wire CTRLALUOE;
wire CTRLALUOE_SRC;
wire CTRLALUOP0;
wire CTRLALUOP0_SRC;
wire CTRLALUOP1;
wire CTRLALUOP1_SRC;
wire CTRLALUSUB;
wire CTRLALUSUB_SRC;
wire CTRLALUYWE;
wire CTRLALUYWE_SRC;
wire CTRLINSTRFINISHED;
wire CTRLINSTRFINISHED_SRC;
wire CTRLMEMINSTRIMMTORAMADDR;
wire CTRLMEMINSTRIMMTORAMADDR_SRC;
wire CTRLMEMINSTROE;
wire CTRLMEMINSTROE_SRC;
wire CTRLMEMINSTRWE;
wire CTRLMEMINSTRWE_SRC;
wire CTRLMEMMAR0WE;
wire CTRLMEMMAR0WE_SRC;
wire CTRLMEMMAR1WE;
wire CTRLMEMMAR1WE_SRC;
wire CTRLMEMPCEN;
wire CTRLMEMPCEN_SRC;
wire CTRLMEMPCFROMIMM;
wire CTRLMEMPCFROMIMM_SRC;
wire CTRLMEMPCLOAD;
wire CTRLMEMPCLOAD_SRC;
wire CTRLMEMPCTORAM;
wire CTRLMEMPCTORAM_SRC;
wire CTRLMEMRAMOE;
wire CTRLMEMRAMOE_BUF;
wire CTRLMEMRAMOE_BUF_U204;
wire CTRLMEMRAMOE_BUF_noe;
wire CTRLMEMRAMOE_SRC;
wire CTRLMEMRAMWE;
wire CTRLMEMRAMWE_BUF;
wire CTRLMEMRAMWE_BUF_U204;
wire CTRLMEMRAMWE_BUF_noe;
wire CTRLMEMRAMWE_SRC;
wire CTRLMEMSPEN;
wire CTRLMEMSPEN_SRC;
wire CTRLMEMSPUP;
wire CTRLMEMSPUP_SRC;
wire CTRLREG0BUSOE;
wire CTRLREG0BUSOE_SRC;
wire CTRLREG0WE;
wire CTRLREG0WE_SRC;
wire CTRLREG1BUSOE;
wire CTRLREG1BUSOE_SRC;
wire CTRLREG1WE;
wire CTRLREG1WE_SRC;
wire CTRLREGALUSEL;
wire CTRLREGALUSEL_SRC;
wire DEBUG_INSTR_CYCLEN;
wire DEBUG_STEP;
wire DEBUG_STEPRUNN;
wire FLAGCARRY;
wire FLAGCARRY_SRC;
wire FLAGCARRY_SRC_U97;
wire FLAGCARRY_SRC_noe;
wire FLAGCSHIFT;
wire FLAGNEGATIVE;
wire FLAGNEGATIVE_SRC;
wire FLAGNEGATIVE_SRC_U97;
wire FLAGNEGATIVE_SRC_noe;
wire FLAGOVERFLOW;
wire FLAGOVERFLOW_SRC;
wire FLAGOVERFLOW_SRC_U97;
wire FLAGOVERFLOW_SRC_noe;
wire FLAGZERO;
wire FLAGZERO_SRC;
wire FLAGZERO_SRC_U97;
wire FLAGZERO_SRC_noe;
wire FLAG_C;
wire FLAG_V;
wire FLAG_Z;
wire H1;
wire H2;
wire H3;
wire H4;
wire HALT;
wire HALT_SRC;
wire IN0;
wire IN1;
wire IN2;
wire IN3;
wire IN4;
wire IN5;
wire IN6;
wire IN7;
wire INSTR0;
wire INSTR0_U64;
wire INSTR0_noe;
wire INSTR1;
wire INSTR1_U64;
wire INSTR1_noe;
wire INSTR2;
wire INSTR2_U64;
wire INSTR2_noe;
wire INSTR3;
wire INSTR3_U64;
wire INSTR3_noe;
wire INSTR4;
wire INSTR4_U64;
wire INSTR4_noe;
wire INSTR5;
wire INSTR5_U64;
wire INSTR5_noe;
wire INSTR6;
wire INSTR6_U64;
wire INSTR6_noe;
wire INSTR7;
wire INSTR7_U64;
wire INSTR7_noe;
wire INSTRIMM0;
wire INSTRIMM0_U70;
wire INSTRIMM0_noe;
wire INSTRIMM1;
wire INSTRIMM10;
wire INSTRIMM10_U71;
wire INSTRIMM10_noe;
wire INSTRIMM11;
wire INSTRIMM11_U71;
wire INSTRIMM11_noe;
wire INSTRIMM12;
wire INSTRIMM12_U71;
wire INSTRIMM12_noe;
wire INSTRIMM13;
wire INSTRIMM13_U71;
wire INSTRIMM13_noe;
wire INSTRIMM14;
wire INSTRIMM14_U71;
wire INSTRIMM14_noe;
wire INSTRIMM15;
wire INSTRIMM15_U71;
wire INSTRIMM15_noe;
wire INSTRIMM1SELECT;
wire INSTRIMM1TORAM;
wire INSTRIMM1_U70;
wire INSTRIMM1_noe;
wire INSTRIMM2;
wire INSTRIMM2_U70;
wire INSTRIMM2_noe;
wire INSTRIMM3;
wire INSTRIMM3_U70;
wire INSTRIMM3_noe;
wire INSTRIMM4;
wire INSTRIMM4_U70;
wire INSTRIMM4_noe;
wire INSTRIMM5;
wire INSTRIMM5_U70;
wire INSTRIMM5_noe;
wire INSTRIMM6;
wire INSTRIMM6_U70;
wire INSTRIMM6_noe;
wire INSTRIMM7;
wire INSTRIMM7_U70;
wire INSTRIMM7_noe;
wire INSTRIMM8;
wire INSTRIMM8_U71;
wire INSTRIMM8_noe;
wire INSTRIMM9;
wire INSTRIMM9_U71;
wire INSTRIMM9_noe;
wire INSTRIMM_UNREG0;
wire INSTRIMM_UNREG0_SRC;
wire INSTRIMM_UNREG1;
wire INSTRIMM_UNREG10;
wire INSTRIMM_UNREG10_SRC;
wire INSTRIMM_UNREG11;
wire INSTRIMM_UNREG11_SRC;
wire INSTRIMM_UNREG12;
wire INSTRIMM_UNREG12_SRC;
wire INSTRIMM_UNREG13;
wire INSTRIMM_UNREG13_SRC;
wire INSTRIMM_UNREG14;
wire INSTRIMM_UNREG14_SRC;
wire INSTRIMM_UNREG15;
wire INSTRIMM_UNREG15_SRC;
wire INSTRIMM_UNREG1_SRC;
wire INSTRIMM_UNREG2;
wire INSTRIMM_UNREG2_SRC;
wire INSTRIMM_UNREG3;
wire INSTRIMM_UNREG3_SRC;
wire INSTRIMM_UNREG4;
wire INSTRIMM_UNREG4_SRC;
wire INSTRIMM_UNREG5;
wire INSTRIMM_UNREG5_SRC;
wire INSTRIMM_UNREG6;
wire INSTRIMM_UNREG6_SRC;
wire INSTRIMM_UNREG7;
wire INSTRIMM_UNREG7_SRC;
wire INSTRIMM_UNREG8;
wire INSTRIMM_UNREG8_SRC;
wire INSTRIMM_UNREG9;
wire INSTRIMM_UNREG9_SRC;
wire INSTR_UNREG0;
wire INSTR_UNREG0_SRC;
wire INSTR_UNREG1;
wire INSTR_UNREG1_SRC;
wire INSTR_UNREG2;
wire INSTR_UNREG2_SRC;
wire INSTR_UNREG3;
wire INSTR_UNREG3_SRC;
wire INSTR_UNREG4;
wire INSTR_UNREG4_SRC;
wire INSTR_UNREG5;
wire INSTR_UNREG5_SRC;
wire INSTR_UNREG6;
wire INSTR_UNREG6_SRC;
wire INSTR_UNREG7;
wire INSTR_UNREG7_SRC;
wire IOCE;
wire IOCE_BUF;
wire IOCE_BUF_U204;
wire IOCE_BUF_noe;
wire IOCE_SRC;
wire IO_0_RD;
wire IO_0_WR;
wire L1;
wire L2;
wire L3;
wire L4;
wire MAR10;
wire MAR10_U68;
wire MAR10_noe;
wire MAR11;
wire MAR11_U68;
wire MAR11_noe;
wire MAR12;
wire MAR12_U68;
wire MAR12_noe;
wire MAR13;
wire MAR13_U68;
wire MAR13_noe;
wire MAR14;
wire MAR14_U68;
wire MAR14_noe;
wire MAR15;
wire MAR15_U68;
wire MAR15_noe;
wire MAR1TORAM;
wire MAR8;
wire MAR8_U68;
wire MAR8_noe;
wire MAR9;
wire MAR9_U68;
wire MAR9_noe;
wire MC_A0;
wire MC_A0_U83;
wire MC_A0_noe;
wire MC_A1;
wire MC_A10;
wire MC_A11;
wire MC_A11_U83;
wire MC_A11_noe;
wire MC_A12;
wire MC_A12_U83;
wire MC_A12_noe;
wire MC_A13;
wire MC_A13_U83;
wire MC_A13_noe;
wire MC_A14;
wire MC_A14_U83;
wire MC_A14_noe;
wire MC_A1_U83;
wire MC_A1_noe;
wire MC_A2;
wire MC_A2_U83;
wire MC_A2_noe;
wire MC_A6;
wire MC_A7;
wire MC_A8;
wire MC_A9;
wire N14931877;
wire N14944613;
wire N14959801;
wire N14977874;
wire N164149951;
wire N1641527510;
wire N1641527511;
wire N1641527512;
wire N1641527513;
wire N1641527514;
wire N1641527515;
wire N1641527516;
wire N164174411;
wire N164174651;
wire N164175531;
wire N1641764910;
wire N1641764913;
wire N1641764914;
wire N1641764915;
wire N1641764916;
wire N16435318;
wire N16435404;
wire N16435728;
wire N164368901;
wire N164369361;
wire N164369601;
wire N164369941;
wire N164370301;
wire N164370881;
wire N1643718410;
wire N16445057;
wire N16449995;
wire N16454961;
wire N16459199;
wire N16459283;
wire N16459367;
wire N16459427;
wire N16459511;
wire N16459595;
wire N16459679;
wire N16459739;
wire N16474977;
wire N164794631;
wire N1647958910;
wire N1647958911;
wire N1647958912;
wire N1647958913;
wire N1647958914;
wire N1647958915;
wire N1647958916;
wire N164915101;
wire N164915341;
wire N1649164610;
wire N1649164612;
wire N1649164613;
wire N1649164614;
wire N1649164615;
wire N1649164616;
wire N164924591;
wire N164924951;
wire N164925351;
wire N164925591;
wire N164926471;
wire N164926711;
wire N1649277113;
wire N1649277116;
wire N164998201;
wire N164998441;
wire N164998681;
wire N164999821;
wire N165000061;
wire N165000401;
wire N165000681;
wire N165000921;
wire N16503574;
wire N16504502;
wire N16504571;
wire N16506376;
wire N16506388;
wire N16506484;
wire N16506776;
wire N16506838;
wire N16507032;
wire N16507840;
wire N16507848;
wire N16508106;
wire N16511879;
wire N16512013;
wire N16512135;
wire N16512151;
wire N16512191;
wire N16512195;
wire N16512215;
wire N16512311;
wire N16512355;
wire N16512433;
wire N16512445;
wire N16534656;
wire N16534699;
wire N16534742;
wire N16534785;
wire N16534828;
wire N16534911;
wire N16534994;
wire N16535077;
wire N16535160;
wire N16535243;
wire N16535326;
wire N16535409;
wire N16535534;
wire N16535538;
wire N16535542;
wire N16535546;
wire N16535634;
wire N16535638;
wire N16535642;
wire N16535646;
wire N16535734;
wire N16535738;
wire N16535742;
wire N16535746;
wire N16546884;
wire N16546967;
wire N16547050;
wire N16547133;
wire N16547398;
wire N16547402;
wire N16547406;
wire N16547410;
wire N16792555;
wire N16823046;
wire N16843155;
wire N16843220;
wire N16843220_U204;
wire N16843220_noe;
wire N16855171;
wire N16861338;
wire N16861519;
wire N16861558;
wire N16861604;
wire N168875131;
wire N168875251;
wire N168875631;
wire N1688761112;
wire N1688761113;
wire N1688761114;
wire N1688761115;
wire N1688761116;
wire N169104971;
wire N169105211;
wire N169105331;
wire N169105481;
wire N169105601;
wire N169105801;
wire N169106021;
wire N1691065911;
wire N169127101;
wire N1691277010;
wire N1691277012;
wire N1691277013;
wire N1691277014;
wire N1691277015;
wire N1691277016;
wire N1691277017;
wire N169177411;
wire N169177831;
wire N169177951;
wire N169178071;
wire N169178271;
wire N1691787511;
wire N1691787513;
wire N1691787514;
wire N16923056;
wire N169238271;
wire N169238391;
wire N169238541;
wire N169238761;
wire N1692393510;
wire N1692393511;
wire N1692393515;
wire N1692393517;
wire N16925459;
wire N169269201;
wire N169269371;
wire N169269491;
wire N169269961;
wire N169270111;
wire N169270231;
wire N1692707313;
wire N1692707317;
wire N169288061;
wire N169288331;
wire N169288471;
wire N1692890110;
wire N1692890111;
wire N1692890115;
wire N1692890116;
wire N1692890117;
wire N17642095;
wire N17642095_U95;
wire N17642095_noe;
wire N17642468;
wire N17642894;
wire N17643531;
wire N17643531_U95;
wire N17643531_noe;
wire N17646046;
wire N17646046_U95;
wire N17646046_noe;
wire N17646477;
wire N17646477_U95;
wire N17646477_noe;
wire N17646554;
wire N17647680;
wire N17647680_U95;
wire N17647680_noe;
wire N17649455;
wire N17649455_U95;
wire N17649455_noe;
wire N19014893;
wire N19014936;
wire N658208;
wire N659290;
wire N664486;
wire PC0;
wire PC1;
wire PC10;
wire PC11;
wire PC12;
wire PC13;
wire PC14;
wire PC15;
wire PC2;
wire PC3;
wire PC4;
wire PC5;
wire PC6;
wire PC7;
wire PC8;
wire PC9;
wire PCEN;
wire PCIN0;
wire PCIN0_U51;
wire PCIN0_U52;
wire PCIN0_noe;
wire PCIN1;
wire PCIN10;
wire PCIN10_U49;
wire PCIN10_U50;
wire PCIN10_noe;
wire PCIN11;
wire PCIN11_U49;
wire PCIN11_U50;
wire PCIN11_noe;
wire PCIN12;
wire PCIN12_U49;
wire PCIN12_U50;
wire PCIN12_noe;
wire PCIN13;
wire PCIN13_U49;
wire PCIN13_U50;
wire PCIN13_noe;
wire PCIN14;
wire PCIN14_U49;
wire PCIN14_U50;
wire PCIN14_noe;
wire PCIN15;
wire PCIN15_U49;
wire PCIN15_U50;
wire PCIN15_noe;
wire PCIN1_U51;
wire PCIN1_U52;
wire PCIN1_noe;
wire PCIN2;
wire PCIN2_U51;
wire PCIN2_U52;
wire PCIN2_noe;
wire PCIN3;
wire PCIN3_U51;
wire PCIN3_U52;
wire PCIN3_noe;
wire PCIN4;
wire PCIN4_U51;
wire PCIN4_U52;
wire PCIN4_noe;
wire PCIN5;
wire PCIN5_U51;
wire PCIN5_U52;
wire PCIN5_noe;
wire PCIN6;
wire PCIN6_U51;
wire PCIN6_U52;
wire PCIN6_noe;
wire PCIN7;
wire PCIN7_U51;
wire PCIN7_U52;
wire PCIN7_noe;
wire PCIN8;
wire PCIN8_U49;
wire PCIN8_U50;
wire PCIN8_noe;
wire PCIN9;
wire PCIN9_U49;
wire PCIN9_U50;
wire PCIN9_noe;
wire R00;
wire R00_U40;
wire R00_noe;
wire R01;
wire R01_U40;
wire R01_noe;
wire R02;
wire R02_U40;
wire R02_noe;
wire R03;
wire R03_U40;
wire R03_noe;
wire R04;
wire R04_U40;
wire R04_noe;
wire R05;
wire R05_U40;
wire R05_noe;
wire R06;
wire R06_U40;
wire R06_noe;
wire R07;
wire R07_U40;
wire R07_noe;
wire R10;
wire R10_U41;
wire R10_noe;
wire R11;
wire R11_U41;
wire R11_noe;
wire R12;
wire R12_U41;
wire R12_noe;
wire R13;
wire R13_U41;
wire R13_noe;
wire R14;
wire R14_U41;
wire R14_noe;
wire R15;
wire R15_U41;
wire R15_noe;
wire R16;
wire R16_U41;
wire R16_noe;
wire R17;
wire R17_U41;
wire R17_noe;
wire RAM2D0;
wire RAM2D0_U100;
wire RAM2D0_U205;
wire RAM2D0_noe;
wire RAM2D1;
wire RAM2D1_U100;
wire RAM2D1_U205;
wire RAM2D1_noe;
wire RAM2D2;
wire RAM2D2_U100;
wire RAM2D2_U205;
wire RAM2D2_noe;
wire RAM2D3;
wire RAM2D3_U100;
wire RAM2D3_U205;
wire RAM2D3_noe;
wire RAM2D4;
wire RAM2D4_U100;
wire RAM2D4_U205;
wire RAM2D4_noe;
wire RAM2D5;
wire RAM2D5_U100;
wire RAM2D5_U205;
wire RAM2D5_noe;
wire RAM2D6;
wire RAM2D6_U100;
wire RAM2D6_U205;
wire RAM2D6_noe;
wire RAM2D7;
wire RAM2D7_U100;
wire RAM2D7_U205;
wire RAM2D7_noe;
wire RAM2DATA0;
wire RAM2DATA0_U205;
wire RAM2DATA0_U98;
wire RAM2DATA0_noe;
wire RAM2DATA1;
wire RAM2DATA1_U205;
wire RAM2DATA1_U98;
wire RAM2DATA1_noe;
wire RAM2DATA2;
wire RAM2DATA2_U205;
wire RAM2DATA2_U98;
wire RAM2DATA2_noe;
wire RAM2DATA3;
wire RAM2DATA3_U205;
wire RAM2DATA3_U98;
wire RAM2DATA3_noe;
wire RAM2DATA4;
wire RAM2DATA4_U205;
wire RAM2DATA4_U98;
wire RAM2DATA4_noe;
wire RAM2DATA5;
wire RAM2DATA5_U205;
wire RAM2DATA5_U98;
wire RAM2DATA5_noe;
wire RAM2DATA6;
wire RAM2DATA6_U205;
wire RAM2DATA6_U98;
wire RAM2DATA6_noe;
wire RAM2DATA7;
wire RAM2DATA7_U205;
wire RAM2DATA7_U98;
wire RAM2DATA7_noe;
wire RAMADDRESS0;
wire RAMADDRESS0_U63;
wire RAMADDRESS0_U65;
wire RAMADDRESS0_noe;
wire RAMADDRESS1;
wire RAMADDRESS10;
wire RAMADDRESS10_U61;
wire RAMADDRESS10_U66;
wire RAMADDRESS10_U72;
wire RAMADDRESS10_noe;
wire RAMADDRESS11;
wire RAMADDRESS11_U61;
wire RAMADDRESS11_U66;
wire RAMADDRESS11_U72;
wire RAMADDRESS11_noe;
wire RAMADDRESS12;
wire RAMADDRESS12_U61;
wire RAMADDRESS12_U66;
wire RAMADDRESS12_U72;
wire RAMADDRESS12_noe;
wire RAMADDRESS13;
wire RAMADDRESS13_U61;
wire RAMADDRESS13_U66;
wire RAMADDRESS13_U72;
wire RAMADDRESS13_noe;
wire RAMADDRESS14;
wire RAMADDRESS14_U61;
wire RAMADDRESS14_U66;
wire RAMADDRESS14_U72;
wire RAMADDRESS14_noe;
wire RAMADDRESS15;
wire RAMADDRESS15_U61;
wire RAMADDRESS15_U66;
wire RAMADDRESS15_U72;
wire RAMADDRESS15_noe;
wire RAMADDRESS1_U63;
wire RAMADDRESS1_U65;
wire RAMADDRESS1_noe;
wire RAMADDRESS2;
wire RAMADDRESS2_U63;
wire RAMADDRESS2_U65;
wire RAMADDRESS2_noe;
wire RAMADDRESS3;
wire RAMADDRESS3_U63;
wire RAMADDRESS3_U65;
wire RAMADDRESS3_noe;
wire RAMADDRESS4;
wire RAMADDRESS4_U63;
wire RAMADDRESS4_U65;
wire RAMADDRESS4_noe;
wire RAMADDRESS5;
wire RAMADDRESS5_U63;
wire RAMADDRESS5_U65;
wire RAMADDRESS5_noe;
wire RAMADDRESS6;
wire RAMADDRESS6_U63;
wire RAMADDRESS6_U65;
wire RAMADDRESS6_noe;
wire RAMADDRESS7;
wire RAMADDRESS7_U63;
wire RAMADDRESS7_U65;
wire RAMADDRESS7_noe;
wire RAMADDRESS8;
wire RAMADDRESS8_U61;
wire RAMADDRESS8_U66;
wire RAMADDRESS8_U72;
wire RAMADDRESS8_noe;
wire RAMADDRESS9;
wire RAMADDRESS9_U61;
wire RAMADDRESS9_U66;
wire RAMADDRESS9_U72;
wire RAMADDRESS9_noe;
wire RAMADDRESS_BUF0;
wire RAMADDRESS_BUF0_U202;
wire RAMADDRESS_BUF0_noe;
wire RAMADDRESS_BUF1;
wire RAMADDRESS_BUF10;
wire RAMADDRESS_BUF10_U203;
wire RAMADDRESS_BUF10_noe;
wire RAMADDRESS_BUF11;
wire RAMADDRESS_BUF11_U203;
wire RAMADDRESS_BUF11_noe;
wire RAMADDRESS_BUF12;
wire RAMADDRESS_BUF12_U203;
wire RAMADDRESS_BUF12_noe;
wire RAMADDRESS_BUF13;
wire RAMADDRESS_BUF13_U203;
wire RAMADDRESS_BUF13_noe;
wire RAMADDRESS_BUF14;
wire RAMADDRESS_BUF14_U203;
wire RAMADDRESS_BUF14_noe;
wire RAMADDRESS_BUF15;
wire RAMADDRESS_BUF15_U203;
wire RAMADDRESS_BUF15_noe;
wire RAMADDRESS_BUF1_U202;
wire RAMADDRESS_BUF1_noe;
wire RAMADDRESS_BUF2;
wire RAMADDRESS_BUF2_U202;
wire RAMADDRESS_BUF2_noe;
wire RAMADDRESS_BUF3;
wire RAMADDRESS_BUF3_U202;
wire RAMADDRESS_BUF3_noe;
wire RAMADDRESS_BUF4;
wire RAMADDRESS_BUF4_U202;
wire RAMADDRESS_BUF4_noe;
wire RAMADDRESS_BUF5;
wire RAMADDRESS_BUF5_U202;
wire RAMADDRESS_BUF5_noe;
wire RAMADDRESS_BUF6;
wire RAMADDRESS_BUF6_U202;
wire RAMADDRESS_BUF6_noe;
wire RAMADDRESS_BUF7;
wire RAMADDRESS_BUF7_U202;
wire RAMADDRESS_BUF7_noe;
wire RAMADDRESS_BUF8;
wire RAMADDRESS_BUF8_U203;
wire RAMADDRESS_BUF8_noe;
wire RAMADDRESS_BUF9;
wire RAMADDRESS_BUF9_U203;
wire RAMADDRESS_BUF9_noe;
wire RAMCE;
wire RAMCE_BUF;
wire RAMCE_BUF_U204;
wire RAMCE_BUF_noe;
wire RAMCE_SRC;
wire RD2;
wire RD3;
wire RD4;
wire RD6;
wire RD8;
wire RESET1;
wire RESET1_U95;
wire RESET1_noe;
wire RESET_BUF;
wire RESET_BUF_U204;
wire RESET_BUF_noe;
wire RQ3;
wire RQ4;
wire RQ6;
wire RQ8;
wire SELECT0;
wire SELECT0_U73;
wire SELECT0_U74;
wire SELECT0_noe;
wire SELECT1;
wire SELECT1_U73;
wire SELECT1_U74;
wire SELECT1_noe;
wire SELECT2;
wire SELECT2_U73;
wire SELECT2_U74;
wire SELECT2_noe;
wire SELECT3;
wire SELECT3_U73;
wire SELECT3_U74;
wire SELECT3_noe;
wire SELECT4;
wire SELECT4_U73;
wire SELECT4_U74;
wire SELECT4_noe;
wire SELECT5;
wire SELECT5_U73;
wire SELECT5_U74;
wire SELECT5_noe;
wire SELECT6;
wire SELECT6_U73;
wire SELECT6_U74;
wire SELECT6_noe;
wire SELECT7;
wire SELECT7_U73;
wire SELECT7_U74;
wire SELECT7_noe;
wire SELECTSTACKMEM;
wire SELECTSTACKMEM_BUF;
wire SELECTSTACKMEM_BUF_U204;
wire SELECTSTACKMEM_BUF_noe;
wire SELECTSTACKMEM_SRC;
wire SHIFT0;
wire SHIFT1;
wire SHIFT2;
wire SHIFT3;
wire SHIFT4;
wire SHIFT5;
wire SHIFT6;
wire SHIFT7;
wire SP0;
wire SP1;
wire SP2;
wire SP3;
wire SP4;
wire SP5;
wire SP6;
wire SP7;
wire SPEN;
wire U100_noe;
wire U10_a_noe;
wire U10_b_noe;
wire U201_a_noe;
wire U201_b_noe;
wire U202_a_noe;
wire U202_b_noe;
wire U203_a_noe;
wire U203_b_noe;
wire U204_a_noe;
wire U204_b_noe;
wire U205_a_noe;
wire U205_b_noe;
wire U40_noe;
wire U41_noe;
wire U44_a_noe;
wire U44_b_noe;
wire U45_a_noe;
wire U45_b_noe;
wire U49_a_noe;
wire U49_b_noe;
wire U50_a_noe;
wire U50_b_noe;
wire U51_a_noe;
wire U51_b_noe;
wire U52_a_noe;
wire U52_b_noe;
wire U61_a_noe;
wire U61_b_noe;
wire U63_noe;
wire U64_noe;
wire U65_a_noe;
wire U65_b_noe;
wire U66_a_noe;
wire U66_b_noe;
wire U68_noe;
wire U70_noe;
wire U71_noe;
wire U72_a_noe;
wire U72_b_noe;
wire U73_a_noe;
wire U73_b_noe;
wire U74_a_noe;
wire U74_b_noe;
wire U75_a_noe;
wire U75_b_noe;
wire U77_noe;
wire U83_noe;
wire U91_a_noe;
wire U91_b_noe;
wire U95_a_noe;
wire U95_b_noe;
wire U97_noe;
wire U98_a_noe;
wire U98_b_noe;
wire U99_a_noe;
wire U99_b_noe;
wire U9_noe;
wire VCC;
wire XOR0;
wire XOR1;
wire XOR2;
wire XOR3;
wire XOR4;
wire XOR5;
wire XOR6;
wire XOR7;
wire unconnected_JT2_21;
wire unconnected_JT2_22;
wire unconnected_JT6_21;
wire unconnected_JT6_22;
wire unconnected_JT9_13;
wire unconnected_JT9_14;
wire unconnected_JT9_15;
wire unconnected_JT9_16;
wire unconnected_U101_6;
wire unconnected_U102_6;
wire unconnected_U104_10;
wire unconnected_U104_12;
wire unconnected_U104_4;
wire unconnected_U104_6;
wire unconnected_U104_8;
wire unconnected_U38_6;
wire unconnected_U39_5;
wire unconnected_U55_13;
wire unconnected_U56_13;
wire unconnected_U83_18;
wire unconnected_U83_18_U83;
wire unconnected_U83_18_noe;
wire unconnected_U87_17;
wire unconnected_U87_18;
wire unconnected_U87_19;
wire unconnected_U89_11;
wire unconnected_U89_8;
wire unconnected_U96_14;
wire unconnected_U97_15;
wire unconnected_U97_15_U97;
wire unconnected_U97_15_noe;
wire unconnected_U97_16;
wire unconnected_U97_16_U97;
wire unconnected_U97_16_noe;
wire unconnected_U97_17;
wire unconnected_U97_17_U97;
wire unconnected_U97_17_noe;
wire unconnected_U97_18;
wire unconnected_U97_18_U97;
wire unconnected_U97_18_noe;

assign o_bus[0] = Bus0;
assign o_bus[1] = Bus1;
assign o_bus[2] = Bus2;
assign o_bus[3] = Bus3;
assign o_bus[4] = Bus4;
assign o_bus[5] = Bus5;
assign o_bus[6] = Bus6;
assign o_bus[7] = Bus7;
assign BRKPT0 = i_breakpointAddress[0];
assign BRKPT1 = i_breakpointAddress[1];
assign BRKPT2 = i_breakpointAddress[2];
assign BRKPT3 = i_breakpointAddress[3];
assign BRKPT4 = i_breakpointAddress[4];
assign BRKPT5 = i_breakpointAddress[5];
assign BRKPT6 = i_breakpointAddress[6];
assign BRKPT7 = i_breakpointAddress[7];
assign BRKPT8 = i_breakpointAddress[8];
assign BRKPT9 = i_breakpointAddress[9];
assign BRKPT10 = i_breakpointAddress[10];
assign BRKPT11 = i_breakpointAddress[11];
assign BRKPT12 = i_breakpointAddress[12];
assign BRKPT13 = i_breakpointAddress[13];
assign BRKPT14 = i_breakpointAddress[14];
assign BRKPT15 = i_breakpointAddress[15];
assign o_ioAddress[0] = RAMADDRESS0;
assign o_ioAddress[1] = RAMADDRESS1;
assign o_ioAddress[2] = RAMADDRESS2;
assign o_ioAddress[3] = RAMADDRESS3;
assign o_ioAddress[4] = RAMADDRESS4;
assign o_ioAddress[5] = RAMADDRESS5;
assign o_ioAddress[6] = RAMADDRESS6;
assign o_ioAddress[7] = RAMADDRESS7;
assign L1 = 1'b0;
assign H1 = 1'b1;
assign L2 = 1'b0;
assign H2 = 1'b1;
assign L3 = 1'b0;
assign H3 = 1'b1;
assign L4 = 1'b0;
assign H4 = 1'b1;
assign IN0 = i_switches[0];
assign IN1 = i_switches[1];
assign IN2 = i_switches[2];
assign IN3 = i_switches[3];
assign IN4 = i_switches[4];
assign IN5 = i_switches[5];
assign IN6 = i_switches[6];
assign IN7 = i_switches[7];
assign o_r0[0] = R00;
assign o_r1[0] = R10;
assign o_r0[1] = R01;
assign o_r1[1] = R11;
assign o_r0[2] = R02;
assign o_r1[2] = R12;
assign o_r0[3] = R03;
assign o_r1[3] = R13;
assign o_r0[4] = R04;
assign o_r1[4] = R14;
assign o_r0[5] = R05;
assign o_r1[5] = R15;
assign o_r0[6] = R06;
assign o_r1[6] = R16;
assign o_r0[7] = R07;
assign o_r1[7] = R17;
assign o_output[7] = N16459739;
assign o_output[6] = N16459679;
assign o_output[5] = N16459595;
assign o_output[4] = N16459511;
assign o_output[3] = N16459427;
assign o_output[2] = N16459367;
assign o_output[1] = N16459283;
assign o_output[0] = N16459199;
assign CLK_UNBUF = i_oszClk;
assign N16449995 = i_resetn;
assign N16792555 = ~i_btnStep;
assign N16925459 = ~i_swInstrNCycle;
assign N16923056 = ~i_swStepNRun;
assign N16445057 = ~i_swEnableBreakpoint;
assign o_ioNCE = IOCE;
assign o_ioNOE = CTRLMEMRAMOE;
assign o_ioNWE = CTRLMEMRAMWE;



displayDriver inst_7seg(
  .i_clk(CLK1),
  .i_resetn(RESET1),
  .data({
    PC11,
    PC10,
    PC9,
    PC8,
    PC7,
    PC6,
    PC5,
    PC4,
    PC3,
    PC2,
    PC1,
    PC0,
    1'b0,
    MC_A2,
    MC_A1,
    MC_A0,
    8'h00,
    N16459739,
    N16459679,
    N16459595,
    N16459511,
    N16459427,
    N16459367,
    N16459283,
    N16459199
  }),
  .enableDigit(HALT ? 8'b11110011: 8'b00000011),
  .dots(HALT ? 8'b00100000 : 8'h00),
  .cathodes(o_cathodes),
  .anodes(o_anodes)
);


instructionRom inst_instructionRom (
  .clka(i_asyncEEPROMSpecialClock),
  .addra({PC14, PC13, PC12, PC11, PC10, PC9, PC8, PC7, PC6, PC5, PC4, PC3, PC2, PC1, PC0}),
  .douta({INSTR_UNREG7_SRC, INSTR_UNREG6_SRC, INSTR_UNREG5_SRC, INSTR_UNREG4_SRC, INSTR_UNREG3_SRC, INSTR_UNREG2_SRC, INSTR_UNREG1_SRC, INSTR_UNREG0_SRC, INSTRIMM_UNREG15_SRC, INSTRIMM_UNREG14_SRC, INSTRIMM_UNREG13_SRC, INSTRIMM_UNREG12_SRC, INSTRIMM_UNREG11_SRC, INSTRIMM_UNREG10_SRC, INSTRIMM_UNREG9_SRC, INSTRIMM_UNREG8_SRC, INSTRIMM_UNREG7_SRC, INSTRIMM_UNREG6_SRC, INSTRIMM_UNREG5_SRC, INSTRIMM_UNREG4_SRC, INSTRIMM_UNREG3_SRC, INSTRIMM_UNREG2_SRC, INSTRIMM_UNREG1_SRC, INSTRIMM_UNREG0_SRC})
);

microCodeRom inst_microCodeRom (
  .clka(i_asyncEEPROMSpecialClock),
  .addra({MC_A14, MC_A13, MC_A12, MC_A11, MC_A10, MC_A9, MC_A8, MC_A7, MC_A6, CTRLALUOP1_SRC, CTRLALUOP0_SRC, CTRLALUSUB_SRC, MC_A2, MC_A1, MC_A0}),
  .douta({unconnected_U87_19, unconnected_U87_18, unconnected_U87_17, CTRLINSTRFINISHED_SRC, CTRLMEMPCTORAM_SRC, CTRLMEMPCFROMIMM_SRC, CTRLMEMPCEN_SRC, CTRLMEMRAMOE_SRC, CTRLMEMRAMWE_SRC, CTRLMEMINSTRIMMTORAMADDR_SRC, CTRLMEMMAR1WE_SRC, CTRLMEMMAR0WE_SRC, CTRLMEMINSTROE_SRC, CTRLMEMINSTRWE_SRC, CTRLMEMSPEN_SRC, CTRLMEMSPUP_SRC, CTRLMEMPCLOAD_SRC, CTRLREG1BUSOE_SRC, CTRLREG0BUSOE_SRC, CTRLREGALUSEL_SRC, CTRLREG1WE_SRC, CTRLREG0WE_SRC, CTRLALUOE_SRC, CTRLALUYWE_SRC})
);


tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusALU_OUT_REG0 (
  .i_data({ALU_OUT_REG0_U9}),
  .i_noe({U9_noe}),
  .o_data(ALU_OUT_REG0),
  .o_noe(ALU_OUT_REG0_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusALU_OUT_REG1 (
  .i_data({ALU_OUT_REG1_U9}),
  .i_noe({U9_noe}),
  .o_data(ALU_OUT_REG1),
  .o_noe(ALU_OUT_REG1_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusALU_OUT_REG2 (
  .i_data({ALU_OUT_REG2_U9}),
  .i_noe({U9_noe}),
  .o_data(ALU_OUT_REG2),
  .o_noe(ALU_OUT_REG2_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusALU_OUT_REG3 (
  .i_data({ALU_OUT_REG3_U9}),
  .i_noe({U9_noe}),
  .o_data(ALU_OUT_REG3),
  .o_noe(ALU_OUT_REG3_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusALU_OUT_REG4 (
  .i_data({ALU_OUT_REG4_U9}),
  .i_noe({U9_noe}),
  .o_data(ALU_OUT_REG4),
  .o_noe(ALU_OUT_REG4_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusALU_OUT_REG5 (
  .i_data({ALU_OUT_REG5_U9}),
  .i_noe({U9_noe}),
  .o_data(ALU_OUT_REG5),
  .o_noe(ALU_OUT_REG5_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusALU_OUT_REG6 (
  .i_data({ALU_OUT_REG6_U9}),
  .i_noe({U9_noe}),
  .o_data(ALU_OUT_REG6),
  .o_noe(ALU_OUT_REG6_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusALU_OUT_REG7 (
  .i_data({ALU_OUT_REG7_U9}),
  .i_noe({U9_noe}),
  .o_data(ALU_OUT_REG7),
  .o_noe(ALU_OUT_REG7_noe)
);

tristatenet #(
  .INPUT_COUNT(8)
) inst_triBusBus7 (
  .i_data({Bus7_U10, Bus7_U44, Bus7_U45, Bus7_U75, Bus7_U91, Bus7_U99, Bus7_U201, i_bus[7]}),
  .i_noe({U10_b_noe, U44_b_noe, U45_b_noe, U75_b_noe, U91_b_noe, U99_b_noe, U201_a_noe, i_busNOE}),
  .o_data(Bus7),
  .o_noe(Bus7_noe)
);

tristatenet #(
  .INPUT_COUNT(8)
) inst_triBusBus6 (
  .i_data({Bus6_U10, Bus6_U44, Bus6_U45, Bus6_U75, Bus6_U91, Bus6_U99, Bus6_U201, i_bus[6]}),
  .i_noe({U10_b_noe, U44_b_noe, U45_b_noe, U75_b_noe, U91_b_noe, U99_b_noe, U201_a_noe, i_busNOE}),
  .o_data(Bus6),
  .o_noe(Bus6_noe)
);

tristatenet #(
  .INPUT_COUNT(8)
) inst_triBusBus5 (
  .i_data({Bus5_U10, Bus5_U44, Bus5_U45, Bus5_U75, Bus5_U91, Bus5_U99, Bus5_U201, i_bus[5]}),
  .i_noe({U10_b_noe, U44_b_noe, U45_b_noe, U75_b_noe, U91_b_noe, U99_b_noe, U201_a_noe, i_busNOE}),
  .o_data(Bus5),
  .o_noe(Bus5_noe)
);

tristatenet #(
  .INPUT_COUNT(8)
) inst_triBusBus4 (
  .i_data({Bus4_U10, Bus4_U44, Bus4_U45, Bus4_U75, Bus4_U91, Bus4_U99, Bus4_U201, i_bus[4]}),
  .i_noe({U10_b_noe, U44_b_noe, U45_b_noe, U75_b_noe, U91_b_noe, U99_b_noe, U201_a_noe, i_busNOE}),
  .o_data(Bus4),
  .o_noe(Bus4_noe)
);

tristatenet #(
  .INPUT_COUNT(8)
) inst_triBusBus3 (
  .i_data({Bus3_U10, Bus3_U44, Bus3_U45, Bus3_U75, Bus3_U91, Bus3_U99, Bus3_U201, i_bus[3]}),
  .i_noe({U10_b_noe, U44_b_noe, U45_b_noe, U75_b_noe, U91_b_noe, U99_b_noe, U201_a_noe, i_busNOE}),
  .o_data(Bus3),
  .o_noe(Bus3_noe)
);

tristatenet #(
  .INPUT_COUNT(8)
) inst_triBusBus2 (
  .i_data({Bus2_U10, Bus2_U44, Bus2_U45, Bus2_U75, Bus2_U91, Bus2_U99, Bus2_U201, i_bus[2]}),
  .i_noe({U10_b_noe, U44_b_noe, U45_b_noe, U75_b_noe, U91_b_noe, U99_b_noe, U201_a_noe, i_busNOE}),
  .o_data(Bus2),
  .o_noe(Bus2_noe)
);

tristatenet #(
  .INPUT_COUNT(8)
) inst_triBusBus1 (
  .i_data({Bus1_U10, Bus1_U44, Bus1_U45, Bus1_U75, Bus1_U91, Bus1_U99, Bus1_U201, i_bus[1]}),
  .i_noe({U10_b_noe, U44_b_noe, U45_b_noe, U75_b_noe, U91_b_noe, U99_b_noe, U201_a_noe, i_busNOE}),
  .o_data(Bus1),
  .o_noe(Bus1_noe)
);

tristatenet #(
  .INPUT_COUNT(8)
) inst_triBusBus0 (
  .i_data({Bus0_U10, Bus0_U44, Bus0_U45, Bus0_U75, Bus0_U91, Bus0_U99, Bus0_U201, i_bus[0]}),
  .i_noe({U10_b_noe, U44_b_noe, U45_b_noe, U75_b_noe, U91_b_noe, U99_b_noe, U201_a_noe, i_busNOE}),
  .o_data(Bus0),
  .o_noe(Bus0_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusR00 (
  .i_data({R00_U40}),
  .i_noe({U40_noe}),
  .o_data(R00),
  .o_noe(R00_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusR01 (
  .i_data({R01_U40}),
  .i_noe({U40_noe}),
  .o_data(R01),
  .o_noe(R01_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusR02 (
  .i_data({R02_U40}),
  .i_noe({U40_noe}),
  .o_data(R02),
  .o_noe(R02_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusR03 (
  .i_data({R03_U40}),
  .i_noe({U40_noe}),
  .o_data(R03),
  .o_noe(R03_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusR04 (
  .i_data({R04_U40}),
  .i_noe({U40_noe}),
  .o_data(R04),
  .o_noe(R04_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusR05 (
  .i_data({R05_U40}),
  .i_noe({U40_noe}),
  .o_data(R05),
  .o_noe(R05_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusR06 (
  .i_data({R06_U40}),
  .i_noe({U40_noe}),
  .o_data(R06),
  .o_noe(R06_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusR07 (
  .i_data({R07_U40}),
  .i_noe({U40_noe}),
  .o_data(R07),
  .o_noe(R07_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusR10 (
  .i_data({R10_U41}),
  .i_noe({U41_noe}),
  .o_data(R10),
  .o_noe(R10_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusR11 (
  .i_data({R11_U41}),
  .i_noe({U41_noe}),
  .o_data(R11),
  .o_noe(R11_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusR12 (
  .i_data({R12_U41}),
  .i_noe({U41_noe}),
  .o_data(R12),
  .o_noe(R12_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusR13 (
  .i_data({R13_U41}),
  .i_noe({U41_noe}),
  .o_data(R13),
  .o_noe(R13_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusR14 (
  .i_data({R14_U41}),
  .i_noe({U41_noe}),
  .o_data(R14),
  .o_noe(R14_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusR15 (
  .i_data({R15_U41}),
  .i_noe({U41_noe}),
  .o_data(R15),
  .o_noe(R15_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusR16 (
  .i_data({R16_U41}),
  .i_noe({U41_noe}),
  .o_data(R16),
  .o_noe(R16_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusR17 (
  .i_data({R17_U41}),
  .i_noe({U41_noe}),
  .o_data(R17),
  .o_noe(R17_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusPCIN15 (
  .i_data({PCIN15_U49, PCIN15_U50}),
  .i_noe({U49_b_noe, U50_b_noe}),
  .o_data(PCIN15),
  .o_noe(PCIN15_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusPCIN14 (
  .i_data({PCIN14_U49, PCIN14_U50}),
  .i_noe({U49_b_noe, U50_b_noe}),
  .o_data(PCIN14),
  .o_noe(PCIN14_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusPCIN13 (
  .i_data({PCIN13_U49, PCIN13_U50}),
  .i_noe({U49_b_noe, U50_b_noe}),
  .o_data(PCIN13),
  .o_noe(PCIN13_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusPCIN12 (
  .i_data({PCIN12_U49, PCIN12_U50}),
  .i_noe({U49_b_noe, U50_b_noe}),
  .o_data(PCIN12),
  .o_noe(PCIN12_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusPCIN11 (
  .i_data({PCIN11_U49, PCIN11_U50}),
  .i_noe({U49_b_noe, U50_b_noe}),
  .o_data(PCIN11),
  .o_noe(PCIN11_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusPCIN10 (
  .i_data({PCIN10_U49, PCIN10_U50}),
  .i_noe({U49_b_noe, U50_b_noe}),
  .o_data(PCIN10),
  .o_noe(PCIN10_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusPCIN9 (
  .i_data({PCIN9_U49, PCIN9_U50}),
  .i_noe({U49_b_noe, U50_b_noe}),
  .o_data(PCIN9),
  .o_noe(PCIN9_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusPCIN8 (
  .i_data({PCIN8_U49, PCIN8_U50}),
  .i_noe({U49_b_noe, U50_b_noe}),
  .o_data(PCIN8),
  .o_noe(PCIN8_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusPCIN7 (
  .i_data({PCIN7_U51, PCIN7_U52}),
  .i_noe({U51_b_noe, U52_b_noe}),
  .o_data(PCIN7),
  .o_noe(PCIN7_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusPCIN6 (
  .i_data({PCIN6_U51, PCIN6_U52}),
  .i_noe({U51_b_noe, U52_b_noe}),
  .o_data(PCIN6),
  .o_noe(PCIN6_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusPCIN5 (
  .i_data({PCIN5_U51, PCIN5_U52}),
  .i_noe({U51_b_noe, U52_b_noe}),
  .o_data(PCIN5),
  .o_noe(PCIN5_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusPCIN4 (
  .i_data({PCIN4_U51, PCIN4_U52}),
  .i_noe({U51_b_noe, U52_b_noe}),
  .o_data(PCIN4),
  .o_noe(PCIN4_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusPCIN3 (
  .i_data({PCIN3_U51, PCIN3_U52}),
  .i_noe({U51_b_noe, U52_b_noe}),
  .o_data(PCIN3),
  .o_noe(PCIN3_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusPCIN2 (
  .i_data({PCIN2_U51, PCIN2_U52}),
  .i_noe({U51_b_noe, U52_b_noe}),
  .o_data(PCIN2),
  .o_noe(PCIN2_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusPCIN1 (
  .i_data({PCIN1_U51, PCIN1_U52}),
  .i_noe({U51_b_noe, U52_b_noe}),
  .o_data(PCIN1),
  .o_noe(PCIN1_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusPCIN0 (
  .i_data({PCIN0_U51, PCIN0_U52}),
  .i_noe({U51_b_noe, U52_b_noe}),
  .o_data(PCIN0),
  .o_noe(PCIN0_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBusRAMADDRESS15 (
  .i_data({RAMADDRESS15_U61, RAMADDRESS15_U66, RAMADDRESS15_U72}),
  .i_noe({U61_b_noe, U66_b_noe, U72_b_noe}),
  .o_data(RAMADDRESS15),
  .o_noe(RAMADDRESS15_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBusRAMADDRESS14 (
  .i_data({RAMADDRESS14_U61, RAMADDRESS14_U66, RAMADDRESS14_U72}),
  .i_noe({U61_b_noe, U66_b_noe, U72_b_noe}),
  .o_data(RAMADDRESS14),
  .o_noe(RAMADDRESS14_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBusRAMADDRESS13 (
  .i_data({RAMADDRESS13_U61, RAMADDRESS13_U66, RAMADDRESS13_U72}),
  .i_noe({U61_b_noe, U66_b_noe, U72_b_noe}),
  .o_data(RAMADDRESS13),
  .o_noe(RAMADDRESS13_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBusRAMADDRESS12 (
  .i_data({RAMADDRESS12_U61, RAMADDRESS12_U66, RAMADDRESS12_U72}),
  .i_noe({U61_b_noe, U66_b_noe, U72_b_noe}),
  .o_data(RAMADDRESS12),
  .o_noe(RAMADDRESS12_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBusRAMADDRESS11 (
  .i_data({RAMADDRESS11_U61, RAMADDRESS11_U66, RAMADDRESS11_U72}),
  .i_noe({U61_b_noe, U66_b_noe, U72_b_noe}),
  .o_data(RAMADDRESS11),
  .o_noe(RAMADDRESS11_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBusRAMADDRESS10 (
  .i_data({RAMADDRESS10_U61, RAMADDRESS10_U66, RAMADDRESS10_U72}),
  .i_noe({U61_b_noe, U66_b_noe, U72_b_noe}),
  .o_data(RAMADDRESS10),
  .o_noe(RAMADDRESS10_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBusRAMADDRESS9 (
  .i_data({RAMADDRESS9_U61, RAMADDRESS9_U66, RAMADDRESS9_U72}),
  .i_noe({U61_b_noe, U66_b_noe, U72_b_noe}),
  .o_data(RAMADDRESS9),
  .o_noe(RAMADDRESS9_noe)
);

tristatenet #(
  .INPUT_COUNT(3)
) inst_triBusRAMADDRESS8 (
  .i_data({RAMADDRESS8_U61, RAMADDRESS8_U66, RAMADDRESS8_U72}),
  .i_noe({U61_b_noe, U66_b_noe, U72_b_noe}),
  .o_data(RAMADDRESS8),
  .o_noe(RAMADDRESS8_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAMADDRESS0 (
  .i_data({RAMADDRESS0_U63, RAMADDRESS0_U65}),
  .i_noe({U63_noe, U65_b_noe}),
  .o_data(RAMADDRESS0),
  .o_noe(RAMADDRESS0_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAMADDRESS1 (
  .i_data({RAMADDRESS1_U63, RAMADDRESS1_U65}),
  .i_noe({U63_noe, U65_b_noe}),
  .o_data(RAMADDRESS1),
  .o_noe(RAMADDRESS1_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAMADDRESS2 (
  .i_data({RAMADDRESS2_U63, RAMADDRESS2_U65}),
  .i_noe({U63_noe, U65_b_noe}),
  .o_data(RAMADDRESS2),
  .o_noe(RAMADDRESS2_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAMADDRESS3 (
  .i_data({RAMADDRESS3_U63, RAMADDRESS3_U65}),
  .i_noe({U63_noe, U65_b_noe}),
  .o_data(RAMADDRESS3),
  .o_noe(RAMADDRESS3_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAMADDRESS4 (
  .i_data({RAMADDRESS4_U63, RAMADDRESS4_U65}),
  .i_noe({U63_noe, U65_b_noe}),
  .o_data(RAMADDRESS4),
  .o_noe(RAMADDRESS4_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAMADDRESS5 (
  .i_data({RAMADDRESS5_U63, RAMADDRESS5_U65}),
  .i_noe({U63_noe, U65_b_noe}),
  .o_data(RAMADDRESS5),
  .o_noe(RAMADDRESS5_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAMADDRESS6 (
  .i_data({RAMADDRESS6_U63, RAMADDRESS6_U65}),
  .i_noe({U63_noe, U65_b_noe}),
  .o_data(RAMADDRESS6),
  .o_noe(RAMADDRESS6_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAMADDRESS7 (
  .i_data({RAMADDRESS7_U63, RAMADDRESS7_U65}),
  .i_noe({U63_noe, U65_b_noe}),
  .o_data(RAMADDRESS7),
  .o_noe(RAMADDRESS7_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTR0 (
  .i_data({INSTR0_U64}),
  .i_noe({U64_noe}),
  .o_data(INSTR0),
  .o_noe(INSTR0_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTR1 (
  .i_data({INSTR1_U64}),
  .i_noe({U64_noe}),
  .o_data(INSTR1),
  .o_noe(INSTR1_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTR2 (
  .i_data({INSTR2_U64}),
  .i_noe({U64_noe}),
  .o_data(INSTR2),
  .o_noe(INSTR2_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTR3 (
  .i_data({INSTR3_U64}),
  .i_noe({U64_noe}),
  .o_data(INSTR3),
  .o_noe(INSTR3_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTR4 (
  .i_data({INSTR4_U64}),
  .i_noe({U64_noe}),
  .o_data(INSTR4),
  .o_noe(INSTR4_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTR5 (
  .i_data({INSTR5_U64}),
  .i_noe({U64_noe}),
  .o_data(INSTR5),
  .o_noe(INSTR5_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTR6 (
  .i_data({INSTR6_U64}),
  .i_noe({U64_noe}),
  .o_data(INSTR6),
  .o_noe(INSTR6_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTR7 (
  .i_data({INSTR7_U64}),
  .i_noe({U64_noe}),
  .o_data(INSTR7),
  .o_noe(INSTR7_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMAR8 (
  .i_data({MAR8_U68}),
  .i_noe({U68_noe}),
  .o_data(MAR8),
  .o_noe(MAR8_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMAR9 (
  .i_data({MAR9_U68}),
  .i_noe({U68_noe}),
  .o_data(MAR9),
  .o_noe(MAR9_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMAR10 (
  .i_data({MAR10_U68}),
  .i_noe({U68_noe}),
  .o_data(MAR10),
  .o_noe(MAR10_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMAR11 (
  .i_data({MAR11_U68}),
  .i_noe({U68_noe}),
  .o_data(MAR11),
  .o_noe(MAR11_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMAR12 (
  .i_data({MAR12_U68}),
  .i_noe({U68_noe}),
  .o_data(MAR12),
  .o_noe(MAR12_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMAR13 (
  .i_data({MAR13_U68}),
  .i_noe({U68_noe}),
  .o_data(MAR13),
  .o_noe(MAR13_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMAR14 (
  .i_data({MAR14_U68}),
  .i_noe({U68_noe}),
  .o_data(MAR14),
  .o_noe(MAR14_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMAR15 (
  .i_data({MAR15_U68}),
  .i_noe({U68_noe}),
  .o_data(MAR15),
  .o_noe(MAR15_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTRIMM0 (
  .i_data({INSTRIMM0_U70}),
  .i_noe({U70_noe}),
  .o_data(INSTRIMM0),
  .o_noe(INSTRIMM0_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTRIMM1 (
  .i_data({INSTRIMM1_U70}),
  .i_noe({U70_noe}),
  .o_data(INSTRIMM1),
  .o_noe(INSTRIMM1_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTRIMM2 (
  .i_data({INSTRIMM2_U70}),
  .i_noe({U70_noe}),
  .o_data(INSTRIMM2),
  .o_noe(INSTRIMM2_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTRIMM3 (
  .i_data({INSTRIMM3_U70}),
  .i_noe({U70_noe}),
  .o_data(INSTRIMM3),
  .o_noe(INSTRIMM3_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTRIMM4 (
  .i_data({INSTRIMM4_U70}),
  .i_noe({U70_noe}),
  .o_data(INSTRIMM4),
  .o_noe(INSTRIMM4_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTRIMM5 (
  .i_data({INSTRIMM5_U70}),
  .i_noe({U70_noe}),
  .o_data(INSTRIMM5),
  .o_noe(INSTRIMM5_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTRIMM6 (
  .i_data({INSTRIMM6_U70}),
  .i_noe({U70_noe}),
  .o_data(INSTRIMM6),
  .o_noe(INSTRIMM6_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTRIMM7 (
  .i_data({INSTRIMM7_U70}),
  .i_noe({U70_noe}),
  .o_data(INSTRIMM7),
  .o_noe(INSTRIMM7_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTRIMM8 (
  .i_data({INSTRIMM8_U71}),
  .i_noe({U71_noe}),
  .o_data(INSTRIMM8),
  .o_noe(INSTRIMM8_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTRIMM9 (
  .i_data({INSTRIMM9_U71}),
  .i_noe({U71_noe}),
  .o_data(INSTRIMM9),
  .o_noe(INSTRIMM9_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTRIMM10 (
  .i_data({INSTRIMM10_U71}),
  .i_noe({U71_noe}),
  .o_data(INSTRIMM10),
  .o_noe(INSTRIMM10_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTRIMM11 (
  .i_data({INSTRIMM11_U71}),
  .i_noe({U71_noe}),
  .o_data(INSTRIMM11),
  .o_noe(INSTRIMM11_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTRIMM12 (
  .i_data({INSTRIMM12_U71}),
  .i_noe({U71_noe}),
  .o_data(INSTRIMM12),
  .o_noe(INSTRIMM12_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTRIMM13 (
  .i_data({INSTRIMM13_U71}),
  .i_noe({U71_noe}),
  .o_data(INSTRIMM13),
  .o_noe(INSTRIMM13_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTRIMM14 (
  .i_data({INSTRIMM14_U71}),
  .i_noe({U71_noe}),
  .o_data(INSTRIMM14),
  .o_noe(INSTRIMM14_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusINSTRIMM15 (
  .i_data({INSTRIMM15_U71}),
  .i_noe({U71_noe}),
  .o_data(INSTRIMM15),
  .o_noe(INSTRIMM15_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusSELECT7 (
  .i_data({SELECT7_U73, SELECT7_U74}),
  .i_noe({U73_b_noe, U74_b_noe}),
  .o_data(SELECT7),
  .o_noe(SELECT7_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusSELECT6 (
  .i_data({SELECT6_U73, SELECT6_U74}),
  .i_noe({U73_b_noe, U74_b_noe}),
  .o_data(SELECT6),
  .o_noe(SELECT6_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusSELECT5 (
  .i_data({SELECT5_U73, SELECT5_U74}),
  .i_noe({U73_b_noe, U74_b_noe}),
  .o_data(SELECT5),
  .o_noe(SELECT5_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusSELECT4 (
  .i_data({SELECT4_U73, SELECT4_U74}),
  .i_noe({U73_b_noe, U74_b_noe}),
  .o_data(SELECT4),
  .o_noe(SELECT4_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusSELECT3 (
  .i_data({SELECT3_U73, SELECT3_U74}),
  .i_noe({U73_b_noe, U74_b_noe}),
  .o_data(SELECT3),
  .o_noe(SELECT3_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusSELECT2 (
  .i_data({SELECT2_U73, SELECT2_U74}),
  .i_noe({U73_b_noe, U74_b_noe}),
  .o_data(SELECT2),
  .o_noe(SELECT2_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusSELECT1 (
  .i_data({SELECT1_U73, SELECT1_U74}),
  .i_noe({U73_b_noe, U74_b_noe}),
  .o_data(SELECT1),
  .o_noe(SELECT1_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusSELECT0 (
  .i_data({SELECT0_U73, SELECT0_U74}),
  .i_noe({U73_b_noe, U74_b_noe}),
  .o_data(SELECT0),
  .o_noe(SELECT0_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusBUS_BUF0 (
  .i_data({BUS_BUF0_U77, BUS_BUF0_U201}),
  .i_noe({U77_noe, U201_b_noe}),
  .o_data(BUS_BUF0),
  .o_noe(BUS_BUF0_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusBUS_BUF1 (
  .i_data({BUS_BUF1_U77, BUS_BUF1_U201}),
  .i_noe({U77_noe, U201_b_noe}),
  .o_data(BUS_BUF1),
  .o_noe(BUS_BUF1_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusBUS_BUF2 (
  .i_data({BUS_BUF2_U77, BUS_BUF2_U201}),
  .i_noe({U77_noe, U201_b_noe}),
  .o_data(BUS_BUF2),
  .o_noe(BUS_BUF2_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusBUS_BUF3 (
  .i_data({BUS_BUF3_U77, BUS_BUF3_U201}),
  .i_noe({U77_noe, U201_b_noe}),
  .o_data(BUS_BUF3),
  .o_noe(BUS_BUF3_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusBUS_BUF4 (
  .i_data({BUS_BUF4_U77, BUS_BUF4_U201}),
  .i_noe({U77_noe, U201_b_noe}),
  .o_data(BUS_BUF4),
  .o_noe(BUS_BUF4_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusBUS_BUF5 (
  .i_data({BUS_BUF5_U77, BUS_BUF5_U201}),
  .i_noe({U77_noe, U201_b_noe}),
  .o_data(BUS_BUF5),
  .o_noe(BUS_BUF5_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusBUS_BUF6 (
  .i_data({BUS_BUF6_U77, BUS_BUF6_U201}),
  .i_noe({U77_noe, U201_b_noe}),
  .o_data(BUS_BUF6),
  .o_noe(BUS_BUF6_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusBUS_BUF7 (
  .i_data({BUS_BUF7_U77, BUS_BUF7_U201}),
  .i_noe({U77_noe, U201_b_noe}),
  .o_data(BUS_BUF7),
  .o_noe(BUS_BUF7_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMC_A11 (
  .i_data({MC_A11_U83}),
  .i_noe({U83_noe}),
  .o_data(MC_A11),
  .o_noe(MC_A11_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMC_A12 (
  .i_data({MC_A12_U83}),
  .i_noe({U83_noe}),
  .o_data(MC_A12),
  .o_noe(MC_A12_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMC_A13 (
  .i_data({MC_A13_U83}),
  .i_noe({U83_noe}),
  .o_data(MC_A13),
  .o_noe(MC_A13_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMC_A14 (
  .i_data({MC_A14_U83}),
  .i_noe({U83_noe}),
  .o_data(MC_A14),
  .o_noe(MC_A14_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusunconnected_U83_18 (
  .i_data({unconnected_U83_18_U83}),
  .i_noe({U83_noe}),
  .o_data(unconnected_U83_18),
  .o_noe(unconnected_U83_18_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMC_A0 (
  .i_data({MC_A0_U83}),
  .i_noe({U83_noe}),
  .o_data(MC_A0),
  .o_noe(MC_A0_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMC_A1 (
  .i_data({MC_A1_U83}),
  .i_noe({U83_noe}),
  .o_data(MC_A1),
  .o_noe(MC_A1_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusMC_A2 (
  .i_data({MC_A2_U83}),
  .i_noe({U83_noe}),
  .o_data(MC_A2),
  .o_noe(MC_A2_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRESET1 (
  .i_data({RESET1_U95}),
  .i_noe({U95_b_noe}),
  .o_data(RESET1),
  .o_noe(RESET1_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusCLK1 (
  .i_data({CLK1_U95}),
  .i_noe({U95_b_noe}),
  .o_data(CLK1),
  .o_noe(CLK1_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusN17649455 (
  .i_data({N17649455_U95}),
  .i_noe({U95_b_noe}),
  .o_data(N17649455),
  .o_noe(N17649455_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusN17647680 (
  .i_data({N17647680_U95}),
  .i_noe({U95_b_noe}),
  .o_data(N17647680),
  .o_noe(N17647680_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusN17646046 (
  .i_data({N17646046_U95}),
  .i_noe({U95_b_noe}),
  .o_data(N17646046),
  .o_noe(N17646046_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusN17642095 (
  .i_data({N17642095_U95}),
  .i_noe({U95_b_noe}),
  .o_data(N17642095),
  .o_noe(N17642095_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusN17643531 (
  .i_data({N17643531_U95}),
  .i_noe({U95_b_noe}),
  .o_data(N17643531),
  .o_noe(N17643531_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusN17646477 (
  .i_data({N17646477_U95}),
  .i_noe({U95_b_noe}),
  .o_data(N17646477),
  .o_noe(N17646477_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusFLAGNEGATIVE_SRC (
  .i_data({FLAGNEGATIVE_SRC_U97}),
  .i_noe({U97_noe}),
  .o_data(FLAGNEGATIVE_SRC),
  .o_noe(FLAGNEGATIVE_SRC_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusFLAGZERO_SRC (
  .i_data({FLAGZERO_SRC_U97}),
  .i_noe({U97_noe}),
  .o_data(FLAGZERO_SRC),
  .o_noe(FLAGZERO_SRC_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusFLAGCARRY_SRC (
  .i_data({FLAGCARRY_SRC_U97}),
  .i_noe({U97_noe}),
  .o_data(FLAGCARRY_SRC),
  .o_noe(FLAGCARRY_SRC_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusFLAGOVERFLOW_SRC (
  .i_data({FLAGOVERFLOW_SRC_U97}),
  .i_noe({U97_noe}),
  .o_data(FLAGOVERFLOW_SRC),
  .o_noe(FLAGOVERFLOW_SRC_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusunconnected_U97_18 (
  .i_data({unconnected_U97_18_U97}),
  .i_noe({U97_noe}),
  .o_data(unconnected_U97_18),
  .o_noe(unconnected_U97_18_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusunconnected_U97_17 (
  .i_data({unconnected_U97_17_U97}),
  .i_noe({U97_noe}),
  .o_data(unconnected_U97_17),
  .o_noe(unconnected_U97_17_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusunconnected_U97_16 (
  .i_data({unconnected_U97_16_U97}),
  .i_noe({U97_noe}),
  .o_data(unconnected_U97_16),
  .o_noe(unconnected_U97_16_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusunconnected_U97_15 (
  .i_data({unconnected_U97_15_U97}),
  .i_noe({U97_noe}),
  .o_data(unconnected_U97_15),
  .o_noe(unconnected_U97_15_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAM2DATA7 (
  .i_data({RAM2DATA7_U98, RAM2DATA7_U205}),
  .i_noe({U98_b_noe, U205_a_noe}),
  .o_data(RAM2DATA7),
  .o_noe(RAM2DATA7_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAM2DATA6 (
  .i_data({RAM2DATA6_U98, RAM2DATA6_U205}),
  .i_noe({U98_b_noe, U205_a_noe}),
  .o_data(RAM2DATA6),
  .o_noe(RAM2DATA6_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAM2DATA5 (
  .i_data({RAM2DATA5_U98, RAM2DATA5_U205}),
  .i_noe({U98_b_noe, U205_a_noe}),
  .o_data(RAM2DATA5),
  .o_noe(RAM2DATA5_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAM2DATA4 (
  .i_data({RAM2DATA4_U98, RAM2DATA4_U205}),
  .i_noe({U98_b_noe, U205_a_noe}),
  .o_data(RAM2DATA4),
  .o_noe(RAM2DATA4_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAM2DATA3 (
  .i_data({RAM2DATA3_U98, RAM2DATA3_U205}),
  .i_noe({U98_b_noe, U205_a_noe}),
  .o_data(RAM2DATA3),
  .o_noe(RAM2DATA3_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAM2DATA2 (
  .i_data({RAM2DATA2_U98, RAM2DATA2_U205}),
  .i_noe({U98_b_noe, U205_a_noe}),
  .o_data(RAM2DATA2),
  .o_noe(RAM2DATA2_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAM2DATA1 (
  .i_data({RAM2DATA1_U98, RAM2DATA1_U205}),
  .i_noe({U98_b_noe, U205_a_noe}),
  .o_data(RAM2DATA1),
  .o_noe(RAM2DATA1_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAM2DATA0 (
  .i_data({RAM2DATA0_U98, RAM2DATA0_U205}),
  .i_noe({U98_b_noe, U205_a_noe}),
  .o_data(RAM2DATA0),
  .o_noe(RAM2DATA0_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAM2D0 (
  .i_data({RAM2D0_U100, RAM2D0_U205}),
  .i_noe({U100_noe, U205_b_noe}),
  .o_data(RAM2D0),
  .o_noe(RAM2D0_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAM2D1 (
  .i_data({RAM2D1_U100, RAM2D1_U205}),
  .i_noe({U100_noe, U205_b_noe}),
  .o_data(RAM2D1),
  .o_noe(RAM2D1_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAM2D2 (
  .i_data({RAM2D2_U100, RAM2D2_U205}),
  .i_noe({U100_noe, U205_b_noe}),
  .o_data(RAM2D2),
  .o_noe(RAM2D2_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAM2D3 (
  .i_data({RAM2D3_U100, RAM2D3_U205}),
  .i_noe({U100_noe, U205_b_noe}),
  .o_data(RAM2D3),
  .o_noe(RAM2D3_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAM2D4 (
  .i_data({RAM2D4_U100, RAM2D4_U205}),
  .i_noe({U100_noe, U205_b_noe}),
  .o_data(RAM2D4),
  .o_noe(RAM2D4_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAM2D5 (
  .i_data({RAM2D5_U100, RAM2D5_U205}),
  .i_noe({U100_noe, U205_b_noe}),
  .o_data(RAM2D5),
  .o_noe(RAM2D5_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAM2D6 (
  .i_data({RAM2D6_U100, RAM2D6_U205}),
  .i_noe({U100_noe, U205_b_noe}),
  .o_data(RAM2D6),
  .o_noe(RAM2D6_noe)
);

tristatenet #(
  .INPUT_COUNT(2)
) inst_triBusRAM2D7 (
  .i_data({RAM2D7_U100, RAM2D7_U205}),
  .i_noe({U100_noe, U205_b_noe}),
  .o_data(RAM2D7),
  .o_noe(RAM2D7_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRAMADDRESS_BUF7 (
  .i_data({RAMADDRESS_BUF7_U202}),
  .i_noe({U202_b_noe}),
  .o_data(RAMADDRESS_BUF7),
  .o_noe(RAMADDRESS_BUF7_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRAMADDRESS_BUF6 (
  .i_data({RAMADDRESS_BUF6_U202}),
  .i_noe({U202_b_noe}),
  .o_data(RAMADDRESS_BUF6),
  .o_noe(RAMADDRESS_BUF6_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRAMADDRESS_BUF5 (
  .i_data({RAMADDRESS_BUF5_U202}),
  .i_noe({U202_b_noe}),
  .o_data(RAMADDRESS_BUF5),
  .o_noe(RAMADDRESS_BUF5_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRAMADDRESS_BUF4 (
  .i_data({RAMADDRESS_BUF4_U202}),
  .i_noe({U202_b_noe}),
  .o_data(RAMADDRESS_BUF4),
  .o_noe(RAMADDRESS_BUF4_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRAMADDRESS_BUF3 (
  .i_data({RAMADDRESS_BUF3_U202}),
  .i_noe({U202_b_noe}),
  .o_data(RAMADDRESS_BUF3),
  .o_noe(RAMADDRESS_BUF3_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRAMADDRESS_BUF2 (
  .i_data({RAMADDRESS_BUF2_U202}),
  .i_noe({U202_b_noe}),
  .o_data(RAMADDRESS_BUF2),
  .o_noe(RAMADDRESS_BUF2_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRAMADDRESS_BUF1 (
  .i_data({RAMADDRESS_BUF1_U202}),
  .i_noe({U202_b_noe}),
  .o_data(RAMADDRESS_BUF1),
  .o_noe(RAMADDRESS_BUF1_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRAMADDRESS_BUF0 (
  .i_data({RAMADDRESS_BUF0_U202}),
  .i_noe({U202_b_noe}),
  .o_data(RAMADDRESS_BUF0),
  .o_noe(RAMADDRESS_BUF0_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRAMADDRESS_BUF15 (
  .i_data({RAMADDRESS_BUF15_U203}),
  .i_noe({U203_b_noe}),
  .o_data(RAMADDRESS_BUF15),
  .o_noe(RAMADDRESS_BUF15_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRAMADDRESS_BUF14 (
  .i_data({RAMADDRESS_BUF14_U203}),
  .i_noe({U203_b_noe}),
  .o_data(RAMADDRESS_BUF14),
  .o_noe(RAMADDRESS_BUF14_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRAMADDRESS_BUF13 (
  .i_data({RAMADDRESS_BUF13_U203}),
  .i_noe({U203_b_noe}),
  .o_data(RAMADDRESS_BUF13),
  .o_noe(RAMADDRESS_BUF13_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRAMADDRESS_BUF12 (
  .i_data({RAMADDRESS_BUF12_U203}),
  .i_noe({U203_b_noe}),
  .o_data(RAMADDRESS_BUF12),
  .o_noe(RAMADDRESS_BUF12_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRAMADDRESS_BUF11 (
  .i_data({RAMADDRESS_BUF11_U203}),
  .i_noe({U203_b_noe}),
  .o_data(RAMADDRESS_BUF11),
  .o_noe(RAMADDRESS_BUF11_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRAMADDRESS_BUF10 (
  .i_data({RAMADDRESS_BUF10_U203}),
  .i_noe({U203_b_noe}),
  .o_data(RAMADDRESS_BUF10),
  .o_noe(RAMADDRESS_BUF10_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRAMADDRESS_BUF9 (
  .i_data({RAMADDRESS_BUF9_U203}),
  .i_noe({U203_b_noe}),
  .o_data(RAMADDRESS_BUF9),
  .o_noe(RAMADDRESS_BUF9_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRAMADDRESS_BUF8 (
  .i_data({RAMADDRESS_BUF8_U203}),
  .i_noe({U203_b_noe}),
  .o_data(RAMADDRESS_BUF8),
  .o_noe(RAMADDRESS_BUF8_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRESET_BUF (
  .i_data({RESET_BUF_U204}),
  .i_noe({U204_b_noe}),
  .o_data(RESET_BUF),
  .o_noe(RESET_BUF_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusCLK_BUF (
  .i_data({CLK_BUF_U204}),
  .i_noe({U204_b_noe}),
  .o_data(CLK_BUF),
  .o_noe(CLK_BUF_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusIOCE_BUF (
  .i_data({IOCE_BUF_U204}),
  .i_noe({U204_b_noe}),
  .o_data(IOCE_BUF),
  .o_noe(IOCE_BUF_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusRAMCE_BUF (
  .i_data({RAMCE_BUF_U204}),
  .i_noe({U204_b_noe}),
  .o_data(RAMCE_BUF),
  .o_noe(RAMCE_BUF_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusSELECTSTACKMEM_BUF (
  .i_data({SELECTSTACKMEM_BUF_U204}),
  .i_noe({U204_b_noe}),
  .o_data(SELECTSTACKMEM_BUF),
  .o_noe(SELECTSTACKMEM_BUF_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusCTRLMEMRAMWE_BUF (
  .i_data({CTRLMEMRAMWE_BUF_U204}),
  .i_noe({U204_b_noe}),
  .o_data(CTRLMEMRAMWE_BUF),
  .o_noe(CTRLMEMRAMWE_BUF_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusCTRLMEMRAMOE_BUF (
  .i_data({CTRLMEMRAMOE_BUF_U204}),
  .i_noe({U204_b_noe}),
  .o_data(CTRLMEMRAMOE_BUF),
  .o_noe(CTRLMEMRAMOE_BUF_noe)
);

tristatenet #(
  .INPUT_COUNT(1)
) inst_triBusN16843220 (
  .i_data({N16843220_U204}),
  .i_noe({U204_b_noe}),
  .o_data(N16843220),
  .o_noe(N16843220_noe)
);


icBerg40 inst_JT1 (
  .port1(1'b0),
  .port2(1'b0),
  .port3(1'b0),
  .port4(1'b0),
  .port5(INSTRIMM_UNREG0_SRC),
  .port6(INSTRIMM_UNREG0),
  .port7(INSTRIMM_UNREG1_SRC),
  .port8(INSTRIMM_UNREG1),
  .port9(INSTRIMM_UNREG2_SRC),
  .port10(INSTRIMM_UNREG2),
  .port11(INSTRIMM_UNREG3_SRC),
  .port12(INSTRIMM_UNREG3),
  .port13(INSTRIMM_UNREG4_SRC),
  .port14(INSTRIMM_UNREG4),
  .port15(INSTRIMM_UNREG5_SRC),
  .port16(INSTRIMM_UNREG5),
  .port17(INSTRIMM_UNREG6_SRC),
  .port18(INSTRIMM_UNREG6),
  .port19(INSTRIMM_UNREG7_SRC),
  .port20(INSTRIMM_UNREG7),
  .port21(INSTRIMM_UNREG8_SRC),
  .port22(INSTRIMM_UNREG8),
  .port23(INSTRIMM_UNREG9_SRC),
  .port24(INSTRIMM_UNREG9),
  .port25(INSTRIMM_UNREG10_SRC),
  .port26(INSTRIMM_UNREG10),
  .port27(INSTRIMM_UNREG11_SRC),
  .port28(INSTRIMM_UNREG11),
  .port29(INSTRIMM_UNREG12_SRC),
  .port30(INSTRIMM_UNREG12),
  .port31(INSTRIMM_UNREG13_SRC),
  .port32(INSTRIMM_UNREG13),
  .port33(INSTRIMM_UNREG14_SRC),
  .port34(INSTRIMM_UNREG14),
  .port35(INSTRIMM_UNREG15_SRC),
  .port36(INSTRIMM_UNREG15),
  .port37(1'b0),
  .port38(1'b0),
  .port39(1'b0),
  .port40(1'b0)
);

icBerg26 inst_JT2 (
  .port1(1'b0),
  .port2(1'b0),
  .port3(1'b0),
  .port4(1'b0),
  .port5(INSTR_UNREG0_SRC),
  .port6(INSTR_UNREG0),
  .port7(INSTR_UNREG1_SRC),
  .port8(INSTR_UNREG1),
  .port9(INSTR_UNREG2_SRC),
  .port10(INSTR_UNREG2),
  .port11(INSTR_UNREG3_SRC),
  .port12(INSTR_UNREG3),
  .port13(INSTR_UNREG4_SRC),
  .port14(INSTR_UNREG4),
  .port15(INSTR_UNREG5_SRC),
  .port16(INSTR_UNREG5),
  .port17(INSTR_UNREG6_SRC),
  .port18(INSTR_UNREG6),
  .port19(INSTR_UNREG7_SRC),
  .port20(INSTR_UNREG7),
  .port21(unconnected_JT2_21),
  .port22(unconnected_JT2_22),
  .port23(1'b0),
  .port24(1'b0),
  .port25(1'b0),
  .port26(1'b0)
);

icBerg10 inst_JT4 (
  .port1(1'b0),
  .port2(1'b0),
  .port3(IOCE_SRC),
  .port4(IOCE),
  .port5(RAMCE_SRC),
  .port6(RAMCE),
  .port7(SELECTSTACKMEM_SRC),
  .port8(SELECTSTACKMEM),
  .port9(1'b0),
  .port10(1'b0)
);

icBerg40 inst_JT5 (
  .port1(1'b0),
  .port2(1'b0),
  .port3(1'b0),
  .port4(1'b0),
  .port5(CTRLALUYWE_SRC),
  .port6(CTRLALUYWE),
  .port7(CTRLALUOE_SRC),
  .port8(CTRLALUOE),
  .port9(CTRLREG0WE_SRC),
  .port10(CTRLREG0WE),
  .port11(CTRLREG1WE_SRC),
  .port12(CTRLREG1WE),
  .port13(CTRLREGALUSEL_SRC),
  .port14(CTRLREGALUSEL),
  .port15(CTRLREG0BUSOE_SRC),
  .port16(CTRLREG0BUSOE),
  .port17(CTRLREG1BUSOE_SRC),
  .port18(CTRLREG1BUSOE),
  .port19(CTRLMEMPCLOAD_SRC),
  .port20(CTRLMEMPCLOAD),
  .port21(CTRLMEMSPUP_SRC),
  .port22(CTRLMEMSPUP),
  .port23(CTRLMEMSPEN_SRC),
  .port24(CTRLMEMSPEN),
  .port25(CTRLMEMINSTRWE_SRC),
  .port26(CTRLMEMINSTRWE),
  .port27(CTRLMEMINSTROE_SRC),
  .port28(CTRLMEMINSTROE),
  .port29(CTRLMEMMAR0WE_SRC),
  .port30(CTRLMEMMAR0WE),
  .port31(CTRLMEMMAR1WE_SRC),
  .port32(CTRLMEMMAR1WE),
  .port33(CTRLMEMINSTRIMMTORAMADDR_SRC),
  .port34(CTRLMEMINSTRIMMTORAMADDR),
  .port35(CTRLMEMRAMWE_SRC),
  .port36(CTRLMEMRAMWE),
  .port37(1'b0),
  .port38(1'b0),
  .port39(1'b0),
  .port40(1'b0)
);

icBerg26 inst_JT6 (
  .port1(1'b0),
  .port2(1'b0),
  .port3(1'b0),
  .port4(1'b0),
  .port5(CTRLMEMRAMOE_SRC),
  .port6(CTRLMEMRAMOE),
  .port7(CTRLMEMPCEN_SRC),
  .port8(CTRLMEMPCEN),
  .port9(CTRLMEMPCFROMIMM_SRC),
  .port10(CTRLMEMPCFROMIMM),
  .port11(CTRLMEMPCTORAM_SRC),
  .port12(CTRLMEMPCTORAM),
  .port13(CTRLINSTRFINISHED_SRC),
  .port14(CTRLINSTRFINISHED),
  .port15(CTRLALUSUB_SRC),
  .port16(CTRLALUSUB),
  .port17(CTRLALUOP0_SRC),
  .port18(CTRLALUOP0),
  .port19(CTRLALUOP1_SRC),
  .port20(CTRLALUOP1),
  .port21(unconnected_JT6_21),
  .port22(unconnected_JT6_22),
  .port23(1'b0),
  .port24(1'b0),
  .port25(1'b0),
  .port26(1'b0)
);

icBerg10 inst_JT7 (
  .port1(1'b0),
  .port2(),
  .port3(CLK_UNBUF_SRC),
  .port4(),
  .port5(1'b0),
  .port6(),
  .port7(HALT_SRC),
  .port8(HALT),
  .port9(1'b0),
  .port10()
);

icBerg40 inst_JT8 (
  .port1(1'b0),
  .port2(1'b0),
  .port3(1'b0),
  .port4(1'b0),
  .port5(A0_SRC),
  .port6(A0),
  .port7(A1_SRC),
  .port8(A1),
  .port9(A2_SRC),
  .port10(A2),
  .port11(A3_SRC),
  .port12(A3),
  .port13(A4_SRC),
  .port14(A4),
  .port15(A5_SRC),
  .port16(A5),
  .port17(A6_SRC),
  .port18(A6),
  .port19(A7_SRC),
  .port20(A7),
  .port21(ALU_OUT0_SRC),
  .port22(ALU_OUT0),
  .port23(ALU_OUT1_SRC),
  .port24(ALU_OUT1),
  .port25(ALU_OUT2_SRC),
  .port26(ALU_OUT2),
  .port27(ALU_OUT3_SRC),
  .port28(ALU_OUT3),
  .port29(ALU_OUT4_SRC),
  .port30(ALU_OUT4),
  .port31(ALU_OUT5_SRC),
  .port32(ALU_OUT5),
  .port33(ALU_OUT6_SRC),
  .port34(ALU_OUT6),
  .port35(ALU_OUT7_SRC),
  .port36(ALU_OUT7),
  .port37(1'b0),
  .port38(1'b0),
  .port39(1'b0),
  .port40(1'b0)
);

icBerg26 inst_JT9 (
  .port1(1'b0),
  .port2(1'b0),
  .port3(1'b0),
  .port4(1'b0),
  .port5(FLAGNEGATIVE_SRC),
  .port6(FLAGNEGATIVE),
  .port7(FLAGZERO_SRC),
  .port8(FLAGZERO),
  .port9(FLAGCARRY_SRC),
  .port10(FLAGCARRY),
  .port11(FLAGOVERFLOW_SRC),
  .port12(FLAGOVERFLOW),
  .port13(unconnected_JT9_13),
  .port14(unconnected_JT9_14),
  .port15(unconnected_JT9_15),
  .port16(unconnected_JT9_16),
  .port17(1'b0),
  .port18(),
  .port19(1'b0),
  .port20()
);

ic74x540 inst_U1 (
  .port1(L1),
  .port2(Bus0),
  .port3(Bus1),
  .port4(Bus2),
  .port5(Bus3),
  .port6(Bus4),
  .port7(Bus5),
  .port8(Bus6),
  .port9(Bus7),
  .port10(1'b0),
  .port11(N165000061),
  .port12(N164998201),
  .port13(N165000921),
  .port14(N164999821),
  .port15(N165000401),
  .port16(N165000681),
  .port17(N164998441),
  .port18(N164998681),
  .port19(L1),
  .port20(VCC)
);

ic74x86 inst_U2 (
  .port1(Bus0),
  .port2(CTRLALUSUB),
  .port3(N16503574),
  .port4(Bus1),
  .port5(CTRLALUSUB),
  .port6(N16506376),
  .port7(1'b0),
  .port8(N16506838),
  .port9(Bus2),
  .port10(CTRLALUSUB),
  .port11(N16507840),
  .port12(Bus3),
  .port13(CTRLALUSUB),
  .port14(VCC)
);

ic74x86 inst_U3 (
  .port1(Bus4),
  .port2(CTRLALUSUB),
  .port3(N16512311),
  .port4(Bus5),
  .port5(CTRLALUSUB),
  .port6(N16512445),
  .port7(1'b0),
  .port8(N16512135),
  .port9(Bus6),
  .port10(CTRLALUSUB),
  .port11(N16512013),
  .port12(Bus7),
  .port13(CTRLALUSUB),
  .port14(VCC)
);

ic74x153 inst_U5 (
  .port1(L4),
  .port2(CTRLALUOP1),
  .port3(SHIFT0),
  .port4(XOR0),
  .port5(AND0),
  .port6(ADDER0),
  .port7(ALU_OUT0_SRC),
  .port8(1'b0),
  .port9(ALU_OUT1_SRC),
  .port10(ADDER1),
  .port11(AND1),
  .port12(XOR1),
  .port13(SHIFT1),
  .port14(CTRLALUOP0),
  .port15(L4),
  .port16(VCC)
);

ic74x153 inst_U6 (
  .port1(L4),
  .port2(CTRLALUOP1),
  .port3(SHIFT2),
  .port4(XOR2),
  .port5(AND2),
  .port6(ADDER2),
  .port7(ALU_OUT2_SRC),
  .port8(1'b0),
  .port9(ALU_OUT3_SRC),
  .port10(ADDER3),
  .port11(AND3),
  .port12(XOR3),
  .port13(SHIFT3),
  .port14(CTRLALUOP0),
  .port15(L4),
  .port16(VCC)
);

ic74x153 inst_U7 (
  .port1(L4),
  .port2(CTRLALUOP1),
  .port3(SHIFT4),
  .port4(XOR4),
  .port5(AND4),
  .port6(ADDER4),
  .port7(ALU_OUT4_SRC),
  .port8(1'b0),
  .port9(ALU_OUT5_SRC),
  .port10(ADDER5),
  .port11(AND5),
  .port12(XOR5),
  .port13(SHIFT5),
  .port14(CTRLALUOP0),
  .port15(L4),
  .port16(VCC)
);

ic74x153 inst_U8 (
  .port1(L4),
  .port2(CTRLALUOP1),
  .port3(SHIFT6),
  .port4(XOR6),
  .port5(AND6),
  .port6(ADDER6),
  .port7(ALU_OUT6_SRC),
  .port8(1'b0),
  .port9(ALU_OUT7_SRC),
  .port10(ADDER7),
  .port11(AND7),
  .port12(XOR7),
  .port13(SHIFT7),
  .port14(CTRLALUOP0),
  .port15(L4),
  .port16(VCC)
);

ic74x825 inst_U9 (
  .port1(L4),
  .port2(L4),
  .port3(ALU_OUT0),
  .port4(ALU_OUT1),
  .port5(ALU_OUT2),
  .port6(ALU_OUT3),
  .port7(ALU_OUT4),
  .port8(ALU_OUT5),
  .port9(ALU_OUT6),
  .port10(ALU_OUT7),
  .port11(RESET1),
  .port12(1'b0),
  .port13(CLK1),
  .port14(CTRLALUYWE),
  .port15(ALU_OUT_REG7_U9),
  .port16(ALU_OUT_REG6_U9),
  .port17(ALU_OUT_REG5_U9),
  .port18(ALU_OUT_REG4_U9),
  .port19(ALU_OUT_REG3_U9),
  .port20(ALU_OUT_REG2_U9),
  .port21(ALU_OUT_REG1_U9),
  .port22(ALU_OUT_REG0_U9),
  .port23(L4),
  .port24(VCC),
  .port25(U9_noe)
);

ic74x245 inst_U10 (
  .port1(H4),
  .port102(ALU_OUT_REG0),
  .port103(ALU_OUT_REG1),
  .port104(ALU_OUT_REG2),
  .port105(ALU_OUT_REG3),
  .port106(ALU_OUT_REG4),
  .port107(ALU_OUT_REG5),
  .port108(ALU_OUT_REG6),
  .port109(ALU_OUT_REG7),
  .port10(1'b0),
  .port11(Bus7_U10),
  .port12(Bus6_U10),
  .port13(Bus5_U10),
  .port14(Bus4_U10),
  .port15(Bus3_U10),
  .port16(Bus2_U10),
  .port17(Bus1_U10),
  .port18(Bus0_U10),
  .port19(CTRLALUOE),
  .port20(VCC),
  .port21(U10_a_noe),
  .port22(U10_b_noe),
  .port111(Bus7),
  .port112(Bus6),
  .port113(Bus5),
  .port114(Bus4),
  .port115(Bus3),
  .port116(Bus2),
  .port117(Bus1),
  .port118(Bus0)
);

ic74x540 inst_U11 (
  .port1(L4),
  .port2(ALU_OUT_REG0),
  .port3(ALU_OUT_REG1),
  .port4(ALU_OUT_REG2),
  .port5(ALU_OUT_REG3),
  .port6(ALU_OUT_REG4),
  .port7(ALU_OUT_REG5),
  .port8(ALU_OUT_REG6),
  .port9(ALU_OUT_REG7),
  .port10(1'b0),
  .port11(N164794631),
  .port12(N1647958916),
  .port13(N1647958915),
  .port14(N1647958914),
  .port15(N1647958913),
  .port16(N1647958912),
  .port17(N1647958911),
  .port18(N1647958910),
  .port19(L4),
  .port20(VCC)
);

ic74x521 inst_U12 (
  .port1(L4),
  .port2(ALU_OUT0),
  .port3(L4),
  .port4(ALU_OUT1),
  .port5(L4),
  .port6(ALU_OUT2),
  .port7(L4),
  .port8(ALU_OUT3),
  .port9(L4),
  .port10(1'b0),
  .port11(ALU_OUT4),
  .port12(L4),
  .port13(ALU_OUT5),
  .port14(L4),
  .port15(ALU_OUT6),
  .port16(L4),
  .port17(ALU_OUT7),
  .port18(L4),
  .port19(N16474977),
  .port20(VCC)
);

ic74x157 inst_U13 (
  .port1(CTRLALUSUB),
  .port2(A0),
  .port3(A7),
  .port4(N16534656),
  .port5(A1),
  .port6(A6),
  .port7(N16534699),
  .port8(1'b0),
  .port9(N16534742),
  .port10(A5),
  .port11(A2),
  .port12(N16534785),
  .port13(A4),
  .port14(A3),
  .port15(L4),
  .port16(VCC)
);

ic74x157 inst_U14 (
  .port1(CTRLALUSUB),
  .port2(A4),
  .port3(A3),
  .port4(N16535538),
  .port5(A5),
  .port6(A2),
  .port7(N16535542),
  .port8(1'b0),
  .port9(N16535546),
  .port10(A1),
  .port11(A6),
  .port12(N16535534),
  .port13(A0),
  .port14(A7),
  .port15(L4),
  .port16(VCC)
);

ic74x157 inst_U15 (
  .port1(Bus0),
  .port2(N16534656),
  .port3(N16534699),
  .port4(N16534828),
  .port5(N16534699),
  .port6(N16534742),
  .port7(N16534911),
  .port8(1'b0),
  .port9(N16534994),
  .port10(N16534785),
  .port11(N16534742),
  .port12(N16535077),
  .port13(N16535538),
  .port14(N16534785),
  .port15(L4),
  .port16(VCC)
);

ic74x157 inst_U16 (
  .port1(Bus0),
  .port2(N16535538),
  .port3(N16535542),
  .port4(N16535642),
  .port5(N16535542),
  .port6(N16535546),
  .port7(N16535638),
  .port8(1'b0),
  .port9(N16535646),
  .port10(N16535534),
  .port11(N16535546),
  .port12(N16535634),
  .port13(L1),
  .port14(N16535534),
  .port15(L4),
  .port16(VCC)
);

ic74x157 inst_U17 (
  .port1(Bus1),
  .port2(N16534828),
  .port3(N16534994),
  .port4(N16535160),
  .port5(N16534911),
  .port6(N16535077),
  .port7(N16535243),
  .port8(1'b0),
  .port9(N16535326),
  .port10(N16535642),
  .port11(N16534994),
  .port12(N16535409),
  .port13(N16535638),
  .port14(N16535077),
  .port15(L4),
  .port16(VCC)
);

ic74x157 inst_U18 (
  .port1(Bus1),
  .port2(N16535642),
  .port3(N16535646),
  .port4(N16535742),
  .port5(N16535638),
  .port6(N16535634),
  .port7(N16535738),
  .port8(1'b0),
  .port9(N16535746),
  .port10(L1),
  .port11(N16535646),
  .port12(N16535734),
  .port13(L1),
  .port14(N16535634),
  .port15(L4),
  .port16(VCC)
);

ic74x157 inst_U19 (
  .port1(Bus2),
  .port2(N16535160),
  .port3(N16535742),
  .port4(N16546884),
  .port5(N16535243),
  .port6(N16535738),
  .port7(N16546967),
  .port8(1'b0),
  .port9(N16547050),
  .port10(N16535746),
  .port11(N16535326),
  .port12(N16547133),
  .port13(N16535734),
  .port14(N16535409),
  .port15(L4),
  .port16(VCC)
);

ic74x157 inst_U20 (
  .port1(Bus2),
  .port2(N16535742),
  .port3(L1),
  .port4(N16547410),
  .port5(N16535738),
  .port6(L1),
  .port7(N16547402),
  .port8(1'b0),
  .port9(N16547398),
  .port10(L1),
  .port11(N16535746),
  .port12(N16547406),
  .port13(L1),
  .port14(N16535734),
  .port15(L4),
  .port16(VCC)
);

ic74x157 inst_U21 (
  .port1(CTRLALUSUB),
  .port2(N16546884),
  .port3(N16547406),
  .port4(SHIFT0),
  .port5(N16546967),
  .port6(N16547398),
  .port7(SHIFT1),
  .port8(1'b0),
  .port9(SHIFT2),
  .port10(N16547402),
  .port11(N16547050),
  .port12(SHIFT3),
  .port13(N16547410),
  .port14(N16547133),
  .port15(L4),
  .port16(VCC)
);

ic74x157 inst_U22 (
  .port1(CTRLALUSUB),
  .port2(N16547410),
  .port3(N16547133),
  .port4(SHIFT4),
  .port5(N16547402),
  .port6(N16547050),
  .port7(SHIFT5),
  .port8(1'b0),
  .port9(SHIFT6),
  .port10(N16546967),
  .port11(N16547398),
  .port12(SHIFT7),
  .port13(N16546884),
  .port14(N16547406),
  .port15(L4),
  .port16(VCC)
);

ic74x86 inst_U23 (
  .port1(A3),
  .port2(N16507840),
  .port3(XOR3),
  .port4(A2),
  .port5(N16506838),
  .port6(XOR2),
  .port7(1'b0),
  .port8(XOR1),
  .port9(A1),
  .port10(N16506376),
  .port11(XOR0),
  .port12(A0),
  .port13(N16503574),
  .port14(VCC)
);

ic74x08 inst_U24 (
  .port1(A3),
  .port2(N16507840),
  .port3(AND3),
  .port4(A2),
  .port5(N16506838),
  .port6(AND2),
  .port7(1'b0),
  .port8(AND1),
  .port9(A1),
  .port10(N16506376),
  .port11(AND0),
  .port12(A0),
  .port13(N16503574),
  .port14(VCC)
);

ic74x86 inst_U25 (
  .port1(N16507032),
  .port2(XOR3),
  .port3(ADDER3),
  .port4(N16506484),
  .port5(XOR2),
  .port6(ADDER2),
  .port7(1'b0),
  .port8(ADDER1),
  .port9(N16504571),
  .port10(XOR1),
  .port11(ADDER0),
  .port12(CTRLALUSUB),
  .port13(XOR0),
  .port14(VCC)
);

ic74x08 inst_U26 (
  .port1(N16507032),
  .port2(XOR3),
  .port3(N16507848),
  .port4(N16506484),
  .port5(XOR2),
  .port6(N16506776),
  .port7(1'b0),
  .port8(N16506388),
  .port9(N16504571),
  .port10(XOR1),
  .port11(N16504502),
  .port12(CTRLALUSUB),
  .port13(XOR0),
  .port14(VCC)
);

ic74x32 inst_U27 (
  .port1(AND3),
  .port2(N16507848),
  .port3(N16508106),
  .port4(AND2),
  .port5(N16506776),
  .port6(N16507032),
  .port7(1'b0),
  .port8(N16506484),
  .port9(AND1),
  .port10(N16506388),
  .port11(N16504571),
  .port12(AND0),
  .port13(N16504502),
  .port14(VCC)
);

ic74x86 inst_U28 (
  .port1(A7),
  .port2(N16512013),
  .port3(XOR7),
  .port4(A6),
  .port5(N16512135),
  .port6(XOR6),
  .port7(1'b0),
  .port8(XOR5),
  .port9(A5),
  .port10(N16512445),
  .port11(XOR4),
  .port12(A4),
  .port13(N16512311),
  .port14(VCC)
);

ic74x08 inst_U29 (
  .port1(A7),
  .port2(N16512013),
  .port3(AND7),
  .port4(A6),
  .port5(N16512135),
  .port6(AND6),
  .port7(1'b0),
  .port8(AND5),
  .port9(A5),
  .port10(N16512445),
  .port11(AND4),
  .port12(A4),
  .port13(N16512311),
  .port14(VCC)
);

ic74x86 inst_U30 (
  .port1(N16512191),
  .port2(XOR7),
  .port3(ADDER7),
  .port4(N16512355),
  .port5(XOR6),
  .port6(ADDER6),
  .port7(1'b0),
  .port8(ADDER5),
  .port9(N16511879),
  .port10(XOR5),
  .port11(ADDER4),
  .port12(N16508106),
  .port13(XOR4),
  .port14(VCC)
);

ic74x08 inst_U31 (
  .port1(N16512191),
  .port2(XOR7),
  .port3(N16512151),
  .port4(N16512355),
  .port5(XOR6),
  .port6(N16512215),
  .port7(1'b0),
  .port8(N16512195),
  .port9(N16511879),
  .port10(XOR5),
  .port11(N16512433),
  .port12(N16508106),
  .port13(XOR4),
  .port14(VCC)
);

ic74x32 inst_U32 (
  .port1(AND7),
  .port2(N16512151),
  .port3(FLAG_C),
  .port4(AND6),
  .port5(N16512215),
  .port6(N16512191),
  .port7(1'b0),
  .port8(N16512355),
  .port9(AND5),
  .port10(N16512195),
  .port11(N16511879),
  .port12(AND4),
  .port13(N16512433),
  .port14(VCC)
);

ic74x14 inst_U33 (
  .port1(N16445057),
  .port2(BREAKPOINTENABLE),
  .port3(N16792555),
  .port4(DEBUG_STEP),
  .port5(N16925459),
  .port6(DEBUG_INSTR_CYCLEN),
  .port7(1'b0),
  .port8(DEBUG_STEPRUNN),
  .port9(N16923056),
  .port10(N17642894),
  .port11(RQ3),
  .port12(N19014936),
  .port13(RQ6),
  .port14(VCC)
);

icds1813 inst_U34 (
  .port1(N16449995),
  .port2(VCC),
  .port3(1'b0)
);

ic74x273 inst_U35 (
  .port1(RESET1),
  .port2(RD2),
  .port3(DEBUG_STEP),
  .port4(RD2),
  .port5(RD3),
  .port6(RQ3),
  .port7(RD3),
  .port8(RD4),
  .port9(RQ4),
  .port10(1'b0),
  .port11(CLK1),
  .port12(RD6),
  .port13(DEBUG_INSTR_CYCLEN),
  .port14(RD6),
  .port15(RQ6),
  .port16(RD8),
  .port17(DEBUG_STEPRUNN),
  .port18(RD8),
  .port19(RQ8),
  .port20(VCC)
);

ic74x08 inst_U36 (
  .port1(RD3),
  .port2(N17642894),
  .port3(N17642468),
  .port4(N17646554),
  .port5(CTRLINSTRFINISHED),
  .port6(N19014893),
  .port7(1'b0),
  .port8(N659290),
  .port9(CTRLMEMPCLOAD),
  .port10(RESET1),
  .port11(PCEN),
  .port12(N16823046),
  .port13(CTRLMEMPCLOAD),
  .port14(VCC)
);

ic74x32 inst_U37 (
  .port1(RQ4),
  .port2(N17642468),
  .port3(N17646554),
  .port4(N19014893),
  .port5(N19014936),
  .port6(RD4),
  .port7(1'b0),
  .port8(N16823046),
  .port9(CTRLMEMPCEN),
  .port10(HALT),
  .port11(SPEN),
  .port12(CTRLMEMSPEN),
  .port13(HALT),
  .port14(VCC)
);

ic74x08 inst_U38 (
  .port1(CTRLMEMSPUP),
  .port2(RESET1),
  .port3(N14944613),
  .port4(H3),
  .port5(H3),
  .port6(unconnected_U38_6),
  .port7(1'b0),
  .port8(N14977874),
  .port9(INSTRIMM1SELECT),
  .port10(SELECTSTACKMEM),
  .port11(N14959801),
  .port12(CTRLMEMINSTRIMMTORAMADDR),
  .port13(SELECTSTACKMEM),
  .port14(VCC)
);

ic74x151 inst_U39 (
  .port1(RQ4),
  .port2(N17642468),
  .port3(BREAKPOINTHIT),
  .port4(BREAKPOINTHIT),
  .port5(unconnected_U39_5),
  .port6(HALT_SRC),
  .port7(L3),
  .port8(1'b0),
  .port9(L3),
  .port10(RQ8),
  .port11(RQ6),
  .port12(H3),
  .port13(H3),
  .port14(H3),
  .port15(H3),
  .port16(VCC)
);

ic74x825 inst_U40 (
  .port1(L4),
  .port2(L4),
  .port3(Bus0),
  .port4(Bus1),
  .port5(Bus2),
  .port6(Bus3),
  .port7(Bus4),
  .port8(Bus5),
  .port9(Bus6),
  .port10(Bus7),
  .port11(RESET1),
  .port12(1'b0),
  .port13(CLK1),
  .port14(CTRLREG0WE),
  .port15(R07_U40),
  .port16(R06_U40),
  .port17(R05_U40),
  .port18(R04_U40),
  .port19(R03_U40),
  .port20(R02_U40),
  .port21(R01_U40),
  .port22(R00_U40),
  .port23(L4),
  .port24(VCC),
  .port25(U40_noe)
);

ic74x825 inst_U41 (
  .port1(L4),
  .port2(L4),
  .port3(Bus0),
  .port4(Bus1),
  .port5(Bus2),
  .port6(Bus3),
  .port7(Bus4),
  .port8(Bus5),
  .port9(Bus6),
  .port10(Bus7),
  .port11(RESET1),
  .port12(1'b0),
  .port13(CLK1),
  .port14(CTRLREG1WE),
  .port15(R17_U41),
  .port16(R16_U41),
  .port17(R15_U41),
  .port18(R14_U41),
  .port19(R13_U41),
  .port20(R12_U41),
  .port21(R11_U41),
  .port22(R10_U41),
  .port23(L4),
  .port24(VCC),
  .port25(U41_noe)
);

ic74x157 inst_U42 (
  .port1(CTRLREGALUSEL),
  .port2(R00),
  .port3(R10),
  .port4(A0_SRC),
  .port5(R01),
  .port6(R11),
  .port7(A1_SRC),
  .port8(1'b0),
  .port9(A2_SRC),
  .port10(R12),
  .port11(R02),
  .port12(A3_SRC),
  .port13(R13),
  .port14(R03),
  .port15(L4),
  .port16(VCC)
);

ic74x157 inst_U43 (
  .port1(CTRLREGALUSEL),
  .port2(R04),
  .port3(R14),
  .port4(A4_SRC),
  .port5(R05),
  .port6(R15),
  .port7(A5_SRC),
  .port8(1'b0),
  .port9(A6_SRC),
  .port10(R16),
  .port11(R06),
  .port12(A7_SRC),
  .port13(R17),
  .port14(R07),
  .port15(L4),
  .port16(VCC)
);

ic74x245 inst_U44 (
  .port1(H4),
  .port102(R00),
  .port103(R01),
  .port104(R02),
  .port105(R03),
  .port106(R04),
  .port107(R05),
  .port108(R06),
  .port109(R07),
  .port10(1'b0),
  .port11(Bus7_U44),
  .port12(Bus6_U44),
  .port13(Bus5_U44),
  .port14(Bus4_U44),
  .port15(Bus3_U44),
  .port16(Bus2_U44),
  .port17(Bus1_U44),
  .port18(Bus0_U44),
  .port19(CTRLREG0BUSOE),
  .port20(VCC),
  .port21(U44_a_noe),
  .port22(U44_b_noe),
  .port111(Bus7),
  .port112(Bus6),
  .port113(Bus5),
  .port114(Bus4),
  .port115(Bus3),
  .port116(Bus2),
  .port117(Bus1),
  .port118(Bus0)
);

ic74x245 inst_U45 (
  .port1(H4),
  .port102(R10),
  .port103(R11),
  .port104(R12),
  .port105(R13),
  .port106(R14),
  .port107(R15),
  .port108(R16),
  .port109(R17),
  .port10(1'b0),
  .port11(Bus7_U45),
  .port12(Bus6_U45),
  .port13(Bus5_U45),
  .port14(Bus4_U45),
  .port15(Bus3_U45),
  .port16(Bus2_U45),
  .port17(Bus1_U45),
  .port18(Bus0_U45),
  .port19(CTRLREG1BUSOE),
  .port20(VCC),
  .port21(U45_a_noe),
  .port22(U45_b_noe),
  .port111(Bus7),
  .port112(Bus6),
  .port113(Bus5),
  .port114(Bus4),
  .port115(Bus3),
  .port116(Bus2),
  .port117(Bus1),
  .port118(Bus0)
);

ic74x540 inst_U46 (
  .port1(L4),
  .port2(R00),
  .port3(R01),
  .port4(R02),
  .port5(R03),
  .port6(R04),
  .port7(R05),
  .port8(R06),
  .port9(R07),
  .port10(1'b0),
  .port11(N164915101),
  .port12(N1649164616),
  .port13(N1649164615),
  .port14(N1649164614),
  .port15(N1649164613),
  .port16(N1649164612),
  .port17(N164915341),
  .port18(N1649164610),
  .port19(L4),
  .port20(VCC)
);

ic74x540 inst_U47 (
  .port1(L4),
  .port2(R10),
  .port3(R11),
  .port4(R12),
  .port5(R13),
  .port6(R14),
  .port7(R15),
  .port8(R16),
  .port9(R17),
  .port10(1'b0),
  .port11(N164924951),
  .port12(N1649277116),
  .port13(N164926711),
  .port14(N164925351),
  .port15(N1649277113),
  .port16(N164926471),
  .port17(N164925591),
  .port18(N164924591),
  .port19(L4),
  .port20(VCC)
);

ic74x04 inst_U48 (
  .port1(CTRLMEMINSTRIMMTORAMADDR),
  .port2(INSTRIMM1SELECT),
  .port3(IOCE_SRC),
  .port4(RAMCE_SRC),
  .port5(N14959801),
  .port6(INSTRIMM1TORAM),
  .port7(1'b0),
  .port8(N664486),
  .port9(CTRLMEMPCFROMIMM),
  .port10(N16843155),
  .port11(CTRLMEMPCTORAM),
  .port12(MAR1TORAM),
  .port13(N14977874),
  .port14(VCC)
);

ic74x245 inst_U49 (
  .port1(H1),
  .port102(RAM2DATA0),
  .port103(RAM2DATA1),
  .port104(RAM2DATA2),
  .port105(RAM2DATA3),
  .port106(RAM2DATA4),
  .port107(RAM2DATA5),
  .port108(RAM2DATA6),
  .port109(RAM2DATA7),
  .port10(1'b0),
  .port11(PCIN15_U49),
  .port12(PCIN14_U49),
  .port13(PCIN13_U49),
  .port14(PCIN12_U49),
  .port15(PCIN11_U49),
  .port16(PCIN10_U49),
  .port17(PCIN9_U49),
  .port18(PCIN8_U49),
  .port19(CTRLMEMPCFROMIMM),
  .port20(VCC),
  .port21(U49_a_noe),
  .port22(U49_b_noe),
  .port111(PCIN15),
  .port112(PCIN14),
  .port113(PCIN13),
  .port114(PCIN12),
  .port115(PCIN11),
  .port116(PCIN10),
  .port117(PCIN9),
  .port118(PCIN8)
);

ic74x245 inst_U50 (
  .port1(H1),
  .port102(INSTRIMM8),
  .port103(INSTRIMM9),
  .port104(INSTRIMM10),
  .port105(INSTRIMM11),
  .port106(INSTRIMM12),
  .port107(INSTRIMM13),
  .port108(INSTRIMM14),
  .port109(INSTRIMM15),
  .port10(1'b0),
  .port11(PCIN15_U50),
  .port12(PCIN14_U50),
  .port13(PCIN13_U50),
  .port14(PCIN12_U50),
  .port15(PCIN11_U50),
  .port16(PCIN10_U50),
  .port17(PCIN9_U50),
  .port18(PCIN8_U50),
  .port19(N664486),
  .port20(VCC),
  .port21(U50_a_noe),
  .port22(U50_b_noe),
  .port111(PCIN15),
  .port112(PCIN14),
  .port113(PCIN13),
  .port114(PCIN12),
  .port115(PCIN11),
  .port116(PCIN10),
  .port117(PCIN9),
  .port118(PCIN8)
);

ic74x245 inst_U51 (
  .port1(H1),
  .port102(Bus0),
  .port103(Bus1),
  .port104(Bus2),
  .port105(Bus3),
  .port106(Bus4),
  .port107(Bus5),
  .port108(Bus6),
  .port109(Bus7),
  .port10(1'b0),
  .port11(PCIN7_U51),
  .port12(PCIN6_U51),
  .port13(PCIN5_U51),
  .port14(PCIN4_U51),
  .port15(PCIN3_U51),
  .port16(PCIN2_U51),
  .port17(PCIN1_U51),
  .port18(PCIN0_U51),
  .port19(CTRLMEMPCFROMIMM),
  .port20(VCC),
  .port21(U51_a_noe),
  .port22(U51_b_noe),
  .port111(PCIN7),
  .port112(PCIN6),
  .port113(PCIN5),
  .port114(PCIN4),
  .port115(PCIN3),
  .port116(PCIN2),
  .port117(PCIN1),
  .port118(PCIN0)
);

ic74x245 inst_U52 (
  .port1(H1),
  .port102(INSTRIMM0),
  .port103(INSTRIMM1),
  .port104(INSTRIMM2),
  .port105(INSTRIMM3),
  .port106(INSTRIMM4),
  .port107(INSTRIMM5),
  .port108(INSTRIMM6),
  .port109(INSTRIMM7),
  .port10(1'b0),
  .port11(PCIN7_U52),
  .port12(PCIN6_U52),
  .port13(PCIN5_U52),
  .port14(PCIN4_U52),
  .port15(PCIN3_U52),
  .port16(PCIN2_U52),
  .port17(PCIN1_U52),
  .port18(PCIN0_U52),
  .port19(N664486),
  .port20(VCC),
  .port21(U52_a_noe),
  .port22(U52_b_noe),
  .port111(PCIN7),
  .port112(PCIN6),
  .port113(PCIN5),
  .port114(PCIN4),
  .port115(PCIN3),
  .port116(PCIN2),
  .port117(PCIN1),
  .port118(PCIN0)
);

ic74x521 inst_U53 (
  .port1(BREAKPOINTENABLE),
  .port2(PC0),
  .port3(BRKPT0),
  .port4(PC1),
  .port5(BRKPT1),
  .port6(PC2),
  .port7(BRKPT2),
  .port8(PC3),
  .port9(BRKPT3),
  .port10(1'b0),
  .port11(PC4),
  .port12(BRKPT4),
  .port13(PC5),
  .port14(BRKPT5),
  .port15(PC6),
  .port16(BRKPT6),
  .port17(PC7),
  .port18(BRKPT7),
  .port19(N14931877),
  .port20(VCC)
);

ic74x867 inst_U54 (
  .port1(N659290),
  .port2(RESET1),
  .port3(PCIN0),
  .port4(PCIN1),
  .port5(PCIN2),
  .port6(PCIN3),
  .port7(PCIN4),
  .port8(PCIN5),
  .port9(PCIN6),
  .port10(PCIN7),
  .port11(L1),
  .port12(1'b0),
  .port13(N658208),
  .port14(CLK1),
  .port15(PC7),
  .port16(PC6),
  .port17(PC5),
  .port18(PC4),
  .port19(PC3),
  .port20(PC2),
  .port21(PC1),
  .port22(PC0),
  .port23(PCEN),
  .port24(VCC)
);

ic74x867 inst_U55 (
  .port1(N659290),
  .port2(RESET1),
  .port3(PCIN8),
  .port4(PCIN9),
  .port5(PCIN10),
  .port6(PCIN11),
  .port7(PCIN12),
  .port8(PCIN13),
  .port9(PCIN14),
  .port10(PCIN15),
  .port11(N658208),
  .port12(1'b0),
  .port13(unconnected_U55_13),
  .port14(CLK1),
  .port15(PC15),
  .port16(PC14),
  .port17(PC13),
  .port18(PC12),
  .port19(PC11),
  .port20(PC10),
  .port21(PC9),
  .port22(PC8),
  .port23(PCEN),
  .port24(VCC)
);

ic74x867 inst_U56 (
  .port1(RESET1),
  .port2(N14944613),
  .port3(L2),
  .port4(L2),
  .port5(L2),
  .port6(L2),
  .port7(L2),
  .port8(L2),
  .port9(L2),
  .port10(L2),
  .port11(L2),
  .port12(1'b0),
  .port13(unconnected_U56_13),
  .port14(CLK1),
  .port15(SP7),
  .port16(SP6),
  .port17(SP5),
  .port18(SP4),
  .port19(SP3),
  .port20(SP2),
  .port21(SP1),
  .port22(SP0),
  .port23(SPEN),
  .port24(VCC)
);

ic74x540 inst_U57 (
  .port1(L1),
  .port2(PC0),
  .port3(PC1),
  .port4(PC2),
  .port5(PC3),
  .port6(PC4),
  .port7(PC5),
  .port8(PC6),
  .port9(PC7),
  .port10(1'b0),
  .port11(N164149951),
  .port12(N1641527516),
  .port13(N1641527515),
  .port14(N1641527514),
  .port15(N1641527513),
  .port16(N1641527512),
  .port17(N1641527511),
  .port18(N1641527510),
  .port19(L1),
  .port20(VCC)
);

ic74x540 inst_U58 (
  .port1(L1),
  .port2(PC8),
  .port3(PC9),
  .port4(PC10),
  .port5(PC11),
  .port6(PC12),
  .port7(PC13),
  .port8(PC14),
  .port9(PC15),
  .port10(1'b0),
  .port11(N164174411),
  .port12(N1641764916),
  .port13(N1641764915),
  .port14(N1641764914),
  .port15(N1641764913),
  .port16(N164174651),
  .port17(N164175531),
  .port18(N1641764910),
  .port19(L1),
  .port20(VCC)
);

ic74x08 inst_U59 (
  .port1(N16861338),
  .port2(CTRLINSTRFINISHED),
  .port3(N16861519),
  .port4(N16435318),
  .port5(CTRLINSTRFINISHED),
  .port6(N16861558),
  .port7(1'b0),
  .port8(N16861604),
  .port9(N16435404),
  .port10(CTRLINSTRFINISHED),
  .port11(N16435728),
  .port12(MC_A0),
  .port13(MC_A1),
  .port14(VCC)
);

ic74x521 inst_U60 (
  .port1(N14931877),
  .port2(PC8),
  .port3(BRKPT8),
  .port4(PC9),
  .port5(BRKPT9),
  .port6(PC10),
  .port7(BRKPT10),
  .port8(PC11),
  .port9(BRKPT11),
  .port10(1'b0),
  .port11(PC12),
  .port12(BRKPT12),
  .port13(PC13),
  .port14(BRKPT13),
  .port15(PC14),
  .port16(BRKPT14),
  .port17(PC15),
  .port18(BRKPT15),
  .port19(BREAKPOINTHIT),
  .port20(VCC)
);

ic74x245 inst_U61 (
  .port1(H2),
  .port102(SP0),
  .port103(SP1),
  .port104(SP2),
  .port105(SP3),
  .port106(SP4),
  .port107(SP5),
  .port108(SP6),
  .port109(SP7),
  .port10(1'b0),
  .port11(RAMADDRESS15_U61),
  .port12(RAMADDRESS14_U61),
  .port13(RAMADDRESS13_U61),
  .port14(RAMADDRESS12_U61),
  .port15(RAMADDRESS11_U61),
  .port16(RAMADDRESS10_U61),
  .port17(RAMADDRESS9_U61),
  .port18(RAMADDRESS8_U61),
  .port19(SELECTSTACKMEM),
  .port20(VCC),
  .port21(U61_a_noe),
  .port22(U61_b_noe),
  .port111(RAMADDRESS15),
  .port112(RAMADDRESS14),
  .port113(RAMADDRESS13),
  .port114(RAMADDRESS12),
  .port115(RAMADDRESS11),
  .port116(RAMADDRESS10),
  .port117(RAMADDRESS9),
  .port118(RAMADDRESS8)
);

ic28C256 inst_U62 (
  .port1(PC14),
  .port2(PC12),
  .port3(PC7),
  .port4(PC6),
  .port5(PC5),
  .port6(PC4),
  .port7(PC3),
  .port8(PC2),
  .port9(PC1),
  .port10(PC0),
  .port11(INSTR_UNREG0_SRC),
  .port12(INSTR_UNREG1_SRC),
  .port13(INSTR_UNREG2_SRC),
  .port14(1'b0),
  .port15(INSTR_UNREG3_SRC),
  .port16(INSTR_UNREG4_SRC),
  .port17(INSTR_UNREG5_SRC),
  .port18(INSTR_UNREG6_SRC),
  .port19(INSTR_UNREG7_SRC),
  .port20(L1),
  .port21(PC10),
  .port22(L1),
  .port23(PC11),
  .port24(PC9),
  .port25(PC8),
  .port26(PC13),
  .port27(H1),
  .port28(VCC)
);

ic74x825 inst_U63 (
  .port1(CTRLMEMINSTRIMMTORAMADDR),
  .port2(L2),
  .port3(Bus0),
  .port4(Bus1),
  .port5(Bus2),
  .port6(Bus3),
  .port7(Bus4),
  .port8(Bus5),
  .port9(Bus6),
  .port10(Bus7),
  .port11(RESET1),
  .port12(1'b0),
  .port13(CLK1),
  .port14(CTRLMEMMAR0WE),
  .port15(RAMADDRESS7_U63),
  .port16(RAMADDRESS6_U63),
  .port17(RAMADDRESS5_U63),
  .port18(RAMADDRESS4_U63),
  .port19(RAMADDRESS3_U63),
  .port20(RAMADDRESS2_U63),
  .port21(RAMADDRESS1_U63),
  .port22(RAMADDRESS0_U63),
  .port23(L2),
  .port24(VCC),
  .port25(U63_noe)
);

ic74x825 inst_U64 (
  .port1(L1),
  .port2(L1),
  .port3(INSTR_UNREG0),
  .port4(INSTR_UNREG1),
  .port5(INSTR_UNREG2),
  .port6(INSTR_UNREG3),
  .port7(INSTR_UNREG4),
  .port8(INSTR_UNREG5),
  .port9(INSTR_UNREG6),
  .port10(INSTR_UNREG7),
  .port11(RESET1),
  .port12(1'b0),
  .port13(CLK1),
  .port14(CTRLMEMINSTRWE),
  .port15(INSTR7_U64),
  .port16(INSTR6_U64),
  .port17(INSTR5_U64),
  .port18(INSTR4_U64),
  .port19(INSTR3_U64),
  .port20(INSTR2_U64),
  .port21(INSTR1_U64),
  .port22(INSTR0_U64),
  .port23(L1),
  .port24(VCC),
  .port25(U64_noe)
);

ic74x245 inst_U65 (
  .port1(H2),
  .port102(INSTRIMM0),
  .port103(INSTRIMM1),
  .port104(INSTRIMM2),
  .port105(INSTRIMM3),
  .port106(INSTRIMM4),
  .port107(INSTRIMM5),
  .port108(INSTRIMM6),
  .port109(INSTRIMM7),
  .port10(1'b0),
  .port11(RAMADDRESS7_U65),
  .port12(RAMADDRESS6_U65),
  .port13(RAMADDRESS5_U65),
  .port14(RAMADDRESS4_U65),
  .port15(RAMADDRESS3_U65),
  .port16(RAMADDRESS2_U65),
  .port17(RAMADDRESS1_U65),
  .port18(RAMADDRESS0_U65),
  .port19(INSTRIMM1SELECT),
  .port20(VCC),
  .port21(U65_a_noe),
  .port22(U65_b_noe),
  .port111(RAMADDRESS7),
  .port112(RAMADDRESS6),
  .port113(RAMADDRESS5),
  .port114(RAMADDRESS4),
  .port115(RAMADDRESS3),
  .port116(RAMADDRESS2),
  .port117(RAMADDRESS1),
  .port118(RAMADDRESS0)
);

ic74x245 inst_U66 (
  .port1(H2),
  .port102(INSTRIMM8),
  .port103(INSTRIMM9),
  .port104(INSTRIMM10),
  .port105(INSTRIMM11),
  .port106(INSTRIMM12),
  .port107(INSTRIMM13),
  .port108(INSTRIMM14),
  .port109(INSTRIMM15),
  .port10(1'b0),
  .port11(RAMADDRESS15_U66),
  .port12(RAMADDRESS14_U66),
  .port13(RAMADDRESS13_U66),
  .port14(RAMADDRESS12_U66),
  .port15(RAMADDRESS11_U66),
  .port16(RAMADDRESS10_U66),
  .port17(RAMADDRESS9_U66),
  .port18(RAMADDRESS8_U66),
  .port19(INSTRIMM1TORAM),
  .port20(VCC),
  .port21(U66_a_noe),
  .port22(U66_b_noe),
  .port111(RAMADDRESS15),
  .port112(RAMADDRESS14),
  .port113(RAMADDRESS13),
  .port114(RAMADDRESS12),
  .port115(RAMADDRESS11),
  .port116(RAMADDRESS10),
  .port117(RAMADDRESS9),
  .port118(RAMADDRESS8)
);

ic28C256 inst_U67 (
  .port1(PC14),
  .port2(PC12),
  .port3(PC7),
  .port4(PC6),
  .port5(PC5),
  .port6(PC4),
  .port7(PC3),
  .port8(PC2),
  .port9(PC1),
  .port10(PC0),
  .port11(INSTRIMM_UNREG0_SRC),
  .port12(INSTRIMM_UNREG1_SRC),
  .port13(INSTRIMM_UNREG2_SRC),
  .port14(1'b0),
  .port15(INSTRIMM_UNREG3_SRC),
  .port16(INSTRIMM_UNREG4_SRC),
  .port17(INSTRIMM_UNREG5_SRC),
  .port18(INSTRIMM_UNREG6_SRC),
  .port19(INSTRIMM_UNREG7_SRC),
  .port20(L1),
  .port21(PC10),
  .port22(L1),
  .port23(PC11),
  .port24(PC9),
  .port25(PC8),
  .port26(PC13),
  .port27(H1),
  .port28(VCC)
);

ic74x825 inst_U68 (
  .port1(L2),
  .port2(L2),
  .port3(Bus0),
  .port4(Bus1),
  .port5(Bus2),
  .port6(Bus3),
  .port7(Bus4),
  .port8(Bus5),
  .port9(Bus6),
  .port10(Bus7),
  .port11(RESET1),
  .port12(1'b0),
  .port13(CLK1),
  .port14(CTRLMEMMAR1WE),
  .port15(MAR15_U68),
  .port16(MAR14_U68),
  .port17(MAR13_U68),
  .port18(MAR12_U68),
  .port19(MAR11_U68),
  .port20(MAR10_U68),
  .port21(MAR9_U68),
  .port22(MAR8_U68),
  .port23(L2),
  .port24(VCC),
  .port25(U68_noe)
);

ic28C256 inst_U69 (
  .port1(PC14),
  .port2(PC12),
  .port3(PC7),
  .port4(PC6),
  .port5(PC5),
  .port6(PC4),
  .port7(PC3),
  .port8(PC2),
  .port9(PC1),
  .port10(PC0),
  .port11(INSTRIMM_UNREG8_SRC),
  .port12(INSTRIMM_UNREG9_SRC),
  .port13(INSTRIMM_UNREG10_SRC),
  .port14(1'b0),
  .port15(INSTRIMM_UNREG11_SRC),
  .port16(INSTRIMM_UNREG12_SRC),
  .port17(INSTRIMM_UNREG13_SRC),
  .port18(INSTRIMM_UNREG14_SRC),
  .port19(INSTRIMM_UNREG15_SRC),
  .port20(L1),
  .port21(PC10),
  .port22(L1),
  .port23(PC11),
  .port24(PC9),
  .port25(PC8),
  .port26(PC13),
  .port27(H1),
  .port28(VCC)
);

ic74x825 inst_U70 (
  .port1(L1),
  .port2(L1),
  .port3(INSTRIMM_UNREG0),
  .port4(INSTRIMM_UNREG1),
  .port5(INSTRIMM_UNREG2),
  .port6(INSTRIMM_UNREG3),
  .port7(INSTRIMM_UNREG4),
  .port8(INSTRIMM_UNREG5),
  .port9(INSTRIMM_UNREG6),
  .port10(INSTRIMM_UNREG7),
  .port11(RESET1),
  .port12(1'b0),
  .port13(CLK1),
  .port14(CTRLMEMINSTRWE),
  .port15(INSTRIMM7_U70),
  .port16(INSTRIMM6_U70),
  .port17(INSTRIMM5_U70),
  .port18(INSTRIMM4_U70),
  .port19(INSTRIMM3_U70),
  .port20(INSTRIMM2_U70),
  .port21(INSTRIMM1_U70),
  .port22(INSTRIMM0_U70),
  .port23(L1),
  .port24(VCC),
  .port25(U70_noe)
);

ic74x825 inst_U71 (
  .port1(L1),
  .port2(L1),
  .port3(INSTRIMM_UNREG8),
  .port4(INSTRIMM_UNREG9),
  .port5(INSTRIMM_UNREG10),
  .port6(INSTRIMM_UNREG11),
  .port7(INSTRIMM_UNREG12),
  .port8(INSTRIMM_UNREG13),
  .port9(INSTRIMM_UNREG14),
  .port10(INSTRIMM_UNREG15),
  .port11(RESET1),
  .port12(1'b0),
  .port13(CLK1),
  .port14(CTRLMEMINSTRWE),
  .port15(INSTRIMM15_U71),
  .port16(INSTRIMM14_U71),
  .port17(INSTRIMM13_U71),
  .port18(INSTRIMM12_U71),
  .port19(INSTRIMM11_U71),
  .port20(INSTRIMM10_U71),
  .port21(INSTRIMM9_U71),
  .port22(INSTRIMM8_U71),
  .port23(L1),
  .port24(VCC),
  .port25(U71_noe)
);

ic74x245 inst_U72 (
  .port1(H2),
  .port102(MAR8),
  .port103(MAR9),
  .port104(MAR10),
  .port105(MAR11),
  .port106(MAR12),
  .port107(MAR13),
  .port108(MAR14),
  .port109(MAR15),
  .port10(1'b0),
  .port11(RAMADDRESS15_U72),
  .port12(RAMADDRESS14_U72),
  .port13(RAMADDRESS13_U72),
  .port14(RAMADDRESS12_U72),
  .port15(RAMADDRESS11_U72),
  .port16(RAMADDRESS10_U72),
  .port17(RAMADDRESS9_U72),
  .port18(RAMADDRESS8_U72),
  .port19(MAR1TORAM),
  .port20(VCC),
  .port21(U72_a_noe),
  .port22(U72_b_noe),
  .port111(RAMADDRESS15),
  .port112(RAMADDRESS14),
  .port113(RAMADDRESS13),
  .port114(RAMADDRESS12),
  .port115(RAMADDRESS11),
  .port116(RAMADDRESS10),
  .port117(RAMADDRESS9),
  .port118(RAMADDRESS8)
);

ic74x245 inst_U73 (
  .port1(H2),
  .port102(MAR8),
  .port103(MAR9),
  .port104(MAR10),
  .port105(MAR11),
  .port106(MAR12),
  .port107(MAR13),
  .port108(MAR14),
  .port109(MAR15),
  .port10(1'b0),
  .port11(SELECT7_U73),
  .port12(SELECT6_U73),
  .port13(SELECT5_U73),
  .port14(SELECT4_U73),
  .port15(SELECT3_U73),
  .port16(SELECT2_U73),
  .port17(SELECT1_U73),
  .port18(SELECT0_U73),
  .port19(CTRLMEMINSTRIMMTORAMADDR),
  .port20(VCC),
  .port21(U73_a_noe),
  .port22(U73_b_noe),
  .port111(SELECT7),
  .port112(SELECT6),
  .port113(SELECT5),
  .port114(SELECT4),
  .port115(SELECT3),
  .port116(SELECT2),
  .port117(SELECT1),
  .port118(SELECT0)
);

ic74x245 inst_U74 (
  .port1(H2),
  .port102(INSTRIMM8),
  .port103(INSTRIMM9),
  .port104(INSTRIMM10),
  .port105(INSTRIMM11),
  .port106(INSTRIMM12),
  .port107(INSTRIMM13),
  .port108(INSTRIMM14),
  .port109(INSTRIMM15),
  .port10(1'b0),
  .port11(SELECT7_U74),
  .port12(SELECT6_U74),
  .port13(SELECT5_U74),
  .port14(SELECT4_U74),
  .port15(SELECT3_U74),
  .port16(SELECT2_U74),
  .port17(SELECT1_U74),
  .port18(SELECT0_U74),
  .port19(INSTRIMM1SELECT),
  .port20(VCC),
  .port21(U74_a_noe),
  .port22(U74_b_noe),
  .port111(SELECT7),
  .port112(SELECT6),
  .port113(SELECT5),
  .port114(SELECT4),
  .port115(SELECT3),
  .port116(SELECT2),
  .port117(SELECT1),
  .port118(SELECT0)
);

ic74x245 inst_U75 (
  .port1(H1),
  .port102(INSTRIMM0),
  .port103(INSTRIMM1),
  .port104(INSTRIMM2),
  .port105(INSTRIMM3),
  .port106(INSTRIMM4),
  .port107(INSTRIMM5),
  .port108(INSTRIMM6),
  .port109(INSTRIMM7),
  .port10(1'b0),
  .port11(Bus7_U75),
  .port12(Bus6_U75),
  .port13(Bus5_U75),
  .port14(Bus4_U75),
  .port15(Bus3_U75),
  .port16(Bus2_U75),
  .port17(Bus1_U75),
  .port18(Bus0_U75),
  .port19(CTRLMEMINSTROE),
  .port20(VCC),
  .port21(U75_a_noe),
  .port22(U75_b_noe),
  .port111(Bus7),
  .port112(Bus6),
  .port113(Bus5),
  .port114(Bus4),
  .port115(Bus3),
  .port116(Bus2),
  .port117(Bus1),
  .port118(Bus0)
);

ic74x521 inst_U76 (
  .port1(L2),
  .port2(SELECT0),
  .port3(H2),
  .port4(SELECT1),
  .port5(H2),
  .port6(SELECT2),
  .port7(H2),
  .port8(SELECT3),
  .port9(H2),
  .port10(1'b0),
  .port11(SELECT4),
  .port12(H2),
  .port13(SELECT5),
  .port14(H2),
  .port15(SELECT6),
  .port16(H2),
  .port17(SELECT7),
  .port18(H2),
  .port19(SELECTSTACKMEM_SRC),
  .port20(VCC)
);

icAS6C4008 inst_U77 (
  .port1(L2),
  .port2(SELECTSTACKMEM_BUF),
  .port3(RAMADDRESS_BUF14),
  .port4(RAMADDRESS_BUF12),
  .port5(RAMADDRESS_BUF7),
  .port6(RAMADDRESS_BUF6),
  .port7(RAMADDRESS_BUF5),
  .port8(RAMADDRESS_BUF4),
  .port9(RAMADDRESS_BUF3),
  .port10(RAMADDRESS_BUF2),
  .port11(RAMADDRESS_BUF1),
  .port12(RAMADDRESS_BUF0),
  .port13(BUS_BUF0_U77),
  .port14(BUS_BUF1_U77),
  .port15(BUS_BUF2_U77),
  .port16(1'b0),
  .port17(BUS_BUF3_U77),
  .port18(BUS_BUF4_U77),
  .port19(BUS_BUF5_U77),
  .port20(BUS_BUF6_U77),
  .port21(BUS_BUF7_U77),
  .port22(RAMCE_BUF),
  .port23(RAMADDRESS_BUF10),
  .port24(CTRLMEMRAMOE_BUF),
  .port25(RAMADDRESS_BUF11),
  .port26(RAMADDRESS_BUF9),
  .port27(RAMADDRESS_BUF8),
  .port28(RAMADDRESS_BUF13),
  .port29(CTRLMEMRAMWE_BUF),
  .port30(L2),
  .port31(RAMADDRESS_BUF15),
  .port32(VCC),
  .port33(U77_noe),
  .port34(i_asyncRamSpecialClock),
  .port113(BUS_BUF0),
  .port114(BUS_BUF1),
  .port115(BUS_BUF2),
  .port117(BUS_BUF3),
  .port118(BUS_BUF4),
  .port119(BUS_BUF5),
  .port120(BUS_BUF6),
  .port121(BUS_BUF7)
);

ic74x521 inst_U79 (
  .port1(L2),
  .port2(SELECT0),
  .port3(L2),
  .port4(SELECT1),
  .port5(H2),
  .port6(SELECT2),
  .port7(H2),
  .port8(SELECT3),
  .port9(H2),
  .port10(1'b0),
  .port11(SELECT4),
  .port12(H2),
  .port13(SELECT5),
  .port14(H2),
  .port15(SELECT6),
  .port16(H2),
  .port17(SELECT7),
  .port18(H2),
  .port19(IOCE_SRC),
  .port20(VCC)
);

ic74x86 inst_U81 (
  .port1(N16512191),
  .port2(FLAG_C),
  .port3(FLAG_V),
  .port4(H1),
  .port5(MC_A0),
  .port6(N16861338),
  .port7(1'b0),
  .port8(N16435404),
  .port9(MC_A2),
  .port10(N16435728),
  .port11(N16435318),
  .port12(MC_A0),
  .port13(MC_A1),
  .port14(VCC)
);

ic74x825 inst_U83 (
  .port1(L3),
  .port2(L3),
  .port3(FLAGNEGATIVE),
  .port4(FLAGZERO),
  .port5(FLAGCARRY),
  .port6(FLAGOVERFLOW),
  .port7(H3),
  .port8(N16861519),
  .port9(N16861558),
  .port10(N16861604),
  .port11(RESET1),
  .port12(1'b0),
  .port13(CLK1),
  .port14(HALT),
  .port15(MC_A2_U83),
  .port16(MC_A1_U83),
  .port17(MC_A0_U83),
  .port18(unconnected_U83_18_U83),
  .port19(MC_A14_U83),
  .port20(MC_A13_U83),
  .port21(MC_A12_U83),
  .port22(MC_A11_U83),
  .port23(L3),
  .port24(VCC),
  .port25(U83_noe)
);

ic74x374 inst_U84 (
  .port1(L3),
  .port2(CTRLALUSUB_SRC),
  .port3(INSTR0),
  .port4(INSTR1),
  .port5(CTRLALUOP0_SRC),
  .port6(CTRLALUOP1_SRC),
  .port7(INSTR2),
  .port8(INSTR3),
  .port9(MC_A6),
  .port10(1'b0),
  .port11(CLK1),
  .port12(MC_A7),
  .port13(INSTR4),
  .port14(INSTR5),
  .port15(MC_A8),
  .port16(MC_A9),
  .port17(INSTR6),
  .port18(INSTR7),
  .port19(MC_A10),
  .port20(VCC)
);

ic28C256 inst_U85 (
  .port1(MC_A14),
  .port2(MC_A12),
  .port3(MC_A7),
  .port4(MC_A6),
  .port5(CTRLALUOP1_SRC),
  .port6(CTRLALUOP0_SRC),
  .port7(CTRLALUSUB_SRC),
  .port8(MC_A2),
  .port9(MC_A1),
  .port10(MC_A0),
  .port11(CTRLALUYWE_SRC),
  .port12(CTRLALUOE_SRC),
  .port13(CTRLREG0WE_SRC),
  .port14(1'b0),
  .port15(CTRLREG1WE_SRC),
  .port16(CTRLREGALUSEL_SRC),
  .port17(CTRLREG0BUSOE_SRC),
  .port18(CTRLREG1BUSOE_SRC),
  .port19(CTRLMEMPCLOAD_SRC),
  .port20(L3),
  .port21(MC_A10),
  .port22(L3),
  .port23(MC_A11),
  .port24(MC_A9),
  .port25(MC_A8),
  .port26(MC_A13),
  .port27(H3),
  .port28(VCC)
);

ic28C256 inst_U86 (
  .port1(MC_A14),
  .port2(MC_A12),
  .port3(MC_A7),
  .port4(MC_A6),
  .port5(CTRLALUOP1_SRC),
  .port6(CTRLALUOP0_SRC),
  .port7(CTRLALUSUB_SRC),
  .port8(MC_A2),
  .port9(MC_A1),
  .port10(MC_A0),
  .port11(CTRLMEMSPUP_SRC),
  .port12(CTRLMEMSPEN_SRC),
  .port13(CTRLMEMINSTRWE_SRC),
  .port14(1'b0),
  .port15(CTRLMEMINSTROE_SRC),
  .port16(CTRLMEMMAR0WE_SRC),
  .port17(CTRLMEMMAR1WE_SRC),
  .port18(CTRLMEMINSTRIMMTORAMADDR_SRC),
  .port19(CTRLMEMRAMWE_SRC),
  .port20(L3),
  .port21(MC_A10),
  .port22(L3),
  .port23(MC_A11),
  .port24(MC_A9),
  .port25(MC_A8),
  .port26(MC_A13),
  .port27(H3),
  .port28(VCC)
);

ic28C256 inst_U87 (
  .port1(MC_A14),
  .port2(MC_A12),
  .port3(MC_A7),
  .port4(MC_A6),
  .port5(CTRLALUOP1_SRC),
  .port6(CTRLALUOP0_SRC),
  .port7(CTRLALUSUB_SRC),
  .port8(MC_A2),
  .port9(MC_A1),
  .port10(MC_A0),
  .port11(CTRLMEMRAMOE_SRC),
  .port12(CTRLMEMPCEN_SRC),
  .port13(CTRLMEMPCFROMIMM_SRC),
  .port14(1'b0),
  .port15(CTRLMEMPCTORAM_SRC),
  .port16(CTRLINSTRFINISHED_SRC),
  .port17(unconnected_U87_17),
  .port18(unconnected_U87_18),
  .port19(unconnected_U87_19),
  .port20(L3),
  .port21(MC_A10),
  .port22(L3),
  .port23(MC_A11),
  .port24(MC_A9),
  .port25(MC_A8),
  .port26(MC_A13),
  .port27(H3),
  .port28(VCC)
);

ic74x521 inst_U88 (
  .port1(IOCE),
  .port2(RAMADDRESS0),
  .port3(L3),
  .port4(RAMADDRESS1),
  .port5(L3),
  .port6(RAMADDRESS2),
  .port7(L3),
  .port8(RAMADDRESS3),
  .port9(L3),
  .port10(1'b0),
  .port11(RAMADDRESS4),
  .port12(L3),
  .port13(RAMADDRESS5),
  .port14(L3),
  .port15(RAMADDRESS6),
  .port16(L3),
  .port17(RAMADDRESS7),
  .port18(L3),
  .port19(N16454961),
  .port20(VCC)
);

ic74x32 inst_U89 (
  .port1(N16454961),
  .port2(CTRLMEMRAMWE),
  .port3(IO_0_WR),
  .port4(N16454961),
  .port5(CTRLMEMRAMOE),
  .port6(IO_0_RD),
  .port7(1'b0),
  .port8(unconnected_U89_8),
  .port9(H3),
  .port10(H3),
  .port11(unconnected_U89_11),
  .port12(H3),
  .port13(H3),
  .port14(VCC)
);

ic74x245 inst_U91 (
  .port1(H3),
  .port102(IN0),
  .port103(IN1),
  .port104(IN2),
  .port105(IN3),
  .port106(IN4),
  .port107(IN5),
  .port108(IN6),
  .port109(IN7),
  .port10(1'b0),
  .port11(Bus7_U91),
  .port12(Bus6_U91),
  .port13(Bus5_U91),
  .port14(Bus4_U91),
  .port15(Bus3_U91),
  .port16(Bus2_U91),
  .port17(Bus1_U91),
  .port18(Bus0_U91),
  .port19(IO_0_RD),
  .port20(VCC),
  .port21(U91_a_noe),
  .port22(U91_b_noe),
  .port111(Bus7),
  .port112(Bus6),
  .port113(Bus5),
  .port114(Bus4),
  .port115(Bus3),
  .port116(Bus2),
  .port117(Bus1),
  .port118(Bus0)
);

ic74x273 inst_U92 (
  .port1(RESET1),
  .port2(N16459199),
  .port3(Bus0),
  .port4(Bus1),
  .port5(N16459283),
  .port6(N16459367),
  .port7(Bus2),
  .port8(Bus3),
  .port9(N16459427),
  .port10(1'b0),
  .port11(IO_0_WR),
  .port12(N16459511),
  .port13(Bus4),
  .port14(Bus5),
  .port15(N16459595),
  .port16(N16459679),
  .port17(Bus6),
  .port18(Bus7),
  .port19(N16459739),
  .port20(VCC)
);

ic5082_7340 inst_U93 (
  .port1(N16459283),
  .port2(N16459367),
  .port3(N16459427),
  .port4(L3),
  .port5(L3),
  .port6(1'b0),
  .port7(VCC),
  .port8(N16459199)
);

ic5082_7340 inst_U94 (
  .port1(N16459595),
  .port2(N16459679),
  .port3(N16459739),
  .port4(L3),
  .port5(L3),
  .port6(1'b0),
  .port7(VCC),
  .port8(N16459511)
);

ic74x245 inst_U95 (
  .port1(H3),
  .port102(CLK_UNBUF),
  .port103(CLK_UNBUF),
  .port104(CLK_UNBUF),
  .port105(CLK_UNBUF),
  .port106(CLK_UNBUF),
  .port107(CLK_UNBUF),
  .port108(CLK_UNBUF),
  .port109(N16449995),
  .port10(1'b0),
  .port11(RESET1_U95),
  .port12(CLK1_U95),
  .port13(N17649455_U95),
  .port14(N17647680_U95),
  .port15(N17646046_U95),
  .port16(N17642095_U95),
  .port17(N17643531_U95),
  .port18(N17646477_U95),
  .port19(L3),
  .port20(VCC),
  .port21(U95_a_noe),
  .port22(U95_b_noe),
  .port111(RESET1),
  .port112(CLK1),
  .port113(N17649455),
  .port114(N17647680),
  .port115(N17646046),
  .port116(N17642095),
  .port117(N17643531),
  .port118(N17646477)
);

ic74x540 inst_U96 (
  .port1(L3),
  .port2(MC_A11),
  .port3(MC_A12),
  .port4(MC_A13),
  .port5(MC_A14),
  .port6(L3),
  .port7(MC_A0),
  .port8(MC_A1),
  .port9(MC_A2),
  .port10(1'b0),
  .port11(N164369361),
  .port12(N164369601),
  .port13(N164370881),
  .port14(unconnected_U96_14),
  .port15(N164369941),
  .port16(N164368901),
  .port17(N164370301),
  .port18(N1643718410),
  .port19(L3),
  .port20(VCC)
);

ic74x825 inst_U97 (
  .port1(L4),
  .port2(L4),
  .port3(ALU_OUT7),
  .port4(FLAG_Z),
  .port5(N16855171),
  .port6(FLAG_V),
  .port7(H4),
  .port8(H4),
  .port9(H4),
  .port10(H4),
  .port11(RESET1),
  .port12(1'b0),
  .port13(CLK1),
  .port14(CTRLALUYWE),
  .port15(unconnected_U97_15_U97),
  .port16(unconnected_U97_16_U97),
  .port17(unconnected_U97_17_U97),
  .port18(unconnected_U97_18_U97),
  .port19(FLAGOVERFLOW_SRC_U97),
  .port20(FLAGCARRY_SRC_U97),
  .port21(FLAGZERO_SRC_U97),
  .port22(FLAGNEGATIVE_SRC_U97),
  .port23(L4),
  .port24(VCC),
  .port25(U97_noe)
);

ic74x245 inst_U98 (
  .port1(H1),
  .port102(PC8),
  .port103(PC9),
  .port104(PC10),
  .port105(PC11),
  .port106(PC12),
  .port107(PC13),
  .port108(PC14),
  .port109(PC15),
  .port10(1'b0),
  .port11(RAM2DATA7_U98),
  .port12(RAM2DATA6_U98),
  .port13(RAM2DATA5_U98),
  .port14(RAM2DATA4_U98),
  .port15(RAM2DATA3_U98),
  .port16(RAM2DATA2_U98),
  .port17(RAM2DATA1_U98),
  .port18(RAM2DATA0_U98),
  .port19(CTRLMEMPCTORAM),
  .port20(VCC),
  .port21(U98_a_noe),
  .port22(U98_b_noe),
  .port111(RAM2DATA7),
  .port112(RAM2DATA6),
  .port113(RAM2DATA5),
  .port114(RAM2DATA4),
  .port115(RAM2DATA3),
  .port116(RAM2DATA2),
  .port117(RAM2DATA1),
  .port118(RAM2DATA0)
);

ic74x245 inst_U99 (
  .port1(H1),
  .port102(PC0),
  .port103(PC1),
  .port104(PC2),
  .port105(PC3),
  .port106(PC4),
  .port107(PC5),
  .port108(PC6),
  .port109(PC7),
  .port10(1'b0),
  .port11(Bus7_U99),
  .port12(Bus6_U99),
  .port13(Bus5_U99),
  .port14(Bus4_U99),
  .port15(Bus3_U99),
  .port16(Bus2_U99),
  .port17(Bus1_U99),
  .port18(Bus0_U99),
  .port19(CTRLMEMPCTORAM),
  .port20(VCC),
  .port21(U99_a_noe),
  .port22(U99_b_noe),
  .port111(Bus7),
  .port112(Bus6),
  .port113(Bus5),
  .port114(Bus4),
  .port115(Bus3),
  .port116(Bus2),
  .port117(Bus1),
  .port118(Bus0)
);

icAS6C4008 inst_U100 (
  .port1(L2),
  .port2(SELECTSTACKMEM_BUF),
  .port3(RAMADDRESS_BUF14),
  .port4(RAMADDRESS_BUF12),
  .port5(RAMADDRESS_BUF7),
  .port6(RAMADDRESS_BUF6),
  .port7(RAMADDRESS_BUF5),
  .port8(RAMADDRESS_BUF4),
  .port9(RAMADDRESS_BUF3),
  .port10(RAMADDRESS_BUF2),
  .port11(RAMADDRESS_BUF1),
  .port12(RAMADDRESS_BUF0),
  .port13(RAM2D0_U100),
  .port14(RAM2D1_U100),
  .port15(RAM2D2_U100),
  .port16(1'b0),
  .port17(RAM2D3_U100),
  .port18(RAM2D4_U100),
  .port19(RAM2D5_U100),
  .port20(RAM2D6_U100),
  .port21(RAM2D7_U100),
  .port22(RAMCE_BUF),
  .port23(RAMADDRESS_BUF10),
  .port24(N16843220),
  .port25(RAMADDRESS_BUF11),
  .port26(RAMADDRESS_BUF9),
  .port27(RAMADDRESS_BUF8),
  .port28(RAMADDRESS_BUF13),
  .port29(CTRLMEMRAMWE_BUF),
  .port30(L2),
  .port31(RAMADDRESS_BUF15),
  .port32(VCC),
  .port33(U100_noe),
  .port34(i_asyncRamSpecialClock),
  .port113(RAM2D0),
  .port114(RAM2D1),
  .port115(RAM2D2),
  .port117(RAM2D3),
  .port118(RAM2D4),
  .port119(RAM2D5),
  .port120(RAM2D6),
  .port121(RAM2D7)
);

ic74x151 inst_U101 (
  .port1(FLAGCSHIFT),
  .port2(FLAG_C),
  .port3(FLAG_C),
  .port4(FLAG_C),
  .port5(N16855171),
  .port6(unconnected_U101_6),
  .port7(L4),
  .port8(1'b0),
  .port9(L4),
  .port10(CTRLALUOP1),
  .port11(CTRLALUOP0),
  .port12(H4),
  .port13(H4),
  .port14(H4),
  .port15(H4),
  .port16(VCC)
);

ic74x151 inst_U102 (
  .port1(N16534742),
  .port2(N16534699),
  .port3(N16534656),
  .port4(FLAGCARRY),
  .port5(FLAGCSHIFT),
  .port6(unconnected_U102_6),
  .port7(L4),
  .port8(1'b0),
  .port9(Bus2),
  .port10(Bus1),
  .port11(Bus0),
  .port12(N16535534),
  .port13(N16535542),
  .port14(N16535538),
  .port15(N16534785),
  .port16(VCC)
);

ic74x04 inst_U104 (
  .port1(N16474977),
  .port2(FLAG_Z),
  .port3(H4),
  .port4(unconnected_U104_4),
  .port5(H4),
  .port6(unconnected_U104_6),
  .port7(1'b0),
  .port8(unconnected_U104_8),
  .port9(H4),
  .port10(unconnected_U104_10),
  .port11(H4),
  .port12(unconnected_U104_12),
  .port13(H4),
  .port14(VCC)
);

ic74x540 inst_U106 (
  .port1(L2),
  .port2(SP0),
  .port3(SP1),
  .port4(SP2),
  .port5(SP3),
  .port6(SP4),
  .port7(SP5),
  .port8(SP6),
  .port9(SP7),
  .port10(1'b0),
  .port11(N168875131),
  .port12(N1688761116),
  .port13(N1688761115),
  .port14(N1688761114),
  .port15(N1688761113),
  .port16(N1688761112),
  .port17(N168875251),
  .port18(N168875631),
  .port19(L2),
  .port20(VCC)
);

ic74x540 inst_U107 (
  .port1(L2),
  .port2(MAR8),
  .port3(MAR9),
  .port4(MAR10),
  .port5(MAR11),
  .port6(MAR12),
  .port7(MAR13),
  .port8(MAR14),
  .port9(MAR15),
  .port10(1'b0),
  .port11(N169105331),
  .port12(N169106021),
  .port13(N169105801),
  .port14(N169104971),
  .port15(N169105211),
  .port16(N169105601),
  .port17(N1691065911),
  .port18(N169105481),
  .port19(L2),
  .port20(VCC)
);

ic74x540 inst_U108 (
  .port1(L2),
  .port2(RAMADDRESS0),
  .port3(RAMADDRESS1),
  .port4(RAMADDRESS2),
  .port5(RAMADDRESS3),
  .port6(RAMADDRESS4),
  .port7(RAMADDRESS5),
  .port8(RAMADDRESS6),
  .port9(RAMADDRESS7),
  .port10(1'b0),
  .port11(N1691277017),
  .port12(N1691277016),
  .port13(N1691277015),
  .port14(N1691277014),
  .port15(N1691277013),
  .port16(N1691277012),
  .port17(N169127101),
  .port18(N1691277010),
  .port19(L2),
  .port20(VCC)
);

ic74x540 inst_U109 (
  .port1(L2),
  .port2(RAMADDRESS8),
  .port3(RAMADDRESS9),
  .port4(RAMADDRESS10),
  .port5(RAMADDRESS11),
  .port6(RAMADDRESS12),
  .port7(RAMADDRESS13),
  .port8(RAMADDRESS14),
  .port9(RAMADDRESS15),
  .port10(1'b0),
  .port11(N169178271),
  .port12(N169177831),
  .port13(N169177951),
  .port14(N1691787514),
  .port15(N1691787513),
  .port16(N169178071),
  .port17(N1691787511),
  .port18(N169177411),
  .port19(L2),
  .port20(VCC)
);

ic74x540 inst_U110 (
  .port1(L1),
  .port2(INSTRIMM0),
  .port3(INSTRIMM1),
  .port4(INSTRIMM2),
  .port5(INSTRIMM3),
  .port6(INSTRIMM4),
  .port7(INSTRIMM5),
  .port8(INSTRIMM6),
  .port9(INSTRIMM7),
  .port10(1'b0),
  .port11(N1692393517),
  .port12(N169238391),
  .port13(N1692393515),
  .port14(N169238271),
  .port15(N169238761),
  .port16(N169238541),
  .port17(N1692393511),
  .port18(N1692393510),
  .port19(L1),
  .port20(VCC)
);

ic74x540 inst_U111 (
  .port1(L1),
  .port2(INSTRIMM8),
  .port3(INSTRIMM9),
  .port4(INSTRIMM10),
  .port5(INSTRIMM11),
  .port6(INSTRIMM12),
  .port7(INSTRIMM13),
  .port8(INSTRIMM14),
  .port9(INSTRIMM15),
  .port10(1'b0),
  .port11(N1692707317),
  .port12(N169269201),
  .port13(N169270111),
  .port14(N169269491),
  .port15(N1692707313),
  .port16(N169269371),
  .port17(N169269961),
  .port18(N169270231),
  .port19(L1),
  .port20(VCC)
);

ic74x540 inst_U112 (
  .port1(L1),
  .port2(INSTR0),
  .port3(INSTR1),
  .port4(INSTR2),
  .port5(INSTR3),
  .port6(INSTR4),
  .port7(INSTR5),
  .port8(INSTR6),
  .port9(INSTR7),
  .port10(1'b0),
  .port11(N1692890117),
  .port12(N1692890116),
  .port13(N1692890115),
  .port14(N169288471),
  .port15(N169288331),
  .port16(N169288061),
  .port17(N1692890111),
  .port18(N1692890110),
  .port19(L1),
  .port20(VCC)
);

ic74x245 inst_U201 (
  .port1(CTRLMEMRAMOE),
  .port2(Bus0_U201),
  .port3(Bus1_U201),
  .port4(Bus2_U201),
  .port5(Bus3_U201),
  .port6(Bus4_U201),
  .port7(Bus5_U201),
  .port8(Bus6_U201),
  .port9(Bus7_U201),
  .port10(1'b0),
  .port11(BUS_BUF7_U201),
  .port12(BUS_BUF6_U201),
  .port13(BUS_BUF5_U201),
  .port14(BUS_BUF4_U201),
  .port15(BUS_BUF3_U201),
  .port16(BUS_BUF2_U201),
  .port17(BUS_BUF1_U201),
  .port18(BUS_BUF0_U201),
  .port19(RAMCE),
  .port20(VCC),
  .port21(U201_a_noe),
  .port22(U201_b_noe),
  .port111(BUS_BUF7),
  .port112(BUS_BUF6),
  .port113(BUS_BUF5),
  .port114(BUS_BUF4),
  .port115(BUS_BUF3),
  .port116(BUS_BUF2),
  .port117(BUS_BUF1),
  .port118(BUS_BUF0),
  .port102(Bus0),
  .port103(Bus1),
  .port104(Bus2),
  .port105(Bus3),
  .port106(Bus4),
  .port107(Bus5),
  .port108(Bus6),
  .port109(Bus7)
);

ic74x245 inst_U202 (
  .port1(H2),
  .port102(RAMADDRESS0),
  .port103(RAMADDRESS1),
  .port104(RAMADDRESS2),
  .port105(RAMADDRESS3),
  .port106(RAMADDRESS4),
  .port107(RAMADDRESS5),
  .port108(RAMADDRESS6),
  .port109(RAMADDRESS7),
  .port10(1'b0),
  .port11(RAMADDRESS_BUF7_U202),
  .port12(RAMADDRESS_BUF6_U202),
  .port13(RAMADDRESS_BUF5_U202),
  .port14(RAMADDRESS_BUF4_U202),
  .port15(RAMADDRESS_BUF3_U202),
  .port16(RAMADDRESS_BUF2_U202),
  .port17(RAMADDRESS_BUF1_U202),
  .port18(RAMADDRESS_BUF0_U202),
  .port19(L2),
  .port20(VCC),
  .port21(U202_a_noe),
  .port22(U202_b_noe),
  .port111(RAMADDRESS_BUF7),
  .port112(RAMADDRESS_BUF6),
  .port113(RAMADDRESS_BUF5),
  .port114(RAMADDRESS_BUF4),
  .port115(RAMADDRESS_BUF3),
  .port116(RAMADDRESS_BUF2),
  .port117(RAMADDRESS_BUF1),
  .port118(RAMADDRESS_BUF0)
);

ic74x245 inst_U203 (
  .port1(H2),
  .port102(RAMADDRESS8),
  .port103(RAMADDRESS9),
  .port104(RAMADDRESS10),
  .port105(RAMADDRESS11),
  .port106(RAMADDRESS12),
  .port107(RAMADDRESS13),
  .port108(RAMADDRESS14),
  .port109(RAMADDRESS15),
  .port10(1'b0),
  .port11(RAMADDRESS_BUF15_U203),
  .port12(RAMADDRESS_BUF14_U203),
  .port13(RAMADDRESS_BUF13_U203),
  .port14(RAMADDRESS_BUF12_U203),
  .port15(RAMADDRESS_BUF11_U203),
  .port16(RAMADDRESS_BUF10_U203),
  .port17(RAMADDRESS_BUF9_U203),
  .port18(RAMADDRESS_BUF8_U203),
  .port19(L2),
  .port20(VCC),
  .port21(U203_a_noe),
  .port22(U203_b_noe),
  .port111(RAMADDRESS_BUF15),
  .port112(RAMADDRESS_BUF14),
  .port113(RAMADDRESS_BUF13),
  .port114(RAMADDRESS_BUF12),
  .port115(RAMADDRESS_BUF11),
  .port116(RAMADDRESS_BUF10),
  .port117(RAMADDRESS_BUF9),
  .port118(RAMADDRESS_BUF8)
);

ic74x245 inst_U204 (
  .port1(H2),
  .port102(N16843155),
  .port103(CTRLMEMRAMOE),
  .port104(CTRLMEMRAMWE),
  .port105(SELECTSTACKMEM),
  .port106(RAMCE),
  .port107(IOCE),
  .port108(CLK1),
  .port109(RESET1),
  .port10(1'b0),
  .port11(RESET_BUF_U204),
  .port12(CLK_BUF_U204),
  .port13(IOCE_BUF_U204),
  .port14(RAMCE_BUF_U204),
  .port15(SELECTSTACKMEM_BUF_U204),
  .port16(CTRLMEMRAMWE_BUF_U204),
  .port17(CTRLMEMRAMOE_BUF_U204),
  .port18(N16843220_U204),
  .port19(L2),
  .port20(VCC),
  .port21(U204_a_noe),
  .port22(U204_b_noe),
  .port111(RESET_BUF),
  .port112(CLK_BUF),
  .port113(IOCE_BUF),
  .port114(RAMCE_BUF),
  .port115(SELECTSTACKMEM_BUF),
  .port116(CTRLMEMRAMWE_BUF),
  .port117(CTRLMEMRAMOE_BUF),
  .port118(N16843220)
);

ic74x245 inst_U205 (
  .port1(N16843155),
  .port2(RAM2DATA0_U205),
  .port3(RAM2DATA1_U205),
  .port4(RAM2DATA2_U205),
  .port5(RAM2DATA3_U205),
  .port6(RAM2DATA4_U205),
  .port7(RAM2DATA5_U205),
  .port8(RAM2DATA6_U205),
  .port9(RAM2DATA7_U205),
  .port10(1'b0),
  .port11(RAM2D7_U205),
  .port12(RAM2D6_U205),
  .port13(RAM2D5_U205),
  .port14(RAM2D4_U205),
  .port15(RAM2D3_U205),
  .port16(RAM2D2_U205),
  .port17(RAM2D1_U205),
  .port18(RAM2D0_U205),
  .port19(L2),
  .port20(VCC),
  .port21(U205_a_noe),
  .port22(U205_b_noe),
  .port111(RAM2D7),
  .port112(RAM2D6),
  .port113(RAM2D5),
  .port114(RAM2D4),
  .port115(RAM2D3),
  .port116(RAM2D2),
  .port117(RAM2D1),
  .port118(RAM2D0),
  .port102(RAM2DATA0),
  .port103(RAM2DATA1),
  .port104(RAM2DATA2),
  .port105(RAM2DATA3),
  .port106(RAM2DATA4),
  .port107(RAM2DATA5),
  .port108(RAM2DATA6),
  .port109(RAM2DATA7)
);

endmodule