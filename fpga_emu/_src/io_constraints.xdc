# 7seg display
set_property PACKAGE_PIN L18 [get_ports {o_cathodes[6]}]
set_property PACKAGE_PIN T11 [get_ports {o_cathodes[5]}]
set_property PACKAGE_PIN P15 [get_ports {o_cathodes[4]}]
set_property PACKAGE_PIN K13 [get_ports {o_cathodes[3]}]
set_property PACKAGE_PIN K16 [get_ports {o_cathodes[2]}]
set_property PACKAGE_PIN R10 [get_ports {o_cathodes[1]}]
set_property PACKAGE_PIN T10 [get_ports {o_cathodes[0]}]
set_property PACKAGE_PIN H15 [get_ports {o_cathodes[7]}]
set_property PACKAGE_PIN U13 [get_ports {o_anodes[7]}]
set_property PACKAGE_PIN K2  [get_ports {o_anodes[6]}]
set_property PACKAGE_PIN T14 [get_ports {o_anodes[5]}]
set_property PACKAGE_PIN P14 [get_ports {o_anodes[4]}]
set_property PACKAGE_PIN J14 [get_ports {o_anodes[3]}]
set_property PACKAGE_PIN T9  [get_ports {o_anodes[2]}]
set_property PACKAGE_PIN J18 [get_ports {o_anodes[1]}]
set_property PACKAGE_PIN J17 [get_ports {o_anodes[0]}]

# 8bit input
set_property PACKAGE_PIN U8  [get_ports {i_switches[9]}]
set_property PACKAGE_PIN T8  [get_ports {i_switches[8]}]
set_property PACKAGE_PIN R13 [get_ports {i_switches[7]}]
set_property PACKAGE_PIN U18 [get_ports {i_switches[6]}]
set_property PACKAGE_PIN T18 [get_ports {i_switches[5]}]
set_property PACKAGE_PIN R17 [get_ports {i_switches[4]}]
set_property PACKAGE_PIN R15 [get_ports {i_switches[3]}]
set_property PACKAGE_PIN M13 [get_ports {i_switches[2]}]
set_property PACKAGE_PIN L16 [get_ports {i_switches[1]}]
set_property PACKAGE_PIN J15 [get_ports {i_switches[0]}]
# dbg control
set_property PACKAGE_PIN C12 [get_ports i_btnReset]
set_property PACKAGE_PIN N17 [get_ports i_btnStep]
set_property PACKAGE_PIN V10 [get_ports i_swEnableBreakpoint]
set_property PACKAGE_PIN U11 [get_ports i_swInstrNCycle]
set_property PACKAGE_PIN U12 [get_ports i_swStepNRun]
# io card
set_property PACKAGE_PIN G18 [get_ports {io_bus[7]}]
set_property PACKAGE_PIN G17 [get_ports {io_bus[6]}]
set_property PACKAGE_PIN F18 [get_ports {io_bus[5]}]
set_property PACKAGE_PIN E18 [get_ports {io_bus[4]}]
set_property PACKAGE_PIN E17 [get_ports {io_bus[3]}]
set_property PACKAGE_PIN D18 [get_ports {io_bus[2]}]
set_property PACKAGE_PIN D17 [get_ports {io_bus[1]}]
set_property PACKAGE_PIN C17 [get_ports {io_bus[0]}]
set_property PACKAGE_PIN A18 [get_ports {o_ramAddress[7]}]
set_property PACKAGE_PIN B18 [get_ports {o_ramAddress[6]}]
set_property PACKAGE_PIN B17 [get_ports {o_ramAddress[5]}]
set_property PACKAGE_PIN B16 [get_ports {o_ramAddress[4]}]
set_property PACKAGE_PIN A16 [get_ports {o_ramAddress[3]}]
set_property PACKAGE_PIN A15 [get_ports {o_ramAddress[2]}]
set_property PACKAGE_PIN A14 [get_ports {o_ramAddress[1]}]
set_property PACKAGE_PIN A13 [get_ports {o_ramAddress[0]}]
set_property PACKAGE_PIN F13 [get_ports o_clk]
set_property PACKAGE_PIN F16 [get_ports o_ctrlMemRamNOE]
set_property PACKAGE_PIN E16 [get_ports o_ctrlMemRamNWE]
set_property PACKAGE_PIN D14 [get_ports o_ioNCE]
set_property PACKAGE_PIN G16 [get_ports o_nreset]
# register leds
set_property PACKAGE_PIN H17 [get_ports {o_r0[0]}]
set_property PACKAGE_PIN K15 [get_ports {o_r0[1]}]
set_property PACKAGE_PIN J13 [get_ports {o_r0[2]}]
set_property PACKAGE_PIN N14 [get_ports {o_r0[3]}]
set_property PACKAGE_PIN R18 [get_ports {o_r0[4]}]
set_property PACKAGE_PIN V17 [get_ports {o_r0[5]}]
set_property PACKAGE_PIN U17 [get_ports {o_r0[6]}]
set_property PACKAGE_PIN U16 [get_ports {o_r0[7]}]
set_property PACKAGE_PIN V16 [get_ports {o_r1[0]}]
set_property PACKAGE_PIN T15 [get_ports {o_r1[1]}]
set_property PACKAGE_PIN U14 [get_ports {o_r1[2]}]
set_property PACKAGE_PIN T16 [get_ports {o_r1[3]}]
set_property PACKAGE_PIN V15 [get_ports {o_r1[4]}]
set_property PACKAGE_PIN V14 [get_ports {o_r1[5]}]
set_property PACKAGE_PIN V12 [get_ports {o_r1[6]}]
set_property PACKAGE_PIN V11 [get_ports {o_r1[7]}]
# fpga ref clk
set_property PACKAGE_PIN E3  [get_ports i_clk100]
# for internal uart
set_property PACKAGE_PIN D4  [get_ports o_serialOut]
set_property PACKAGE_PIN C4  [get_ports i_serialIn]
# fpga debug
set_property PACKAGE_PIN G14 [get_ports o_ld17_b]
set_property PACKAGE_PIN R11 [get_ports o_ld17_g]
set_property PACKAGE_PIN N16 [get_ports o_ld17_r]

