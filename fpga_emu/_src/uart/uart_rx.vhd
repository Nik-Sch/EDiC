library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_rx is
  generic (
    g_CLK_DIVIDE : integer
    );
  port (
    i_clk      : in  std_ulogic;
    i_resetn   : in  std_ulogic;
    i_serialIn : in  std_ulogic;
    o_valid    : out std_ulogic;
    o_data     : out std_ulogic_vector(7 downto 0)
    );
end entity;

architecture rtl of uart_rx is
  type t_state is (s_IDLE, s_START, s_DATA, s_STOP);

  signal r_state     : t_state;
  signal r_clkCount  : integer range 0 to g_CLK_DIVIDE;
  signal r_dataCount : integer range 0 to 7;

  signal r_serialIn  : std_ulogic;
  signal rr_serialIn : std_ulogic;

begin

  p_reg : process(i_clk, i_resetn) is
  begin
    if rising_edge(i_clk) then
      r_serialIn  <= i_serialIn;
      rr_serialIn <= r_serialIn;
      r_clkCount  <= r_clkCount + 1;

      case r_state is
        when s_IDLE =>
          o_valid <= '0';
          if not rr_serialIn then
            r_clkCount <= 0;
            r_state    <= s_START;
          end if;
        when s_START =>
          if r_clkCount = g_CLK_DIVIDE / 2 then
            r_clkCount  <= 0;
            r_dataCount <= 0;
            r_state     <= s_DATA;
          end if;
          if rr_serialIn then  -- if rr_serialIn gets high too early, it probably was a glitch
            r_state <= s_IDLE;
          end if;
        when s_DATA =>
          if r_clkCount = g_CLK_DIVIDE then
            o_data(r_dataCount) <= rr_serialIn;
            r_clkCount          <= 0;
            if r_dataCount = 7 then
              r_state <= s_STOP;
            else
              r_dataCount <= r_dataCount + 1;
            end if;
          end if;
        when s_STOP =>
          if r_clkCount = g_CLK_DIVIDE then
            if rr_serialIn then
              o_valid <= '1';
            end if;
            r_state <= s_IDLE;
          end if;
      end case;
    end if;

    if not i_resetn then
      r_state     <= s_IDLE;
      o_valid     <= '0';
      r_clkCount  <= 0;
      r_serialIn  <= '0';
      rr_serialIn <= '0';
    end if;
  end process;
end architecture;
