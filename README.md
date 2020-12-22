# 8bitCPU
SystemVerilog simulation of an 8 bit discrete TTL CPU I am building for fun. The final CPU will be similar to Ben Eaters Project with some differences and the following features:
- I printed prototype PCBs that reassembles 830 Breadboards with some improvements.
- Two general purpose registers.
- ALU with `add/sub`, `AND`, `XOR` and left/right shift operations
- 256 byte instruction EEPROM
- 256 byte program SRAM

## Update 13.12.2020
<details><summary>First picture of the final(ish) layout:</summary>
  
  - On top of all boards is the clock module which is basically the clock module by Ben Eater with 555 timers which features an automatic clock which speed is settable by a potentiometer an a manual, debounced clock pulse with a push button. I also added an SR latch for a halt signal which is resettable by a push button to be used as input to the CPU.
  - Red shows the ALU with two 4 bit adders on the left side (with one aluOp MUX. The top right board is a variable width shifter build with three 8 bit MUXs.
  For enabling left/right shift the last ALU board includes two MUXs to reverse the input and the final two aluOp MUXs.
  - Purple shows the register set on the left with a MUX for the A input of the ALU and one MUX + Tristate Transceiver to the bus.
  The bottom board will include LEDs for the registers and the right board includes aluOut register + Tristate, LEDs and register clock enable logic.
  - The blue encircled board contains the RAM module with an memory address register, the sockeled instruction EEPROM + SRAM.
  - Green will be the control logic with two instruction decode EEPROMs (for 16 control bits) + instruction register on the left.
  The right board includes a 4bit step register for the multicycle control + incrementor (4bit half adder) + logic for external control signals like the halt signal.
  - The orange boards finally include the program counter + incrementor + Tristate Transceiver and load from bus MUX.
  
  ![image](https://github.com/Nik-Sch/8bitCPU/raw/main/doc/update13122020.jpg)
</details>
