library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity board_top is
  port (
    i_clk100 : in std_ulogic;

    -- fpga buttons/switches
    i_btnStep            : in std_ulogic;
    i_swInstrNCycle      : in std_ulogic;
    i_swStepNRun         : in std_ulogic;
    i_swEnableBreakpoint : in std_ulogic;
    i_btnReset           : in std_ulogic;  -- active low

    -- included IO at 0xfe00
    o_cathodes : out std_ulogic_vector(7 downto 0);  -- dot + gfedcba
    o_anodes   : out std_ulogic_vector(7 downto 0);
    i_switches : in  std_ulogic_vector(9 downto 0);

    -- expansion connector
    o_ramAddress    : out   std_ulogic_vector(7 downto 0);
    io_bus          : inout std_ulogic_vector(7 downto 0);
    o_ioNCE         : out   std_ulogic;
    o_ctrlMemRamNOE : out   std_ulogic;
    o_nreset        : out   std_ulogic;
    o_ctrlMemRamNWE : out   std_ulogic;
    o_clk           : out   std_ulogic;

    -- tri-color led
    o_ld17_r : out std_ulogic;
    o_ld17_g : out std_ulogic;
    o_ld17_b : out std_ulogic;

    -- fpga debug
    o_r0 : out std_ulogic_vector(7 downto 0);
    o_r1 : out std_ulogic_vector(7 downto 0);

    -- for included uart
    i_serialIn  : in  std_ulogic;
    o_serialOut : out std_ulogic
    );
end entity;

architecture rtl of board_top is

  signal s_expansionBusIn     : std_ulogic_vector(7 downto 0);
  signal s_expansionBusOut    : std_ulogic_vector(7 downto 0);
  signal s_expansionBusNOE    : std_ulogic;
  signal s_expansionIoNCE     : std_ulogic;
  signal s_expansionIoAddress : std_ulogic_vector(7 downto 0);
  signal s_expansionIoNOE     : std_ulogic;
  signal s_expansionIoNWE     : std_ulogic;


  signal r_breakpoint    : std_ulogic_vector(15 downto 0);
  signal r_breakpointSet : std_ulogic;

  signal s_resetn : std_ulogic;

  signal s_oszClk       : std_ulogic;
  signal s_clkRam       : std_ulogic;
  signal s_clkEEPROM    : std_ulogic;
  signal r_oszClkDiv    : unsigned(1 downto 0) := "00";
  signal r_clkRamDiv    : unsigned(1 downto 0) := "10";
  signal r_clkEEPROMDiv : unsigned(1 downto 0) := "11";


  signal io_bus_reg_out : std_ulogic_vector(7 downto 0);
  signal io_bus_reg_in  : std_ulogic_vector(7 downto 0);
begin

  s_resetn <= i_btnReset;

  inst_clk5Mhz : entity work.clk_wiz_5Mhz
    port map (
      clk_in1   => i_clk100,
      clk5      => s_oszClk,
      clkRam    => s_clkRam,
      clkEEPROM => s_clkEEPROM
      );

  r_oszClk : process(s_oszClk)
  begin
    if rising_edge(s_oszClk) then
      r_oszClkDiv <= r_oszClkDiv + 1;
    end if;
  end process;

  r_clkRam : process(s_clkRam)
  begin
    if rising_edge(s_clkRam) then
      r_clkRamDiv <= r_clkRamDiv + 1;
    end if;
  end process;

  r_clkEEPROM : process(s_clkEEPROM)
  begin
    if rising_edge(s_clkEEPROM) then
      r_clkEEPROMDiv <= r_clkEEPROMDiv + 1;
    end if;
  end process;

  p_breakpoint : process(s_oszClk, s_resetn)
  begin
    if rising_edge(s_oszClk) then
      r_breakpointSet <= '1';
      if not r_breakpointSet then
        r_breakpoint <= (i_switches'range => i_switches, others => '0');
      end if;
    end if;

    if not s_resetn then
      r_breakpointSet <= '0';
      r_breakpoint    <= (others => '0');
    end if;
  end process;


  inst_generated : entity work.generated
    port map (
      i_clk100 => i_clk100,

      i_oszClk                  => r_oszClkDiv(1),
      i_asyncRamSpecialClock    => r_clkRamDiv(1),
      i_asyncEEPROMSpecialClock => r_clkEEPROMDiv(1),
      i_resetn                  => s_resetn,

      -- button controls
      -- 1 is closed, 0 is open
      i_btnStep            => i_btnStep,
      i_swInstrNCycle      => i_swInstrNCycle,
      i_swStepNRun         => i_swStepNRun,
      i_swEnableBreakpoint => i_swEnableBreakpoint,
      i_btnReset           => not i_btnReset,  -- btn should be 1 if pressed - > active high
      i_breakpointAddress  => r_breakpoint,

      -- expansion card
      i_bus    => s_expansionBusOut,
      o_bus    => s_expansionBusIn,
      i_busNOE => s_expansionBusNOE,

      o_ioNCE     => s_expansionIoNCE,
      o_ioAddress => s_expansionIoAddress,
      o_ioNOE     => s_expansionIoNOE,
      o_ioNWE     => s_expansionIoNWE,

      -- fpga specific ports
      o_cathodes => o_cathodes,
      o_anodes   => o_anodes,
      i_switches => i_switches(7 downto 0),
      o_r0       => o_r0,
      o_r1       => o_r1
      );

  -- expansion_uart uart(
  -- .i_clk100(i_clk100),
  -- .i_clkDesign(r_clkRamDiv[1]),
  -- .i_resetn(s_resetn),

  -- .i_bus(s_expansionBusIn),
  -- .o_bus(s_expansionBusOut),
  -- .o_busNOE(s_expansionBusNOE),

  -- .i_ioNCE(s_expansionIoNCE),
  -- .i_ioAddress(s_expansionIoAddress),
  -- .i_ioNOE(s_expansionIoNOE),
  -- .i_ioNWE(s_expansionIoNWE),

  -- .i_serialIn(i_serialIn),
  -- .o_serialOut(o_serialOut)
  --);

  io_bus <= io_bus_reg_out when (s_expansionIoNCE or s_expansionIoNOE) else 8x"ZZ";
  -- assign s_expansionBusOut = (s_expansionIoNCE | s_expansionIoNOE) ? 8'hff : io_bus_reg_in;

  -- wire external expansion :
  p_reg : process(i_clk100)
  begin
    if rising_edge(i_clk100) then
      o_ramAddress      <= s_expansionIoAddress;
      io_bus_reg_out    <= s_expansionBusIn;
      io_bus_reg_in     <= io_bus;
      s_expansionBusOut <= 8x"ff" when (s_expansionIoNCE or s_expansionIoNOE) else io_bus_reg_in;
      o_ioNCE           <= s_expansionIoNCE;
      o_ctrlMemRamNOE   <= s_expansionIoNOE;
      o_nreset          <= s_resetn;
      o_ctrlMemRamNWE   <= s_expansionIoNWE;
      o_clk             <= not r_oszClkDiv(1);
    end if;
  end process;

end architecture;
