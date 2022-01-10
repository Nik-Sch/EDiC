clock delays for eeprom + ram in fpga:

clk wizard can only do >5MHz clock
-> 8MHz/4 = 2MHz
125ns * 4 = 500ns
all signals to bus have a 169ns delay
except ram to bus: 281ns

reg clock is standard clock with 0deg phase
control delay: eeprom clock has 169ns delay
 -> clk_wiz with 125ns phase shift of 44ns => 44/125*360=126.72deg
 -> start counter with 3 (delay by 1 8MHz clock cycle)
ram delay: ram clock has 281ns delay
 -> clk_wiz with 125ns phase shift of 31ns => 31/125*360=89.28deg
 -> start counter with 2 (delay by 2 8MHz clock cycle)