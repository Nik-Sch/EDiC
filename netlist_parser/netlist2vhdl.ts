#!/usr/bin/node

'use strict';
import { readFileSync, writeFileSync } from 'fs';
import { argv, exit } from 'process';
import { INet as IWire, ITriStateIn, ITriStateNet, IUnit, Parser } from './parser';


if (argv.length !== 4) {
  console.error(`${argv[0]} ${argv[1]} <in>.[net,edn] <out>.v`);
  exit(1);
}

const netlist = readFileSync(argv[2]).toString();
const ednFile = argv[2].toLowerCase().endsWith('edn');

const parser = new Parser(netlist, ednFile);
parser.parse();
const unitsForVhdl = parser.units
  .filter(v =>
    (v.id.startsWith('U') && parseInt(v.id.substring(1)) < 1000) // > 1000 is uart board
    || (v.id.startsWith('JT') && v.id !== 'JT3'));

const transformWire = (wire: IWire): IWire => {
  const newWire: IWire = {
    name: transformWireStr(wire.name),
    portNumber: wire.portNumber
  }
  return newWire;
}
const transformWireStr = (wire: string): string => {
  wire = wire
    .replace(/\/([a-z])/g, v => v.toUpperCase()) // make letter after / to uppercase
    .replace(/\//g, '')
    .replace(/-/g, '_')
    .replace(/\(/g, '')
    .replace(/\)/g, '')
    .replace(/'/g, 'N')
    .replace(/~(\S+)~/g, '$1N')
    .replace(/~{(\S+)}/g, '$1N')
    .replace(/#(\S+)/g, '$1N')
    .replace(/bus(\d)/gi, 'Bus$1')
    .replace(/^\+5V$/, "'1'")
    .replace(/^GND$/, "'0'")
    .replace(/^(\d)$/, "'$1'");
  return wire;
}

const signals: string[] = [];

const tristateNets: ITriStateNet[] = [];

const addTristatePort = (unit: IUnit, noePortNumber: number, dataPorts: number[], alsoInput: boolean) => {
  const noePort = unit.ports.find(p => p.portNumber === noePortNumber);
  if (!noePort) {
    throw new Error(`NOE Port on ${unit.type} (${unit.id}) not found`);
  }
  for (let i of dataPorts) {
    const pinPort = unit.ports.find(p => p.portNumber === i);
    if (!pinPort) {
      throw new Error(`Pin ${i} on ${unit.type} (${unit.id}) not found`);
    }
    if (pinPort.name === '?') {
      continue;
    }
    let triStateNet = tristateNets.find(net => net.name === transformWireStr(pinPort.name));
    if (!triStateNet) {
      triStateNet = {
        name: transformWireStr(pinPort.name),
        inputs: [],
        noe: transformWireStr(`${pinPort.name}_noe`)
      };
      tristateNets.push(triStateNet);
      if (signals.findIndex(w => w == transformWireStr(pinPort.name)) === -1) {
        signals.push(transformWireStr(pinPort.name)); // push original wire, the ports are going to be pushed later
        signals.push(transformWireStr(`${pinPort.name}_noe`)); // push original wire, the ports are going to be pushed later
      }
    }
    if (alsoInput) {
      unit.ports.push({
        portNumber: 100 + pinPort.portNumber,
        name: pinPort.name // the original port is the actual wire
      })
    }
    pinPort.name = `${pinPort.name}_${unit.id}`;
    triStateNet.inputs.push({
      dataName: transformWireStr(pinPort.name),
      noeName: transformWireStr(noePort.name)
    });
  }
}

interface IEEPROM {
  address: string[];
  data: string[];
  id: string;
}
const eeproms: IEEPROM[] = [];
let tmpWireCount: number = 0;

const addEeprom = (unit: IUnit, eepromId: string, dataOffset: number) => {
  let eeprom: IEEPROM | undefined = eeproms.find(e => e.id === eepromId);
  if (!eeprom) {
    eeprom = {
      address: [],
      data: [],
      id: eepromId
    };
    const addressPorts = [10, 9, 8, 7, 6, 5, 4, 3, 25, 24, 21, 23, 2, 26, 1];
    addressPorts.forEach((port, i) => {
      const pinPort = unit.ports.find(p => p.portNumber === port);
      if (!pinPort) {
        throw new Error(`Pin ${port} on ${unit.type} (${unit.id}) not found`);
      }
      if (pinPort.name === '?') {
        pinPort.name = `temp_${tmpWireCount++}`;
      }
      eeprom!.address[i] = transformWireStr(pinPort.name);
    });
    eeproms.push(eeprom);
  }

  const dataPorts = [11, 12, 13, 15, 16, 17, 18, 19];
  dataPorts.forEach((port, i) => {
    const pinPort = unit.ports.find(p => p.portNumber === port);
    if (!pinPort) {
      throw new Error(`Pin ${port} on ${unit.type} (${unit.id}) not found`);
    }
    if (pinPort.name === '?') {
      pinPort.name = `temp_${tmpWireCount++}`;
    }
    eeprom!.data[i + dataOffset] = transformWireStr(pinPort.name);
  });
}

const eepromToString = (eeprom: IEEPROM) => {
  const port = (eeprom.id === 'instructionRom') ? 'b' : 'a';
  const portA = (eeprom.id === 'instructionRom') ? `
  clka   => i_clk100,
  addra  => i_instrAddr,
  dina   => i_instrData,
  wea(0) => i_instrWrEn,
  ` : '';
  return `
    ${eeprom.data.map((d, i) => `${d} <= s_dout${eeprom.id}(${i});`).join('\n')}
    inst_${eeprom.id}: entity work.${eeprom.id}
      port map (
        ${portA}
        clk${port}  => i_asyncEEPROMSpecialClock,
        ${eeprom.address.map((a, i) => `addr${port}(${i}) => ${a}`).join(', ')},
        dout${port} => s_dout${eeprom.id}
        );`
}

for (const unit of unitsForVhdl) {
  if (unit.type.match(/74\w+245/)) { // tristate transceiver
    const noeAPortnumber = Math.max(...unit.ports.map(p => p.portNumber)) + 1;
    unit.ports.push({
      name: `${unit.id}_a_noe`,
      portNumber: noeAPortnumber
    })
    const noeBPortnumber = Math.max(...unit.ports.map(p => p.portNumber)) + 1;
    unit.ports.push({
      name: `${unit.id}_b_noe`,
      portNumber: noeBPortnumber
    })
    const portsA = [2, 3, 4, 5, 6, 7, 8, 9];
    const portsB = [11, 12, 13, 14, 15, 16, 17, 18];
    const dirPort = unit.ports[0];
    if (!dirPort) {
      throw new Error(`Unit ${unit.id} misses port[0]`);
    }
    if (dirPort.name.match(/H\d/)) { // only A -> B
      addTristatePort(unit, noeBPortnumber, portsB, true);
      // connect inputs to port a
      unit.ports.map(port => {
        if (portsA.find(a => a === port.portNumber)) {
          port.portNumber += 100;
        }
        return port
      })
    } else if (dirPort.name.match(/L\d/)) { // only B -> A
      addTristatePort(unit, noeAPortnumber, portsA, true);
      // connect inputs to port b
      unit.ports.map(port => {
        if (portsB.find(b => b === port.portNumber)) {
          port.portNumber += 100;
        }
        return port
      })
    } else { // both
      addTristatePort(unit, noeBPortnumber, portsB, true);
      addTristatePort(unit, noeAPortnumber, portsA, true);
    }
  }
  if (unit.type.match(/AS6C4008(?:_55PCN)?/)) { // ram
    const dataPorts = [13, 14, 15, 17, 18, 19, 20, 21];
    const noeOutPortnumber = Math.max(...unit.ports.map(p => p.portNumber)) + 1;
    unit.ports.push({
      name: `${unit.id}_noe`,
      portNumber: noeOutPortnumber
    })
    unit.ports.push({
      name: 'i_asyncRamSpecialClock',
      portNumber: noeOutPortnumber + 1
    })
    addTristatePort(unit, noeOutPortnumber, dataPorts, true);
  }
  if (unit.type === '28C256') { // eeprom
    let eepromId = ''; // 0: instruction, 1: microCode
    let dataOffset = -1;
    switch (unit.id) {
      case 'U67':
        eepromId = 'instructionRom';
        dataOffset = 0;
        break;
      case 'U69':
        eepromId = 'instructionRom';
        dataOffset = 8;
        break;
      case 'U62':
        eepromId = 'instructionRom';
        dataOffset = 16;
        break;
      case 'U85':
        eepromId = 'microCodeRom';
        dataOffset = 0;
        break;
      case 'U86':
        eepromId = 'microCodeRom';
        dataOffset = 8;
        break;
      case 'U87':
        eepromId = 'microCodeRom';
        dataOffset = 16;
        break;
    }
    addEeprom(unit, eepromId, dataOffset);
  }
  if (unit.type.match(/74\w+825/)) { // tristate register
    const noeOutPortnumber = Math.max(...unit.ports.map(p => p.portNumber)) + 1;
    unit.ports.push({
      name: `${unit.id}_noe`,
      portNumber: noeOutPortnumber
    })
    addTristatePort(unit, noeOutPortnumber, [22, 21, 20, 19, 18, 17, 16, 15], false);
  }

};
// console.log(JSON.stringify(tristateNets, null, 2));


const ignoreWire = (wire: IWire): boolean => {
  // return wire.name !== 'GND' && wire.name !== '+5V' && wire.name !== '?';
  return wire.name !== '?'
    && wire.name.match(/^'\d'$/) === null
    && wire.name.match(/^i_.*$/) === null;
}

signals.push(
  ...unitsForVhdl
    .flatMap(w => w.ports)
    .filter((v, i, self) => self.findIndex(w => w.name === v.name) === i)
    .filter(v => signals.findIndex(w => w === transformWireStr(v.name)) === -1)
    .map(transformWire)
    .filter(ignoreWire)
    .map(w => w.name)
);
if (signals.filter((v, i, self) => self.indexOf(v) !== i).length > 0) {
  console.log('the naming transformation removed uniqueness of the wire names.');
  console.log(signals.filter((v, i, self) => self.indexOf(v) !== i));
  exit(1);
}

interface IAssign {
  target: string;
  origin: string;
}
const assignments: IAssign[] = [];

const addAssignments = () => {

  // breakpointAddress
  let netName = ednFile ? 'BRKPT' : 'MemoryComp';
  for (let i = 0; i < 16; i++) {
    assignments.push({
      target: `${netName}${i}`,
      origin: `i_breakpointAddress(${i})`
    });
  }
  // ioAddress
  netName = ednFile ? 'RAMADDRESS' : 'ioAddr';
  for (let i = 0; i < 8; i++) {
    assignments.push({
      target: `o_ioAddress(${i})`,
      origin: `${netName}${i}`
    });
  }

  if (ednFile) {
    // bus
    for (let i = 0; i < 8; i++) {
      assignments.push({
        target: `o_bus(${i})`,
        origin: `BUS_BUF${i}`,
      });
      // addTristatePort
      const triStateNet = tristateNets.find(net => net.name === `BUS_BUF${i}`);
      if (!triStateNet) {
        throw new Error(`Tristate net BUS_BUF${i} not found. Should have existed by now`);
      }
      triStateNet.inputs.push({
        dataName: `i_bus(${i})`,
        noeName: `i_busNOE`
      });
    }
    for (let i = 1; i < 5; i++) {
      assignments.push({
        target: `L${i}`,
        origin: `'0'`
      }, {
        target: `H${i}`,
        origin: `'1'`
      });
    }
    // i_switches
    for (let i = 0; i < 8; i++) {
      assignments.push({
        target: `IN${i}`,
        origin: `i_switches(${i})`
      });
    }
    // r0 and r1
    for (let i = 0; i < 8; i++) {
      assignments.push({
        target: `o_r0(${i})`,
        origin: `R0${i}`
      }, {
        target: `o_r1(${i})`,
        origin: `R1${i}`
      });
    }
    assignments.push({
      target: 'o_output(7)',
      origin: 'N16459739'
    }, {
      target: 'o_output(6)',
      origin: 'N16459679'
    }, {
      target: 'o_output(5)',
      origin: 'N16459595'
    }, {
      target: 'o_output(4)',
      origin: 'N16459511'
    }, {
      target: 'o_output(3)',
      origin: 'N16459427'
    }, {
      target: 'o_output(2)',
      origin: 'N16459367'
    }, {
      target: 'o_output(1)',
      origin: 'N16459283'
    }, {
      target: 'o_output(0)',
      origin: 'N16459199'
    }
    )
    assignments.push(
      {
        target: 'CLK_UNBUF',
        origin: 'i_oszClk',
      },
      {
        target: 'N16449995',
        origin: 'i_resetn',
      },
      {
        target: 'N16792555',
        origin: 'not i_btnStep',
      },
      {
        target: 'N16925459',
        origin: 'not i_swInstrNCycle',
      },
      {
        target: 'N16923056',
        origin: 'not i_swStepNRun',
      },
      {
        target: 'N16445057',
        origin: 'not i_swEnableBreakpoint',
      },
      {
        target: 'o_ioNCE',
        origin: 'IOCE',
      },
      {
        target: 'o_ioNOE',
        origin: 'CTRLMEMRAMOE',
      },
      {
        target: 'o_ioNWE',
        origin: 'CTRLMEMRAMWE',
      },
    );
  } else {
    // bus
    for (let i = 0; i < 8; i++) {
      assignments.push({
        target: `o_bus(${i})`,
        origin: `Bus${i}`,
      });
      // addTristatePort
      const triStateNet = tristateNets.find(net => net.name === `Bus${i}`);
      if (!triStateNet) {
        throw new Error(`Tristate net Bus${i} not found. Should have existed by now`);
      }
      triStateNet.inputs.push({
        dataName: `i_bus(${i})`,
        noeName: `i_busNOE`
      });
    }
    // i_switches
    for (let i = 0; i < 8; i++) {
      assignments.push({
        target: `Net_RN10_Pad${2 + i}`,
        origin: `i_switches(${i})`
      });
    }
    // o_output
    assignments.push({
      target: 'o_output(7)',
      origin: 'Net_U94_Pad3'
    }, {
      target: 'o_output(6)',
      origin: 'Net_U94_Pad2'
    }, {
      target: 'o_output(5)',
      origin: 'Net_U94_Pad1'
    }, {
      target: 'o_output(4)',
      origin: 'Net_U94_Pad8'
    }, {
      target: 'o_output(3)',
      origin: 'Net_U93_Pad3'
    }, {
      target: 'o_output(2)',
      origin: 'Net_U93_Pad2'
    }, {
      target: 'o_output(1)',
      origin: 'Net_U93_Pad1'
    }, {
      target: 'o_output(0)',
      origin: 'Net_U93_Pad8'
    }
    )
    assignments.push(
      {
        target: 'Net_U95_Pad2',
        origin: 'i_oszClk',
      },
      {
        target: 'resetN',
        origin: 'i_resetn',
      },
      {
        target: 'Net_C2_Pad1',
        origin: 'not i_btnStep',
      },
      {
        target: 'Net_C3_Pad1',
        origin: 'not i_swInstrNCycle',
      },
      {
        target: 'Net_C4_Pad1',
        origin: 'not i_swStepNRun',
      },
      {
        target: 'Net_C1_Pad1',
        origin: 'not i_swEnableBreakpoint',
      },
      {
        target: 'o_ioNCE',
        origin: 'ioCEN',
      },
      {
        target: 'o_ioNOE',
        origin: 'ctrlMemRamOEN',
      },
      {
        target: 'o_ioNWE',
        origin: 'ctrlMemRamWEN',
      },
    );
  }
}
addAssignments();

const getDisplayDriver = () => {
  if (ednFile) {

    return `
    enableDigits <= "11110011" when HALT else "00000011";
    dots <= "00100000" when HALT else 8x"00";

  inst_7seg: entity work.displayDriver
  port map(
    i_clk => CLK1,
    i_resetn => RESET1,
    data => (
      ${[...Array(12).keys()].reverse().map(i => `PC${i}`).join(',\n    ')},
      '0',
      MC_A2,
      MC_A1,
      MC_A0,
      8x"00",
      N16459739,
      N16459679,
      N16459595,
      N16459511,
      N16459427,
      N16459367,
      N16459283,
      N16459199
    ),
  enableDigit => enableDigits,
  dots => dots,
  cathodes => o_cathodes,
  anodes => o_anodes
);`;
  } else {
    throw new Error("TODO: implement verilog -> vhdl");
    return `

  displayDriver inst_7seg(
    .i_clk(clk),
    .i_resetn(resetN),
    .data({
      ${[...Array(12).keys()].reverse().map(i => `MemoryPc${i}`).join(',\n    ')},
      '0',
      ControlA2,
      ControlA1,
      ControlA0,
      8'h00,
      Net_U92_Pad15_U92,
      Net_U92_Pad16_U92,
      Net_U92_Pad17_U92,
      Net_U92_Pad18_U92,
      Net_U92_Pad19_U92,
      Net_U92_Pad20_U92,
      Net_U92_Pad21_U92,
      Net_U92_Pad22_U92
    }),
    .enableDigit(halt ? 8'b11110011: 8'b00000011),
    .dots(halt ? 8'b00100000 : 8'h00),
    .cathodes(o_cathodes),
    .anodes(o_anodes)
  );`
  }
}

const typeMap: { [t: string]: string } = {
  '28C256': 'ic28C256',
  '5082_7340': 'ic5082_7340',
  '74ABT540': 'ic74x540',
  '74AS825': 'ic74x825',
  '74F825': 'ic74x825',
  '74AS867': 'ic74x867',
  '74F521': 'ic74x521',
  '74LS04': 'ic74x04',
  '74F04': 'ic74x04',
  '74LS08': 'ic74x08',
  '74F08': 'ic74x08',
  '74LS14': 'ic74x14',
  '74ACT14': 'ic74x14',
  '74LS151': 'ic74x151',
  '74F151': 'ic74x151',
  '74LS153': 'ic74x153',
  '74F153': 'ic74x153',
  '74LS157': 'ic74x157',
  '74F157': 'ic74x157',
  '74LS245': 'ic74x245',
  '74ABT245': 'ic74x245',
  '74ACT245': 'ic74x245',
  '74F245': 'ic74x245',
  '74LS273': 'ic74x273',
  '74F273': 'ic74x273',
  '74LS32': 'ic74x32',
  '74F32': 'ic74x32',
  '74LS374': 'ic74x374',
  '74F374': 'ic74x374',
  '74LS86': 'ic74x86',
  '74F86': 'ic74x86',
  'AS6C4008_55PCN': 'icAS6C4008',
  'AS6C4008': 'icAS6C4008',
  'ds1813': 'icds1813',
  'DS1813-10': 'icds1813',
  'BERG10': 'icBerg10',
  'BERG26': 'icBerg26',
  'BERG40': 'icBerg40',
}

// special case for U92 & U35
// the 273 needs a clkEn
if (ednFile) {
  for (const unit of unitsForVhdl) {
    if (unit.id === "U92") {
      const p11 = unit.ports.find(p => p.portNumber === 11);
      if (p11) {
        p11.name = 'i_clk100';
      } else {
        console.error(`U92 has no port 11`);
        exit(1);
      }
      unit.ports.push({
        portNumber: 111,
        name: 'IO_0_WR'
      })
    }
    if (unit.id === "U35") {
      const p11 = unit.ports.find(p => p.portNumber === 11);
      if (p11) {
        p11.name = 'CLK1';
      } else {
        console.error(`U35 has no port 11`);
        exit(1);
      }
      unit.ports.push({
        portNumber: 111,
        name: 'L1'
      });
    }
  }
}
const entityName = `generated${ednFile ? '' : '_kicad'}`;

const vhdlFile = `
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ${entityName} is
  port (
  $ports
  );
end ${entityName};

architecture rtl of ${entityName} is

signal enableDigits, dots: std_ulogic_vector(7 downto 0);
$eepromSignals
$signals

begin

$assigns

$displayDriver

$eeproms

$tristates

$instances

end rtl;`
  .replace(/\$eepromSignals/g,
    eeproms.map(eeprom => `  signal s_dout${eeprom.id}: std_ulogic_vector(23 downto 0);`).join('\n')
  )
  .replace(/\$signals/g,
    signals.sort().map(w => `  signal ${w}: std_ulogic;`).join('\n')
  )
  .replace(/\$instances/g,
    unitsForVhdl.map(unit => {
      return `
  inst_$id : entity work.$type
    port map (
$ports
    );`
        .replace(/\$id/g, unit.id)
        .replace(/\$type/g, typeMap[unit.type])
        .replace(/\$ports/g, unit.ports
          .filter(wire => wire.name !== '?')
          .map(transformWire)
          .map(port => {
            // do not connect ports:
            //  2, 4, 6, 10 of JT7 etc.
            if ((unit.id === 'JT7' && [2, 4, 6, 10].find(x => x === port.portNumber))
              || (unit.id === 'JT9' && [18, 20].find(x => x === port.portNumber))
            ) {
              return `    port${port.portNumber} => open`
            }
            return `    port${port.portNumber} => ${port.name}`;
          }).join(',\n'))
    }).join('\n'))
  .replace(/\$ports/g, `
  i_clk100: in std_ulogic;

  -- clocks
  i_oszClk: in std_ulogic;
  i_asyncRamSpecialClock: in std_ulogic;
  i_asyncEEPROMSpecialClock: in std_ulogic;
  i_resetn: in std_ulogic;

  -- button controls
  -- 1 is closed, 0 is open
  i_btnStep: in std_ulogic;
  i_swInstrNCycle: in std_ulogic;
  i_swStepNRun: in std_ulogic;
  i_swEnableBreakpoint: in std_ulogic;
  i_btnReset: in std_ulogic;
  i_breakpointAddress: in std_ulogic_vector(15 downto 0);
  o_output: out std_ulogic_vector(7 downto 0);

  -- io card
  i_bus: in std_ulogic_vector(7 downto 0);
  o_bus: out std_ulogic_vector(7 downto 0);
  i_busNOE: in std_ulogic;

  o_ioNCE: out std_ulogic;
  o_ioAddress: out std_ulogic_vector(7 downto 0);
  o_ioNOE: out std_ulogic;
  o_ioNWE: out std_ulogic;

  -- fpga specific ports
  o_cathodes: out std_ulogic_vector(7 downto 0); -- dot + gfedcba
  o_anodes: out std_ulogic_vector(7 downto 0);
  i_switches: in std_ulogic_vector(7 downto 0);
  o_r0: out std_ulogic_vector(7 downto 0);
  o_r1: out std_ulogic_vector(7 downto 0);

  -- uart debug
  i_instrData : in std_ulogic_vector(23 downto 0);
  i_instrAddr : in std_ulogic_vector(14 downto 0);
  i_instrWrEn : in std_ulogic
`)
  .replace(/\$assigns/g, assignments.map(a => {
    return `${a.target} <= ${a.origin};`
  }).join('\n'))
  .replace(/\$tristates/g, tristateNets.map(net => {
    if (net.name === 'N16449995' || net.name === 'CLK_UNBUF') {
      return ''; // is reset or clock
    }
    const data = net.inputs.length > 1
      ? `(${net.inputs.map(i => i.dataName).join(', ')})`
      : `(others => ${net.inputs[0].dataName})`;
    const noe = net.inputs.length > 1
      ? `(${net.inputs.map(i => i.noeName).join(', ')})`
      : `(others => ${net.inputs[0].noeName})`;
    return `
  inst_triBus${net.name}: entity work.tristatenet
    generic map (
      INPUT_COUNT => ${net.inputs.length}
      )
    port map (
      i_data => ${data},
      i_noe  => ${noe},
      o_data => ${net.name},
      o_noe  => ${net.noe}
      );`
  }).join('\n'))
  .replace(/\$eeproms/g, eeproms.map(eepromToString).join('\n'))
  .replace(/\$displayDriver/g, getDisplayDriver());
;


const uniqueUnits = unitsForVhdl.map(u => u.type)
  .filter((u, i, self) => self.indexOf(u) === i);

console.log(uniqueUnits.map(u => ({
  name: u,
  count: unitsForVhdl.filter(v => v.type === u).length
})).sort((b, a) => a.count - b.count));
console.log(`total: ${unitsForVhdl.length}`);

writeFileSync(argv[3], vhdlFile);