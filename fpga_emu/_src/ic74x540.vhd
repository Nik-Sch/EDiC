-- octal buffer inverting https://www.ti.com/lit/ds/symlink/sn54ls540.pdf
-- used for the leds -> ignoring
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ic74x540 is
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
    port11 : out std_ulogic;
    port12 : out std_ulogic;
    port13 : out std_ulogic;
    port14 : out std_ulogic;
    port15 : out std_ulogic;
    port16 : out std_ulogic;
    port17 : out std_ulogic;
    port18 : out std_ulogic;
    port19 : in  std_ulogic;
    port20 : in  std_ulogic
    );
end entity;

architecture rtl of ic74x540 is
begin
  port11 <= not port9;
  port12 <= not port8;
  port13 <= not port7;
  port14 <= not port6;
  port15 <= not port5;
  port16 <= not port4;
  port17 <= not port3;
  port18 <= not port2;
  p_ver : process(all)
  begin
    if port1 or port19 then
      report "74ABT540, noe ist not supported." severity failure;
    end if;
  end process;
end architecture;
