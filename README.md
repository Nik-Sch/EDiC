# 8bitCPU
SystemVerilog simulation of an 8 bit discrete TTL CPU I am building for fun. The final CPU will be similar to Ben Eaters Project with some differences and the following features:
- I printed prototype PCBs that reassembles 830 Breadboards with some improvements.
- Two general purpose registers.
- ALU with `add/sub`, `AND`, `XOR` and left/right shift operations
- 256 byte instruction EEPROM
- 256 byte program SRAM

## Update 21.01.2021 - 8bit-CPU is finished!
  
- I debugged a lot of tiny bugs todo with writeEnable and especially clockEnable signals
- Mounted all PCBs to look nice

![image](https://github.com/Nik-Sch/8bitCPU/raw/main/doc/update20210121.jpg)

## Update 15.01.2021
<details><summary>First program got executed!</summary>
  
  - I finished building everything and after about a week of endless debugging bugfixing the first program ran correctly.
  - The gif below shows how the CPU executes 6² and outputs the result which is shown in hexadecimal (6²=36=0x24).
  
  ![image](https://github.com/Nik-Sch/8bitCPU/raw/main/doc/update20210115.gif)
</details>

## Update 22.12.2020
<details><summary>Update of the final(ish) layout:</summary>
  
  - I finished and interconnected all of the data path + bus, except for the PC at the bottom.
  - The ALU + regset + SRAM is fully functional with some debugging effort like pulling up all connections to the 5V CMOS SRAM which has an higher voltage requirement for high level inputs.
  - Half of the control logic has wires and I decided to swap the two control boards for better interconnection.
  
  ![image](https://github.com/Nik-Sch/8bitCPU/raw/main/doc/update20201222.jpg)
</details>

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
  
  ![image](https://github.com/Nik-Sch/8bitCPU/raw/main/doc/update20201213.jpg)
</details>