set_property PULLUP true [get_ports {io_bus[7]}]
set_property PULLUP true [get_ports {io_bus[6]}]
set_property PULLUP true [get_ports {io_bus[5]}]
set_property PULLUP true [get_ports {io_bus[4]}]
set_property PULLUP true [get_ports {io_bus[3]}]
set_property PULLUP true [get_ports {io_bus[2]}]
set_property PULLUP true [get_ports {io_bus[1]}]
set_property PULLUP true [get_ports {io_bus[0]}]

# 7seg display
set_property IOSTANDARD LVCMOS33 [get_ports {o_cathodes[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_cathodes[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_cathodes[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_cathodes[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_cathodes[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_cathodes[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_cathodes[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_cathodes[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_anodes[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_anodes[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_anodes[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_anodes[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_anodes[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_anodes[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_anodes[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_anodes[0]}]

# 8bit input
set_property IOSTANDARD LVCMOS33 [get_ports {i_switches[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {i_switches[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {i_switches[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {i_switches[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {i_switches[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {i_switches[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {i_switches[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {i_switches[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {i_switches[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {i_switches[0]}]
# dbg control
set_property IOSTANDARD LVCMOS33 [get_ports i_btnReset]
set_property IOSTANDARD LVCMOS33 [get_ports i_btnStep]
set_property IOSTANDARD LVCMOS33 [get_ports i_swEnableBreakpoint]
set_property IOSTANDARD LVCMOS33 [get_ports i_swInstrNCycle]
set_property IOSTANDARD LVCMOS33 [get_ports i_swStepNRun]
# io card
set_property IOSTANDARD LVCMOS33 [get_ports {io_bus[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_bus[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_bus[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_bus[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_bus[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_bus[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_bus[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_bus[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_ramAddress[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_ramAddress[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_ramAddress[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_ramAddress[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_ramAddress[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_ramAddress[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_ramAddress[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_ramAddress[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports o_clk]
set_property IOSTANDARD LVCMOS33 [get_ports o_ctrlMemRamNOE]
set_property IOSTANDARD LVCMOS33 [get_ports o_ctrlMemRamNWE]
set_property IOSTANDARD LVCMOS33 [get_ports o_ioNCE]
set_property IOSTANDARD LVCMOS33 [get_ports o_nreset]
# register leds
set_property IOSTANDARD LVCMOS33 [get_ports {o_r0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_r0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_r0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_r0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_r0[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_r0[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_r0[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_r0[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_r1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_r1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_r1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_r1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_r1[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_r1[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_r1[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_r1[7]}]
# fpga ref clk
set_property IOSTANDARD LVCMOS33 [get_ports i_clk100]
# for internal uart
set_property IOSTANDARD LVCMOS33 [get_ports o_serialOut]
set_property IOSTANDARD LVCMOS33 [get_ports i_serialIn]
# fpga debug
set_property IOSTANDARD LVCMOS33 [get_ports o_ld17_b]
set_property IOSTANDARD LVCMOS33 [get_ports o_ld17_g]
set_property IOSTANDARD LVCMOS33 [get_ports o_ld17_r]

set_false_path -from [get_ports -regexp .*i_switches.*]

set_property SEVERITY {Warning}  [get_drc_checks LUTLP-1]
set_property SEVERITY {Warning} [get_drc_checks NSTD-1]