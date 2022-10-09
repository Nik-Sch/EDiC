-- 3 state octal bus transceiver https://www.ti.com/lit/ds/symlink/sn74ls245.pdf
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ic74x245 is
  port(
    port1  : in  std_ulogic;
    port2  : out std_ulogic;
    port3  : out std_ulogic;
    port4  : out std_ulogic;
    port5  : out std_ulogic;
    port6  : out std_ulogic;
    port7  : out std_ulogic;
    port8  : out std_ulogic;
    port9  : out std_ulogic;
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
    port20 : in  std_ulogic;

    port21 : out std_ulogic;            -- noe a
    port22 : out std_ulogic;            -- noa b

    port102 : in std_ulogic;
    port103 : in std_ulogic;
    port104 : in std_ulogic;
    port105 : in std_ulogic;
    port106 : in std_ulogic;
    port107 : in std_ulogic;
    port108 : in std_ulogic;
    port109 : in std_ulogic;
    port111 : in std_ulogic;
    port112 : in std_ulogic;
    port113 : in std_ulogic;
    port114 : in std_ulogic;
    port115 : in std_ulogic;
    port116 : in std_ulogic;
    port117 : in std_ulogic;
    port118 : in std_ulogic
    );
end entity;

architecture rtl of ic74x245 is
begin

  port21 <= port19 or port1;
  port22 <= port19 or (not port1);

  port9 <= port111;
  port8 <= port112;
  port7 <= port113;
  port6 <= port114;
  port5 <= port115;
  port4 <= port116;
  port3 <= port117;
  port2 <= port118;

  port11 <= port109;
  port12 <= port108;
  port13 <= port107;
  port14 <= port106;
  port15 <= port105;
  port16 <= port104;
  port17 <= port103;
  port18 <= port102;
end architecture;
