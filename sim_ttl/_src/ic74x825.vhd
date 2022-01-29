library ieee;
use ieee.std_logic_1164.all;

-- octal register 3-state, clear, enable https://www.ti.com/lit/ds/symlink/sn54as825a.pdf
entity ic74x825_vhd is
  port(
    port1  : in  std_ulogic;
    port2  : in  std_ulogic;
    port3  : in  std_ulogic;
    port4  : in  std_ulogic;
    port5  : in  std_ulogic;
    port6  : in  std_ulogic;
    port7  : in  std_ulogic;
    port8  : in  std_ulogic;
    port9  : in  std_ulogic;
    port10 : in  std_ulogic;
    port11 : in  std_ulogic;
    port12 : in  std_ulogic;
    port13 : in  std_ulogic;
    port14 : in  std_ulogic;
    port15 : out std_ulogic := '0';
    port16 : out std_ulogic := '0';
    port17 : out std_ulogic := '0';
    port18 : out std_ulogic := '0';
    port19 : out std_ulogic := '0';
    port20 : out std_ulogic := '0';
    port21 : out std_ulogic := '0';
    port22 : out std_ulogic := '0';
    port23 : in  std_ulogic;
    port24 : in  std_ulogic;

    port25 : out std_ulogic
    );
end entity;

architecture rtl of ic74x825_vhd is
signal s_reset: std_ulogic;
begin

  s_reset <= port11;

  port25 <= port1 or port2 or port23;

  p_reg : process(port13, s_reset)
  begin

    if rising_edge(port13) then
      if port14 = '0' then
        port22 <= port3;
        port21 <= port4;
        port20 <= port5;
        port19 <= port6;
        port18 <= port7;
        port17 <= port8;
        port16 <= port9;
        port15 <= port10;
      end if;
    end if;

    if s_reset = '0' then -- reset
      port22 <= '0';
      port21 <= '0';
      port20 <= '0';
      port19 <= '0';
      port18 <= '0';
      port17 <= '0';
      port16 <= '0';
      port15 <= '0';
    end if;

  end process;


end architecture;
