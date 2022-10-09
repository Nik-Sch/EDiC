-- 512k * 8bit sram https://www.mouser.de/datasheet/2/12/AS6C4008-1265427.pdf
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity icAS6C4008 is
  port(
    port1   : in  std_ulogic;
    port2   : in  std_ulogic;
    port3   : in  std_ulogic;
    port4   : in  std_ulogic;
    port5   : in  std_ulogic;
    port6   : in  std_ulogic;
    port7   : in  std_ulogic;
    port8   : in  std_ulogic;
    port9   : in  std_ulogic;
    port10  : in  std_ulogic;
    port11  : in  std_ulogic;
    port12  : in  std_ulogic;
    port13  : out std_ulogic;
    port14  : out std_ulogic;
    port15  : out std_ulogic;
    port16  : in  std_ulogic;
    port17  : out std_ulogic;
    port18  : out std_ulogic;
    port19  : out std_ulogic;
    port20  : out std_ulogic;
    port21  : out std_ulogic;
    port22  : in  std_ulogic;
    port23  : in  std_ulogic;
    port24  : in  std_ulogic;
    port25  : in  std_ulogic;
    port26  : in  std_ulogic;
    port27  : in  std_ulogic;
    port28  : in  std_ulogic;
    port29  : in  std_ulogic;
    port30  : in  std_ulogic;
    port31  : in  std_ulogic;
    port32  : in  std_ulogic;
    port34  : in  std_ulogic;
    port33  : out std_ulogic;
    port113 : in  std_ulogic;
    port114 : in  std_ulogic;
    port115 : in  std_ulogic;
    port117 : in  std_ulogic;
    port118 : in  std_ulogic;
    port119 : in  std_ulogic;
    port120 : in  std_ulogic;
    port121 : in  std_ulogic
    );
end entity;

architecture rtl of icAS6C4008 is
  signal address   : std_ulogic_vector(16 downto 0);
  signal readData  : std_ulogic_vector(7 downto 0);
  signal writeData : std_ulogic_vector(7 downto 0);

begin

  address <= (
    port2,
    port31,
    port3,
    port28,
    port4,
    port25,
    port23,
    port26,
    port27,
    port5,
    port6,
    port7,
    port8,
    port9,
    port10,
    port11,
    port12
    );

  port21 <= readData(7);
  port20 <= readData(6);
  port19 <= readData(5);
  port18 <= readData(4);
  port17 <= readData(3);
  port15 <= readData(2);
  port14 <= readData(1);
  port13 <= readData(0);

  writeData <= (
    port121,
    port120,
    port119,
    port118,
    port117,
    port115,
    port114,
    port113
    );

  port33 <= port24 or port22;           -- nce or noe

  inst_mem : entity work.as6c4008_55pcn_mem
    port map (
      clka  => port34,
      ena   => not port22,              -- !nce
      wea   => not port29,
      addra => address,
      dina  => writeData,
      douta => readData
      );

end architecture;
