# return bug fix
- 74F245 in A7 to drive 0xff on bus controlled by spare control bit
- result: works (scope_10.png, green is nwe of mar, yellow is one bus bit)

# buggy uart chip
- with test adapter the uart chip lost stored data in scratch register when toggling NOE
- added schmitt trigger to test adapter ramNWE and ramNOE
- scope_13.png: green output of dip switch, yellow after integrator + double schmitt trigger

## integrating into main pcb
- adding register to ramNOE and ramNWE
- -> microcode needs to be adjusted, such that ramNOE and ramNWE are one cycle earlier than supposed

### scope images
- 14: yellow clock, green persistence: input and output
- 15,16: yellow input, green output: inhibited glitch + correct pulse