library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ic28C256 is
  port (
    port1  : in std_ulogic;
    port2  : in std_ulogic;
    port3  : in std_ulogic;
    port4  : in std_ulogic;
    port5  : in std_ulogic;
    port6  : in std_ulogic;
    port7  : in std_ulogic;
    port8  : in std_ulogic;
    port9  : in std_ulogic;
    port10 : in std_ulogic;
    port11 : in std_ulogic;
    port12 : in std_ulogic;
    port13 : in std_ulogic;
    port14 : in std_ulogic;
    port15 : in std_ulogic;
    port16 : in std_ulogic;
    port17 : in std_ulogic;
    port18 : in std_ulogic;
    port19 : in std_ulogic;
    port20 : in std_ulogic;
    port21 : in std_ulogic;
    port22 : in std_ulogic;
    port23 : in std_ulogic;
    port24 : in std_ulogic;
    port25 : in std_ulogic;
    port26 : in std_ulogic;
    port27 : in std_ulogic;
    port28 : in std_ulogic
    );
end entity ic28C256;

architecture rtl of ic28C256 is



begin

  p_verify : process(all)
  begin

    if not port27 then
      report "EEPROM: nwe cannot be low" severity failure;
    end if;
    if port22 then
      report "28C256: noe not supported" severity failure;
    end if;
    if port20 then
      report "28C256: nce not supported" severity failure;
    end if;
  end process;
end architecture;
