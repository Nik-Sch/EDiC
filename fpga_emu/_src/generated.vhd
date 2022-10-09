
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity generated is
  port (
  
  i_clk100: in std_ulogic;

  -- clocks
  i_oszClk: in std_ulogic;
  i_asyncRamSpecialClock: in std_ulogic;
  i_asyncEEPROMSpecialClock: in std_ulogic;
  i_resetn: in std_ulogic;

  -- button controls
  -- 1 is closed, 0 is open
  i_btnStep: in std_ulogic;
  i_swInstrNCycle: in std_ulogic;
  i_swStepNRun: in std_ulogic;
  i_swEnableBreakpoint: in std_ulogic;
  i_btnReset: in std_ulogic;
  i_breakpointAddress: in std_ulogic_vector(15 downto 0);
  o_output: out std_ulogic_vector(7 downto 0);

  -- io card
  i_bus: in std_ulogic_vector(7 downto 0);
  o_bus: out std_ulogic_vector(7 downto 0);
  i_busNOE: in std_ulogic;

  o_ioNCE: out std_ulogic;
  o_ioAddress: out std_ulogic_vector(7 downto 0);
  o_ioNOE: out std_ulogic;
  o_ioNWE: out std_ulogic;

  -- fpga specific ports
  o_cathodes: out std_ulogic_vector(7 downto 0); -- dot + gfedcba
  o_anodes: out std_ulogic_vector(7 downto 0);
  i_switches: in std_ulogic_vector(7 downto 0);
  o_r0: out std_ulogic_vector(7 downto 0);
  o_r1: out std_ulogic_vector(7 downto 0)

  );
end generated;

architecture rtl of generated is

