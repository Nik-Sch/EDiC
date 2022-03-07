# return bug
- code is uart_16c550_dbg.s
- RigolDS0*: jump from 0x29 to 0xffff (bit16 of digital input is clock -> only 15bits scoped)

## analysis
- code: test2_db.s
- finding: set of MAR to 0xffff with pull-up of bus not viable (see scope_9.png, green is NWE of MAR, yellow is one bus bit)
  - -> address where return address is written is bs and address where return address is read from is bs
