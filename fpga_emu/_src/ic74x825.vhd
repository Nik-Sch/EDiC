-- octal register 3-state, clear, enable https://www.ti.com/lit/ds/symlink/sn54as825a.pdf
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ic74x825 is
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
    port15 : out std_ulogic;
    port16 : out std_ulogic;
    port17 : out std_ulogic;
    port18 : out std_ulogic;
    port19 : out std_ulogic;
    port20 : out std_ulogic;
    port21 : out std_ulogic;
    port22 : out std_ulogic;
    port23 : in  std_ulogic;
    port24 : in  std_ulogic;
    port25 : out std_ulogic
    );
end entity;

architecture rtl of ic74x825 is
begin
  port25 <= port1 or port2 or port23;
  p_reg : process(port13, port11)
  begin
    if rising_edge(port13) then
      if not port14 then

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

    if not port11 then
      port22 <= 0;
      port21 <= 0;
      port20 <= 0;
      port19 <= 0;
      port18 <= 0;
      port17 <= 0;
      port16 <= 0;
      port15 <= 0;
    end if;
  end process;
end architecture;