signal enableDigits, dots: std_ulogic_vector(7 downto 0);
  signal A0: std_ulogic;
  signal A0_SRC: std_ulogic;
  signal A1: std_ulogic;
  signal A1_SRC: std_ulogic;
  signal A2: std_ulogic;
  signal A2_SRC: std_ulogic;
  signal A3: std_ulogic;
  signal A3_SRC: std_ulogic;
  signal A4: std_ulogic;
  signal A4_SRC: std_ulogic;
  signal A5: std_ulogic;
  signal A5_SRC: std_ulogic;
  signal A6: std_ulogic;
  signal A6_SRC: std_ulogic;
  signal A7: std_ulogic;
  signal A7_SRC: std_ulogic;
  signal ADDER0: std_ulogic;
  signal ADDER1: std_ulogic;
  signal ADDER2: std_ulogic;
  signal ADDER3: std_ulogic;
  signal ADDER4: std_ulogic;
  signal ADDER5: std_ulogic;
  signal ADDER6: std_ulogic;
  signal ADDER7: std_ulogic;
  signal ALU_OUT0: std_ulogic;
  signal ALU_OUT0_SRC: std_ulogic;
  signal ALU_OUT1: std_ulogic;
  signal ALU_OUT1_SRC: std_ulogic;
  signal ALU_OUT2: std_ulogic;
  signal ALU_OUT2_SRC: std_ulogic;
  signal ALU_OUT3: std_ulogic;
  signal ALU_OUT3_SRC: std_ulogic;
  signal ALU_OUT4: std_ulogic;
  signal ALU_OUT4_SRC: std_ulogic;
  signal ALU_OUT5: std_ulogic;
  signal ALU_OUT5_SRC: std_ulogic;
  signal ALU_OUT6: std_ulogic;
  signal ALU_OUT6_SRC: std_ulogic;
  signal ALU_OUT7: std_ulogic;
  signal ALU_OUT7_SRC: std_ulogic;
  signal ALU_OUT_REG0: std_ulogic;
  signal ALU_OUT_REG0_U9: std_ulogic;
  signal ALU_OUT_REG0_noe: std_ulogic;
  signal ALU_OUT_REG1: std_ulogic;
  signal ALU_OUT_REG1_U9: std_ulogic;
  signal ALU_OUT_REG1_noe: std_ulogic;
  signal ALU_OUT_REG2: std_ulogic;
  signal ALU_OUT_REG2_U9: std_ulogic;
  signal ALU_OUT_REG2_noe: std_ulogic;
  signal ALU_OUT_REG3: std_ulogic;
  signal ALU_OUT_REG3_U9: std_ulogic;
  signal ALU_OUT_REG3_noe: std_ulogic;
  signal ALU_OUT_REG4: std_ulogic;
  signal ALU_OUT_REG4_U9: std_ulogic;
  signal ALU_OUT_REG4_noe: std_ulogic;
  signal ALU_OUT_REG5: std_ulogic;
  signal ALU_OUT_REG5_U9: std_ulogic;
  signal ALU_OUT_REG5_noe: std_ulogic;
  signal ALU_OUT_REG6: std_ulogic;
  signal ALU_OUT_REG6_U9: std_ulogic;
  signal ALU_OUT_REG6_noe: std_ulogic;
  signal ALU_OUT_REG7: std_ulogic;
  signal ALU_OUT_REG7_U9: std_ulogic;
  signal ALU_OUT_REG7_noe: std_ulogic;
  signal AND0: std_ulogic;
  signal AND1: std_ulogic;
  signal AND2: std_ulogic;
  signal AND3: std_ulogic;
  signal AND4: std_ulogic;
  signal AND5: std_ulogic;
  signal AND6: std_ulogic;
  signal AND7: std_ulogic;
  signal BREAKPOINTENABLE: std_ulogic;
  signal BREAKPOINTHIT: std_ulogic;
  signal BRKPT0: std_ulogic;
  signal BRKPT1: std_ulogic;
  signal BRKPT10: std_ulogic;
  signal BRKPT11: std_ulogic;
  signal BRKPT12: std_ulogic;
  signal BRKPT13: std_ulogic;
  signal BRKPT14: std_ulogic;
  signal BRKPT15: std_ulogic;
  signal BRKPT2: std_ulogic;
  signal BRKPT3: std_ulogic;
  signal BRKPT4: std_ulogic;
  signal BRKPT5: std_ulogic;
  signal BRKPT6: std_ulogic;
  signal BRKPT7: std_ulogic;
  signal BRKPT8: std_ulogic;
  signal BRKPT9: std_ulogic;
  signal BUS_BUF0: std_ulogic;
  signal BUS_BUF0_U201: std_ulogic;
  signal BUS_BUF0_U77: std_ulogic;
  signal BUS_BUF0_U91: std_ulogic;
  signal BUS_BUF0_noe: std_ulogic;
  signal BUS_BUF1: std_ulogic;
  signal BUS_BUF1_U201: std_ulogic;
  signal BUS_BUF1_U77: std_ulogic;
  signal BUS_BUF1_U91: std_ulogic;
  signal BUS_BUF1_noe: std_ulogic;
  signal BUS_BUF2: std_ulogic;
  signal BUS_BUF2_U201: std_ulogic;
  signal BUS_BUF2_U77: std_ulogic;
  signal BUS_BUF2_U91: std_ulogic;
  signal BUS_BUF2_noe: std_ulogic;
  signal BUS_BUF3: std_ulogic;
  signal BUS_BUF3_U201: std_ulogic;
  signal BUS_BUF3_U77: std_ulogic;
  signal BUS_BUF3_U91: std_ulogic;
  signal BUS_BUF3_noe: std_ulogic;
  signal BUS_BUF4: std_ulogic;
  signal BUS_BUF4_U201: std_ulogic;
  signal BUS_BUF4_U77: std_ulogic;
  signal BUS_BUF4_U91: std_ulogic;
  signal BUS_BUF4_noe: std_ulogic;
  signal BUS_BUF5: std_ulogic;
  signal BUS_BUF5_U201: std_ulogic;
  signal BUS_BUF5_U77: std_ulogic;
  signal BUS_BUF5_U91: std_ulogic;
  signal BUS_BUF5_noe: std_ulogic;
  signal BUS_BUF6: std_ulogic;
  signal BUS_BUF6_U201: std_ulogic;
  signal BUS_BUF6_U77: std_ulogic;
  signal BUS_BUF6_U91: std_ulogic;
  signal BUS_BUF6_noe: std_ulogic;
  signal BUS_BUF7: std_ulogic;
  signal BUS_BUF7_U201: std_ulogic;
  signal BUS_BUF7_U77: std_ulogic;
  signal BUS_BUF7_U91: std_ulogic;
  signal BUS_BUF7_noe: std_ulogic;
  signal Bus0: std_ulogic;
  signal Bus0_U10: std_ulogic;
  signal Bus0_U201: std_ulogic;
  signal Bus0_U44: std_ulogic;
  signal Bus0_U45: std_ulogic;
  signal Bus0_U507: std_ulogic;
  signal Bus0_U75: std_ulogic;
  signal Bus0_U99: std_ulogic;
  signal Bus0_noe: std_ulogic;
  signal Bus1: std_ulogic;
  signal Bus1_U10: std_ulogic;
  signal Bus1_U201: std_ulogic;
  signal Bus1_U44: std_ulogic;
  signal Bus1_U45: std_ulogic;
  signal Bus1_U507: std_ulogic;
  signal Bus1_U75: std_ulogic;
  signal Bus1_U99: std_ulogic;
  signal Bus1_noe: std_ulogic;
  signal Bus2: std_ulogic;
  signal Bus2_U10: std_ulogic;
  signal Bus2_U201: std_ulogic;
  signal Bus2_U44: std_ulogic;
  signal Bus2_U45: std_ulogic;
  signal Bus2_U507: std_ulogic;
  signal Bus2_U75: std_ulogic;
  signal Bus2_U99: std_ulogic;
  signal Bus2_noe: std_ulogic;
  signal Bus3: std_ulogic;
  signal Bus3_U10: std_ulogic;
  signal Bus3_U201: std_ulogic;
  signal Bus3_U44: std_ulogic;
  signal Bus3_U45: std_ulogic;
  signal Bus3_U507: std_ulogic;
  signal Bus3_U75: std_ulogic;
  signal Bus3_U99: std_ulogic;
  signal Bus3_noe: std_ulogic;
  signal Bus4: std_ulogic;
  signal Bus4_U10: std_ulogic;
  signal Bus4_U201: std_ulogic;
  signal Bus4_U44: std_ulogic;
  signal Bus4_U45: std_ulogic;
  signal Bus4_U507: std_ulogic;
  signal Bus4_U75: std_ulogic;
  signal Bus4_U99: std_ulogic;
  signal Bus4_noe: std_ulogic;
  signal Bus5: std_ulogic;
  signal Bus5_U10: std_ulogic;
  signal Bus5_U201: std_ulogic;
  signal Bus5_U44: std_ulogic;
  signal Bus5_U45: std_ulogic;
  signal Bus5_U507: std_ulogic;
  signal Bus5_U75: std_ulogic;
  signal Bus5_U99: std_ulogic;
  signal Bus5_noe: std_ulogic;
  signal Bus6: std_ulogic;
  signal Bus6_U10: std_ulogic;
  signal Bus6_U201: std_ulogic;
  signal Bus6_U44: std_ulogic;
  signal Bus6_U45: std_ulogic;
  signal Bus6_U507: std_ulogic;
  signal Bus6_U75: std_ulogic;
  signal Bus6_U99: std_ulogic;
  signal Bus6_noe: std_ulogic;
  signal Bus7: std_ulogic;
  signal Bus7_U10: std_ulogic;
  signal Bus7_U201: std_ulogic;
  signal Bus7_U44: std_ulogic;
  signal Bus7_U45: std_ulogic;
  signal Bus7_U507: std_ulogic;
  signal Bus7_U75: std_ulogic;
  signal Bus7_U99: std_ulogic;
  signal Bus7_noe: std_ulogic;
  signal CLK1: std_ulogic;
  signal CLK1_U95: std_ulogic;
  signal CLK1_noe: std_ulogic;
  signal CLK_BUF: std_ulogic;
  signal CLK_BUF_U204: std_ulogic;
  signal CLK_BUF_noe: std_ulogic;
  signal CLK_UNBUF: std_ulogic;
  signal CLK_UNBUF_SRC: std_ulogic;
  signal CTRLALUOE: std_ulogic;
  signal CTRLALUOE_SRC: std_ulogic;
  signal CTRLALUOP0: std_ulogic;
  signal CTRLALUOP0_SRC: std_ulogic;
  signal CTRLALUOP1: std_ulogic;
  signal CTRLALUOP1_SRC: std_ulogic;
  signal CTRLALUSUB: std_ulogic;
  signal CTRLALUSUB_SRC: std_ulogic;
  signal CTRLALUYWE: std_ulogic;
  signal CTRLALUYWE_SRC: std_ulogic;
  signal CTRLINSTRFINISHED: std_ulogic;
  signal CTRLINSTRFINISHED_SRC: std_ulogic;
  signal CTRLMEMINSTRIMMTORAMADDR: std_ulogic;
  signal CTRLMEMINSTRIMMTORAMADDR_SRC: std_ulogic;
  signal CTRLMEMINSTROE: std_ulogic;
  signal CTRLMEMINSTROE_SRC: std_ulogic;
  signal CTRLMEMINSTRWE: std_ulogic;
  signal CTRLMEMINSTRWE_SRC: std_ulogic;
  signal CTRLMEMMAR0WE: std_ulogic;
  signal CTRLMEMMAR0WE_SRC: std_ulogic;
  signal CTRLMEMMAR1WE: std_ulogic;
  signal CTRLMEMMAR1WE_SRC: std_ulogic;
  signal CTRLMEMPCEN: std_ulogic;
  signal CTRLMEMPCEN_SRC: std_ulogic;
  signal CTRLMEMPCFROMIMM: std_ulogic;
  signal CTRLMEMPCFROMIMM_SRC: std_ulogic;
  signal CTRLMEMPCLOAD: std_ulogic;
  signal CTRLMEMPCLOAD_SRC: std_ulogic;
  signal CTRLMEMPCTORAM: std_ulogic;
  signal CTRLMEMPCTORAM_SRC: std_ulogic;
  signal CTRLMEMRAMOE: std_ulogic;
  signal CTRLMEMRAMOE_BUF: std_ulogic;
  signal CTRLMEMRAMOE_BUF_U204: std_ulogic;
  signal CTRLMEMRAMOE_BUF_noe: std_ulogic;
  signal CTRLMEMRAMOE_SRC: std_ulogic;
  signal CTRLMEMRAMWE: std_ulogic;
  signal CTRLMEMRAMWE_BUF: std_ulogic;
  signal CTRLMEMRAMWE_BUF_U204: std_ulogic;
  signal CTRLMEMRAMWE_BUF_noe: std_ulogic;
  signal CTRLMEMRAMWE_SRC: std_ulogic;
  signal CTRLMEMSPEN: std_ulogic;
  signal CTRLMEMSPEN_SRC: std_ulogic;
  signal CTRLMEMSPUP: std_ulogic;
  signal CTRLMEMSPUP_SRC: std_ulogic;
  signal CTRLREG0BUSOE: std_ulogic;
  signal CTRLREG0BUSOE_SRC: std_ulogic;
  signal CTRLREG0WE: std_ulogic;
  signal CTRLREG0WE_SRC: std_ulogic;
  signal CTRLREG1BUSOE: std_ulogic;
  signal CTRLREG1BUSOE_SRC: std_ulogic;
  signal CTRLREG1WE: std_ulogic;
  signal CTRLREG1WE_SRC: std_ulogic;
  signal CTRLREGALUSEL: std_ulogic;
  signal CTRLREGALUSEL_SRC: std_ulogic;
  signal CTRL_INIT_FF: std_ulogic;
  signal CTRL_INIT_FF_SRC: std_ulogic;
  signal DEBUG_INSTR_CYCLEN: std_ulogic;
  signal DEBUG_STEP: std_ulogic;
  signal DEBUG_STEPRUNN: std_ulogic;
  signal FLAGCARRY: std_ulogic;
  signal FLAGCARRY_SRC: std_ulogic;
  signal FLAGCARRY_SRC_U97: std_ulogic;
  signal FLAGCARRY_SRC_noe: std_ulogic;
  signal FLAGCSHIFT: std_ulogic;
  signal FLAGNEGATIVE: std_ulogic;
  signal FLAGNEGATIVE_SRC: std_ulogic;
  signal FLAGNEGATIVE_SRC_U97: std_ulogic;
  signal FLAGNEGATIVE_SRC_noe: std_ulogic;
  signal FLAGOVERFLOW: std_ulogic;
  signal FLAGOVERFLOW_SRC: std_ulogic;
  signal FLAGOVERFLOW_SRC_U97: std_ulogic;
  signal FLAGOVERFLOW_SRC_noe: std_ulogic;
  signal FLAGZERO: std_ulogic;
  signal FLAGZERO_SRC: std_ulogic;
  signal FLAGZERO_SRC_U97: std_ulogic;
  signal FLAGZERO_SRC_noe: std_ulogic;
  signal FLAG_C: std_ulogic;
  signal FLAG_V: std_ulogic;
  signal FLAG_Z: std_ulogic;
  signal H1: std_ulogic;
  signal H2: std_ulogic;
  signal H3: std_ulogic;
  signal H4: std_ulogic;
  signal HALT: std_ulogic;
  signal HALT_SRC: std_ulogic;
  signal IN0: std_ulogic;
  signal IN1: std_ulogic;
  signal IN2: std_ulogic;
  signal IN3: std_ulogic;
  signal IN4: std_ulogic;
  signal IN5: std_ulogic;
  signal IN6: std_ulogic;
  signal IN7: std_ulogic;
  signal INSTR0: std_ulogic;
  signal INSTR0_U64: std_ulogic;
  signal INSTR0_noe: std_ulogic;
  signal INSTR1: std_ulogic;
  signal INSTR1_U64: std_ulogic;
  signal INSTR1_noe: std_ulogic;
  signal INSTR2: std_ulogic;
  signal INSTR2_U64: std_ulogic;
  signal INSTR2_noe: std_ulogic;
  signal INSTR3: std_ulogic;
  signal INSTR3_U64: std_ulogic;
  signal INSTR3_noe: std_ulogic;
  signal INSTR4: std_ulogic;
  signal INSTR4_U64: std_ulogic;
  signal INSTR4_noe: std_ulogic;
  signal INSTR5: std_ulogic;
  signal INSTR5_U64: std_ulogic;
  signal INSTR5_noe: std_ulogic;
  signal INSTR6: std_ulogic;
  signal INSTR6_U64: std_ulogic;
  signal INSTR6_noe: std_ulogic;
  signal INSTR7: std_ulogic;
  signal INSTR7_U64: std_ulogic;
  signal INSTR7_noe: std_ulogic;
  signal INSTRIMM0: std_ulogic;
  signal INSTRIMM0_U70: std_ulogic;
  signal INSTRIMM0_noe: std_ulogic;
  signal INSTRIMM1: std_ulogic;
  signal INSTRIMM10: std_ulogic;
  signal INSTRIMM10_U71: std_ulogic;
  signal INSTRIMM10_noe: std_ulogic;
  signal INSTRIMM11: std_ulogic;
  signal INSTRIMM11_U71: std_ulogic;
  signal INSTRIMM11_noe: std_ulogic;
  signal INSTRIMM12: std_ulogic;
  signal INSTRIMM12_U71: std_ulogic;
  signal INSTRIMM12_noe: std_ulogic;
  signal INSTRIMM13: std_ulogic;
  signal INSTRIMM13_U71: std_ulogic;
  signal INSTRIMM13_noe: std_ulogic;
  signal INSTRIMM14: std_ulogic;
  signal INSTRIMM14_U71: std_ulogic;
  signal INSTRIMM14_noe: std_ulogic;
  signal INSTRIMM15: std_ulogic;
  signal INSTRIMM15_U71: std_ulogic;
  signal INSTRIMM15_noe: std_ulogic;
  signal INSTRIMM1SELECT: std_ulogic;
  signal INSTRIMM1TORAM: std_ulogic;
  signal INSTRIMM1_U70: std_ulogic;
  signal INSTRIMM1_noe: std_ulogic;
  signal INSTRIMM2: std_ulogic;
  signal INSTRIMM2_U70: std_ulogic;
  signal INSTRIMM2_noe: std_ulogic;
  signal INSTRIMM3: std_ulogic;
  signal INSTRIMM3_U70: std_ulogic;
  signal INSTRIMM3_noe: std_ulogic;
  signal INSTRIMM4: std_ulogic;
  signal INSTRIMM4_U70: std_ulogic;
  signal INSTRIMM4_noe: std_ulogic;
  signal INSTRIMM5: std_ulogic;
  signal INSTRIMM5_U70: std_ulogic;
  signal INSTRIMM5_noe: std_ulogic;
  signal INSTRIMM6: std_ulogic;
  signal INSTRIMM6_U70: std_ulogic;
  signal INSTRIMM6_noe: std_ulogic;
  signal INSTRIMM7: std_ulogic;
  signal INSTRIMM7_U70: std_ulogic;
  signal INSTRIMM7_noe: std_ulogic;
  signal INSTRIMM8: std_ulogic;
  signal INSTRIMM8_U71: std_ulogic;
  signal INSTRIMM8_noe: std_ulogic;
  signal INSTRIMM9: std_ulogic;
  signal INSTRIMM9_U71: std_ulogic;
  signal INSTRIMM9_noe: std_ulogic;
  signal INSTRIMM_UNREG0: std_ulogic;
  signal INSTRIMM_UNREG0_SRC: std_ulogic;
  signal INSTRIMM_UNREG1: std_ulogic;
  signal INSTRIMM_UNREG10: std_ulogic;
  signal INSTRIMM_UNREG10_SRC: std_ulogic;
  signal INSTRIMM_UNREG11: std_ulogic;
  signal INSTRIMM_UNREG11_SRC: std_ulogic;
  signal INSTRIMM_UNREG12: std_ulogic;
  signal INSTRIMM_UNREG12_SRC: std_ulogic;
  signal INSTRIMM_UNREG13: std_ulogic;
  signal INSTRIMM_UNREG13_SRC: std_ulogic;
  signal INSTRIMM_UNREG14: std_ulogic;
  signal INSTRIMM_UNREG14_SRC: std_ulogic;
  signal INSTRIMM_UNREG15: std_ulogic;
  signal INSTRIMM_UNREG15_SRC: std_ulogic;
  signal INSTRIMM_UNREG1_SRC: std_ulogic;
  signal INSTRIMM_UNREG2: std_ulogic;
  signal INSTRIMM_UNREG2_SRC: std_ulogic;
  signal INSTRIMM_UNREG3: std_ulogic;
  signal INSTRIMM_UNREG3_SRC: std_ulogic;
  signal INSTRIMM_UNREG4: std_ulogic;
  signal INSTRIMM_UNREG4_SRC: std_ulogic;
  signal INSTRIMM_UNREG5: std_ulogic;
  signal INSTRIMM_UNREG5_SRC: std_ulogic;
  signal INSTRIMM_UNREG6: std_ulogic;
  signal INSTRIMM_UNREG6_SRC: std_ulogic;
  signal INSTRIMM_UNREG7: std_ulogic;
  signal INSTRIMM_UNREG7_SRC: std_ulogic;
  signal INSTRIMM_UNREG8: std_ulogic;
  signal INSTRIMM_UNREG8_SRC: std_ulogic;
  signal INSTRIMM_UNREG9: std_ulogic;
  signal INSTRIMM_UNREG9_SRC: std_ulogic;
  signal INSTR_UNREG0: std_ulogic;
  signal INSTR_UNREG0_SRC: std_ulogic;
  signal INSTR_UNREG1: std_ulogic;
  signal INSTR_UNREG1_SRC: std_ulogic;
  signal INSTR_UNREG2: std_ulogic;
  signal INSTR_UNREG2_SRC: std_ulogic;
  signal INSTR_UNREG3: std_ulogic;
  signal INSTR_UNREG3_SRC: std_ulogic;
  signal INSTR_UNREG4: std_ulogic;
  signal INSTR_UNREG4_SRC: std_ulogic;
  signal INSTR_UNREG5: std_ulogic;
  signal INSTR_UNREG5_SRC: std_ulogic;
  signal INSTR_UNREG6: std_ulogic;
  signal INSTR_UNREG6_SRC: std_ulogic;
  signal INSTR_UNREG7: std_ulogic;
  signal INSTR_UNREG7_SRC: std_ulogic;
  signal IOCE: std_ulogic;
  signal IOCE_BUF: std_ulogic;
  signal IOCE_BUF_U204: std_ulogic;
  signal IOCE_BUF_noe: std_ulogic;
  signal IOCE_SRC: std_ulogic;
  signal IO_0_RD: std_ulogic;
  signal IO_0_WR: std_ulogic;
  signal L1: std_ulogic;
  signal L2: std_ulogic;
  signal L3: std_ulogic;
  signal L4: std_ulogic;
  signal MAR10: std_ulogic;
  signal MAR10_U68: std_ulogic;
  signal MAR10_noe: std_ulogic;
  signal MAR11: std_ulogic;
  signal MAR11_U68: std_ulogic;
  signal MAR11_noe: std_ulogic;
  signal MAR12: std_ulogic;
  signal MAR12_U68: std_ulogic;
  signal MAR12_noe: std_ulogic;
  signal MAR13: std_ulogic;
  signal MAR13_U68: std_ulogic;
  signal MAR13_noe: std_ulogic;
  signal MAR14: std_ulogic;
  signal MAR14_U68: std_ulogic;
  signal MAR14_noe: std_ulogic;
  signal MAR15: std_ulogic;
  signal MAR15_U68: std_ulogic;
  signal MAR15_noe: std_ulogic;
  signal MAR1TORAM: std_ulogic;
  signal MAR8: std_ulogic;
  signal MAR8_U68: std_ulogic;
  signal MAR8_noe: std_ulogic;
  signal MAR9: std_ulogic;
  signal MAR9_U68: std_ulogic;
  signal MAR9_noe: std_ulogic;
  signal MC_A0: std_ulogic;
  signal MC_A0_U83: std_ulogic;
  signal MC_A0_noe: std_ulogic;
  signal MC_A1: std_ulogic;
  signal MC_A10: std_ulogic;
  signal MC_A11: std_ulogic;
  signal MC_A11_U83: std_ulogic;
  signal MC_A11_noe: std_ulogic;
  signal MC_A12: std_ulogic;
  signal MC_A12_U83: std_ulogic;
  signal MC_A12_noe: std_ulogic;
  signal MC_A13: std_ulogic;
  signal MC_A13_U83: std_ulogic;
  signal MC_A13_noe: std_ulogic;
  signal MC_A14: std_ulogic;
  signal MC_A14_U83: std_ulogic;
  signal MC_A14_noe: std_ulogic;
  signal MC_A1_U83: std_ulogic;
  signal MC_A1_noe: std_ulogic;
  signal MC_A2: std_ulogic;
  signal MC_A2_U83: std_ulogic;
  signal MC_A2_noe: std_ulogic;
  signal MC_A6: std_ulogic;
  signal MC_A7: std_ulogic;
  signal MC_A8: std_ulogic;
  signal MC_A9: std_ulogic;
  signal N14931877: std_ulogic;
  signal N14944613: std_ulogic;
  signal N14959801: std_ulogic;
  signal N14977874: std_ulogic;
  signal N164149951: std_ulogic;
  signal N1641527510: std_ulogic;
  signal N1641527511: std_ulogic;
  signal N1641527512: std_ulogic;
  signal N1641527513: std_ulogic;
  signal N1641527514: std_ulogic;
  signal N1641527515: std_ulogic;
  signal N1641527516: std_ulogic;
  signal N164174411: std_ulogic;
  signal N164174651: std_ulogic;
  signal N164175531: std_ulogic;
  signal N1641764910: std_ulogic;
  signal N1641764913: std_ulogic;
  signal N1641764914: std_ulogic;
  signal N1641764915: std_ulogic;
  signal N1641764916: std_ulogic;
  signal N16435318: std_ulogic;
  signal N16435404: std_ulogic;
  signal N16435728: std_ulogic;
  signal N164368901: std_ulogic;
  signal N164369361: std_ulogic;
  signal N164369601: std_ulogic;
  signal N164369941: std_ulogic;
  signal N164370301: std_ulogic;
  signal N164370881: std_ulogic;
  signal N1643718410: std_ulogic;
  signal N16445057: std_ulogic;
  signal N16449995: std_ulogic;
  signal N16454961: std_ulogic;
  signal N16459199: std_ulogic;
  signal N16459283: std_ulogic;
  signal N16459367: std_ulogic;
  signal N16459427: std_ulogic;
  signal N16459511: std_ulogic;
  signal N16459595: std_ulogic;
  signal N16459679: std_ulogic;
  signal N16459739: std_ulogic;
  signal N16474977: std_ulogic;
  signal N164794631: std_ulogic;
  signal N1647958910: std_ulogic;
  signal N1647958911: std_ulogic;
  signal N1647958912: std_ulogic;
  signal N1647958913: std_ulogic;
  signal N1647958914: std_ulogic;
  signal N1647958915: std_ulogic;
  signal N1647958916: std_ulogic;
  signal N164915101: std_ulogic;
  signal N164915341: std_ulogic;
  signal N1649164610: std_ulogic;
  signal N1649164612: std_ulogic;
  signal N1649164613: std_ulogic;
  signal N1649164614: std_ulogic;
  signal N1649164615: std_ulogic;
  signal N1649164616: std_ulogic;
  signal N164924591: std_ulogic;
  signal N164924951: std_ulogic;
  signal N164925351: std_ulogic;
  signal N164925591: std_ulogic;
  signal N164926471: std_ulogic;
  signal N164926711: std_ulogic;
  signal N1649277113: std_ulogic;
  signal N1649277116: std_ulogic;
  signal N164998201: std_ulogic;
  signal N164998441: std_ulogic;
  signal N164998681: std_ulogic;
  signal N164999821: std_ulogic;
  signal N165000061: std_ulogic;
  signal N165000401: std_ulogic;
  signal N165000681: std_ulogic;
  signal N165000921: std_ulogic;
  signal N16503574: std_ulogic;
  signal N16504502: std_ulogic;
  signal N16504571: std_ulogic;
  signal N16506376: std_ulogic;
  signal N16506388: std_ulogic;
  signal N16506484: std_ulogic;
  signal N16506776: std_ulogic;
  signal N16506838: std_ulogic;
  signal N16507032: std_ulogic;
  signal N16507840: std_ulogic;
  signal N16507848: std_ulogic;
  signal N16508106: std_ulogic;
  signal N16511879: std_ulogic;
  signal N16512013: std_ulogic;
  signal N16512135: std_ulogic;
  signal N16512151: std_ulogic;
  signal N16512191: std_ulogic;
  signal N16512195: std_ulogic;
  signal N16512215: std_ulogic;
  signal N16512311: std_ulogic;
  signal N16512355: std_ulogic;
  signal N16512433: std_ulogic;
  signal N16512445: std_ulogic;
  signal N16534656: std_ulogic;
  signal N16534699: std_ulogic;
  signal N16534742: std_ulogic;
  signal N16534785: std_ulogic;
  signal N16534828: std_ulogic;
  signal N16534911: std_ulogic;
  signal N16534994: std_ulogic;
  signal N16535077: std_ulogic;
  signal N16535160: std_ulogic;
  signal N16535243: std_ulogic;
  signal N16535326: std_ulogic;
  signal N16535409: std_ulogic;
  signal N16535534: std_ulogic;
  signal N16535538: std_ulogic;
  signal N16535542: std_ulogic;
  signal N16535546: std_ulogic;
  signal N16535634: std_ulogic;
  signal N16535638: std_ulogic;
  signal N16535642: std_ulogic;
  signal N16535646: std_ulogic;
  signal N16535734: std_ulogic;
  signal N16535738: std_ulogic;
  signal N16535742: std_ulogic;
  signal N16535746: std_ulogic;
  signal N16546884: std_ulogic;
  signal N16546967: std_ulogic;
  signal N16547050: std_ulogic;
  signal N16547133: std_ulogic;
  signal N16547398: std_ulogic;
  signal N16547402: std_ulogic;
  signal N16547406: std_ulogic;
  signal N16547410: std_ulogic;
  signal N16792555: std_ulogic;
  signal N16823046: std_ulogic;
  signal N16843155: std_ulogic;
  signal N16843220: std_ulogic;
  signal N16843220_U204: std_ulogic;
  signal N16843220_noe: std_ulogic;
  signal N16855171: std_ulogic;
  signal N16861338: std_ulogic;
  signal N16861519: std_ulogic;
  signal N16861558: std_ulogic;
  signal N16861604: std_ulogic;
  signal N168875131: std_ulogic;
  signal N168875251: std_ulogic;
  signal N168875631: std_ulogic;
  signal N1688761112: std_ulogic;
  signal N1688761113: std_ulogic;
  signal N1688761114: std_ulogic;
  signal N1688761115: std_ulogic;
  signal N1688761116: std_ulogic;
  signal N169104971: std_ulogic;
  signal N169105211: std_ulogic;
  signal N169105331: std_ulogic;
  signal N169105481: std_ulogic;
  signal N169105601: std_ulogic;
  signal N169105801: std_ulogic;
  signal N169106021: std_ulogic;
  signal N1691065911: std_ulogic;
  signal N169127101: std_ulogic;
  signal N1691277010: std_ulogic;
  signal N1691277012: std_ulogic;
  signal N1691277013: std_ulogic;
  signal N1691277014: std_ulogic;
  signal N1691277015: std_ulogic;
  signal N1691277016: std_ulogic;
  signal N1691277017: std_ulogic;
  signal N169177411: std_ulogic;
  signal N169177831: std_ulogic;
  signal N169177951: std_ulogic;
  signal N169178071: std_ulogic;
  signal N169178271: std_ulogic;
  signal N1691787511: std_ulogic;
  signal N1691787513: std_ulogic;
  signal N1691787514: std_ulogic;
  signal N16923056: std_ulogic;
  signal N169238271: std_ulogic;
  signal N169238391: std_ulogic;
  signal N169238541: std_ulogic;
  signal N169238761: std_ulogic;
  signal N1692393510: std_ulogic;
  signal N1692393511: std_ulogic;
  signal N1692393515: std_ulogic;
  signal N1692393517: std_ulogic;
  signal N16925459: std_ulogic;
  signal N169269201: std_ulogic;
  signal N169269371: std_ulogic;
  signal N169269491: std_ulogic;
  signal N169269961: std_ulogic;
  signal N169270111: std_ulogic;
  signal N169270231: std_ulogic;
  signal N1692707313: std_ulogic;
  signal N1692707317: std_ulogic;
  signal N169288061: std_ulogic;
  signal N169288331: std_ulogic;
  signal N169288471: std_ulogic;
  signal N1692890110: std_ulogic;
  signal N1692890111: std_ulogic;
  signal N1692890115: std_ulogic;
  signal N1692890116: std_ulogic;
  signal N1692890117: std_ulogic;
  signal N17642095: std_ulogic;
  signal N17642095_U95: std_ulogic;
  signal N17642095_noe: std_ulogic;
  signal N17642468: std_ulogic;
  signal N17642894: std_ulogic;
  signal N17643531: std_ulogic;
  signal N17643531_U95: std_ulogic;
  signal N17643531_noe: std_ulogic;
  signal N17646046: std_ulogic;
  signal N17646046_U95: std_ulogic;
  signal N17646046_noe: std_ulogic;
  signal N17646477: std_ulogic;
  signal N17646477_U95: std_ulogic;
  signal N17646477_noe: std_ulogic;
  signal N17646554: std_ulogic;
  signal N17647680: std_ulogic;
  signal N17647680_U95: std_ulogic;
  signal N17647680_noe: std_ulogic;
  signal N17649455: std_ulogic;
  signal N17649455_U95: std_ulogic;
  signal N17649455_noe: std_ulogic;
  signal N19014893: std_ulogic;
  signal N19014936: std_ulogic;
  signal N658208: std_ulogic;
  signal N659290: std_ulogic;
  signal N664486: std_ulogic;
  signal PC0: std_ulogic;
  signal PC1: std_ulogic;
  signal PC10: std_ulogic;
  signal PC11: std_ulogic;
  signal PC12: std_ulogic;
  signal PC13: std_ulogic;
  signal PC14: std_ulogic;
  signal PC15: std_ulogic;
  signal PC2: std_ulogic;
  signal PC3: std_ulogic;
  signal PC4: std_ulogic;
  signal PC5: std_ulogic;
  signal PC6: std_ulogic;
  signal PC7: std_ulogic;
  signal PC8: std_ulogic;
  signal PC9: std_ulogic;
  signal PCEN: std_ulogic;
  signal PCIN0: std_ulogic;
  signal PCIN0_U51: std_ulogic;
  signal PCIN0_U52: std_ulogic;
  signal PCIN0_noe: std_ulogic;
  signal PCIN1: std_ulogic;
  signal PCIN10: std_ulogic;
  signal PCIN10_U49: std_ulogic;
  signal PCIN10_U50: std_ulogic;
  signal PCIN10_noe: std_ulogic;
  signal PCIN11: std_ulogic;
  signal PCIN11_U49: std_ulogic;
  signal PCIN11_U50: std_ulogic;
  signal PCIN11_noe: std_ulogic;
  signal PCIN12: std_ulogic;
  signal PCIN12_U49: std_ulogic;
  signal PCIN12_U50: std_ulogic;
  signal PCIN12_noe: std_ulogic;
  signal PCIN13: std_ulogic;
  signal PCIN13_U49: std_ulogic;
  signal PCIN13_U50: std_ulogic;
  signal PCIN13_noe: std_ulogic;
  signal PCIN14: std_ulogic;
  signal PCIN14_U49: std_ulogic;
  signal PCIN14_U50: std_ulogic;
  signal PCIN14_noe: std_ulogic;
  signal PCIN15: std_ulogic;
  signal PCIN15_U49: std_ulogic;
  signal PCIN15_U50: std_ulogic;
  signal PCIN15_noe: std_ulogic;
  signal PCIN1_U51: std_ulogic;
  signal PCIN1_U52: std_ulogic;
  signal PCIN1_noe: std_ulogic;
  signal PCIN2: std_ulogic;
  signal PCIN2_U51: std_ulogic;
  signal PCIN2_U52: std_ulogic;
  signal PCIN2_noe: std_ulogic;
  signal PCIN3: std_ulogic;
  signal PCIN3_U51: std_ulogic;
  signal PCIN3_U52: std_ulogic;
  signal PCIN3_noe: std_ulogic;
  signal PCIN4: std_ulogic;
  signal PCIN4_U51: std_ulogic;
  signal PCIN4_U52: std_ulogic;
  signal PCIN4_noe: std_ulogic;
  signal PCIN5: std_ulogic;
  signal PCIN5_U51: std_ulogic;
  signal PCIN5_U52: std_ulogic;
  signal PCIN5_noe: std_ulogic;
  signal PCIN6: std_ulogic;
  signal PCIN6_U51: std_ulogic;
  signal PCIN6_U52: std_ulogic;
  signal PCIN6_noe: std_ulogic;
  signal PCIN7: std_ulogic;
  signal PCIN7_U51: std_ulogic;
  signal PCIN7_U52: std_ulogic;
  signal PCIN7_noe: std_ulogic;
  signal PCIN8: std_ulogic;
  signal PCIN8_U49: std_ulogic;
  signal PCIN8_U50: std_ulogic;
  signal PCIN8_noe: std_ulogic;
  signal PCIN9: std_ulogic;
  signal PCIN9_U49: std_ulogic;
  signal PCIN9_U50: std_ulogic;
  signal PCIN9_noe: std_ulogic;
  signal R00: std_ulogic;
  signal R00_U40: std_ulogic;
  signal R00_noe: std_ulogic;
  signal R01: std_ulogic;
  signal R01_U40: std_ulogic;
  signal R01_noe: std_ulogic;
  signal R02: std_ulogic;
  signal R02_U40: std_ulogic;
  signal R02_noe: std_ulogic;
  signal R03: std_ulogic;
  signal R03_U40: std_ulogic;
  signal R03_noe: std_ulogic;
  signal R04: std_ulogic;
  signal R04_U40: std_ulogic;
  signal R04_noe: std_ulogic;
  signal R05: std_ulogic;
  signal R05_U40: std_ulogic;
  signal R05_noe: std_ulogic;
  signal R06: std_ulogic;
  signal R06_U40: std_ulogic;
  signal R06_noe: std_ulogic;
  signal R07: std_ulogic;
  signal R07_U40: std_ulogic;
  signal R07_noe: std_ulogic;
  signal R10: std_ulogic;
  signal R10_U41: std_ulogic;
  signal R10_noe: std_ulogic;
  signal R11: std_ulogic;
  signal R11_U41: std_ulogic;
  signal R11_noe: std_ulogic;
  signal R12: std_ulogic;
  signal R12_U41: std_ulogic;
  signal R12_noe: std_ulogic;
  signal R13: std_ulogic;
  signal R13_U41: std_ulogic;
  signal R13_noe: std_ulogic;
  signal R14: std_ulogic;
  signal R14_U41: std_ulogic;
  signal R14_noe: std_ulogic;
  signal R15: std_ulogic;
  signal R15_U41: std_ulogic;
  signal R15_noe: std_ulogic;
  signal R16: std_ulogic;
  signal R16_U41: std_ulogic;
  signal R16_noe: std_ulogic;
  signal R17: std_ulogic;
  signal R17_U41: std_ulogic;
  signal R17_noe: std_ulogic;
  signal RAM2D0: std_ulogic;
  signal RAM2D0_U100: std_ulogic;
  signal RAM2D0_U205: std_ulogic;
  signal RAM2D0_noe: std_ulogic;
  signal RAM2D1: std_ulogic;
  signal RAM2D1_U100: std_ulogic;
  signal RAM2D1_U205: std_ulogic;
  signal RAM2D1_noe: std_ulogic;
  signal RAM2D2: std_ulogic;
  signal RAM2D2_U100: std_ulogic;
  signal RAM2D2_U205: std_ulogic;
  signal RAM2D2_noe: std_ulogic;
  signal RAM2D3: std_ulogic;
  signal RAM2D3_U100: std_ulogic;
  signal RAM2D3_U205: std_ulogic;
  signal RAM2D3_noe: std_ulogic;
  signal RAM2D4: std_ulogic;
  signal RAM2D4_U100: std_ulogic;
  signal RAM2D4_U205: std_ulogic;
  signal RAM2D4_noe: std_ulogic;
  signal RAM2D5: std_ulogic;
  signal RAM2D5_U100: std_ulogic;
  signal RAM2D5_U205: std_ulogic;
  signal RAM2D5_noe: std_ulogic;
  signal RAM2D6: std_ulogic;
  signal RAM2D6_U100: std_ulogic;
  signal RAM2D6_U205: std_ulogic;
  signal RAM2D6_noe: std_ulogic;
  signal RAM2D7: std_ulogic;
  signal RAM2D7_U100: std_ulogic;
  signal RAM2D7_U205: std_ulogic;
  signal RAM2D7_noe: std_ulogic;
  signal RAM2DATA0: std_ulogic;
  signal RAM2DATA0_U205: std_ulogic;
  signal RAM2DATA0_U98: std_ulogic;
  signal RAM2DATA0_noe: std_ulogic;
  signal RAM2DATA1: std_ulogic;
  signal RAM2DATA1_U205: std_ulogic;
  signal RAM2DATA1_U98: std_ulogic;
  signal RAM2DATA1_noe: std_ulogic;
  signal RAM2DATA2: std_ulogic;
  signal RAM2DATA2_U205: std_ulogic;
  signal RAM2DATA2_U98: std_ulogic;
  signal RAM2DATA2_noe: std_ulogic;
  signal RAM2DATA3: std_ulogic;
  signal RAM2DATA3_U205: std_ulogic;
  signal RAM2DATA3_U98: std_ulogic;
  signal RAM2DATA3_noe: std_ulogic;
  signal RAM2DATA4: std_ulogic;
  signal RAM2DATA4_U205: std_ulogic;
  signal RAM2DATA4_U98: std_ulogic;
  signal RAM2DATA4_noe: std_ulogic;
  signal RAM2DATA5: std_ulogic;
  signal RAM2DATA5_U205: std_ulogic;
  signal RAM2DATA5_U98: std_ulogic;
  signal RAM2DATA5_noe: std_ulogic;
  signal RAM2DATA6: std_ulogic;
  signal RAM2DATA6_U205: std_ulogic;
  signal RAM2DATA6_U98: std_ulogic;
  signal RAM2DATA6_noe: std_ulogic;
  signal RAM2DATA7: std_ulogic;
  signal RAM2DATA7_U205: std_ulogic;
  signal RAM2DATA7_U98: std_ulogic;
  signal RAM2DATA7_noe: std_ulogic;
  signal RAMADDRESS0: std_ulogic;
  signal RAMADDRESS0_U63: std_ulogic;
  signal RAMADDRESS0_U65: std_ulogic;
  signal RAMADDRESS0_noe: std_ulogic;
  signal RAMADDRESS1: std_ulogic;
  signal RAMADDRESS10: std_ulogic;
  signal RAMADDRESS10_U61: std_ulogic;
  signal RAMADDRESS10_U66: std_ulogic;
  signal RAMADDRESS10_U72: std_ulogic;
  signal RAMADDRESS10_noe: std_ulogic;
  signal RAMADDRESS11: std_ulogic;
  signal RAMADDRESS11_U61: std_ulogic;
  signal RAMADDRESS11_U66: std_ulogic;
  signal RAMADDRESS11_U72: std_ulogic;
  signal RAMADDRESS11_noe: std_ulogic;
  signal RAMADDRESS12: std_ulogic;
  signal RAMADDRESS12_U61: std_ulogic;
  signal RAMADDRESS12_U66: std_ulogic;
  signal RAMADDRESS12_U72: std_ulogic;
  signal RAMADDRESS12_noe: std_ulogic;
  signal RAMADDRESS13: std_ulogic;
  signal RAMADDRESS13_U61: std_ulogic;
  signal RAMADDRESS13_U66: std_ulogic;
  signal RAMADDRESS13_U72: std_ulogic;
  signal RAMADDRESS13_noe: std_ulogic;
  signal RAMADDRESS14: std_ulogic;
  signal RAMADDRESS14_U61: std_ulogic;
  signal RAMADDRESS14_U66: std_ulogic;
  signal RAMADDRESS14_U72: std_ulogic;
  signal RAMADDRESS14_noe: std_ulogic;
  signal RAMADDRESS15: std_ulogic;
  signal RAMADDRESS15_U61: std_ulogic;
  signal RAMADDRESS15_U66: std_ulogic;
  signal RAMADDRESS15_U72: std_ulogic;
  signal RAMADDRESS15_noe: std_ulogic;
  signal RAMADDRESS1_U63: std_ulogic;
  signal RAMADDRESS1_U65: std_ulogic;
  signal RAMADDRESS1_noe: std_ulogic;
  signal RAMADDRESS2: std_ulogic;
  signal RAMADDRESS2_U63: std_ulogic;
  signal RAMADDRESS2_U65: std_ulogic;
  signal RAMADDRESS2_noe: std_ulogic;
  signal RAMADDRESS3: std_ulogic;
  signal RAMADDRESS3_U63: std_ulogic;
  signal RAMADDRESS3_U65: std_ulogic;
  signal RAMADDRESS3_noe: std_ulogic;
  signal RAMADDRESS4: std_ulogic;
  signal RAMADDRESS4_U63: std_ulogic;
  signal RAMADDRESS4_U65: std_ulogic;
  signal RAMADDRESS4_noe: std_ulogic;
  signal RAMADDRESS5: std_ulogic;
  signal RAMADDRESS5_U63: std_ulogic;
  signal RAMADDRESS5_U65: std_ulogic;
  signal RAMADDRESS5_noe: std_ulogic;
  signal RAMADDRESS6: std_ulogic;
  signal RAMADDRESS6_U63: std_ulogic;
  signal RAMADDRESS6_U65: std_ulogic;
  signal RAMADDRESS6_noe: std_ulogic;
  signal RAMADDRESS7: std_ulogic;
  signal RAMADDRESS7_U63: std_ulogic;
  signal RAMADDRESS7_U65: std_ulogic;
  signal RAMADDRESS7_noe: std_ulogic;
  signal RAMADDRESS8: std_ulogic;
  signal RAMADDRESS8_U61: std_ulogic;
  signal RAMADDRESS8_U66: std_ulogic;
  signal RAMADDRESS8_U72: std_ulogic;
  signal RAMADDRESS8_noe: std_ulogic;
  signal RAMADDRESS9: std_ulogic;
  signal RAMADDRESS9_U61: std_ulogic;
  signal RAMADDRESS9_U66: std_ulogic;
  signal RAMADDRESS9_U72: std_ulogic;
  signal RAMADDRESS9_noe: std_ulogic;
  signal RAMADDRESS_BUF0: std_ulogic;
  signal RAMADDRESS_BUF0_U202: std_ulogic;
  signal RAMADDRESS_BUF0_noe: std_ulogic;
  signal RAMADDRESS_BUF1: std_ulogic;
  signal RAMADDRESS_BUF10: std_ulogic;
  signal RAMADDRESS_BUF10_U203: std_ulogic;
  signal RAMADDRESS_BUF10_noe: std_ulogic;
  signal RAMADDRESS_BUF11: std_ulogic;
  signal RAMADDRESS_BUF11_U203: std_ulogic;
  signal RAMADDRESS_BUF11_noe: std_ulogic;
  signal RAMADDRESS_BUF12: std_ulogic;
  signal RAMADDRESS_BUF12_U203: std_ulogic;
  signal RAMADDRESS_BUF12_noe: std_ulogic;
  signal RAMADDRESS_BUF13: std_ulogic;
  signal RAMADDRESS_BUF13_U203: std_ulogic;
  signal RAMADDRESS_BUF13_noe: std_ulogic;
  signal RAMADDRESS_BUF14: std_ulogic;
  signal RAMADDRESS_BUF14_U203: std_ulogic;
  signal RAMADDRESS_BUF14_noe: std_ulogic;
  signal RAMADDRESS_BUF15: std_ulogic;
  signal RAMADDRESS_BUF15_U203: std_ulogic;
  signal RAMADDRESS_BUF15_noe: std_ulogic;
  signal RAMADDRESS_BUF1_U202: std_ulogic;
  signal RAMADDRESS_BUF1_noe: std_ulogic;
  signal RAMADDRESS_BUF2: std_ulogic;
  signal RAMADDRESS_BUF2_U202: std_ulogic;
  signal RAMADDRESS_BUF2_noe: std_ulogic;
  signal RAMADDRESS_BUF3: std_ulogic;
  signal RAMADDRESS_BUF3_U202: std_ulogic;
  signal RAMADDRESS_BUF3_noe: std_ulogic;
  signal RAMADDRESS_BUF4: std_ulogic;
  signal RAMADDRESS_BUF4_U202: std_ulogic;
  signal RAMADDRESS_BUF4_noe: std_ulogic;
  signal RAMADDRESS_BUF5: std_ulogic;
  signal RAMADDRESS_BUF5_U202: std_ulogic;
  signal RAMADDRESS_BUF5_noe: std_ulogic;
  signal RAMADDRESS_BUF6: std_ulogic;
  signal RAMADDRESS_BUF6_U202: std_ulogic;
  signal RAMADDRESS_BUF6_noe: std_ulogic;
  signal RAMADDRESS_BUF7: std_ulogic;
  signal RAMADDRESS_BUF7_U202: std_ulogic;
  signal RAMADDRESS_BUF7_noe: std_ulogic;
  signal RAMADDRESS_BUF8: std_ulogic;
  signal RAMADDRESS_BUF8_U203: std_ulogic;
  signal RAMADDRESS_BUF8_noe: std_ulogic;
  signal RAMADDRESS_BUF9: std_ulogic;
  signal RAMADDRESS_BUF9_U203: std_ulogic;
  signal RAMADDRESS_BUF9_noe: std_ulogic;
  signal RAMCE: std_ulogic;
  signal RAMCE_BUF: std_ulogic;
  signal RAMCE_BUF_U204: std_ulogic;
  signal RAMCE_BUF_noe: std_ulogic;
  signal RAMCE_SRC: std_ulogic;
  signal RD2: std_ulogic;
  signal RD3: std_ulogic;
  signal RD4: std_ulogic;
  signal RD6: std_ulogic;
  signal RD8: std_ulogic;
  signal RESET1: std_ulogic;
  signal RESET1_U95: std_ulogic;
  signal RESET1_noe: std_ulogic;
  signal RESET_BUF: std_ulogic;
  signal RESET_BUF_U204: std_ulogic;
  signal RESET_BUF_noe: std_ulogic;
  signal RQ3: std_ulogic;
  signal RQ4: std_ulogic;
  signal RQ6: std_ulogic;
  signal RQ8: std_ulogic;
  signal SELECT0: std_ulogic;
  signal SELECT0_U73: std_ulogic;
  signal SELECT0_U74: std_ulogic;
  signal SELECT0_noe: std_ulogic;
  signal SELECT1: std_ulogic;
  signal SELECT1_U73: std_ulogic;
  signal SELECT1_U74: std_ulogic;
  signal SELECT1_noe: std_ulogic;
  signal SELECT2: std_ulogic;
  signal SELECT2_U73: std_ulogic;
  signal SELECT2_U74: std_ulogic;
  signal SELECT2_noe: std_ulogic;
  signal SELECT3: std_ulogic;
  signal SELECT3_U73: std_ulogic;
  signal SELECT3_U74: std_ulogic;
  signal SELECT3_noe: std_ulogic;
  signal SELECT4: std_ulogic;
  signal SELECT4_U73: std_ulogic;
  signal SELECT4_U74: std_ulogic;
  signal SELECT4_noe: std_ulogic;
  signal SELECT5: std_ulogic;
  signal SELECT5_U73: std_ulogic;
  signal SELECT5_U74: std_ulogic;
  signal SELECT5_noe: std_ulogic;
  signal SELECT6: std_ulogic;
  signal SELECT6_U73: std_ulogic;
  signal SELECT6_U74: std_ulogic;
  signal SELECT6_noe: std_ulogic;
  signal SELECT7: std_ulogic;
  signal SELECT7_U73: std_ulogic;
  signal SELECT7_U74: std_ulogic;
  signal SELECT7_noe: std_ulogic;
  signal SELECTSTACKMEM: std_ulogic;
  signal SELECTSTACKMEM_BUF: std_ulogic;
  signal SELECTSTACKMEM_BUF_U204: std_ulogic;
  signal SELECTSTACKMEM_BUF_noe: std_ulogic;
  signal SELECTSTACKMEM_SRC: std_ulogic;
  signal SHIFT0: std_ulogic;
  signal SHIFT1: std_ulogic;
  signal SHIFT2: std_ulogic;
  signal SHIFT3: std_ulogic;
  signal SHIFT4: std_ulogic;
  signal SHIFT5: std_ulogic;
  signal SHIFT6: std_ulogic;
  signal SHIFT7: std_ulogic;
  signal SP0: std_ulogic;
  signal SP1: std_ulogic;
  signal SP2: std_ulogic;
  signal SP3: std_ulogic;
  signal SP4: std_ulogic;
  signal SP5: std_ulogic;
  signal SP6: std_ulogic;
  signal SP7: std_ulogic;
  signal SPEN: std_ulogic;
  signal U100_noe: std_ulogic;
  signal U10_a_noe: std_ulogic;
  signal U10_b_noe: std_ulogic;
  signal U201_a_noe: std_ulogic;
  signal U201_b_noe: std_ulogic;
  signal U202_a_noe: std_ulogic;
  signal U202_b_noe: std_ulogic;
  signal U203_a_noe: std_ulogic;
  signal U203_b_noe: std_ulogic;
  signal U204_a_noe: std_ulogic;
  signal U204_b_noe: std_ulogic;
  signal U205_a_noe: std_ulogic;
  signal U205_b_noe: std_ulogic;
  signal U40_noe: std_ulogic;
  signal U41_noe: std_ulogic;
  signal U44_a_noe: std_ulogic;
  signal U44_b_noe: std_ulogic;
  signal U45_a_noe: std_ulogic;
  signal U45_b_noe: std_ulogic;
  signal U49_a_noe: std_ulogic;
  signal U49_b_noe: std_ulogic;
  signal U507_a_noe: std_ulogic;
  signal U507_b_noe: std_ulogic;
  signal U50_a_noe: std_ulogic;
  signal U50_b_noe: std_ulogic;
  signal U51_a_noe: std_ulogic;
  signal U51_b_noe: std_ulogic;
  signal U52_a_noe: std_ulogic;
  signal U52_b_noe: std_ulogic;
  signal U61_a_noe: std_ulogic;
  signal U61_b_noe: std_ulogic;
  signal U63_noe: std_ulogic;
  signal U64_noe: std_ulogic;
  signal U65_a_noe: std_ulogic;
  signal U65_b_noe: std_ulogic;
  signal U66_a_noe: std_ulogic;
  signal U66_b_noe: std_ulogic;
  signal U68_noe: std_ulogic;
  signal U70_noe: std_ulogic;
  signal U71_noe: std_ulogic;
  signal U72_a_noe: std_ulogic;
  signal U72_b_noe: std_ulogic;
  signal U73_a_noe: std_ulogic;
  signal U73_b_noe: std_ulogic;
  signal U74_a_noe: std_ulogic;
  signal U74_b_noe: std_ulogic;
  signal U75_a_noe: std_ulogic;
  signal U75_b_noe: std_ulogic;
  signal U77_noe: std_ulogic;
  signal U83_noe: std_ulogic;
  signal U91_a_noe: std_ulogic;
  signal U91_b_noe: std_ulogic;
  signal U95_a_noe: std_ulogic;
  signal U95_b_noe: std_ulogic;
  signal U97_noe: std_ulogic;
  signal U98_a_noe: std_ulogic;
  signal U98_b_noe: std_ulogic;
  signal U99_a_noe: std_ulogic;
  signal U99_b_noe: std_ulogic;
  signal U9_noe: std_ulogic;
  signal VCC: std_ulogic;
  signal XOR0: std_ulogic;
  signal XOR1: std_ulogic;
  signal XOR2: std_ulogic;
  signal XOR3: std_ulogic;
  signal XOR4: std_ulogic;
  signal XOR5: std_ulogic;
  signal XOR6: std_ulogic;
  signal XOR7: std_ulogic;
  signal unconnected_JT2_21: std_ulogic;
  signal unconnected_JT2_22: std_ulogic;
  signal unconnected_JT9_13: std_ulogic;
  signal unconnected_JT9_14: std_ulogic;
  signal unconnected_JT9_15: std_ulogic;
  signal unconnected_JT9_16: std_ulogic;
  signal unconnected_U101_6: std_ulogic;
  signal unconnected_U102_6: std_ulogic;
  signal unconnected_U104_10: std_ulogic;
  signal unconnected_U104_12: std_ulogic;
  signal unconnected_U104_4: std_ulogic;
  signal unconnected_U104_6: std_ulogic;
  signal unconnected_U104_8: std_ulogic;
  signal unconnected_U38_6: std_ulogic;
  signal unconnected_U39_5: std_ulogic;
  signal unconnected_U55_13: std_ulogic;
  signal unconnected_U56_13: std_ulogic;
  signal unconnected_U83_18: std_ulogic;
  signal unconnected_U83_18_U83: std_ulogic;
  signal unconnected_U83_18_noe: std_ulogic;
  signal unconnected_U87_18: std_ulogic;
  signal unconnected_U87_19: std_ulogic;
  signal unconnected_U89_11: std_ulogic;
  signal unconnected_U89_8: std_ulogic;
  signal unconnected_U96_14: std_ulogic;
  signal unconnected_U97_15: std_ulogic;
  signal unconnected_U97_15_U97: std_ulogic;
  signal unconnected_U97_15_noe: std_ulogic;
  signal unconnected_U97_16: std_ulogic;
  signal unconnected_U97_16_U97: std_ulogic;
  signal unconnected_U97_16_noe: std_ulogic;
  signal unconnected_U97_17: std_ulogic;
  signal unconnected_U97_17_U97: std_ulogic;
  signal unconnected_U97_17_noe: std_ulogic;
  signal unconnected_U97_18: std_ulogic;
  signal unconnected_U97_18_U97: std_ulogic;
  signal unconnected_U97_18_noe: std_ulogic;

begin

BRKPT0 <= i_breakpointAddress(0);
BRKPT1 <= i_breakpointAddress(1);
BRKPT2 <= i_breakpointAddress(2);
BRKPT3 <= i_breakpointAddress(3);
BRKPT4 <= i_breakpointAddress(4);
BRKPT5 <= i_breakpointAddress(5);
BRKPT6 <= i_breakpointAddress(6);
BRKPT7 <= i_breakpointAddress(7);
BRKPT8 <= i_breakpointAddress(8);
BRKPT9 <= i_breakpointAddress(9);
BRKPT10 <= i_breakpointAddress(10);
BRKPT11 <= i_breakpointAddress(11);
BRKPT12 <= i_breakpointAddress(12);
BRKPT13 <= i_breakpointAddress(13);
BRKPT14 <= i_breakpointAddress(14);
BRKPT15 <= i_breakpointAddress(15);
o_ioAddress(0) <= RAMADDRESS0;
o_ioAddress(1) <= RAMADDRESS1;
o_ioAddress(2) <= RAMADDRESS2;
o_ioAddress(3) <= RAMADDRESS3;
o_ioAddress(4) <= RAMADDRESS4;
o_ioAddress(5) <= RAMADDRESS5;
o_ioAddress(6) <= RAMADDRESS6;
o_ioAddress(7) <= RAMADDRESS7;
o_bus(0) <= BUS_BUF0;
o_bus(1) <= BUS_BUF1;
o_bus(2) <= BUS_BUF2;
o_bus(3) <= BUS_BUF3;
o_bus(4) <= BUS_BUF4;
o_bus(5) <= BUS_BUF5;
o_bus(6) <= BUS_BUF6;
o_bus(7) <= BUS_BUF7;
L1 <= '0';
H1 <= '1';
L2 <= '0';
H2 <= '1';
L3 <= '0';
H3 <= '1';
L4 <= '0';
H4 <= '1';
IN0 <= i_switches(0);
IN1 <= i_switches(1);
IN2 <= i_switches(2);
IN3 <= i_switches(3);
IN4 <= i_switches(4);
IN5 <= i_switches(5);
IN6 <= i_switches(6);
IN7 <= i_switches(7);
o_r0(0) <= R00;
o_r1(0) <= R10;
o_r0(1) <= R01;
o_r1(1) <= R11;
o_r0(2) <= R02;
o_r1(2) <= R12;
o_r0(3) <= R03;
o_r1(3) <= R13;
o_r0(4) <= R04;
o_r1(4) <= R14;
o_r0(5) <= R05;
o_r1(5) <= R15;
o_r0(6) <= R06;
o_r1(6) <= R16;
o_r0(7) <= R07;
o_r1(7) <= R17;
o_output(7) <= N16459739;
o_output(6) <= N16459679;
o_output(5) <= N16459595;
o_output(4) <= N16459511;
o_output(3) <= N16459427;
o_output(2) <= N16459367;
o_output(1) <= N16459283;
o_output(0) <= N16459199;
CLK_UNBUF <= i_oszClk;
N16449995 <= i_resetn;
N16792555 <= not i_btnStep;
N16925459 <= not i_swInstrNCycle;
N16923056 <= not i_swStepNRun;
N16445057 <= not i_swEnableBreakpoint;
o_ioNCE <= IOCE;
o_ioNOE <= CTRLMEMRAMOE;
o_ioNWE <= CTRLMEMRAMWE;


    enableDigits <= "11110011" when HALT else "00000011";
    dots <= "00100000" when HALT else 8x"00";

  inst_7seg: entity work.displayDriver
  port map(
    i_clk => CLK1,
    i_resetn => RESET1,
    data => (
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
      '0',
      MC_A2,
      MC_A1,
      MC_A0,
      8x"00",
      N16459739,
      N16459679,
      N16459595,
      N16459511,
      N16459427,
      N16459367,
      N16459283,
      N16459199
    ),
  enableDigit => enableDigits,
  dots => dots,
  cathodes => o_cathodes,
  anodes => o_anodes
);


    inst_instructionRom: entity work.instructionRom
      port map (
        clka  => i_asyncEEPROMSpecialClock,
        addra => (PC14, PC13, PC12, PC11, PC10, PC9, PC8, PC7, PC6, PC5, PC4, PC3, PC2, PC1, PC0),
        douta => (INSTR_UNREG7_SRC, INSTR_UNREG6_SRC, INSTR_UNREG5_SRC, INSTR_UNREG4_SRC, INSTR_UNREG3_SRC, INSTR_UNREG2_SRC, INSTR_UNREG1_SRC, INSTR_UNREG0_SRC, INSTRIMM_UNREG15_SRC, INSTRIMM_UNREG14_SRC, INSTRIMM_UNREG13_SRC, INSTRIMM_UNREG12_SRC, INSTRIMM_UNREG11_SRC, INSTRIMM_UNREG10_SRC, INSTRIMM_UNREG9_SRC, INSTRIMM_UNREG8_SRC, INSTRIMM_UNREG7_SRC, INSTRIMM_UNREG6_SRC, INSTRIMM_UNREG5_SRC, INSTRIMM_UNREG4_SRC, INSTRIMM_UNREG3_SRC, INSTRIMM_UNREG2_SRC, INSTRIMM_UNREG1_SRC, INSTRIMM_UNREG0_SRC)
        );

    inst_microCodeRom: entity work.microCodeRom
      port map (
        clka  => i_asyncEEPROMSpecialClock,
        addra => (MC_A14, MC_A13, MC_A12, MC_A11, MC_A10, MC_A9, MC_A8, MC_A7, MC_A6, CTRLALUOP1_SRC, CTRLALUOP0_SRC, CTRLALUSUB_SRC, MC_A2, MC_A1, MC_A0),
        douta => (unconnected_U87_19, unconnected_U87_18, CTRL_INIT_FF_SRC, CTRLINSTRFINISHED_SRC, CTRLMEMPCTORAM_SRC, CTRLMEMPCFROMIMM_SRC, CTRLMEMPCEN_SRC, CTRLMEMRAMOE_SRC, CTRLMEMRAMWE_SRC, CTRLMEMINSTRIMMTORAMADDR_SRC, CTRLMEMMAR1WE_SRC, CTRLMEMMAR0WE_SRC, CTRLMEMINSTROE_SRC, CTRLMEMINSTRWE_SRC, CTRLMEMSPEN_SRC, CTRLMEMSPUP_SRC, CTRLMEMPCLOAD_SRC, CTRLREG1BUSOE_SRC, CTRLREG0BUSOE_SRC, CTRLREGALUSEL_SRC, CTRLREG1WE_SRC, CTRLREG0WE_SRC, CTRLALUOE_SRC, CTRLALUYWE_SRC)
        );


  inst_triBusALU_OUT_REG0: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => ALU_OUT_REG0_U9),
      i_noe  => (others => U9_noe),
      o_data => ALU_OUT_REG0,
      o_noe  => ALU_OUT_REG0_noe
      );

  inst_triBusALU_OUT_REG1: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => ALU_OUT_REG1_U9),
      i_noe  => (others => U9_noe),
      o_data => ALU_OUT_REG1,
      o_noe  => ALU_OUT_REG1_noe
      );

  inst_triBusALU_OUT_REG2: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => ALU_OUT_REG2_U9),
      i_noe  => (others => U9_noe),
      o_data => ALU_OUT_REG2,
      o_noe  => ALU_OUT_REG2_noe
      );

  inst_triBusALU_OUT_REG3: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => ALU_OUT_REG3_U9),
      i_noe  => (others => U9_noe),
      o_data => ALU_OUT_REG3,
      o_noe  => ALU_OUT_REG3_noe
      );

  inst_triBusALU_OUT_REG4: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => ALU_OUT_REG4_U9),
      i_noe  => (others => U9_noe),
      o_data => ALU_OUT_REG4,
      o_noe  => ALU_OUT_REG4_noe
      );

  inst_triBusALU_OUT_REG5: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => ALU_OUT_REG5_U9),
      i_noe  => (others => U9_noe),
      o_data => ALU_OUT_REG5,
      o_noe  => ALU_OUT_REG5_noe
      );

  inst_triBusALU_OUT_REG6: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => ALU_OUT_REG6_U9),
      i_noe  => (others => U9_noe),
      o_data => ALU_OUT_REG6,
      o_noe  => ALU_OUT_REG6_noe
      );

  inst_triBusALU_OUT_REG7: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => ALU_OUT_REG7_U9),
      i_noe  => (others => U9_noe),
      o_data => ALU_OUT_REG7,
      o_noe  => ALU_OUT_REG7_noe
      );

  inst_triBusBus7: entity work.tristatenet
    generic map (
      INPUT_COUNT => 7
      )
    port map (
      i_data => (Bus7_U10, Bus7_U44, Bus7_U45, Bus7_U75, Bus7_U99, Bus7_U201, Bus7_U507),
      i_noe  => (U10_b_noe, U44_b_noe, U45_b_noe, U75_b_noe, U99_b_noe, U201_a_noe, U507_a_noe),
      o_data => Bus7,
      o_noe  => Bus7_noe
      );

  inst_triBusBus6: entity work.tristatenet
    generic map (
      INPUT_COUNT => 7
      )
    port map (
      i_data => (Bus6_U10, Bus6_U44, Bus6_U45, Bus6_U75, Bus6_U99, Bus6_U201, Bus6_U507),
      i_noe  => (U10_b_noe, U44_b_noe, U45_b_noe, U75_b_noe, U99_b_noe, U201_a_noe, U507_a_noe),
      o_data => Bus6,
      o_noe  => Bus6_noe
      );

  inst_triBusBus5: entity work.tristatenet
    generic map (
      INPUT_COUNT => 7
      )
    port map (
      i_data => (Bus5_U10, Bus5_U44, Bus5_U45, Bus5_U75, Bus5_U99, Bus5_U201, Bus5_U507),
      i_noe  => (U10_b_noe, U44_b_noe, U45_b_noe, U75_b_noe, U99_b_noe, U201_a_noe, U507_a_noe),
      o_data => Bus5,
      o_noe  => Bus5_noe
      );

  inst_triBusBus4: entity work.tristatenet
    generic map (
      INPUT_COUNT => 7
      )
    port map (
      i_data => (Bus4_U10, Bus4_U44, Bus4_U45, Bus4_U75, Bus4_U99, Bus4_U201, Bus4_U507),
      i_noe  => (U10_b_noe, U44_b_noe, U45_b_noe, U75_b_noe, U99_b_noe, U201_a_noe, U507_a_noe),
      o_data => Bus4,
      o_noe  => Bus4_noe
      );

  inst_triBusBus3: entity work.tristatenet
    generic map (
      INPUT_COUNT => 7
      )
    port map (
      i_data => (Bus3_U10, Bus3_U44, Bus3_U45, Bus3_U75, Bus3_U99, Bus3_U201, Bus3_U507),
      i_noe  => (U10_b_noe, U44_b_noe, U45_b_noe, U75_b_noe, U99_b_noe, U201_a_noe, U507_a_noe),
      o_data => Bus3,
      o_noe  => Bus3_noe
      );

  inst_triBusBus2: entity work.tristatenet
    generic map (
      INPUT_COUNT => 7
      )
    port map (
      i_data => (Bus2_U10, Bus2_U44, Bus2_U45, Bus2_U75, Bus2_U99, Bus2_U201, Bus2_U507),
      i_noe  => (U10_b_noe, U44_b_noe, U45_b_noe, U75_b_noe, U99_b_noe, U201_a_noe, U507_a_noe),
      o_data => Bus2,
      o_noe  => Bus2_noe
      );

  inst_triBusBus1: entity work.tristatenet
    generic map (
      INPUT_COUNT => 7
      )
    port map (
      i_data => (Bus1_U10, Bus1_U44, Bus1_U45, Bus1_U75, Bus1_U99, Bus1_U201, Bus1_U507),
      i_noe  => (U10_b_noe, U44_b_noe, U45_b_noe, U75_b_noe, U99_b_noe, U201_a_noe, U507_a_noe),
      o_data => Bus1,
      o_noe  => Bus1_noe
      );

  inst_triBusBus0: entity work.tristatenet
    generic map (
      INPUT_COUNT => 7
      )
    port map (
      i_data => (Bus0_U10, Bus0_U44, Bus0_U45, Bus0_U75, Bus0_U99, Bus0_U201, Bus0_U507),
      i_noe  => (U10_b_noe, U44_b_noe, U45_b_noe, U75_b_noe, U99_b_noe, U201_a_noe, U507_a_noe),
      o_data => Bus0,
      o_noe  => Bus0_noe
      );

  inst_triBusR00: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => R00_U40),
      i_noe  => (others => U40_noe),
      o_data => R00,
      o_noe  => R00_noe
      );

  inst_triBusR01: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => R01_U40),
      i_noe  => (others => U40_noe),
      o_data => R01,
      o_noe  => R01_noe
      );

  inst_triBusR02: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => R02_U40),
      i_noe  => (others => U40_noe),
      o_data => R02,
      o_noe  => R02_noe
      );

  inst_triBusR03: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => R03_U40),
      i_noe  => (others => U40_noe),
      o_data => R03,
      o_noe  => R03_noe
      );

  inst_triBusR04: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => R04_U40),
      i_noe  => (others => U40_noe),
      o_data => R04,
      o_noe  => R04_noe
      );

  inst_triBusR05: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => R05_U40),
      i_noe  => (others => U40_noe),
      o_data => R05,
      o_noe  => R05_noe
      );

  inst_triBusR06: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => R06_U40),
      i_noe  => (others => U40_noe),
      o_data => R06,
      o_noe  => R06_noe
      );

  inst_triBusR07: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => R07_U40),
      i_noe  => (others => U40_noe),
      o_data => R07,
      o_noe  => R07_noe
      );

  inst_triBusR10: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => R10_U41),
      i_noe  => (others => U41_noe),
      o_data => R10,
      o_noe  => R10_noe
      );

  inst_triBusR11: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => R11_U41),
      i_noe  => (others => U41_noe),
      o_data => R11,
      o_noe  => R11_noe
      );

  inst_triBusR12: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => R12_U41),
      i_noe  => (others => U41_noe),
      o_data => R12,
      o_noe  => R12_noe
      );

  inst_triBusR13: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => R13_U41),
      i_noe  => (others => U41_noe),
      o_data => R13,
      o_noe  => R13_noe
      );

  inst_triBusR14: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => R14_U41),
      i_noe  => (others => U41_noe),
      o_data => R14,
      o_noe  => R14_noe
      );

  inst_triBusR15: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => R15_U41),
      i_noe  => (others => U41_noe),
      o_data => R15,
      o_noe  => R15_noe
      );

  inst_triBusR16: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => R16_U41),
      i_noe  => (others => U41_noe),
      o_data => R16,
      o_noe  => R16_noe
      );

  inst_triBusR17: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => R17_U41),
      i_noe  => (others => U41_noe),
      o_data => R17,
      o_noe  => R17_noe
      );

  inst_triBusPCIN15: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (PCIN15_U49, PCIN15_U50),
      i_noe  => (U49_b_noe, U50_b_noe),
      o_data => PCIN15,
      o_noe  => PCIN15_noe
      );

  inst_triBusPCIN14: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (PCIN14_U49, PCIN14_U50),
      i_noe  => (U49_b_noe, U50_b_noe),
      o_data => PCIN14,
      o_noe  => PCIN14_noe
      );

  inst_triBusPCIN13: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (PCIN13_U49, PCIN13_U50),
      i_noe  => (U49_b_noe, U50_b_noe),
      o_data => PCIN13,
      o_noe  => PCIN13_noe
      );

  inst_triBusPCIN12: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (PCIN12_U49, PCIN12_U50),
      i_noe  => (U49_b_noe, U50_b_noe),
      o_data => PCIN12,
      o_noe  => PCIN12_noe
      );

  inst_triBusPCIN11: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (PCIN11_U49, PCIN11_U50),
      i_noe  => (U49_b_noe, U50_b_noe),
      o_data => PCIN11,
      o_noe  => PCIN11_noe
      );

  inst_triBusPCIN10: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (PCIN10_U49, PCIN10_U50),
      i_noe  => (U49_b_noe, U50_b_noe),
      o_data => PCIN10,
      o_noe  => PCIN10_noe
      );

  inst_triBusPCIN9: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (PCIN9_U49, PCIN9_U50),
      i_noe  => (U49_b_noe, U50_b_noe),
      o_data => PCIN9,
      o_noe  => PCIN9_noe
      );

  inst_triBusPCIN8: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (PCIN8_U49, PCIN8_U50),
      i_noe  => (U49_b_noe, U50_b_noe),
      o_data => PCIN8,
      o_noe  => PCIN8_noe
      );

  inst_triBusPCIN7: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (PCIN7_U51, PCIN7_U52),
      i_noe  => (U51_b_noe, U52_b_noe),
      o_data => PCIN7,
      o_noe  => PCIN7_noe
      );

  inst_triBusPCIN6: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (PCIN6_U51, PCIN6_U52),
      i_noe  => (U51_b_noe, U52_b_noe),
      o_data => PCIN6,
      o_noe  => PCIN6_noe
      );

  inst_triBusPCIN5: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (PCIN5_U51, PCIN5_U52),
      i_noe  => (U51_b_noe, U52_b_noe),
      o_data => PCIN5,
      o_noe  => PCIN5_noe
      );

  inst_triBusPCIN4: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (PCIN4_U51, PCIN4_U52),
      i_noe  => (U51_b_noe, U52_b_noe),
      o_data => PCIN4,
      o_noe  => PCIN4_noe
      );

  inst_triBusPCIN3: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (PCIN3_U51, PCIN3_U52),
      i_noe  => (U51_b_noe, U52_b_noe),
      o_data => PCIN3,
      o_noe  => PCIN3_noe
      );

  inst_triBusPCIN2: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (PCIN2_U51, PCIN2_U52),
      i_noe  => (U51_b_noe, U52_b_noe),
      o_data => PCIN2,
      o_noe  => PCIN2_noe
      );

  inst_triBusPCIN1: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (PCIN1_U51, PCIN1_U52),
      i_noe  => (U51_b_noe, U52_b_noe),
      o_data => PCIN1,
      o_noe  => PCIN1_noe
      );

  inst_triBusPCIN0: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (PCIN0_U51, PCIN0_U52),
      i_noe  => (U51_b_noe, U52_b_noe),
      o_data => PCIN0,
      o_noe  => PCIN0_noe
      );

  inst_triBusRAMADDRESS15: entity work.tristatenet
    generic map (
      INPUT_COUNT => 3
      )
    port map (
      i_data => (RAMADDRESS15_U61, RAMADDRESS15_U66, RAMADDRESS15_U72),
      i_noe  => (U61_b_noe, U66_b_noe, U72_b_noe),
      o_data => RAMADDRESS15,
      o_noe  => RAMADDRESS15_noe
      );

  inst_triBusRAMADDRESS14: entity work.tristatenet
    generic map (
      INPUT_COUNT => 3
      )
    port map (
      i_data => (RAMADDRESS14_U61, RAMADDRESS14_U66, RAMADDRESS14_U72),
      i_noe  => (U61_b_noe, U66_b_noe, U72_b_noe),
      o_data => RAMADDRESS14,
      o_noe  => RAMADDRESS14_noe
      );

  inst_triBusRAMADDRESS13: entity work.tristatenet
    generic map (
      INPUT_COUNT => 3
      )
    port map (
      i_data => (RAMADDRESS13_U61, RAMADDRESS13_U66, RAMADDRESS13_U72),
      i_noe  => (U61_b_noe, U66_b_noe, U72_b_noe),
      o_data => RAMADDRESS13,
      o_noe  => RAMADDRESS13_noe
      );

  inst_triBusRAMADDRESS12: entity work.tristatenet
    generic map (
      INPUT_COUNT => 3
      )
    port map (
      i_data => (RAMADDRESS12_U61, RAMADDRESS12_U66, RAMADDRESS12_U72),
      i_noe  => (U61_b_noe, U66_b_noe, U72_b_noe),
      o_data => RAMADDRESS12,
      o_noe  => RAMADDRESS12_noe
      );

  inst_triBusRAMADDRESS11: entity work.tristatenet
    generic map (
      INPUT_COUNT => 3
      )
    port map (
      i_data => (RAMADDRESS11_U61, RAMADDRESS11_U66, RAMADDRESS11_U72),
      i_noe  => (U61_b_noe, U66_b_noe, U72_b_noe),
      o_data => RAMADDRESS11,
      o_noe  => RAMADDRESS11_noe
      );

  inst_triBusRAMADDRESS10: entity work.tristatenet
    generic map (
      INPUT_COUNT => 3
      )
    port map (
      i_data => (RAMADDRESS10_U61, RAMADDRESS10_U66, RAMADDRESS10_U72),
      i_noe  => (U61_b_noe, U66_b_noe, U72_b_noe),
      o_data => RAMADDRESS10,
      o_noe  => RAMADDRESS10_noe
      );

  inst_triBusRAMADDRESS9: entity work.tristatenet
    generic map (
      INPUT_COUNT => 3
      )
    port map (
      i_data => (RAMADDRESS9_U61, RAMADDRESS9_U66, RAMADDRESS9_U72),
      i_noe  => (U61_b_noe, U66_b_noe, U72_b_noe),
      o_data => RAMADDRESS9,
      o_noe  => RAMADDRESS9_noe
      );

  inst_triBusRAMADDRESS8: entity work.tristatenet
    generic map (
      INPUT_COUNT => 3
      )
    port map (
      i_data => (RAMADDRESS8_U61, RAMADDRESS8_U66, RAMADDRESS8_U72),
      i_noe  => (U61_b_noe, U66_b_noe, U72_b_noe),
      o_data => RAMADDRESS8,
      o_noe  => RAMADDRESS8_noe
      );

  inst_triBusRAMADDRESS0: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAMADDRESS0_U63, RAMADDRESS0_U65),
      i_noe  => (U63_noe, U65_b_noe),
      o_data => RAMADDRESS0,
      o_noe  => RAMADDRESS0_noe
      );

  inst_triBusRAMADDRESS1: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAMADDRESS1_U63, RAMADDRESS1_U65),
      i_noe  => (U63_noe, U65_b_noe),
      o_data => RAMADDRESS1,
      o_noe  => RAMADDRESS1_noe
      );

  inst_triBusRAMADDRESS2: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAMADDRESS2_U63, RAMADDRESS2_U65),
      i_noe  => (U63_noe, U65_b_noe),
      o_data => RAMADDRESS2,
      o_noe  => RAMADDRESS2_noe
      );

  inst_triBusRAMADDRESS3: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAMADDRESS3_U63, RAMADDRESS3_U65),
      i_noe  => (U63_noe, U65_b_noe),
      o_data => RAMADDRESS3,
      o_noe  => RAMADDRESS3_noe
      );

  inst_triBusRAMADDRESS4: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAMADDRESS4_U63, RAMADDRESS4_U65),
      i_noe  => (U63_noe, U65_b_noe),
      o_data => RAMADDRESS4,
      o_noe  => RAMADDRESS4_noe
      );

  inst_triBusRAMADDRESS5: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAMADDRESS5_U63, RAMADDRESS5_U65),
      i_noe  => (U63_noe, U65_b_noe),
      o_data => RAMADDRESS5,
      o_noe  => RAMADDRESS5_noe
      );

  inst_triBusRAMADDRESS6: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAMADDRESS6_U63, RAMADDRESS6_U65),
      i_noe  => (U63_noe, U65_b_noe),
      o_data => RAMADDRESS6,
      o_noe  => RAMADDRESS6_noe
      );

  inst_triBusRAMADDRESS7: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAMADDRESS7_U63, RAMADDRESS7_U65),
      i_noe  => (U63_noe, U65_b_noe),
      o_data => RAMADDRESS7,
      o_noe  => RAMADDRESS7_noe
      );

  inst_triBusINSTR0: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTR0_U64),
      i_noe  => (others => U64_noe),
      o_data => INSTR0,
      o_noe  => INSTR0_noe
      );

  inst_triBusINSTR1: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTR1_U64),
      i_noe  => (others => U64_noe),
      o_data => INSTR1,
      o_noe  => INSTR1_noe
      );

  inst_triBusINSTR2: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTR2_U64),
      i_noe  => (others => U64_noe),
      o_data => INSTR2,
      o_noe  => INSTR2_noe
      );

  inst_triBusINSTR3: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTR3_U64),
      i_noe  => (others => U64_noe),
      o_data => INSTR3,
      o_noe  => INSTR3_noe
      );

  inst_triBusINSTR4: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTR4_U64),
      i_noe  => (others => U64_noe),
      o_data => INSTR4,
      o_noe  => INSTR4_noe
      );

  inst_triBusINSTR5: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTR5_U64),
      i_noe  => (others => U64_noe),
      o_data => INSTR5,
      o_noe  => INSTR5_noe
      );

  inst_triBusINSTR6: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTR6_U64),
      i_noe  => (others => U64_noe),
      o_data => INSTR6,
      o_noe  => INSTR6_noe
      );

  inst_triBusINSTR7: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTR7_U64),
      i_noe  => (others => U64_noe),
      o_data => INSTR7,
      o_noe  => INSTR7_noe
      );

  inst_triBusMAR8: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => MAR8_U68),
      i_noe  => (others => U68_noe),
      o_data => MAR8,
      o_noe  => MAR8_noe
      );

  inst_triBusMAR9: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => MAR9_U68),
      i_noe  => (others => U68_noe),
      o_data => MAR9,
      o_noe  => MAR9_noe
      );

  inst_triBusMAR10: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => MAR10_U68),
      i_noe  => (others => U68_noe),
      o_data => MAR10,
      o_noe  => MAR10_noe
      );

  inst_triBusMAR11: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => MAR11_U68),
      i_noe  => (others => U68_noe),
      o_data => MAR11,
      o_noe  => MAR11_noe
      );

  inst_triBusMAR12: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => MAR12_U68),
      i_noe  => (others => U68_noe),
      o_data => MAR12,
      o_noe  => MAR12_noe
      );

  inst_triBusMAR13: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => MAR13_U68),
      i_noe  => (others => U68_noe),
      o_data => MAR13,
      o_noe  => MAR13_noe
      );

  inst_triBusMAR14: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => MAR14_U68),
      i_noe  => (others => U68_noe),
      o_data => MAR14,
      o_noe  => MAR14_noe
      );

  inst_triBusMAR15: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => MAR15_U68),
      i_noe  => (others => U68_noe),
      o_data => MAR15,
      o_noe  => MAR15_noe
      );

  inst_triBusINSTRIMM0: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTRIMM0_U70),
      i_noe  => (others => U70_noe),
      o_data => INSTRIMM0,
      o_noe  => INSTRIMM0_noe
      );

  inst_triBusINSTRIMM1: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTRIMM1_U70),
      i_noe  => (others => U70_noe),
      o_data => INSTRIMM1,
      o_noe  => INSTRIMM1_noe
      );

  inst_triBusINSTRIMM2: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTRIMM2_U70),
      i_noe  => (others => U70_noe),
      o_data => INSTRIMM2,
      o_noe  => INSTRIMM2_noe
      );

  inst_triBusINSTRIMM3: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTRIMM3_U70),
      i_noe  => (others => U70_noe),
      o_data => INSTRIMM3,
      o_noe  => INSTRIMM3_noe
      );

  inst_triBusINSTRIMM4: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTRIMM4_U70),
      i_noe  => (others => U70_noe),
      o_data => INSTRIMM4,
      o_noe  => INSTRIMM4_noe
      );

  inst_triBusINSTRIMM5: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTRIMM5_U70),
      i_noe  => (others => U70_noe),
      o_data => INSTRIMM5,
      o_noe  => INSTRIMM5_noe
      );

  inst_triBusINSTRIMM6: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTRIMM6_U70),
      i_noe  => (others => U70_noe),
      o_data => INSTRIMM6,
      o_noe  => INSTRIMM6_noe
      );

  inst_triBusINSTRIMM7: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTRIMM7_U70),
      i_noe  => (others => U70_noe),
      o_data => INSTRIMM7,
      o_noe  => INSTRIMM7_noe
      );

  inst_triBusINSTRIMM8: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTRIMM8_U71),
      i_noe  => (others => U71_noe),
      o_data => INSTRIMM8,
      o_noe  => INSTRIMM8_noe
      );

  inst_triBusINSTRIMM9: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTRIMM9_U71),
      i_noe  => (others => U71_noe),
      o_data => INSTRIMM9,
      o_noe  => INSTRIMM9_noe
      );

  inst_triBusINSTRIMM10: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTRIMM10_U71),
      i_noe  => (others => U71_noe),
      o_data => INSTRIMM10,
      o_noe  => INSTRIMM10_noe
      );

  inst_triBusINSTRIMM11: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTRIMM11_U71),
      i_noe  => (others => U71_noe),
      o_data => INSTRIMM11,
      o_noe  => INSTRIMM11_noe
      );

  inst_triBusINSTRIMM12: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTRIMM12_U71),
      i_noe  => (others => U71_noe),
      o_data => INSTRIMM12,
      o_noe  => INSTRIMM12_noe
      );

  inst_triBusINSTRIMM13: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTRIMM13_U71),
      i_noe  => (others => U71_noe),
      o_data => INSTRIMM13,
      o_noe  => INSTRIMM13_noe
      );

  inst_triBusINSTRIMM14: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTRIMM14_U71),
      i_noe  => (others => U71_noe),
      o_data => INSTRIMM14,
      o_noe  => INSTRIMM14_noe
      );

  inst_triBusINSTRIMM15: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => INSTRIMM15_U71),
      i_noe  => (others => U71_noe),
      o_data => INSTRIMM15,
      o_noe  => INSTRIMM15_noe
      );

  inst_triBusSELECT7: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (SELECT7_U73, SELECT7_U74),
      i_noe  => (U73_b_noe, U74_b_noe),
      o_data => SELECT7,
      o_noe  => SELECT7_noe
      );

  inst_triBusSELECT6: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (SELECT6_U73, SELECT6_U74),
      i_noe  => (U73_b_noe, U74_b_noe),
      o_data => SELECT6,
      o_noe  => SELECT6_noe
      );

  inst_triBusSELECT5: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (SELECT5_U73, SELECT5_U74),
      i_noe  => (U73_b_noe, U74_b_noe),
      o_data => SELECT5,
      o_noe  => SELECT5_noe
      );

  inst_triBusSELECT4: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (SELECT4_U73, SELECT4_U74),
      i_noe  => (U73_b_noe, U74_b_noe),
      o_data => SELECT4,
      o_noe  => SELECT4_noe
      );

  inst_triBusSELECT3: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (SELECT3_U73, SELECT3_U74),
      i_noe  => (U73_b_noe, U74_b_noe),
      o_data => SELECT3,
      o_noe  => SELECT3_noe
      );

  inst_triBusSELECT2: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (SELECT2_U73, SELECT2_U74),
      i_noe  => (U73_b_noe, U74_b_noe),
      o_data => SELECT2,
      o_noe  => SELECT2_noe
      );

  inst_triBusSELECT1: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (SELECT1_U73, SELECT1_U74),
      i_noe  => (U73_b_noe, U74_b_noe),
      o_data => SELECT1,
      o_noe  => SELECT1_noe
      );

  inst_triBusSELECT0: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (SELECT0_U73, SELECT0_U74),
      i_noe  => (U73_b_noe, U74_b_noe),
      o_data => SELECT0,
      o_noe  => SELECT0_noe
      );

  inst_triBusBUS_BUF0: entity work.tristatenet
    generic map (
      INPUT_COUNT => 4
      )
    port map (
      i_data => (BUS_BUF0_U77, BUS_BUF0_U91, BUS_BUF0_U201, i_bus(0)),
      i_noe  => (U77_noe, U91_b_noe, U201_b_noe, i_busNOE),
      o_data => BUS_BUF0,
      o_noe  => BUS_BUF0_noe
      );

  inst_triBusBUS_BUF1: entity work.tristatenet
    generic map (
      INPUT_COUNT => 4
      )
    port map (
      i_data => (BUS_BUF1_U77, BUS_BUF1_U91, BUS_BUF1_U201, i_bus(1)),
      i_noe  => (U77_noe, U91_b_noe, U201_b_noe, i_busNOE),
      o_data => BUS_BUF1,
      o_noe  => BUS_BUF1_noe
      );

  inst_triBusBUS_BUF2: entity work.tristatenet
    generic map (
      INPUT_COUNT => 4
      )
    port map (
      i_data => (BUS_BUF2_U77, BUS_BUF2_U91, BUS_BUF2_U201, i_bus(2)),
      i_noe  => (U77_noe, U91_b_noe, U201_b_noe, i_busNOE),
      o_data => BUS_BUF2,
      o_noe  => BUS_BUF2_noe
      );

  inst_triBusBUS_BUF3: entity work.tristatenet
    generic map (
      INPUT_COUNT => 4
      )
    port map (
      i_data => (BUS_BUF3_U77, BUS_BUF3_U91, BUS_BUF3_U201, i_bus(3)),
      i_noe  => (U77_noe, U91_b_noe, U201_b_noe, i_busNOE),
      o_data => BUS_BUF3,
      o_noe  => BUS_BUF3_noe
      );

  inst_triBusBUS_BUF4: entity work.tristatenet
    generic map (
      INPUT_COUNT => 4
      )
    port map (
      i_data => (BUS_BUF4_U77, BUS_BUF4_U91, BUS_BUF4_U201, i_bus(4)),
      i_noe  => (U77_noe, U91_b_noe, U201_b_noe, i_busNOE),
      o_data => BUS_BUF4,
      o_noe  => BUS_BUF4_noe
      );

  inst_triBusBUS_BUF5: entity work.tristatenet
    generic map (
      INPUT_COUNT => 4
      )
    port map (
      i_data => (BUS_BUF5_U77, BUS_BUF5_U91, BUS_BUF5_U201, i_bus(5)),
      i_noe  => (U77_noe, U91_b_noe, U201_b_noe, i_busNOE),
      o_data => BUS_BUF5,
      o_noe  => BUS_BUF5_noe
      );

  inst_triBusBUS_BUF6: entity work.tristatenet
    generic map (
      INPUT_COUNT => 4
      )
    port map (
      i_data => (BUS_BUF6_U77, BUS_BUF6_U91, BUS_BUF6_U201, i_bus(6)),
      i_noe  => (U77_noe, U91_b_noe, U201_b_noe, i_busNOE),
      o_data => BUS_BUF6,
      o_noe  => BUS_BUF6_noe
      );

  inst_triBusBUS_BUF7: entity work.tristatenet
    generic map (
      INPUT_COUNT => 4
      )
    port map (
      i_data => (BUS_BUF7_U77, BUS_BUF7_U91, BUS_BUF7_U201, i_bus(7)),
      i_noe  => (U77_noe, U91_b_noe, U201_b_noe, i_busNOE),
      o_data => BUS_BUF7,
      o_noe  => BUS_BUF7_noe
      );

  inst_triBusMC_A11: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => MC_A11_U83),
      i_noe  => (others => U83_noe),
      o_data => MC_A11,
      o_noe  => MC_A11_noe
      );

  inst_triBusMC_A12: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => MC_A12_U83),
      i_noe  => (others => U83_noe),
      o_data => MC_A12,
      o_noe  => MC_A12_noe
      );

  inst_triBusMC_A13: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => MC_A13_U83),
      i_noe  => (others => U83_noe),
      o_data => MC_A13,
      o_noe  => MC_A13_noe
      );

  inst_triBusMC_A14: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => MC_A14_U83),
      i_noe  => (others => U83_noe),
      o_data => MC_A14,
      o_noe  => MC_A14_noe
      );

  inst_triBusunconnected_U83_18: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => unconnected_U83_18_U83),
      i_noe  => (others => U83_noe),
      o_data => unconnected_U83_18,
      o_noe  => unconnected_U83_18_noe
      );

  inst_triBusMC_A0: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => MC_A0_U83),
      i_noe  => (others => U83_noe),
      o_data => MC_A0,
      o_noe  => MC_A0_noe
      );

  inst_triBusMC_A1: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => MC_A1_U83),
      i_noe  => (others => U83_noe),
      o_data => MC_A1,
      o_noe  => MC_A1_noe
      );

  inst_triBusMC_A2: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => MC_A2_U83),
      i_noe  => (others => U83_noe),
      o_data => MC_A2,
      o_noe  => MC_A2_noe
      );

  inst_triBusRESET1: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => RESET1_U95),
      i_noe  => (others => U95_b_noe),
      o_data => RESET1,
      o_noe  => RESET1_noe
      );

  inst_triBusCLK1: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => CLK1_U95),
      i_noe  => (others => U95_b_noe),
      o_data => CLK1,
      o_noe  => CLK1_noe
      );

  inst_triBusN17649455: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => N17649455_U95),
      i_noe  => (others => U95_b_noe),
      o_data => N17649455,
      o_noe  => N17649455_noe
      );

  inst_triBusN17647680: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => N17647680_U95),
      i_noe  => (others => U95_b_noe),
      o_data => N17647680,
      o_noe  => N17647680_noe
      );

  inst_triBusN17646046: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => N17646046_U95),
      i_noe  => (others => U95_b_noe),
      o_data => N17646046,
      o_noe  => N17646046_noe
      );

  inst_triBusN17642095: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => N17642095_U95),
      i_noe  => (others => U95_b_noe),
      o_data => N17642095,
      o_noe  => N17642095_noe
      );

  inst_triBusN17643531: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => N17643531_U95),
      i_noe  => (others => U95_b_noe),
      o_data => N17643531,
      o_noe  => N17643531_noe
      );

  inst_triBusN17646477: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => N17646477_U95),
      i_noe  => (others => U95_b_noe),
      o_data => N17646477,
      o_noe  => N17646477_noe
      );

  inst_triBusFLAGNEGATIVE_SRC: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => FLAGNEGATIVE_SRC_U97),
      i_noe  => (others => U97_noe),
      o_data => FLAGNEGATIVE_SRC,
      o_noe  => FLAGNEGATIVE_SRC_noe
      );

  inst_triBusFLAGZERO_SRC: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => FLAGZERO_SRC_U97),
      i_noe  => (others => U97_noe),
      o_data => FLAGZERO_SRC,
      o_noe  => FLAGZERO_SRC_noe
      );

  inst_triBusFLAGCARRY_SRC: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => FLAGCARRY_SRC_U97),
      i_noe  => (others => U97_noe),
      o_data => FLAGCARRY_SRC,
      o_noe  => FLAGCARRY_SRC_noe
      );

  inst_triBusFLAGOVERFLOW_SRC: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => FLAGOVERFLOW_SRC_U97),
      i_noe  => (others => U97_noe),
      o_data => FLAGOVERFLOW_SRC,
      o_noe  => FLAGOVERFLOW_SRC_noe
      );

  inst_triBusunconnected_U97_18: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => unconnected_U97_18_U97),
      i_noe  => (others => U97_noe),
      o_data => unconnected_U97_18,
      o_noe  => unconnected_U97_18_noe
      );

  inst_triBusunconnected_U97_17: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => unconnected_U97_17_U97),
      i_noe  => (others => U97_noe),
      o_data => unconnected_U97_17,
      o_noe  => unconnected_U97_17_noe
      );

  inst_triBusunconnected_U97_16: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => unconnected_U97_16_U97),
      i_noe  => (others => U97_noe),
      o_data => unconnected_U97_16,
      o_noe  => unconnected_U97_16_noe
      );

  inst_triBusunconnected_U97_15: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => unconnected_U97_15_U97),
      i_noe  => (others => U97_noe),
      o_data => unconnected_U97_15,
      o_noe  => unconnected_U97_15_noe
      );

  inst_triBusRAM2DATA7: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAM2DATA7_U98, RAM2DATA7_U205),
      i_noe  => (U98_b_noe, U205_a_noe),
      o_data => RAM2DATA7,
      o_noe  => RAM2DATA7_noe
      );

  inst_triBusRAM2DATA6: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAM2DATA6_U98, RAM2DATA6_U205),
      i_noe  => (U98_b_noe, U205_a_noe),
      o_data => RAM2DATA6,
      o_noe  => RAM2DATA6_noe
      );

  inst_triBusRAM2DATA5: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAM2DATA5_U98, RAM2DATA5_U205),
      i_noe  => (U98_b_noe, U205_a_noe),
      o_data => RAM2DATA5,
      o_noe  => RAM2DATA5_noe
      );

  inst_triBusRAM2DATA4: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAM2DATA4_U98, RAM2DATA4_U205),
      i_noe  => (U98_b_noe, U205_a_noe),
      o_data => RAM2DATA4,
      o_noe  => RAM2DATA4_noe
      );

  inst_triBusRAM2DATA3: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAM2DATA3_U98, RAM2DATA3_U205),
      i_noe  => (U98_b_noe, U205_a_noe),
      o_data => RAM2DATA3,
      o_noe  => RAM2DATA3_noe
      );

  inst_triBusRAM2DATA2: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAM2DATA2_U98, RAM2DATA2_U205),
      i_noe  => (U98_b_noe, U205_a_noe),
      o_data => RAM2DATA2,
      o_noe  => RAM2DATA2_noe
      );

  inst_triBusRAM2DATA1: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAM2DATA1_U98, RAM2DATA1_U205),
      i_noe  => (U98_b_noe, U205_a_noe),
      o_data => RAM2DATA1,
      o_noe  => RAM2DATA1_noe
      );

  inst_triBusRAM2DATA0: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAM2DATA0_U98, RAM2DATA0_U205),
      i_noe  => (U98_b_noe, U205_a_noe),
      o_data => RAM2DATA0,
      o_noe  => RAM2DATA0_noe
      );

  inst_triBusRAM2D0: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAM2D0_U100, RAM2D0_U205),
      i_noe  => (U100_noe, U205_b_noe),
      o_data => RAM2D0,
      o_noe  => RAM2D0_noe
      );

  inst_triBusRAM2D1: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAM2D1_U100, RAM2D1_U205),
      i_noe  => (U100_noe, U205_b_noe),
      o_data => RAM2D1,
      o_noe  => RAM2D1_noe
      );

  inst_triBusRAM2D2: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAM2D2_U100, RAM2D2_U205),
      i_noe  => (U100_noe, U205_b_noe),
      o_data => RAM2D2,
      o_noe  => RAM2D2_noe
      );

  inst_triBusRAM2D3: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAM2D3_U100, RAM2D3_U205),
      i_noe  => (U100_noe, U205_b_noe),
      o_data => RAM2D3,
      o_noe  => RAM2D3_noe
      );

  inst_triBusRAM2D4: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAM2D4_U100, RAM2D4_U205),
      i_noe  => (U100_noe, U205_b_noe),
      o_data => RAM2D4,
      o_noe  => RAM2D4_noe
      );

  inst_triBusRAM2D5: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAM2D5_U100, RAM2D5_U205),
      i_noe  => (U100_noe, U205_b_noe),
      o_data => RAM2D5,
      o_noe  => RAM2D5_noe
      );

  inst_triBusRAM2D6: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAM2D6_U100, RAM2D6_U205),
      i_noe  => (U100_noe, U205_b_noe),
      o_data => RAM2D6,
      o_noe  => RAM2D6_noe
      );

  inst_triBusRAM2D7: entity work.tristatenet
    generic map (
      INPUT_COUNT => 2
      )
    port map (
      i_data => (RAM2D7_U100, RAM2D7_U205),
      i_noe  => (U100_noe, U205_b_noe),
      o_data => RAM2D7,
      o_noe  => RAM2D7_noe
      );

  inst_triBusRAMADDRESS_BUF7: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => RAMADDRESS_BUF7_U202),
      i_noe  => (others => U202_b_noe),
      o_data => RAMADDRESS_BUF7,
      o_noe  => RAMADDRESS_BUF7_noe
      );

  inst_triBusRAMADDRESS_BUF6: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => RAMADDRESS_BUF6_U202),
      i_noe  => (others => U202_b_noe),
      o_data => RAMADDRESS_BUF6,
      o_noe  => RAMADDRESS_BUF6_noe
      );

  inst_triBusRAMADDRESS_BUF5: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => RAMADDRESS_BUF5_U202),
      i_noe  => (others => U202_b_noe),
      o_data => RAMADDRESS_BUF5,
      o_noe  => RAMADDRESS_BUF5_noe
      );

  inst_triBusRAMADDRESS_BUF4: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => RAMADDRESS_BUF4_U202),
      i_noe  => (others => U202_b_noe),
      o_data => RAMADDRESS_BUF4,
      o_noe  => RAMADDRESS_BUF4_noe
      );

  inst_triBusRAMADDRESS_BUF3: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => RAMADDRESS_BUF3_U202),
      i_noe  => (others => U202_b_noe),
      o_data => RAMADDRESS_BUF3,
      o_noe  => RAMADDRESS_BUF3_noe
      );

  inst_triBusRAMADDRESS_BUF2: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => RAMADDRESS_BUF2_U202),
      i_noe  => (others => U202_b_noe),
      o_data => RAMADDRESS_BUF2,
      o_noe  => RAMADDRESS_BUF2_noe
      );

  inst_triBusRAMADDRESS_BUF1: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => RAMADDRESS_BUF1_U202),
      i_noe  => (others => U202_b_noe),
      o_data => RAMADDRESS_BUF1,
      o_noe  => RAMADDRESS_BUF1_noe
      );

  inst_triBusRAMADDRESS_BUF0: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => RAMADDRESS_BUF0_U202),
      i_noe  => (others => U202_b_noe),
      o_data => RAMADDRESS_BUF0,
      o_noe  => RAMADDRESS_BUF0_noe
      );

  inst_triBusRAMADDRESS_BUF15: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => RAMADDRESS_BUF15_U203),
      i_noe  => (others => U203_b_noe),
      o_data => RAMADDRESS_BUF15,
      o_noe  => RAMADDRESS_BUF15_noe
      );

  inst_triBusRAMADDRESS_BUF14: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => RAMADDRESS_BUF14_U203),
      i_noe  => (others => U203_b_noe),
      o_data => RAMADDRESS_BUF14,
      o_noe  => RAMADDRESS_BUF14_noe
      );

  inst_triBusRAMADDRESS_BUF13: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => RAMADDRESS_BUF13_U203),
      i_noe  => (others => U203_b_noe),
      o_data => RAMADDRESS_BUF13,
      o_noe  => RAMADDRESS_BUF13_noe
      );

  inst_triBusRAMADDRESS_BUF12: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => RAMADDRESS_BUF12_U203),
      i_noe  => (others => U203_b_noe),
      o_data => RAMADDRESS_BUF12,
      o_noe  => RAMADDRESS_BUF12_noe
      );

  inst_triBusRAMADDRESS_BUF11: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => RAMADDRESS_BUF11_U203),
      i_noe  => (others => U203_b_noe),
      o_data => RAMADDRESS_BUF11,
      o_noe  => RAMADDRESS_BUF11_noe
      );

  inst_triBusRAMADDRESS_BUF10: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => RAMADDRESS_BUF10_U203),
      i_noe  => (others => U203_b_noe),
      o_data => RAMADDRESS_BUF10,
      o_noe  => RAMADDRESS_BUF10_noe
      );

  inst_triBusRAMADDRESS_BUF9: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => RAMADDRESS_BUF9_U203),
      i_noe  => (others => U203_b_noe),
      o_data => RAMADDRESS_BUF9,
      o_noe  => RAMADDRESS_BUF9_noe
      );

  inst_triBusRAMADDRESS_BUF8: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => RAMADDRESS_BUF8_U203),
      i_noe  => (others => U203_b_noe),
      o_data => RAMADDRESS_BUF8,
      o_noe  => RAMADDRESS_BUF8_noe
      );

  inst_triBusRESET_BUF: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => RESET_BUF_U204),
      i_noe  => (others => U204_b_noe),
      o_data => RESET_BUF,
      o_noe  => RESET_BUF_noe
      );

  inst_triBusCLK_BUF: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => CLK_BUF_U204),
      i_noe  => (others => U204_b_noe),
      o_data => CLK_BUF,
      o_noe  => CLK_BUF_noe
      );

  inst_triBusIOCE_BUF: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => IOCE_BUF_U204),
      i_noe  => (others => U204_b_noe),
      o_data => IOCE_BUF,
      o_noe  => IOCE_BUF_noe
      );

  inst_triBusRAMCE_BUF: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => RAMCE_BUF_U204),
      i_noe  => (others => U204_b_noe),
      o_data => RAMCE_BUF,
      o_noe  => RAMCE_BUF_noe
      );

  inst_triBusSELECTSTACKMEM_BUF: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => SELECTSTACKMEM_BUF_U204),
      i_noe  => (others => U204_b_noe),
      o_data => SELECTSTACKMEM_BUF,
      o_noe  => SELECTSTACKMEM_BUF_noe
      );

  inst_triBusCTRLMEMRAMWE_BUF: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => CTRLMEMRAMWE_BUF_U204),
      i_noe  => (others => U204_b_noe),
      o_data => CTRLMEMRAMWE_BUF,
      o_noe  => CTRLMEMRAMWE_BUF_noe
      );

  inst_triBusCTRLMEMRAMOE_BUF: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => CTRLMEMRAMOE_BUF_U204),
      i_noe  => (others => U204_b_noe),
      o_data => CTRLMEMRAMOE_BUF,
      o_noe  => CTRLMEMRAMOE_BUF_noe
      );

  inst_triBusN16843220: entity work.tristatenet
    generic map (
      INPUT_COUNT => 1
      )
    port map (
      i_data => (others => N16843220_U204),
      i_noe  => (others => U204_b_noe),
      o_data => N16843220,
      o_noe  => N16843220_noe
      );


  inst_JT1 : entity work.icBerg40
    port map (
    port1 => '0',
    port2 => '0',
    port3 => '0',
    port4 => '0',
    port5 => INSTRIMM_UNREG0_SRC,
    port6 => INSTRIMM_UNREG0,
    port7 => INSTRIMM_UNREG1_SRC,
    port8 => INSTRIMM_UNREG1,
    port9 => INSTRIMM_UNREG2_SRC,
    port10 => INSTRIMM_UNREG2,
    port11 => INSTRIMM_UNREG3_SRC,
    port12 => INSTRIMM_UNREG3,
    port13 => INSTRIMM_UNREG4_SRC,
    port14 => INSTRIMM_UNREG4,
    port15 => INSTRIMM_UNREG5_SRC,
    port16 => INSTRIMM_UNREG5,
    port17 => INSTRIMM_UNREG6_SRC,
    port18 => INSTRIMM_UNREG6,
    port19 => INSTRIMM_UNREG7_SRC,
    port20 => INSTRIMM_UNREG7,
    port21 => INSTRIMM_UNREG8_SRC,
    port22 => INSTRIMM_UNREG8,
    port23 => INSTRIMM_UNREG9_SRC,
    port24 => INSTRIMM_UNREG9,
    port25 => INSTRIMM_UNREG10_SRC,
    port26 => INSTRIMM_UNREG10,
    port27 => INSTRIMM_UNREG11_SRC,
    port28 => INSTRIMM_UNREG11,
    port29 => INSTRIMM_UNREG12_SRC,
    port30 => INSTRIMM_UNREG12,
    port31 => INSTRIMM_UNREG13_SRC,
    port32 => INSTRIMM_UNREG13,
    port33 => INSTRIMM_UNREG14_SRC,
    port34 => INSTRIMM_UNREG14,
    port35 => INSTRIMM_UNREG15_SRC,
    port36 => INSTRIMM_UNREG15,
    port37 => '0',
    port38 => '0',
    port39 => '0',
    port40 => '0'
    );

  inst_JT2 : entity work.icBerg26
    port map (
    port1 => '0',
    port2 => '0',
    port3 => '0',
    port4 => '0',
    port5 => INSTR_UNREG0_SRC,
    port6 => INSTR_UNREG0,
    port7 => INSTR_UNREG1_SRC,
    port8 => INSTR_UNREG1,
    port9 => INSTR_UNREG2_SRC,
    port10 => INSTR_UNREG2,
    port11 => INSTR_UNREG3_SRC,
    port12 => INSTR_UNREG3,
    port13 => INSTR_UNREG4_SRC,
    port14 => INSTR_UNREG4,
    port15 => INSTR_UNREG5_SRC,
    port16 => INSTR_UNREG5,
    port17 => INSTR_UNREG6_SRC,
    port18 => INSTR_UNREG6,
    port19 => INSTR_UNREG7_SRC,
    port20 => INSTR_UNREG7,
    port21 => unconnected_JT2_21,
    port22 => unconnected_JT2_22,
    port23 => '0',
    port24 => '0',
    port25 => '0',
    port26 => '0'
    );

  inst_JT4 : entity work.icBerg10
    port map (
    port1 => '0',
    port2 => '0',
    port3 => IOCE_SRC,
    port4 => IOCE,
    port5 => RAMCE_SRC,
    port6 => RAMCE,
    port7 => SELECTSTACKMEM_SRC,
    port8 => SELECTSTACKMEM,
    port9 => '0',
    port10 => '0'
    );

  inst_JT5 : entity work.icBerg40
    port map (
    port1 => '0',
    port2 => '0',
    port3 => '0',
    port4 => '0',
    port5 => CTRLALUYWE_SRC,
    port6 => CTRLALUYWE,
    port7 => CTRLALUOE_SRC,
    port8 => CTRLALUOE,
    port9 => CTRLREG0WE_SRC,
    port10 => CTRLREG0WE,
    port11 => CTRLREG1WE_SRC,
    port12 => CTRLREG1WE,
    port13 => CTRLREGALUSEL_SRC,
    port14 => CTRLREGALUSEL,
    port15 => CTRLREG0BUSOE_SRC,
    port16 => CTRLREG0BUSOE,
    port17 => CTRLREG1BUSOE_SRC,
    port18 => CTRLREG1BUSOE,
    port19 => CTRLMEMPCLOAD_SRC,
    port20 => CTRLMEMPCLOAD,
    port21 => CTRLMEMSPUP_SRC,
    port22 => CTRLMEMSPUP,
    port23 => CTRLMEMSPEN_SRC,
    port24 => CTRLMEMSPEN,
    port25 => CTRLMEMINSTRWE_SRC,
    port26 => CTRLMEMINSTRWE,
    port27 => CTRLMEMINSTROE_SRC,
    port28 => CTRLMEMINSTROE,
    port29 => CTRLMEMMAR0WE_SRC,
    port30 => CTRLMEMMAR0WE,
    port31 => CTRLMEMMAR1WE_SRC,
    port32 => CTRLMEMMAR1WE,
    port33 => CTRLMEMINSTRIMMTORAMADDR_SRC,
    port34 => CTRLMEMINSTRIMMTORAMADDR,
    port35 => CTRLMEMRAMWE_SRC,
    port36 => CTRLMEMRAMWE,
    port37 => '0',
    port38 => '0',
    port39 => '0',
    port40 => '0'
    );

  inst_JT6 : entity work.icBerg26
    port map (
    port1 => '0',
    port2 => '0',
    port3 => '0',
    port4 => '0',
    port5 => CTRLMEMRAMOE_SRC,
    port6 => CTRLMEMRAMOE,
    port7 => CTRLMEMPCEN_SRC,
    port8 => CTRLMEMPCEN,
    port9 => CTRLMEMPCFROMIMM_SRC,
    port10 => CTRLMEMPCFROMIMM,
    port11 => CTRLMEMPCTORAM_SRC,
    port12 => CTRLMEMPCTORAM,
    port13 => CTRLINSTRFINISHED_SRC,
    port14 => CTRLINSTRFINISHED,
    port15 => CTRLALUSUB_SRC,
    port16 => CTRLALUSUB,
    port17 => CTRLALUOP0_SRC,
    port18 => CTRLALUOP0,
    port19 => CTRLALUOP1_SRC,
    port20 => CTRLALUOP1,
    port21 => CTRL_INIT_FF_SRC,
    port22 => CTRL_INIT_FF,
    port23 => '0',
    port24 => '0',
    port25 => '0',
    port26 => '0'
    );

  inst_JT7 : entity work.icBerg10
    port map (
    port1 => '0',
    port2 => open,
    port3 => CLK_UNBUF_SRC,
    port4 => open,
    port5 => '0',
    port6 => open,
    port7 => HALT_SRC,
    port8 => HALT,
    port9 => '0',
    port10 => open
    );

  inst_JT8 : entity work.icBerg40
    port map (
    port1 => '0',
    port2 => '0',
    port3 => '0',
    port4 => '0',
    port5 => A0_SRC,
    port6 => A0,
    port7 => A1_SRC,
    port8 => A1,
    port9 => A2_SRC,
    port10 => A2,
    port11 => A3_SRC,
    port12 => A3,
    port13 => A4_SRC,
    port14 => A4,
    port15 => A5_SRC,
    port16 => A5,
    port17 => A6_SRC,
    port18 => A6,
    port19 => A7_SRC,
    port20 => A7,
    port21 => ALU_OUT0_SRC,
    port22 => ALU_OUT0,
    port23 => ALU_OUT1_SRC,
    port24 => ALU_OUT1,
    port25 => ALU_OUT2_SRC,
    port26 => ALU_OUT2,
    port27 => ALU_OUT3_SRC,
    port28 => ALU_OUT3,
    port29 => ALU_OUT4_SRC,
    port30 => ALU_OUT4,
    port31 => ALU_OUT5_SRC,
    port32 => ALU_OUT5,
    port33 => ALU_OUT6_SRC,
    port34 => ALU_OUT6,
    port35 => ALU_OUT7_SRC,
    port36 => ALU_OUT7,
    port37 => '0',
    port38 => '0',
    port39 => '0',
    port40 => '0'
    );

  inst_JT9 : entity work.icBerg26
    port map (
    port1 => '0',
    port2 => '0',
    port3 => '0',
    port4 => '0',
    port5 => FLAGNEGATIVE_SRC,
    port6 => FLAGNEGATIVE,
    port7 => FLAGZERO_SRC,
    port8 => FLAGZERO,
    port9 => FLAGCARRY_SRC,
    port10 => FLAGCARRY,
    port11 => FLAGOVERFLOW_SRC,
    port12 => FLAGOVERFLOW,
    port13 => unconnected_JT9_13,
    port14 => unconnected_JT9_14,
    port15 => unconnected_JT9_15,
    port16 => unconnected_JT9_16,
    port17 => '0',
    port18 => open,
    port19 => '0',
    port20 => open
    );

  inst_U1 : entity work.ic74x540
    port map (
    port1 => L1,
    port2 => Bus0,
    port3 => Bus1,
    port4 => Bus2,
    port5 => Bus3,
    port6 => Bus4,
    port7 => Bus5,
    port8 => Bus6,
    port9 => Bus7,
    port10 => '0',
    port11 => N165000061,
    port12 => N164998201,
    port13 => N165000921,
    port14 => N164999821,
    port15 => N165000401,
    port16 => N165000681,
    port17 => N164998441,
    port18 => N164998681,
    port19 => L1,
    port20 => VCC
    );

  inst_U2 : entity work.ic74x86
    port map (
    port1 => Bus0,
    port2 => CTRLALUSUB,
    port3 => N16503574,
    port4 => Bus1,
    port5 => CTRLALUSUB,
    port6 => N16506376,
    port7 => '0',
    port8 => N16506838,
    port9 => Bus2,
    port10 => CTRLALUSUB,
    port11 => N16507840,
    port12 => Bus3,
    port13 => CTRLALUSUB,
    port14 => VCC
    );

  inst_U3 : entity work.ic74x86
    port map (
    port1 => Bus4,
    port2 => CTRLALUSUB,
    port3 => N16512311,
    port4 => Bus5,
    port5 => CTRLALUSUB,
    port6 => N16512445,
    port7 => '0',
    port8 => N16512135,
    port9 => Bus6,
    port10 => CTRLALUSUB,
    port11 => N16512013,
    port12 => Bus7,
    port13 => CTRLALUSUB,
    port14 => VCC
    );

  inst_U5 : entity work.ic74x153
    port map (
    port1 => L4,
    port2 => CTRLALUOP1,
    port3 => SHIFT0,
    port4 => XOR0,
    port5 => AND0,
    port6 => ADDER0,
    port7 => ALU_OUT0_SRC,
    port8 => '0',
    port9 => ALU_OUT1_SRC,
    port10 => ADDER1,
    port11 => AND1,
    port12 => XOR1,
    port13 => SHIFT1,
    port14 => CTRLALUOP0,
    port15 => L4,
    port16 => VCC
    );

  inst_U6 : entity work.ic74x153
    port map (
    port1 => L4,
    port2 => CTRLALUOP1,
    port3 => SHIFT2,
    port4 => XOR2,
    port5 => AND2,
    port6 => ADDER2,
    port7 => ALU_OUT2_SRC,
    port8 => '0',
    port9 => ALU_OUT3_SRC,
    port10 => ADDER3,
    port11 => AND3,
    port12 => XOR3,
    port13 => SHIFT3,
    port14 => CTRLALUOP0,
    port15 => L4,
    port16 => VCC
    );

  inst_U7 : entity work.ic74x153
    port map (
    port1 => L4,
    port2 => CTRLALUOP1,
    port3 => SHIFT4,
    port4 => XOR4,
    port5 => AND4,
    port6 => ADDER4,
    port7 => ALU_OUT4_SRC,
    port8 => '0',
    port9 => ALU_OUT5_SRC,
    port10 => ADDER5,
    port11 => AND5,
    port12 => XOR5,
    port13 => SHIFT5,
    port14 => CTRLALUOP0,
    port15 => L4,
    port16 => VCC
    );

  inst_U8 : entity work.ic74x153
    port map (
    port1 => L4,
    port2 => CTRLALUOP1,
    port3 => SHIFT6,
    port4 => XOR6,
    port5 => AND6,
    port6 => ADDER6,
    port7 => ALU_OUT6_SRC,
    port8 => '0',
    port9 => ALU_OUT7_SRC,
    port10 => ADDER7,
    port11 => AND7,
    port12 => XOR7,
    port13 => SHIFT7,
    port14 => CTRLALUOP0,
    port15 => L4,
    port16 => VCC
    );

  inst_U9 : entity work.ic74x825
    port map (
    port1 => L4,
    port2 => L4,
    port3 => ALU_OUT0,
    port4 => ALU_OUT1,
    port5 => ALU_OUT2,
    port6 => ALU_OUT3,
    port7 => ALU_OUT4,
    port8 => ALU_OUT5,
    port9 => ALU_OUT6,
    port10 => ALU_OUT7,
    port11 => RESET1,
    port12 => '0',
    port13 => CLK1,
    port14 => CTRLALUYWE,
    port15 => ALU_OUT_REG7_U9,
    port16 => ALU_OUT_REG6_U9,
    port17 => ALU_OUT_REG5_U9,
    port18 => ALU_OUT_REG4_U9,
    port19 => ALU_OUT_REG3_U9,
    port20 => ALU_OUT_REG2_U9,
    port21 => ALU_OUT_REG1_U9,
    port22 => ALU_OUT_REG0_U9,
    port23 => L4,
    port24 => VCC,
    port25 => U9_noe
    );

  inst_U10 : entity work.ic74x245
    port map (
    port1 => H4,
    port102 => ALU_OUT_REG0,
    port103 => ALU_OUT_REG1,
    port104 => ALU_OUT_REG2,
    port105 => ALU_OUT_REG3,
    port106 => ALU_OUT_REG4,
    port107 => ALU_OUT_REG5,
    port108 => ALU_OUT_REG6,
    port109 => ALU_OUT_REG7,
    port10 => '0',
    port11 => Bus7_U10,
    port12 => Bus6_U10,
    port13 => Bus5_U10,
    port14 => Bus4_U10,
    port15 => Bus3_U10,
    port16 => Bus2_U10,
    port17 => Bus1_U10,
    port18 => Bus0_U10,
    port19 => CTRLALUOE,
    port20 => VCC,
    port21 => U10_a_noe,
    port22 => U10_b_noe,
    port111 => Bus7,
    port112 => Bus6,
    port113 => Bus5,
    port114 => Bus4,
    port115 => Bus3,
    port116 => Bus2,
    port117 => Bus1,
    port118 => Bus0
    );

  inst_U11 : entity work.ic74x540
    port map (
    port1 => L4,
    port2 => ALU_OUT_REG0,
    port3 => ALU_OUT_REG1,
    port4 => ALU_OUT_REG2,
    port5 => ALU_OUT_REG3,
    port6 => ALU_OUT_REG4,
    port7 => ALU_OUT_REG5,
    port8 => ALU_OUT_REG6,
    port9 => ALU_OUT_REG7,
    port10 => '0',
    port11 => N164794631,
    port12 => N1647958916,
    port13 => N1647958915,
    port14 => N1647958914,
    port15 => N1647958913,
    port16 => N1647958912,
    port17 => N1647958911,
    port18 => N1647958910,
    port19 => L4,
    port20 => VCC
    );

  inst_U12 : entity work.ic74x521
    port map (
    port1 => L4,
    port2 => ALU_OUT0,
    port3 => L4,
    port4 => ALU_OUT1,
    port5 => L4,
    port6 => ALU_OUT2,
    port7 => L4,
    port8 => ALU_OUT3,
    port9 => L4,
    port10 => '0',
    port11 => ALU_OUT4,
    port12 => L4,
    port13 => ALU_OUT5,
    port14 => L4,
    port15 => ALU_OUT6,
    port16 => L4,
    port17 => ALU_OUT7,
    port18 => L4,
    port19 => N16474977,
    port20 => VCC
    );

  inst_U13 : entity work.ic74x157
    port map (
    port1 => CTRLALUSUB,
    port2 => A0,
    port3 => A7,
    port4 => N16534656,
    port5 => A1,
    port6 => A6,
    port7 => N16534699,
    port8 => '0',
    port9 => N16534742,
    port10 => A5,
    port11 => A2,
    port12 => N16534785,
    port13 => A4,
    port14 => A3,
    port15 => L4,
    port16 => VCC
    );

  inst_U14 : entity work.ic74x157
    port map (
    port1 => CTRLALUSUB,
    port2 => A4,
    port3 => A3,
    port4 => N16535538,
    port5 => A5,
    port6 => A2,
    port7 => N16535542,
    port8 => '0',
    port9 => N16535546,
    port10 => A1,
    port11 => A6,
    port12 => N16535534,
    port13 => A0,
    port14 => A7,
    port15 => L4,
    port16 => VCC
    );

  inst_U15 : entity work.ic74x157
    port map (
    port1 => Bus0,
    port2 => N16534656,
    port3 => N16534699,
    port4 => N16534828,
    port5 => N16534699,
    port6 => N16534742,
    port7 => N16534911,
    port8 => '0',
    port9 => N16534994,
    port10 => N16534785,
    port11 => N16534742,
    port12 => N16535077,
    port13 => N16535538,
    port14 => N16534785,
    port15 => L4,
    port16 => VCC
    );

  inst_U16 : entity work.ic74x157
    port map (
    port1 => Bus0,
    port2 => N16535538,
    port3 => N16535542,
    port4 => N16535642,
    port5 => N16535542,
    port6 => N16535546,
    port7 => N16535638,
    port8 => '0',
    port9 => N16535646,
    port10 => N16535534,
    port11 => N16535546,
    port12 => N16535634,
    port13 => L1,
    port14 => N16535534,
    port15 => L4,
    port16 => VCC
    );

  inst_U17 : entity work.ic74x157
    port map (
    port1 => Bus1,
    port2 => N16534828,
    port3 => N16534994,
    port4 => N16535160,
    port5 => N16534911,
    port6 => N16535077,
    port7 => N16535243,
    port8 => '0',
    port9 => N16535326,
    port10 => N16535642,
    port11 => N16534994,
    port12 => N16535409,
    port13 => N16535638,
    port14 => N16535077,
    port15 => L4,
    port16 => VCC
    );

  inst_U18 : entity work.ic74x157
    port map (
    port1 => Bus1,
    port2 => N16535642,
    port3 => N16535646,
    port4 => N16535742,
    port5 => N16535638,
    port6 => N16535634,
    port7 => N16535738,
    port8 => '0',
    port9 => N16535746,
    port10 => L1,
    port11 => N16535646,
    port12 => N16535734,
    port13 => L1,
    port14 => N16535634,
    port15 => L4,
    port16 => VCC
    );

  inst_U19 : entity work.ic74x157
    port map (
    port1 => Bus2,
    port2 => N16535160,
    port3 => N16535742,
    port4 => N16546884,
    port5 => N16535243,
    port6 => N16535738,
    port7 => N16546967,
    port8 => '0',
    port9 => N16547050,
    port10 => N16535746,
    port11 => N16535326,
    port12 => N16547133,
    port13 => N16535734,
    port14 => N16535409,
    port15 => L4,
    port16 => VCC
    );

  inst_U20 : entity work.ic74x157
    port map (
    port1 => Bus2,
    port2 => N16535742,
    port3 => L1,
    port4 => N16547410,
    port5 => N16535738,
    port6 => L1,
    port7 => N16547402,
    port8 => '0',
    port9 => N16547398,
    port10 => L1,
    port11 => N16535746,
    port12 => N16547406,
    port13 => L1,
    port14 => N16535734,
    port15 => L4,
    port16 => VCC
    );

  inst_U21 : entity work.ic74x157
    port map (
    port1 => CTRLALUSUB,
    port2 => N16546884,
    port3 => N16547406,
    port4 => SHIFT0,
    port5 => N16546967,
    port6 => N16547398,
    port7 => SHIFT1,
    port8 => '0',
    port9 => SHIFT2,
    port10 => N16547402,
    port11 => N16547050,
    port12 => SHIFT3,
    port13 => N16547410,
    port14 => N16547133,
    port15 => L4,
    port16 => VCC
    );

  inst_U22 : entity work.ic74x157
    port map (
    port1 => CTRLALUSUB,
    port2 => N16547410,
    port3 => N16547133,
    port4 => SHIFT4,
    port5 => N16547402,
    port6 => N16547050,
    port7 => SHIFT5,
    port8 => '0',
    port9 => SHIFT6,
    port10 => N16546967,
    port11 => N16547398,
    port12 => SHIFT7,
    port13 => N16546884,
    port14 => N16547406,
    port15 => L4,
    port16 => VCC
    );

  inst_U23 : entity work.ic74x86
    port map (
    port1 => A3,
    port2 => N16507840,
    port3 => XOR3,
    port4 => A2,
    port5 => N16506838,
    port6 => XOR2,
    port7 => '0',
    port8 => XOR1,
    port9 => A1,
    port10 => N16506376,
    port11 => XOR0,
    port12 => A0,
    port13 => N16503574,
    port14 => VCC
    );

  inst_U24 : entity work.ic74x08
    port map (
    port1 => A3,
    port2 => N16507840,
    port3 => AND3,
    port4 => A2,
    port5 => N16506838,
    port6 => AND2,
    port7 => '0',
    port8 => AND1,
    port9 => A1,
    port10 => N16506376,
    port11 => AND0,
    port12 => A0,
    port13 => N16503574,
    port14 => VCC
    );

  inst_U25 : entity work.ic74x86
    port map (
    port1 => N16507032,
    port2 => XOR3,
    port3 => ADDER3,
    port4 => N16506484,
    port5 => XOR2,
    port6 => ADDER2,
    port7 => '0',
    port8 => ADDER1,
    port9 => N16504571,
    port10 => XOR1,
    port11 => ADDER0,
    port12 => CTRLALUSUB,
    port13 => XOR0,
    port14 => VCC
    );

  inst_U26 : entity work.ic74x08
    port map (
    port1 => N16507032,
    port2 => XOR3,
    port3 => N16507848,
    port4 => N16506484,
    port5 => XOR2,
    port6 => N16506776,
    port7 => '0',
    port8 => N16506388,
    port9 => N16504571,
    port10 => XOR1,
    port11 => N16504502,
    port12 => CTRLALUSUB,
    port13 => XOR0,
    port14 => VCC
    );

  inst_U27 : entity work.ic74x32
    port map (
    port1 => AND3,
    port2 => N16507848,
    port3 => N16508106,
    port4 => AND2,
    port5 => N16506776,
    port6 => N16507032,
    port7 => '0',
    port8 => N16506484,
    port9 => AND1,
    port10 => N16506388,
    port11 => N16504571,
    port12 => AND0,
    port13 => N16504502,
    port14 => VCC
    );

  inst_U28 : entity work.ic74x86
    port map (
    port1 => A7,
    port2 => N16512013,
    port3 => XOR7,
    port4 => A6,
    port5 => N16512135,
    port6 => XOR6,
    port7 => '0',
    port8 => XOR5,
    port9 => A5,
    port10 => N16512445,
    port11 => XOR4,
    port12 => A4,
    port13 => N16512311,
    port14 => VCC
    );

  inst_U29 : entity work.ic74x08
    port map (
    port1 => A7,
    port2 => N16512013,
    port3 => AND7,
    port4 => A6,
    port5 => N16512135,
    port6 => AND6,
    port7 => '0',
    port8 => AND5,
    port9 => A5,
    port10 => N16512445,
    port11 => AND4,
    port12 => A4,
    port13 => N16512311,
    port14 => VCC
    );

  inst_U30 : entity work.ic74x86
    port map (
    port1 => N16512191,
    port2 => XOR7,
    port3 => ADDER7,
    port4 => N16512355,
    port5 => XOR6,
    port6 => ADDER6,
    port7 => '0',
    port8 => ADDER5,
    port9 => N16511879,
    port10 => XOR5,
    port11 => ADDER4,
    port12 => N16508106,
    port13 => XOR4,
    port14 => VCC
    );

  inst_U31 : entity work.ic74x08
    port map (
    port1 => N16512191,
    port2 => XOR7,
    port3 => N16512151,
    port4 => N16512355,
    port5 => XOR6,
    port6 => N16512215,
    port7 => '0',
    port8 => N16512195,
    port9 => N16511879,
    port10 => XOR5,
    port11 => N16512433,
    port12 => N16508106,
    port13 => XOR4,
    port14 => VCC
    );

  inst_U32 : entity work.ic74x32
    port map (
    port1 => AND7,
    port2 => N16512151,
    port3 => FLAG_C,
    port4 => AND6,
    port5 => N16512215,
    port6 => N16512191,
    port7 => '0',
    port8 => N16512355,
    port9 => AND5,
    port10 => N16512195,
    port11 => N16511879,
    port12 => AND4,
    port13 => N16512433,
    port14 => VCC
    );

  inst_U33 : entity work.ic74x14
    port map (
    port1 => N16445057,
    port2 => BREAKPOINTENABLE,
    port3 => N16792555,
    port4 => DEBUG_STEP,
    port5 => N16925459,
    port6 => DEBUG_INSTR_CYCLEN,
    port7 => '0',
    port8 => DEBUG_STEPRUNN,
    port9 => N16923056,
    port10 => N17642894,
    port11 => RQ3,
    port12 => N19014936,
    port13 => RQ6,
    port14 => VCC
    );

  inst_U34 : entity work.icds1813
    port map (
    port1 => N16449995,
    port2 => VCC,
    port3 => '0'
    );

  inst_U35 : entity work.ic74x273
    port map (
    port1 => RESET1,
    port2 => RD2,
    port3 => DEBUG_STEP,
    port4 => RD2,
    port5 => RD3,
    port6 => RQ3,
    port7 => RD3,
    port8 => RD4,
    port9 => RQ4,
    port10 => '0',
    port11 => CLK1,
    port12 => RD6,
    port13 => DEBUG_INSTR_CYCLEN,
    port14 => RD6,
    port15 => RQ6,
    port16 => RD8,
    port17 => DEBUG_STEPRUNN,
    port18 => RD8,
    port19 => RQ8,
    port20 => VCC,
    port111 => L1
    );

  inst_U36 : entity work.ic74x08
    port map (
    port1 => RD3,
    port2 => N17642894,
    port3 => N17642468,
    port4 => N17646554,
    port5 => CTRLINSTRFINISHED,
    port6 => N19014893,
    port7 => '0',
    port8 => N659290,
    port9 => CTRLMEMPCLOAD,
    port10 => RESET1,
    port11 => PCEN,
    port12 => N16823046,
    port13 => CTRLMEMPCLOAD,
    port14 => VCC
    );

  inst_U37 : entity work.ic74x32
    port map (
    port1 => RQ4,
    port2 => N17642468,
    port3 => N17646554,
    port4 => N19014893,
    port5 => N19014936,
    port6 => RD4,
    port7 => '0',
    port8 => N16823046,
    port9 => CTRLMEMPCEN,
    port10 => HALT,
    port11 => SPEN,
    port12 => CTRLMEMSPEN,
    port13 => HALT,
    port14 => VCC
    );

  inst_U38 : entity work.ic74x08
    port map (
    port1 => CTRLMEMSPUP,
    port2 => RESET1,
    port3 => N14944613,
    port4 => H3,
    port5 => H3,
    port6 => unconnected_U38_6,
    port7 => '0',
    port8 => N14977874,
    port9 => INSTRIMM1SELECT,
    port10 => SELECTSTACKMEM,
    port11 => N14959801,
    port12 => CTRLMEMINSTRIMMTORAMADDR,
    port13 => SELECTSTACKMEM,
    port14 => VCC
    );

  inst_U39 : entity work.ic74x151
    port map (
    port1 => RQ4,
    port2 => N17642468,
    port3 => BREAKPOINTHIT,
    port4 => BREAKPOINTHIT,
    port5 => unconnected_U39_5,
    port6 => HALT_SRC,
    port7 => L3,
    port8 => '0',
    port9 => L3,
    port10 => RQ8,
    port11 => RQ6,
    port12 => H3,
    port13 => H3,
    port14 => H3,
    port15 => H3,
    port16 => VCC
    );

  inst_U40 : entity work.ic74x825
    port map (
    port1 => L4,
    port2 => L4,
    port3 => Bus0,
    port4 => Bus1,
    port5 => Bus2,
    port6 => Bus3,
    port7 => Bus4,
    port8 => Bus5,
    port9 => Bus6,
    port10 => Bus7,
    port11 => RESET1,
    port12 => '0',
    port13 => CLK1,
    port14 => CTRLREG0WE,
    port15 => R07_U40,
    port16 => R06_U40,
    port17 => R05_U40,
    port18 => R04_U40,
    port19 => R03_U40,
    port20 => R02_U40,
    port21 => R01_U40,
    port22 => R00_U40,
    port23 => L4,
    port24 => VCC,
    port25 => U40_noe
    );

  inst_U41 : entity work.ic74x825
    port map (
    port1 => L4,
    port2 => L4,
    port3 => Bus0,
    port4 => Bus1,
    port5 => Bus2,
    port6 => Bus3,
    port7 => Bus4,
    port8 => Bus5,
    port9 => Bus6,
    port10 => Bus7,
    port11 => RESET1,
    port12 => '0',
    port13 => CLK1,
    port14 => CTRLREG1WE,
    port15 => R17_U41,
    port16 => R16_U41,
    port17 => R15_U41,
    port18 => R14_U41,
    port19 => R13_U41,
    port20 => R12_U41,
    port21 => R11_U41,
    port22 => R10_U41,
    port23 => L4,
    port24 => VCC,
    port25 => U41_noe
    );

  inst_U42 : entity work.ic74x157
    port map (
    port1 => CTRLREGALUSEL,
    port2 => R00,
    port3 => R10,
    port4 => A0_SRC,
    port5 => R01,
    port6 => R11,
    port7 => A1_SRC,
    port8 => '0',
    port9 => A2_SRC,
    port10 => R12,
    port11 => R02,
    port12 => A3_SRC,
    port13 => R13,
    port14 => R03,
    port15 => L4,
    port16 => VCC
    );

  inst_U43 : entity work.ic74x157
    port map (
    port1 => CTRLREGALUSEL,
    port2 => R04,
    port3 => R14,
    port4 => A4_SRC,
    port5 => R05,
    port6 => R15,
    port7 => A5_SRC,
    port8 => '0',
    port9 => A6_SRC,
    port10 => R16,
    port11 => R06,
    port12 => A7_SRC,
    port13 => R17,
    port14 => R07,
    port15 => L4,
    port16 => VCC
    );

  inst_U44 : entity work.ic74x245
    port map (
    port1 => H4,
    port102 => R00,
    port103 => R01,
    port104 => R02,
    port105 => R03,
    port106 => R04,
    port107 => R05,
    port108 => R06,
    port109 => R07,
    port10 => '0',
    port11 => Bus7_U44,
    port12 => Bus6_U44,
    port13 => Bus5_U44,
    port14 => Bus4_U44,
    port15 => Bus3_U44,
    port16 => Bus2_U44,
    port17 => Bus1_U44,
    port18 => Bus0_U44,
    port19 => CTRLREG0BUSOE,
    port20 => VCC,
    port21 => U44_a_noe,
    port22 => U44_b_noe,
    port111 => Bus7,
    port112 => Bus6,
    port113 => Bus5,
    port114 => Bus4,
    port115 => Bus3,
    port116 => Bus2,
    port117 => Bus1,
    port118 => Bus0
    );

  inst_U45 : entity work.ic74x245
    port map (
    port1 => H4,
    port102 => R10,
    port103 => R11,
    port104 => R12,
    port105 => R13,
    port106 => R14,
    port107 => R15,
    port108 => R16,
    port109 => R17,
    port10 => '0',
    port11 => Bus7_U45,
    port12 => Bus6_U45,
    port13 => Bus5_U45,
    port14 => Bus4_U45,
    port15 => Bus3_U45,
    port16 => Bus2_U45,
    port17 => Bus1_U45,
    port18 => Bus0_U45,
    port19 => CTRLREG1BUSOE,
    port20 => VCC,
    port21 => U45_a_noe,
    port22 => U45_b_noe,
    port111 => Bus7,
    port112 => Bus6,
    port113 => Bus5,
    port114 => Bus4,
    port115 => Bus3,
    port116 => Bus2,
    port117 => Bus1,
    port118 => Bus0
    );

  inst_U46 : entity work.ic74x540
    port map (
    port1 => L4,
    port2 => R00,
    port3 => R01,
    port4 => R02,
    port5 => R03,
    port6 => R04,
    port7 => R05,
    port8 => R06,
    port9 => R07,
    port10 => '0',
    port11 => N164915101,
    port12 => N1649164616,
    port13 => N1649164615,
    port14 => N1649164614,
    port15 => N1649164613,
    port16 => N1649164612,
    port17 => N164915341,
    port18 => N1649164610,
    port19 => L4,
    port20 => VCC
    );

  inst_U47 : entity work.ic74x540
    port map (
    port1 => L4,
    port2 => R10,
    port3 => R11,
    port4 => R12,
    port5 => R13,
    port6 => R14,
    port7 => R15,
    port8 => R16,
    port9 => R17,
    port10 => '0',
    port11 => N164924951,
    port12 => N1649277116,
    port13 => N164926711,
    port14 => N164925351,
    port15 => N1649277113,
    port16 => N164926471,
    port17 => N164925591,
    port18 => N164924591,
    port19 => L4,
    port20 => VCC
    );

  inst_U48 : entity work.ic74x04
    port map (
    port1 => CTRLMEMINSTRIMMTORAMADDR,
    port2 => INSTRIMM1SELECT,
    port3 => IOCE_SRC,
    port4 => RAMCE_SRC,
    port5 => N14959801,
    port6 => INSTRIMM1TORAM,
    port7 => '0',
    port8 => N664486,
    port9 => CTRLMEMPCFROMIMM,
    port10 => N16843155,
    port11 => CTRLMEMPCTORAM,
    port12 => MAR1TORAM,
    port13 => N14977874,
    port14 => VCC
    );

  inst_U49 : entity work.ic74x245
    port map (
    port1 => H1,
    port102 => RAM2DATA0,
    port103 => RAM2DATA1,
    port104 => RAM2DATA2,
    port105 => RAM2DATA3,
    port106 => RAM2DATA4,
    port107 => RAM2DATA5,
    port108 => RAM2DATA6,
    port109 => RAM2DATA7,
    port10 => '0',
    port11 => PCIN15_U49,
    port12 => PCIN14_U49,
    port13 => PCIN13_U49,
    port14 => PCIN12_U49,
    port15 => PCIN11_U49,
    port16 => PCIN10_U49,
    port17 => PCIN9_U49,
    port18 => PCIN8_U49,
    port19 => CTRLMEMPCFROMIMM,
    port20 => VCC,
    port21 => U49_a_noe,
    port22 => U49_b_noe,
    port111 => PCIN15,
    port112 => PCIN14,
    port113 => PCIN13,
    port114 => PCIN12,
    port115 => PCIN11,
    port116 => PCIN10,
    port117 => PCIN9,
    port118 => PCIN8
    );

  inst_U50 : entity work.ic74x245
    port map (
    port1 => H1,
    port102 => INSTRIMM8,
    port103 => INSTRIMM9,
    port104 => INSTRIMM10,
    port105 => INSTRIMM11,
    port106 => INSTRIMM12,
    port107 => INSTRIMM13,
    port108 => INSTRIMM14,
    port109 => INSTRIMM15,
    port10 => '0',
    port11 => PCIN15_U50,
    port12 => PCIN14_U50,
    port13 => PCIN13_U50,
    port14 => PCIN12_U50,
    port15 => PCIN11_U50,
    port16 => PCIN10_U50,
    port17 => PCIN9_U50,
    port18 => PCIN8_U50,
    port19 => N664486,
    port20 => VCC,
    port21 => U50_a_noe,
    port22 => U50_b_noe,
    port111 => PCIN15,
    port112 => PCIN14,
    port113 => PCIN13,
    port114 => PCIN12,
    port115 => PCIN11,
    port116 => PCIN10,
    port117 => PCIN9,
    port118 => PCIN8
    );

  inst_U51 : entity work.ic74x245
    port map (
    port1 => H1,
    port102 => Bus0,
    port103 => Bus1,
    port104 => Bus2,
    port105 => Bus3,
    port106 => Bus4,
    port107 => Bus5,
    port108 => Bus6,
    port109 => Bus7,
    port10 => '0',
    port11 => PCIN7_U51,
    port12 => PCIN6_U51,
    port13 => PCIN5_U51,
    port14 => PCIN4_U51,
    port15 => PCIN3_U51,
    port16 => PCIN2_U51,
    port17 => PCIN1_U51,
    port18 => PCIN0_U51,
    port19 => CTRLMEMPCFROMIMM,
    port20 => VCC,
    port21 => U51_a_noe,
    port22 => U51_b_noe,
    port111 => PCIN7,
    port112 => PCIN6,
    port113 => PCIN5,
    port114 => PCIN4,
    port115 => PCIN3,
    port116 => PCIN2,
    port117 => PCIN1,
    port118 => PCIN0
    );

  inst_U52 : entity work.ic74x245
    port map (
    port1 => H1,
    port102 => INSTRIMM0,
    port103 => INSTRIMM1,
    port104 => INSTRIMM2,
    port105 => INSTRIMM3,
    port106 => INSTRIMM4,
    port107 => INSTRIMM5,
    port108 => INSTRIMM6,
    port109 => INSTRIMM7,
    port10 => '0',
    port11 => PCIN7_U52,
    port12 => PCIN6_U52,
    port13 => PCIN5_U52,
    port14 => PCIN4_U52,
    port15 => PCIN3_U52,
    port16 => PCIN2_U52,
    port17 => PCIN1_U52,
    port18 => PCIN0_U52,
    port19 => N664486,
    port20 => VCC,
    port21 => U52_a_noe,
    port22 => U52_b_noe,
    port111 => PCIN7,
    port112 => PCIN6,
    port113 => PCIN5,
    port114 => PCIN4,
    port115 => PCIN3,
    port116 => PCIN2,
    port117 => PCIN1,
    port118 => PCIN0
    );

  inst_U53 : entity work.ic74x521
    port map (
    port1 => BREAKPOINTENABLE,
    port2 => PC0,
    port3 => BRKPT0,
    port4 => PC1,
    port5 => BRKPT1,
    port6 => PC2,
    port7 => BRKPT2,
    port8 => PC3,
    port9 => BRKPT3,
    port10 => '0',
    port11 => PC4,
    port12 => BRKPT4,
    port13 => PC5,
    port14 => BRKPT5,
    port15 => PC6,
    port16 => BRKPT6,
    port17 => PC7,
    port18 => BRKPT7,
    port19 => N14931877,
    port20 => VCC
    );

  inst_U54 : entity work.ic74x867
    port map (
    port1 => N659290,
    port2 => RESET1,
    port3 => PCIN0,
    port4 => PCIN1,
    port5 => PCIN2,
    port6 => PCIN3,
    port7 => PCIN4,
    port8 => PCIN5,
    port9 => PCIN6,
    port10 => PCIN7,
    port11 => L1,
    port12 => '0',
    port13 => N658208,
    port14 => CLK1,
    port15 => PC7,
    port16 => PC6,
    port17 => PC5,
    port18 => PC4,
    port19 => PC3,
    port20 => PC2,
    port21 => PC1,
    port22 => PC0,
    port23 => PCEN,
    port24 => VCC
    );

  inst_U55 : entity work.ic74x867
    port map (
    port1 => N659290,
    port2 => RESET1,
    port3 => PCIN8,
    port4 => PCIN9,
    port5 => PCIN10,
    port6 => PCIN11,
    port7 => PCIN12,
    port8 => PCIN13,
    port9 => PCIN14,
    port10 => PCIN15,
    port11 => N658208,
    port12 => '0',
    port13 => unconnected_U55_13,
    port14 => CLK1,
    port15 => PC15,
    port16 => PC14,
    port17 => PC13,
    port18 => PC12,
    port19 => PC11,
    port20 => PC10,
    port21 => PC9,
    port22 => PC8,
    port23 => PCEN,
    port24 => VCC
    );

  inst_U56 : entity work.ic74x867
    port map (
    port1 => RESET1,
    port2 => N14944613,
    port3 => L2,
    port4 => L2,
    port5 => L2,
    port6 => L2,
    port7 => L2,
    port8 => L2,
    port9 => L2,
    port10 => L2,
    port11 => L2,
    port12 => '0',
    port13 => unconnected_U56_13,
    port14 => CLK1,
    port15 => SP7,
    port16 => SP6,
    port17 => SP5,
    port18 => SP4,
    port19 => SP3,
    port20 => SP2,
    port21 => SP1,
    port22 => SP0,
    port23 => SPEN,
    port24 => VCC
    );

  inst_U57 : entity work.ic74x540
    port map (
    port1 => L1,
    port2 => PC0,
    port3 => PC1,
    port4 => PC2,
    port5 => PC3,
    port6 => PC4,
    port7 => PC5,
    port8 => PC6,
    port9 => PC7,
    port10 => '0',
    port11 => N164149951,
    port12 => N1641527516,
    port13 => N1641527515,
    port14 => N1641527514,
    port15 => N1641527513,
    port16 => N1641527512,
    port17 => N1641527511,
    port18 => N1641527510,
    port19 => L1,
    port20 => VCC
    );

  inst_U58 : entity work.ic74x540
    port map (
    port1 => L1,
    port2 => PC8,
    port3 => PC9,
    port4 => PC10,
    port5 => PC11,
    port6 => PC12,
    port7 => PC13,
    port8 => PC14,
    port9 => PC15,
    port10 => '0',
    port11 => N164174411,
    port12 => N1641764916,
    port13 => N1641764915,
    port14 => N1641764914,
    port15 => N1641764913,
    port16 => N164174651,
    port17 => N164175531,
    port18 => N1641764910,
    port19 => L1,
    port20 => VCC
    );

  inst_U59 : entity work.ic74x08
    port map (
    port1 => N16861338,
    port2 => CTRLINSTRFINISHED,
    port3 => N16861519,
    port4 => N16435318,
    port5 => CTRLINSTRFINISHED,
    port6 => N16861558,
    port7 => '0',
    port8 => N16861604,
    port9 => N16435404,
    port10 => CTRLINSTRFINISHED,
    port11 => N16435728,
    port12 => MC_A0,
    port13 => MC_A1,
    port14 => VCC
    );

  inst_U60 : entity work.ic74x521
    port map (
    port1 => N14931877,
    port2 => PC8,
    port3 => BRKPT8,
    port4 => PC9,
    port5 => BRKPT9,
    port6 => PC10,
    port7 => BRKPT10,
    port8 => PC11,
    port9 => BRKPT11,
    port10 => '0',
    port11 => PC12,
    port12 => BRKPT12,
    port13 => PC13,
    port14 => BRKPT13,
    port15 => PC14,
    port16 => BRKPT14,
    port17 => PC15,
    port18 => BRKPT15,
    port19 => BREAKPOINTHIT,
    port20 => VCC
    );

  inst_U61 : entity work.ic74x245
    port map (
    port1 => H2,
    port102 => SP0,
    port103 => SP1,
    port104 => SP2,
    port105 => SP3,
    port106 => SP4,
    port107 => SP5,
    port108 => SP6,
    port109 => SP7,
    port10 => '0',
    port11 => RAMADDRESS15_U61,
    port12 => RAMADDRESS14_U61,
    port13 => RAMADDRESS13_U61,
    port14 => RAMADDRESS12_U61,
    port15 => RAMADDRESS11_U61,
    port16 => RAMADDRESS10_U61,
    port17 => RAMADDRESS9_U61,
    port18 => RAMADDRESS8_U61,
    port19 => SELECTSTACKMEM,
    port20 => VCC,
    port21 => U61_a_noe,
    port22 => U61_b_noe,
    port111 => RAMADDRESS15,
    port112 => RAMADDRESS14,
    port113 => RAMADDRESS13,
    port114 => RAMADDRESS12,
    port115 => RAMADDRESS11,
    port116 => RAMADDRESS10,
    port117 => RAMADDRESS9,
    port118 => RAMADDRESS8
    );

  inst_U62 : entity work.ic28C256
    port map (
    port1 => PC14,
    port2 => PC12,
    port3 => PC7,
    port4 => PC6,
    port5 => PC5,
    port6 => PC4,
    port7 => PC3,
    port8 => PC2,
    port9 => PC1,
    port10 => PC0,
    port11 => INSTR_UNREG0_SRC,
    port12 => INSTR_UNREG1_SRC,
    port13 => INSTR_UNREG2_SRC,
    port14 => '0',
    port15 => INSTR_UNREG3_SRC,
    port16 => INSTR_UNREG4_SRC,
    port17 => INSTR_UNREG5_SRC,
    port18 => INSTR_UNREG6_SRC,
    port19 => INSTR_UNREG7_SRC,
    port20 => L1,
    port21 => PC10,
    port22 => L1,
    port23 => PC11,
    port24 => PC9,
    port25 => PC8,
    port26 => PC13,
    port27 => H1,
    port28 => VCC
    );

  inst_U63 : entity work.ic74x825
    port map (
    port1 => CTRLMEMINSTRIMMTORAMADDR,
    port2 => L2,
    port3 => Bus0,
    port4 => Bus1,
    port5 => Bus2,
    port6 => Bus3,
    port7 => Bus4,
    port8 => Bus5,
    port9 => Bus6,
    port10 => Bus7,
    port11 => RESET1,
    port12 => '0',
    port13 => CLK1,
    port14 => CTRLMEMMAR0WE,
    port15 => RAMADDRESS7_U63,
    port16 => RAMADDRESS6_U63,
    port17 => RAMADDRESS5_U63,
    port18 => RAMADDRESS4_U63,
    port19 => RAMADDRESS3_U63,
    port20 => RAMADDRESS2_U63,
    port21 => RAMADDRESS1_U63,
    port22 => RAMADDRESS0_U63,
    port23 => L2,
    port24 => VCC,
    port25 => U63_noe
    );

  inst_U64 : entity work.ic74x825
    port map (
    port1 => L1,
    port2 => L1,
    port3 => INSTR_UNREG0,
    port4 => INSTR_UNREG1,
    port5 => INSTR_UNREG2,
    port6 => INSTR_UNREG3,
    port7 => INSTR_UNREG4,
    port8 => INSTR_UNREG5,
    port9 => INSTR_UNREG6,
    port10 => INSTR_UNREG7,
    port11 => RESET1,
    port12 => '0',
    port13 => CLK1,
    port14 => CTRLMEMINSTRWE,
    port15 => INSTR7_U64,
    port16 => INSTR6_U64,
    port17 => INSTR5_U64,
    port18 => INSTR4_U64,
    port19 => INSTR3_U64,
    port20 => INSTR2_U64,
    port21 => INSTR1_U64,
    port22 => INSTR0_U64,
    port23 => L1,
    port24 => VCC,
    port25 => U64_noe
    );

  inst_U65 : entity work.ic74x245
    port map (
    port1 => H2,
    port102 => INSTRIMM0,
    port103 => INSTRIMM1,
    port104 => INSTRIMM2,
    port105 => INSTRIMM3,
    port106 => INSTRIMM4,
    port107 => INSTRIMM5,
    port108 => INSTRIMM6,
    port109 => INSTRIMM7,
    port10 => '0',
    port11 => RAMADDRESS7_U65,
    port12 => RAMADDRESS6_U65,
    port13 => RAMADDRESS5_U65,
    port14 => RAMADDRESS4_U65,
    port15 => RAMADDRESS3_U65,
    port16 => RAMADDRESS2_U65,
    port17 => RAMADDRESS1_U65,
    port18 => RAMADDRESS0_U65,
    port19 => INSTRIMM1SELECT,
    port20 => VCC,
    port21 => U65_a_noe,
    port22 => U65_b_noe,
    port111 => RAMADDRESS7,
    port112 => RAMADDRESS6,
    port113 => RAMADDRESS5,
    port114 => RAMADDRESS4,
    port115 => RAMADDRESS3,
    port116 => RAMADDRESS2,
    port117 => RAMADDRESS1,
    port118 => RAMADDRESS0
    );

  inst_U66 : entity work.ic74x245
    port map (
    port1 => H2,
    port102 => INSTRIMM8,
    port103 => INSTRIMM9,
    port104 => INSTRIMM10,
    port105 => INSTRIMM11,
    port106 => INSTRIMM12,
    port107 => INSTRIMM13,
    port108 => INSTRIMM14,
    port109 => INSTRIMM15,
    port10 => '0',
    port11 => RAMADDRESS15_U66,
    port12 => RAMADDRESS14_U66,
    port13 => RAMADDRESS13_U66,
    port14 => RAMADDRESS12_U66,
    port15 => RAMADDRESS11_U66,
    port16 => RAMADDRESS10_U66,
    port17 => RAMADDRESS9_U66,
    port18 => RAMADDRESS8_U66,
    port19 => INSTRIMM1TORAM,
    port20 => VCC,
    port21 => U66_a_noe,
    port22 => U66_b_noe,
    port111 => RAMADDRESS15,
    port112 => RAMADDRESS14,
    port113 => RAMADDRESS13,
    port114 => RAMADDRESS12,
    port115 => RAMADDRESS11,
    port116 => RAMADDRESS10,
    port117 => RAMADDRESS9,
    port118 => RAMADDRESS8
    );

  inst_U67 : entity work.ic28C256
    port map (
    port1 => PC14,
    port2 => PC12,
    port3 => PC7,
    port4 => PC6,
    port5 => PC5,
    port6 => PC4,
    port7 => PC3,
    port8 => PC2,
    port9 => PC1,
    port10 => PC0,
    port11 => INSTRIMM_UNREG0_SRC,
    port12 => INSTRIMM_UNREG1_SRC,
    port13 => INSTRIMM_UNREG2_SRC,
    port14 => '0',
    port15 => INSTRIMM_UNREG3_SRC,
    port16 => INSTRIMM_UNREG4_SRC,
    port17 => INSTRIMM_UNREG5_SRC,
    port18 => INSTRIMM_UNREG6_SRC,
    port19 => INSTRIMM_UNREG7_SRC,
    port20 => L1,
    port21 => PC10,
    port22 => L1,
    port23 => PC11,
    port24 => PC9,
    port25 => PC8,
    port26 => PC13,
    port27 => H1,
    port28 => VCC
    );

  inst_U68 : entity work.ic74x825
    port map (
    port1 => L2,
    port2 => L2,
    port3 => Bus0,
    port4 => Bus1,
    port5 => Bus2,
    port6 => Bus3,
    port7 => Bus4,
    port8 => Bus5,
    port9 => Bus6,
    port10 => Bus7,
    port11 => RESET1,
    port12 => '0',
    port13 => CLK1,
    port14 => CTRLMEMMAR1WE,
    port15 => MAR15_U68,
    port16 => MAR14_U68,
    port17 => MAR13_U68,
    port18 => MAR12_U68,
    port19 => MAR11_U68,
    port20 => MAR10_U68,
    port21 => MAR9_U68,
    port22 => MAR8_U68,
    port23 => L2,
    port24 => VCC,
    port25 => U68_noe
    );

  inst_U69 : entity work.ic28C256
    port map (
    port1 => PC14,
    port2 => PC12,
    port3 => PC7,
    port4 => PC6,
    port5 => PC5,
    port6 => PC4,
    port7 => PC3,
    port8 => PC2,
    port9 => PC1,
    port10 => PC0,
    port11 => INSTRIMM_UNREG8_SRC,
    port12 => INSTRIMM_UNREG9_SRC,
    port13 => INSTRIMM_UNREG10_SRC,
    port14 => '0',
    port15 => INSTRIMM_UNREG11_SRC,
    port16 => INSTRIMM_UNREG12_SRC,
    port17 => INSTRIMM_UNREG13_SRC,
    port18 => INSTRIMM_UNREG14_SRC,
    port19 => INSTRIMM_UNREG15_SRC,
    port20 => L1,
    port21 => PC10,
    port22 => L1,
    port23 => PC11,
    port24 => PC9,
    port25 => PC8,
    port26 => PC13,
    port27 => H1,
    port28 => VCC
    );

  inst_U70 : entity work.ic74x825
    port map (
    port1 => L1,
    port2 => L1,
    port3 => INSTRIMM_UNREG0,
    port4 => INSTRIMM_UNREG1,
    port5 => INSTRIMM_UNREG2,
    port6 => INSTRIMM_UNREG3,
    port7 => INSTRIMM_UNREG4,
    port8 => INSTRIMM_UNREG5,
    port9 => INSTRIMM_UNREG6,
    port10 => INSTRIMM_UNREG7,
    port11 => RESET1,
    port12 => '0',
    port13 => CLK1,
    port14 => CTRLMEMINSTRWE,
    port15 => INSTRIMM7_U70,
    port16 => INSTRIMM6_U70,
    port17 => INSTRIMM5_U70,
    port18 => INSTRIMM4_U70,
    port19 => INSTRIMM3_U70,
    port20 => INSTRIMM2_U70,
    port21 => INSTRIMM1_U70,
    port22 => INSTRIMM0_U70,
    port23 => L1,
    port24 => VCC,
    port25 => U70_noe
    );

  inst_U71 : entity work.ic74x825
    port map (
    port1 => L1,
    port2 => L1,
    port3 => INSTRIMM_UNREG8,
    port4 => INSTRIMM_UNREG9,
    port5 => INSTRIMM_UNREG10,
    port6 => INSTRIMM_UNREG11,
    port7 => INSTRIMM_UNREG12,
    port8 => INSTRIMM_UNREG13,
    port9 => INSTRIMM_UNREG14,
    port10 => INSTRIMM_UNREG15,
    port11 => RESET1,
    port12 => '0',
    port13 => CLK1,
    port14 => CTRLMEMINSTRWE,
    port15 => INSTRIMM15_U71,
    port16 => INSTRIMM14_U71,
    port17 => INSTRIMM13_U71,
    port18 => INSTRIMM12_U71,
    port19 => INSTRIMM11_U71,
    port20 => INSTRIMM10_U71,
    port21 => INSTRIMM9_U71,
    port22 => INSTRIMM8_U71,
    port23 => L1,
    port24 => VCC,
    port25 => U71_noe
    );

  inst_U72 : entity work.ic74x245
    port map (
    port1 => H2,
    port102 => MAR8,
    port103 => MAR9,
    port104 => MAR10,
    port105 => MAR11,
    port106 => MAR12,
    port107 => MAR13,
    port108 => MAR14,
    port109 => MAR15,
    port10 => '0',
    port11 => RAMADDRESS15_U72,
    port12 => RAMADDRESS14_U72,
    port13 => RAMADDRESS13_U72,
    port14 => RAMADDRESS12_U72,
    port15 => RAMADDRESS11_U72,
    port16 => RAMADDRESS10_U72,
    port17 => RAMADDRESS9_U72,
    port18 => RAMADDRESS8_U72,
    port19 => MAR1TORAM,
    port20 => VCC,
    port21 => U72_a_noe,
    port22 => U72_b_noe,
    port111 => RAMADDRESS15,
    port112 => RAMADDRESS14,
    port113 => RAMADDRESS13,
    port114 => RAMADDRESS12,
    port115 => RAMADDRESS11,
    port116 => RAMADDRESS10,
    port117 => RAMADDRESS9,
    port118 => RAMADDRESS8
    );

  inst_U73 : entity work.ic74x245
    port map (
    port1 => H2,
    port102 => MAR8,
    port103 => MAR9,
    port104 => MAR10,
    port105 => MAR11,
    port106 => MAR12,
    port107 => MAR13,
    port108 => MAR14,
    port109 => MAR15,
    port10 => '0',
    port11 => SELECT7_U73,
    port12 => SELECT6_U73,
    port13 => SELECT5_U73,
    port14 => SELECT4_U73,
    port15 => SELECT3_U73,
    port16 => SELECT2_U73,
    port17 => SELECT1_U73,
    port18 => SELECT0_U73,
    port19 => CTRLMEMINSTRIMMTORAMADDR,
    port20 => VCC,
    port21 => U73_a_noe,
    port22 => U73_b_noe,
    port111 => SELECT7,
    port112 => SELECT6,
    port113 => SELECT5,
    port114 => SELECT4,
    port115 => SELECT3,
    port116 => SELECT2,
    port117 => SELECT1,
    port118 => SELECT0
    );

  inst_U74 : entity work.ic74x245
    port map (
    port1 => H2,
    port102 => INSTRIMM8,
    port103 => INSTRIMM9,
    port104 => INSTRIMM10,
    port105 => INSTRIMM11,
    port106 => INSTRIMM12,
    port107 => INSTRIMM13,
    port108 => INSTRIMM14,
    port109 => INSTRIMM15,
    port10 => '0',
    port11 => SELECT7_U74,
    port12 => SELECT6_U74,
    port13 => SELECT5_U74,
    port14 => SELECT4_U74,
    port15 => SELECT3_U74,
    port16 => SELECT2_U74,
    port17 => SELECT1_U74,
    port18 => SELECT0_U74,
    port19 => INSTRIMM1SELECT,
    port20 => VCC,
    port21 => U74_a_noe,
    port22 => U74_b_noe,
    port111 => SELECT7,
    port112 => SELECT6,
    port113 => SELECT5,
    port114 => SELECT4,
    port115 => SELECT3,
    port116 => SELECT2,
    port117 => SELECT1,
    port118 => SELECT0
    );

  inst_U75 : entity work.ic74x245
    port map (
    port1 => H1,
    port102 => INSTRIMM0,
    port103 => INSTRIMM1,
    port104 => INSTRIMM2,
    port105 => INSTRIMM3,
    port106 => INSTRIMM4,
    port107 => INSTRIMM5,
    port108 => INSTRIMM6,
    port109 => INSTRIMM7,
    port10 => '0',
    port11 => Bus7_U75,
    port12 => Bus6_U75,
    port13 => Bus5_U75,
    port14 => Bus4_U75,
    port15 => Bus3_U75,
    port16 => Bus2_U75,
    port17 => Bus1_U75,
    port18 => Bus0_U75,
    port19 => CTRLMEMINSTROE,
    port20 => VCC,
    port21 => U75_a_noe,
    port22 => U75_b_noe,
    port111 => Bus7,
    port112 => Bus6,
    port113 => Bus5,
    port114 => Bus4,
    port115 => Bus3,
    port116 => Bus2,
    port117 => Bus1,
    port118 => Bus0
    );

  inst_U76 : entity work.ic74x521
    port map (
    port1 => L2,
    port2 => SELECT0,
    port3 => H2,
    port4 => SELECT1,
    port5 => H2,
    port6 => SELECT2,
    port7 => H2,
    port8 => SELECT3,
    port9 => H2,
    port10 => '0',
    port11 => SELECT4,
    port12 => H2,
    port13 => SELECT5,
    port14 => H2,
    port15 => SELECT6,
    port16 => H2,
    port17 => SELECT7,
    port18 => H2,
    port19 => SELECTSTACKMEM_SRC,
    port20 => VCC
    );

  inst_U77 : entity work.icAS6C4008
    port map (
    port1 => L2,
    port2 => SELECTSTACKMEM_BUF,
    port3 => RAMADDRESS_BUF14,
    port4 => RAMADDRESS_BUF12,
    port5 => RAMADDRESS_BUF7,
    port6 => RAMADDRESS_BUF6,
    port7 => RAMADDRESS_BUF5,
    port8 => RAMADDRESS_BUF4,
    port9 => RAMADDRESS_BUF3,
    port10 => RAMADDRESS_BUF2,
    port11 => RAMADDRESS_BUF1,
    port12 => RAMADDRESS_BUF0,
    port13 => BUS_BUF0_U77,
    port14 => BUS_BUF1_U77,
    port15 => BUS_BUF2_U77,
    port16 => '0',
    port17 => BUS_BUF3_U77,
    port18 => BUS_BUF4_U77,
    port19 => BUS_BUF5_U77,
    port20 => BUS_BUF6_U77,
    port21 => BUS_BUF7_U77,
    port22 => RAMCE_BUF,
    port23 => RAMADDRESS_BUF10,
    port24 => CTRLMEMRAMOE_BUF,
    port25 => RAMADDRESS_BUF11,
    port26 => RAMADDRESS_BUF9,
    port27 => RAMADDRESS_BUF8,
    port28 => RAMADDRESS_BUF13,
    port29 => CTRLMEMRAMWE_BUF,
    port30 => L2,
    port31 => RAMADDRESS_BUF15,
    port32 => VCC,
    port33 => U77_noe,
    port34 => i_asyncRamSpecialClock,
    port113 => BUS_BUF0,
    port114 => BUS_BUF1,
    port115 => BUS_BUF2,
    port117 => BUS_BUF3,
    port118 => BUS_BUF4,
    port119 => BUS_BUF5,
    port120 => BUS_BUF6,
    port121 => BUS_BUF7
    );

  inst_U79 : entity work.ic74x521
    port map (
    port1 => L2,
    port2 => SELECT0,
    port3 => L2,
    port4 => SELECT1,
    port5 => H2,
    port6 => SELECT2,
    port7 => H2,
    port8 => SELECT3,
    port9 => H2,
    port10 => '0',
    port11 => SELECT4,
    port12 => H2,
    port13 => SELECT5,
    port14 => H2,
    port15 => SELECT6,
    port16 => H2,
    port17 => SELECT7,
    port18 => H2,
    port19 => IOCE_SRC,
    port20 => VCC
    );

  inst_U81 : entity work.ic74x86
    port map (
    port1 => N16512191,
    port2 => FLAG_C,
    port3 => FLAG_V,
    port4 => H1,
    port5 => MC_A0,
    port6 => N16861338,
    port7 => '0',
    port8 => N16435404,
    port9 => MC_A2,
    port10 => N16435728,
    port11 => N16435318,
    port12 => MC_A0,
    port13 => MC_A1,
    port14 => VCC
    );

  inst_U83 : entity work.ic74x825
    port map (
    port1 => L3,
    port2 => L3,
    port3 => FLAGNEGATIVE,
    port4 => FLAGZERO,
    port5 => FLAGCARRY,
    port6 => FLAGOVERFLOW,
    port7 => H3,
    port8 => N16861519,
    port9 => N16861558,
    port10 => N16861604,
    port11 => RESET1,
    port12 => '0',
    port13 => CLK1,
    port14 => HALT,
    port15 => MC_A2_U83,
    port16 => MC_A1_U83,
    port17 => MC_A0_U83,
    port18 => unconnected_U83_18_U83,
    port19 => MC_A14_U83,
    port20 => MC_A13_U83,
    port21 => MC_A12_U83,
    port22 => MC_A11_U83,
    port23 => L3,
    port24 => VCC,
    port25 => U83_noe
    );

  inst_U84 : entity work.ic74x374
    port map (
    port1 => L3,
    port2 => CTRLALUSUB_SRC,
    port3 => INSTR0,
    port4 => INSTR1,
    port5 => CTRLALUOP0_SRC,
    port6 => CTRLALUOP1_SRC,
    port7 => INSTR2,
    port8 => INSTR3,
    port9 => MC_A6,
    port10 => '0',
    port11 => CLK1,
    port12 => MC_A7,
    port13 => INSTR4,
    port14 => INSTR5,
    port15 => MC_A8,
    port16 => MC_A9,
    port17 => INSTR6,
    port18 => INSTR7,
    port19 => MC_A10,
    port20 => VCC
    );

  inst_U85 : entity work.ic28C256
    port map (
    port1 => MC_A14,
    port2 => MC_A12,
    port3 => MC_A7,
    port4 => MC_A6,
    port5 => CTRLALUOP1_SRC,
    port6 => CTRLALUOP0_SRC,
    port7 => CTRLALUSUB_SRC,
    port8 => MC_A2,
    port9 => MC_A1,
    port10 => MC_A0,
    port11 => CTRLALUYWE_SRC,
    port12 => CTRLALUOE_SRC,
    port13 => CTRLREG0WE_SRC,
    port14 => '0',
    port15 => CTRLREG1WE_SRC,
    port16 => CTRLREGALUSEL_SRC,
    port17 => CTRLREG0BUSOE_SRC,
    port18 => CTRLREG1BUSOE_SRC,
    port19 => CTRLMEMPCLOAD_SRC,
    port20 => L3,
    port21 => MC_A10,
    port22 => L3,
    port23 => MC_A11,
    port24 => MC_A9,
    port25 => MC_A8,
    port26 => MC_A13,
    port27 => H3,
    port28 => VCC
    );

  inst_U86 : entity work.ic28C256
    port map (
    port1 => MC_A14,
    port2 => MC_A12,
    port3 => MC_A7,
    port4 => MC_A6,
    port5 => CTRLALUOP1_SRC,
    port6 => CTRLALUOP0_SRC,
    port7 => CTRLALUSUB_SRC,
    port8 => MC_A2,
    port9 => MC_A1,
    port10 => MC_A0,
    port11 => CTRLMEMSPUP_SRC,
    port12 => CTRLMEMSPEN_SRC,
    port13 => CTRLMEMINSTRWE_SRC,
    port14 => '0',
    port15 => CTRLMEMINSTROE_SRC,
    port16 => CTRLMEMMAR0WE_SRC,
    port17 => CTRLMEMMAR1WE_SRC,
    port18 => CTRLMEMINSTRIMMTORAMADDR_SRC,
    port19 => CTRLMEMRAMWE_SRC,
    port20 => L3,
    port21 => MC_A10,
    port22 => L3,
    port23 => MC_A11,
    port24 => MC_A9,
    port25 => MC_A8,
    port26 => MC_A13,
    port27 => H3,
    port28 => VCC
    );

  inst_U87 : entity work.ic28C256
    port map (
    port1 => MC_A14,
    port2 => MC_A12,
    port3 => MC_A7,
    port4 => MC_A6,
    port5 => CTRLALUOP1_SRC,
    port6 => CTRLALUOP0_SRC,
    port7 => CTRLALUSUB_SRC,
    port8 => MC_A2,
    port9 => MC_A1,
    port10 => MC_A0,
    port11 => CTRLMEMRAMOE_SRC,
    port12 => CTRLMEMPCEN_SRC,
    port13 => CTRLMEMPCFROMIMM_SRC,
    port14 => '0',
    port15 => CTRLMEMPCTORAM_SRC,
    port16 => CTRLINSTRFINISHED_SRC,
    port17 => CTRL_INIT_FF_SRC,
    port18 => unconnected_U87_18,
    port19 => unconnected_U87_19,
    port20 => L3,
    port21 => MC_A10,
    port22 => L3,
    port23 => MC_A11,
    port24 => MC_A9,
    port25 => MC_A8,
    port26 => MC_A13,
    port27 => H3,
    port28 => VCC
    );

  inst_U88 : entity work.ic74x521
    port map (
    port1 => IOCE,
    port2 => RAMADDRESS0,
    port3 => L3,
    port4 => RAMADDRESS1,
    port5 => L3,
    port6 => RAMADDRESS2,
    port7 => L3,
    port8 => RAMADDRESS3,
    port9 => L3,
    port10 => '0',
    port11 => RAMADDRESS4,
    port12 => L3,
    port13 => RAMADDRESS5,
    port14 => L3,
    port15 => RAMADDRESS6,
    port16 => L3,
    port17 => RAMADDRESS7,
    port18 => L3,
    port19 => N16454961,
    port20 => VCC
    );

  inst_U89 : entity work.ic74x32
    port map (
    port1 => N16454961,
    port2 => CTRLMEMRAMWE,
    port3 => IO_0_WR,
    port4 => N16454961,
    port5 => CTRLMEMRAMOE,
    port6 => IO_0_RD,
    port7 => '0',
    port8 => unconnected_U89_8,
    port9 => H3,
    port10 => H3,
    port11 => unconnected_U89_11,
    port12 => H3,
    port13 => H3,
    port14 => VCC
    );

  inst_U91 : entity work.ic74x245
    port map (
    port1 => H3,
    port102 => IN0,
    port103 => IN1,
    port104 => IN2,
    port105 => IN3,
    port106 => IN4,
    port107 => IN5,
    port108 => IN6,
    port109 => IN7,
    port10 => '0',
    port11 => BUS_BUF7_U91,
    port12 => BUS_BUF6_U91,
    port13 => BUS_BUF5_U91,
    port14 => BUS_BUF4_U91,
    port15 => BUS_BUF3_U91,
    port16 => BUS_BUF2_U91,
    port17 => BUS_BUF1_U91,
    port18 => BUS_BUF0_U91,
    port19 => IO_0_RD,
    port20 => VCC,
    port21 => U91_a_noe,
    port22 => U91_b_noe,
    port111 => BUS_BUF7,
    port112 => BUS_BUF6,
    port113 => BUS_BUF5,
    port114 => BUS_BUF4,
    port115 => BUS_BUF3,
    port116 => BUS_BUF2,
    port117 => BUS_BUF1,
    port118 => BUS_BUF0
    );

  inst_U92 : entity work.ic74x273
    port map (
    port1 => RESET1,
    port2 => N16459199,
    port3 => BUS_BUF0,
    port4 => BUS_BUF1,
    port5 => N16459283,
    port6 => N16459367,
    port7 => BUS_BUF2,
    port8 => BUS_BUF3,
    port9 => N16459427,
    port10 => '0',
    port11 => i_clk100,
    port12 => N16459511,
    port13 => BUS_BUF4,
    port14 => BUS_BUF5,
    port15 => N16459595,
    port16 => N16459679,
    port17 => BUS_BUF6,
    port18 => BUS_BUF7,
    port19 => N16459739,
    port20 => VCC,
    port111 => IO_0_WR
    );

  inst_U93 : entity work.ic5082_7340
    port map (
    port1 => N16459283,
    port2 => N16459367,
    port3 => N16459427,
    port4 => L3,
    port5 => L3,
    port6 => '0',
    port7 => VCC,
    port8 => N16459199
    );

  inst_U94 : entity work.ic5082_7340
    port map (
    port1 => N16459595,
    port2 => N16459679,
    port3 => N16459739,
    port4 => L3,
    port5 => L3,
    port6 => '0',
    port7 => VCC,
    port8 => N16459511
    );

  inst_U95 : entity work.ic74x245
    port map (
    port1 => H3,
    port102 => CLK_UNBUF,
    port103 => CLK_UNBUF,
    port104 => CLK_UNBUF,
    port105 => CLK_UNBUF,
    port106 => CLK_UNBUF,
    port107 => CLK_UNBUF,
    port108 => CLK_UNBUF,
    port109 => N16449995,
    port10 => '0',
    port11 => RESET1_U95,
    port12 => CLK1_U95,
    port13 => N17649455_U95,
    port14 => N17647680_U95,
    port15 => N17646046_U95,
    port16 => N17642095_U95,
    port17 => N17643531_U95,
    port18 => N17646477_U95,
    port19 => L3,
    port20 => VCC,
    port21 => U95_a_noe,
    port22 => U95_b_noe,
    port111 => RESET1,
    port112 => CLK1,
    port113 => N17649455,
    port114 => N17647680,
    port115 => N17646046,
    port116 => N17642095,
    port117 => N17643531,
    port118 => N17646477
    );

  inst_U96 : entity work.ic74x540
    port map (
    port1 => L3,
    port2 => MC_A11,
    port3 => MC_A12,
    port4 => MC_A13,
    port5 => MC_A14,
    port6 => L3,
    port7 => MC_A0,
    port8 => MC_A1,
    port9 => MC_A2,
    port10 => '0',
    port11 => N164369361,
    port12 => N164369601,
    port13 => N164370881,
    port14 => unconnected_U96_14,
    port15 => N164369941,
    port16 => N164368901,
    port17 => N164370301,
    port18 => N1643718410,
    port19 => L3,
    port20 => VCC
    );

  inst_U97 : entity work.ic74x825
    port map (
    port1 => L4,
    port2 => L4,
    port3 => ALU_OUT7,
    port4 => FLAG_Z,
    port5 => N16855171,
    port6 => FLAG_V,
    port7 => H4,
    port8 => H4,
    port9 => H4,
    port10 => H4,
    port11 => RESET1,
    port12 => '0',
    port13 => CLK1,
    port14 => CTRLALUYWE,
    port15 => unconnected_U97_15_U97,
    port16 => unconnected_U97_16_U97,
    port17 => unconnected_U97_17_U97,
    port18 => unconnected_U97_18_U97,
    port19 => FLAGOVERFLOW_SRC_U97,
    port20 => FLAGCARRY_SRC_U97,
    port21 => FLAGZERO_SRC_U97,
    port22 => FLAGNEGATIVE_SRC_U97,
    port23 => L4,
    port24 => VCC,
    port25 => U97_noe
    );

  inst_U98 : entity work.ic74x245
    port map (
    port1 => H1,
    port102 => PC8,
    port103 => PC9,
    port104 => PC10,
    port105 => PC11,
    port106 => PC12,
    port107 => PC13,
    port108 => PC14,
    port109 => PC15,
    port10 => '0',
    port11 => RAM2DATA7_U98,
    port12 => RAM2DATA6_U98,
    port13 => RAM2DATA5_U98,
    port14 => RAM2DATA4_U98,
    port15 => RAM2DATA3_U98,
    port16 => RAM2DATA2_U98,
    port17 => RAM2DATA1_U98,
    port18 => RAM2DATA0_U98,
    port19 => CTRLMEMPCTORAM,
    port20 => VCC,
    port21 => U98_a_noe,
    port22 => U98_b_noe,
    port111 => RAM2DATA7,
    port112 => RAM2DATA6,
    port113 => RAM2DATA5,
    port114 => RAM2DATA4,
    port115 => RAM2DATA3,
    port116 => RAM2DATA2,
    port117 => RAM2DATA1,
    port118 => RAM2DATA0
    );

  inst_U99 : entity work.ic74x245
    port map (
    port1 => H1,
    port102 => PC0,
    port103 => PC1,
    port104 => PC2,
    port105 => PC3,
    port106 => PC4,
    port107 => PC5,
    port108 => PC6,
    port109 => PC7,
    port10 => '0',
    port11 => Bus7_U99,
    port12 => Bus6_U99,
    port13 => Bus5_U99,
    port14 => Bus4_U99,
    port15 => Bus3_U99,
    port16 => Bus2_U99,
    port17 => Bus1_U99,
    port18 => Bus0_U99,
    port19 => CTRLMEMPCTORAM,
    port20 => VCC,
    port21 => U99_a_noe,
    port22 => U99_b_noe,
    port111 => Bus7,
    port112 => Bus6,
    port113 => Bus5,
    port114 => Bus4,
    port115 => Bus3,
    port116 => Bus2,
    port117 => Bus1,
    port118 => Bus0
    );

  inst_U100 : entity work.icAS6C4008
    port map (
    port1 => L2,
    port2 => SELECTSTACKMEM_BUF,
    port3 => RAMADDRESS_BUF14,
    port4 => RAMADDRESS_BUF12,
    port5 => RAMADDRESS_BUF7,
    port6 => RAMADDRESS_BUF6,
    port7 => RAMADDRESS_BUF5,
    port8 => RAMADDRESS_BUF4,
    port9 => RAMADDRESS_BUF3,
    port10 => RAMADDRESS_BUF2,
    port11 => RAMADDRESS_BUF1,
    port12 => RAMADDRESS_BUF0,
    port13 => RAM2D0_U100,
    port14 => RAM2D1_U100,
    port15 => RAM2D2_U100,
    port16 => '0',
    port17 => RAM2D3_U100,
    port18 => RAM2D4_U100,
    port19 => RAM2D5_U100,
    port20 => RAM2D6_U100,
    port21 => RAM2D7_U100,
    port22 => RAMCE_BUF,
    port23 => RAMADDRESS_BUF10,
    port24 => N16843220,
    port25 => RAMADDRESS_BUF11,
    port26 => RAMADDRESS_BUF9,
    port27 => RAMADDRESS_BUF8,
    port28 => RAMADDRESS_BUF13,
    port29 => CTRLMEMRAMWE_BUF,
    port30 => L2,
    port31 => RAMADDRESS_BUF15,
    port32 => VCC,
    port33 => U100_noe,
    port34 => i_asyncRamSpecialClock,
    port113 => RAM2D0,
    port114 => RAM2D1,
    port115 => RAM2D2,
    port117 => RAM2D3,
    port118 => RAM2D4,
    port119 => RAM2D5,
    port120 => RAM2D6,
    port121 => RAM2D7
    );

  inst_U101 : entity work.ic74x151
    port map (
    port1 => FLAGCSHIFT,
    port2 => FLAG_C,
    port3 => FLAG_C,
    port4 => FLAG_C,
    port5 => N16855171,
    port6 => unconnected_U101_6,
    port7 => L4,
    port8 => '0',
    port9 => L4,
    port10 => CTRLALUOP1,
    port11 => CTRLALUOP0,
    port12 => H4,
    port13 => H4,
    port14 => H4,
    port15 => H4,
    port16 => VCC
    );

  inst_U102 : entity work.ic74x151
    port map (
    port1 => N16534742,
    port2 => N16534699,
    port3 => N16534656,
    port4 => FLAGCARRY,
    port5 => FLAGCSHIFT,
    port6 => unconnected_U102_6,
    port7 => L4,
    port8 => '0',
    port9 => Bus2,
    port10 => Bus1,
    port11 => Bus0,
    port12 => N16535546,
    port13 => N16535542,
    port14 => N16535538,
    port15 => N16534785,
    port16 => VCC
    );

  inst_U104 : entity work.ic74x04
    port map (
    port1 => N16474977,
    port2 => FLAG_Z,
    port3 => H4,
    port4 => unconnected_U104_4,
    port5 => H4,
    port6 => unconnected_U104_6,
    port7 => '0',
    port8 => unconnected_U104_8,
    port9 => H4,
    port10 => unconnected_U104_10,
    port11 => H4,
    port12 => unconnected_U104_12,
    port13 => H4,
    port14 => VCC
    );

  inst_U106 : entity work.ic74x540
    port map (
    port1 => L2,
    port2 => SP0,
    port3 => SP1,
    port4 => SP2,
    port5 => SP3,
    port6 => SP4,
    port7 => SP5,
    port8 => SP6,
    port9 => SP7,
    port10 => '0',
    port11 => N168875131,
    port12 => N1688761116,
    port13 => N1688761115,
    port14 => N1688761114,
    port15 => N1688761113,
    port16 => N1688761112,
    port17 => N168875251,
    port18 => N168875631,
    port19 => L2,
    port20 => VCC
    );

  inst_U107 : entity work.ic74x540
    port map (
    port1 => L2,
    port2 => MAR8,
    port3 => MAR9,
    port4 => MAR10,
    port5 => MAR11,
    port6 => MAR12,
    port7 => MAR13,
    port8 => MAR14,
    port9 => MAR15,
    port10 => '0',
    port11 => N169105331,
    port12 => N169106021,
    port13 => N169105801,
    port14 => N169104971,
    port15 => N169105211,
    port16 => N169105601,
    port17 => N1691065911,
    port18 => N169105481,
    port19 => L2,
    port20 => VCC
    );

  inst_U108 : entity work.ic74x540
    port map (
    port1 => L2,
    port2 => RAMADDRESS0,
    port3 => RAMADDRESS1,
    port4 => RAMADDRESS2,
    port5 => RAMADDRESS3,
    port6 => RAMADDRESS4,
    port7 => RAMADDRESS5,
    port8 => RAMADDRESS6,
    port9 => RAMADDRESS7,
    port10 => '0',
    port11 => N1691277017,
    port12 => N1691277016,
    port13 => N1691277015,
    port14 => N1691277014,
    port15 => N1691277013,
    port16 => N1691277012,
    port17 => N169127101,
    port18 => N1691277010,
    port19 => L2,
    port20 => VCC
    );

  inst_U109 : entity work.ic74x540
    port map (
    port1 => L2,
    port2 => RAMADDRESS8,
    port3 => RAMADDRESS9,
    port4 => RAMADDRESS10,
    port5 => RAMADDRESS11,
    port6 => RAMADDRESS12,
    port7 => RAMADDRESS13,
    port8 => RAMADDRESS14,
    port9 => RAMADDRESS15,
    port10 => '0',
    port11 => N169178271,
    port12 => N169177831,
    port13 => N169177951,
    port14 => N1691787514,
    port15 => N1691787513,
    port16 => N169178071,
    port17 => N1691787511,
    port18 => N169177411,
    port19 => L2,
    port20 => VCC
    );

  inst_U110 : entity work.ic74x540
    port map (
    port1 => L1,
    port2 => INSTRIMM0,
    port3 => INSTRIMM1,
    port4 => INSTRIMM2,
    port5 => INSTRIMM3,
    port6 => INSTRIMM4,
    port7 => INSTRIMM5,
    port8 => INSTRIMM6,
    port9 => INSTRIMM7,
    port10 => '0',
    port11 => N1692393517,
    port12 => N169238391,
    port13 => N1692393515,
    port14 => N169238271,
    port15 => N169238761,
    port16 => N169238541,
    port17 => N1692393511,
    port18 => N1692393510,
    port19 => L1,
    port20 => VCC
    );

  inst_U111 : entity work.ic74x540
    port map (
    port1 => L1,
    port2 => INSTRIMM8,
    port3 => INSTRIMM9,
    port4 => INSTRIMM10,
    port5 => INSTRIMM11,
    port6 => INSTRIMM12,
    port7 => INSTRIMM13,
    port8 => INSTRIMM14,
    port9 => INSTRIMM15,
    port10 => '0',
    port11 => N1692707317,
    port12 => N169269201,
    port13 => N169270111,
    port14 => N169269491,
    port15 => N1692707313,
    port16 => N169269371,
    port17 => N169269961,
    port18 => N169270231,
    port19 => L1,
    port20 => VCC
    );

  inst_U112 : entity work.ic74x540
    port map (
    port1 => L1,
    port2 => INSTR0,
    port3 => INSTR1,
    port4 => INSTR2,
    port5 => INSTR3,
    port6 => INSTR4,
    port7 => INSTR5,
    port8 => INSTR6,
    port9 => INSTR7,
    port10 => '0',
    port11 => N1692890117,
    port12 => N1692890116,
    port13 => N1692890115,
    port14 => N169288471,
    port15 => N169288331,
    port16 => N169288061,
    port17 => N1692890111,
    port18 => N1692890110,
    port19 => L1,
    port20 => VCC
    );

  inst_U201 : entity work.ic74x245
    port map (
    port1 => CTRLMEMRAMOE,
    port2 => Bus0_U201,
    port3 => Bus1_U201,
    port4 => Bus2_U201,
    port5 => Bus3_U201,
    port6 => Bus4_U201,
    port7 => Bus5_U201,
    port8 => Bus6_U201,
    port9 => Bus7_U201,
    port10 => '0',
    port11 => BUS_BUF7_U201,
    port12 => BUS_BUF6_U201,
    port13 => BUS_BUF5_U201,
    port14 => BUS_BUF4_U201,
    port15 => BUS_BUF3_U201,
    port16 => BUS_BUF2_U201,
    port17 => BUS_BUF1_U201,
    port18 => BUS_BUF0_U201,
    port19 => L2,
    port20 => VCC,
    port21 => U201_a_noe,
    port22 => U201_b_noe,
    port111 => BUS_BUF7,
    port112 => BUS_BUF6,
    port113 => BUS_BUF5,
    port114 => BUS_BUF4,
    port115 => BUS_BUF3,
    port116 => BUS_BUF2,
    port117 => BUS_BUF1,
    port118 => BUS_BUF0,
    port102 => Bus0,
    port103 => Bus1,
    port104 => Bus2,
    port105 => Bus3,
    port106 => Bus4,
    port107 => Bus5,
    port108 => Bus6,
    port109 => Bus7
    );

  inst_U202 : entity work.ic74x245
    port map (
    port1 => H2,
    port102 => RAMADDRESS0,
    port103 => RAMADDRESS1,
    port104 => RAMADDRESS2,
    port105 => RAMADDRESS3,
    port106 => RAMADDRESS4,
    port107 => RAMADDRESS5,
    port108 => RAMADDRESS6,
    port109 => RAMADDRESS7,
    port10 => '0',
    port11 => RAMADDRESS_BUF7_U202,
    port12 => RAMADDRESS_BUF6_U202,
    port13 => RAMADDRESS_BUF5_U202,
    port14 => RAMADDRESS_BUF4_U202,
    port15 => RAMADDRESS_BUF3_U202,
    port16 => RAMADDRESS_BUF2_U202,
    port17 => RAMADDRESS_BUF1_U202,
    port18 => RAMADDRESS_BUF0_U202,
    port19 => L2,
    port20 => VCC,
    port21 => U202_a_noe,
    port22 => U202_b_noe,
    port111 => RAMADDRESS_BUF7,
    port112 => RAMADDRESS_BUF6,
    port113 => RAMADDRESS_BUF5,
    port114 => RAMADDRESS_BUF4,
    port115 => RAMADDRESS_BUF3,
    port116 => RAMADDRESS_BUF2,
    port117 => RAMADDRESS_BUF1,
    port118 => RAMADDRESS_BUF0
    );

  inst_U203 : entity work.ic74x245
    port map (
    port1 => H2,
    port102 => RAMADDRESS8,
    port103 => RAMADDRESS9,
    port104 => RAMADDRESS10,
    port105 => RAMADDRESS11,
    port106 => RAMADDRESS12,
    port107 => RAMADDRESS13,
    port108 => RAMADDRESS14,
    port109 => RAMADDRESS15,
    port10 => '0',
    port11 => RAMADDRESS_BUF15_U203,
    port12 => RAMADDRESS_BUF14_U203,
    port13 => RAMADDRESS_BUF13_U203,
    port14 => RAMADDRESS_BUF12_U203,
    port15 => RAMADDRESS_BUF11_U203,
    port16 => RAMADDRESS_BUF10_U203,
    port17 => RAMADDRESS_BUF9_U203,
    port18 => RAMADDRESS_BUF8_U203,
    port19 => L2,
    port20 => VCC,
    port21 => U203_a_noe,
    port22 => U203_b_noe,
    port111 => RAMADDRESS_BUF15,
    port112 => RAMADDRESS_BUF14,
    port113 => RAMADDRESS_BUF13,
    port114 => RAMADDRESS_BUF12,
    port115 => RAMADDRESS_BUF11,
    port116 => RAMADDRESS_BUF10,
    port117 => RAMADDRESS_BUF9,
    port118 => RAMADDRESS_BUF8
    );

  inst_U204 : entity work.ic74x245
    port map (
    port1 => H2,
    port102 => N16843155,
    port103 => CTRLMEMRAMOE,
    port104 => CTRLMEMRAMWE,
    port105 => SELECTSTACKMEM,
    port106 => RAMCE,
    port107 => IOCE,
    port108 => CLK1,
    port109 => RESET1,
    port10 => '0',
    port11 => RESET_BUF_U204,
    port12 => CLK_BUF_U204,
    port13 => IOCE_BUF_U204,
    port14 => RAMCE_BUF_U204,
    port15 => SELECTSTACKMEM_BUF_U204,
    port16 => CTRLMEMRAMWE_BUF_U204,
    port17 => CTRLMEMRAMOE_BUF_U204,
    port18 => N16843220_U204,
    port19 => L2,
    port20 => VCC,
    port21 => U204_a_noe,
    port22 => U204_b_noe,
    port111 => RESET_BUF,
    port112 => CLK_BUF,
    port113 => IOCE_BUF,
    port114 => RAMCE_BUF,
    port115 => SELECTSTACKMEM_BUF,
    port116 => CTRLMEMRAMWE_BUF,
    port117 => CTRLMEMRAMOE_BUF,
    port118 => N16843220
    );

  inst_U205 : entity work.ic74x245
    port map (
    port1 => N16843155,
    port2 => RAM2DATA0_U205,
    port3 => RAM2DATA1_U205,
    port4 => RAM2DATA2_U205,
    port5 => RAM2DATA3_U205,
    port6 => RAM2DATA4_U205,
    port7 => RAM2DATA5_U205,
    port8 => RAM2DATA6_U205,
    port9 => RAM2DATA7_U205,
    port10 => '0',
    port11 => RAM2D7_U205,
    port12 => RAM2D6_U205,
    port13 => RAM2D5_U205,
    port14 => RAM2D4_U205,
    port15 => RAM2D3_U205,
    port16 => RAM2D2_U205,
    port17 => RAM2D1_U205,
    port18 => RAM2D0_U205,
    port19 => L2,
    port20 => VCC,
    port21 => U205_a_noe,
    port22 => U205_b_noe,
    port111 => RAM2D7,
    port112 => RAM2D6,
    port113 => RAM2D5,
    port114 => RAM2D4,
    port115 => RAM2D3,
    port116 => RAM2D2,
    port117 => RAM2D1,
    port118 => RAM2D0,
    port102 => RAM2DATA0,
    port103 => RAM2DATA1,
    port104 => RAM2DATA2,
    port105 => RAM2DATA3,
    port106 => RAM2DATA4,
    port107 => RAM2DATA5,
    port108 => RAM2DATA6,
    port109 => RAM2DATA7
    );

  inst_U507 : entity work.ic74x245
    port map (
    port1 => L1,
    port2 => Bus0_U507,
    port3 => Bus1_U507,
    port4 => Bus2_U507,
    port5 => Bus3_U507,
    port6 => Bus4_U507,
    port7 => Bus5_U507,
    port8 => Bus6_U507,
    port9 => Bus7_U507,
    port10 => '0',
    port111 => H3,
    port112 => H3,
    port113 => H3,
    port114 => H3,
    port115 => H3,
    port116 => H3,
    port117 => H3,
    port118 => H3,
    port19 => CTRL_INIT_FF,
    port20 => VCC,
    port21 => U507_a_noe,
    port22 => U507_b_noe,
    port102 => Bus0,
    port103 => Bus1,
    port104 => Bus2,
    port105 => Bus3,
    port106 => Bus4,
    port107 => Bus5,
    port108 => Bus6,
    port109 => Bus7
    );

end rtl;