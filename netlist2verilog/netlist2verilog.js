#!/usr/bin/node
'use strict';
Object.defineProperty(exports, "__esModule", { value: true });
const fs_1 = require("fs");
const process_1 = require("process");
const parser_1 = require("./parser");
if (process_1.argv.length !== 4) {
    console.error(`${process_1.argv[0]} ${process_1.argv[1]} <in>.[net,edn] <out>.v`);
    (0, process_1.exit)(1);
}
const netlist = (0, fs_1.readFileSync)(process_1.argv[2]).toString();
const ednFile = process_1.argv[2].toLowerCase().endsWith('edn');
const parser = new parser_1.Parser(netlist, ednFile);
parser.parse();
const unitsForVerilog = parser.units
    .filter(v => (v.id.startsWith('U') && parseInt(v.id.substring(1)) < 1000) // > 1000 is uart board
    || (v.id.startsWith('JT') && v.id !== 'JT3'));
const transformWire = (wire) => {
    const newWire = {
        name: transformWireStr(wire.name),
        portNumber: wire.portNumber
    };
    return newWire;
};
const transformWireStr = (wire) => {
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
        .replace(/^\+5V$/, '1')
        .replace(/^GND$/, '0')
        .replace(/^(\d)$/, "1'b$1");
    return wire;
};
const wires = [];
const tristateNets = [];
const addTristatePort = (unit, noePortNumber, dataPorts, alsoInput) => {
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
            if (wires.findIndex(w => w == transformWireStr(pinPort.name)) === -1) {
                wires.push(transformWireStr(pinPort.name)); // push original wire, the ports are going to be pushed later
                wires.push(transformWireStr(`${pinPort.name}_noe`)); // push original wire, the ports are going to be pushed later
            }
        }
        if (alsoInput) {
            unit.ports.push({
                portNumber: 100 + pinPort.portNumber,
                name: pinPort.name // the original port is the actual wire
            });
        }
        pinPort.name = `${pinPort.name}_${unit.id}`;
        triStateNet.inputs.push({
            dataName: transformWireStr(pinPort.name),
            noeName: transformWireStr(noePort.name)
        });
    }
};
const eeproms = [];
let tmpWireCount = 0;
const addEeprom = (unit, eepromId, dataOffset) => {
    let eeprom = eeproms.find(e => e.id === eepromId);
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
            eeprom.address[i] = transformWireStr(pinPort.name);
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
        eeprom.data[i + dataOffset] = transformWireStr(pinPort.name);
    });
};
for (const unit of unitsForVerilog) {
    if (unit.type.match(/74\w+245/)) { // tristate transceiver
        const noeAPortnumber = Math.max(...unit.ports.map(p => p.portNumber)) + 1;
        unit.ports.push({
            name: `${unit.id}_a_noe`,
            portNumber: noeAPortnumber
        });
        const noeBPortnumber = Math.max(...unit.ports.map(p => p.portNumber)) + 1;
        unit.ports.push({
            name: `${unit.id}_b_noe`,
            portNumber: noeBPortnumber
        });
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
                return port;
            });
        }
        else if (dirPort.name.match(/L\d/)) { // only B -> A
            addTristatePort(unit, noeAPortnumber, portsA, true);
            // connect inputs to port b
            unit.ports.map(port => {
                if (portsB.find(b => b === port.portNumber)) {
                    port.portNumber += 100;
                }
                return port;
            });
        }
        else { // both
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
        });
        unit.ports.push({
            name: 'i_asyncRamSpecialClock',
            portNumber: noeOutPortnumber + 1
        });
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
        });
        addTristatePort(unit, noeOutPortnumber, [22, 21, 20, 19, 18, 17, 16, 15], false);
    }
}
;
// console.log(JSON.stringify(tristateNets, null, 2));
const ignoreWire = (wire) => {
    // return wire.name !== 'GND' && wire.name !== '+5V' && wire.name !== '?';
    return wire.name !== '?'
        && wire.name.match(/^1'b\d$/) === null
        && wire.name.match(/^i_.*$/) === null;
};
wires.push(...unitsForVerilog
    .flatMap(w => w.ports)
    .filter((v, i, self) => self.findIndex(w => w.name === v.name) === i)
    .filter(v => wires.findIndex(w => w === transformWireStr(v.name)) === -1)
    .map(transformWire)
    .filter(ignoreWire)
    .map(w => w.name));
if (wires.filter((v, i, self) => self.indexOf(v) !== i).length > 0) {
    console.log('the naming transformation removed uniqueness of the wire names.');
    console.log(wires.filter((v, i, self) => self.indexOf(v) !== i));
    (0, process_1.exit)(1);
}
const assignments = [];
const addAssignments = () => {
    // bus
    for (let i = 0; i < 8; i++) {
        assignments.push({
            target: `o_bus[${i}]`,
            origin: `Bus${i}`,
        });
        // addTristatePort
        const triStateNet = tristateNets.find(net => net.name === `Bus${i}`);
        if (!triStateNet) {
            throw new Error(`Tristate net Bus${i} not found. Should have existed by now`);
        }
        triStateNet.inputs.push({
            dataName: `i_bus[${i}]`,
            noeName: `i_busNOE`
        });
    }
    // breakpointAddress
    let netName = ednFile ? 'BRKPT' : 'MemoryComp';
    for (let i = 0; i < 16; i++) {
        assignments.push({
            target: `${netName}${i}`,
            origin: `i_breakpointAddress[${i}]`
        });
    }
    // ioAddress
    netName = ednFile ? 'RAMADDRESS' : 'ioAddr';
    for (let i = 0; i < 8; i++) {
        assignments.push({
            target: `o_ioAddress[${i}]`,
            origin: `${netName}${i}`
        });
    }
    if (ednFile) {
        for (let i = 1; i < 5; i++) {
            assignments.push({
                target: `L${i}`,
                origin: `1'b0`
            }, {
                target: `H${i}`,
                origin: `1'b1`
            });
        }
        // i_switches
        for (let i = 0; i < 8; i++) {
            assignments.push({
                target: `IN${i}`,
                origin: `i_switches[${i}]`
            });
        }
        assignments.push({
            target: 'o_output[7]',
            origin: 'N16459739'
        }, {
            target: 'o_output[6]',
            origin: 'N16459679'
        }, {
            target: 'o_output[5]',
            origin: 'N16459595'
        }, {
            target: 'o_output[4]',
            origin: 'N16459511'
        }, {
            target: 'o_output[3]',
            origin: 'N16459427'
        }, {
            target: 'o_output[2]',
            origin: 'N16459367'
        }, {
            target: 'o_output[1]',
            origin: 'N16459283'
        }, {
            target: 'o_output[0]',
            origin: 'N16459199'
        });
        assignments.push({
            target: 'CLK_UNBUF',
            origin: 'i_oszClk',
        }, {
            target: 'N16449995',
            origin: 'i_resetn',
        }, {
            target: 'N16792555',
            origin: '~i_btnStep',
        }, {
            target: 'N16925459',
            origin: '~i_swInstrNCycle',
        }, {
            target: 'N16923056',
            origin: '~i_swStepNRun',
        }, {
            target: 'N16445057',
            origin: '~i_swEnableBreakpoint',
        }, {
            target: 'o_ioNCE',
            origin: 'IOCE',
        }, {
            target: 'o_ioNOE',
            origin: 'CTRLMEMRAMOE',
        }, {
            target: 'o_ioNWE',
            origin: 'CTRLMEMRAMWE',
        });
    }
    else {
        // i_switches
        for (let i = 0; i < 8; i++) {
            assignments.push({
                target: `Net_RN10_Pad${2 + i}`,
                origin: `i_switches[${i}]`
            });
        }
        // o_output
        assignments.push({
            target: 'o_output[7]',
            origin: 'Net_U94_Pad3'
        }, {
            target: 'o_output[6]',
            origin: 'Net_U94_Pad2'
        }, {
            target: 'o_output[5]',
            origin: 'Net_U94_Pad1'
        }, {
            target: 'o_output[4]',
            origin: 'Net_U94_Pad8'
        }, {
            target: 'o_output[3]',
            origin: 'Net_U93_Pad3'
        }, {
            target: 'o_output[2]',
            origin: 'Net_U93_Pad2'
        }, {
            target: 'o_output[1]',
            origin: 'Net_U93_Pad1'
        }, {
            target: 'o_output[0]',
            origin: 'Net_U93_Pad8'
        });
        assignments.push({
            target: 'Net_U95_Pad2',
            origin: 'i_oszClk',
        }, {
            target: 'resetN',
            origin: 'i_resetn',
        }, {
            target: 'Net_C2_Pad1',
            origin: '~i_btnStep',
        }, {
            target: 'Net_C3_Pad1',
            origin: '~i_swInstrNCycle',
        }, {
            target: 'Net_C4_Pad1',
            origin: '~i_swStepNRun',
        }, {
            target: 'Net_C1_Pad1',
            origin: '~i_swEnableBreakpoint',
        }, {
            target: 'o_ioNCE',
            origin: 'ioCEN',
        }, {
            target: 'o_ioNOE',
            origin: 'ctrlMemRamOEN',
        }, {
            target: 'o_ioNWE',
            origin: 'ctrlMemRamWEN',
        });
    }
};
addAssignments();
const getDisplayDriver = () => {
    if (ednFile) {
        return `

displayDriver inst_7seg(
  .i_clk(CLK1),
  .i_resetn(RESET1),
  .data({
    ${[...Array(12).keys()].reverse().map(i => `PC${i}`).join(',\n    ')},
    1'b0,
    MC_A2,
    MC_A1,
    MC_A0,
    8'h00,
    N16459739,
    N16459679,
    N16459595,
    N16459511,
    N16459427,
    N16459367,
    N16459283,
    N16459199
  }),
  .enableDigit(HALT ? 8'b11110011: 8'b00000011),
  .dots(HALT ? 8'b00100000 : 8'h00),
  .cathodes(o_cathodes),
  .anodes(o_anodes)
);`;
    }
    else {
        return `

  displayDriver inst_7seg(
    .i_clk(clk),
    .i_resetn(resetN),
    .data({
      ${[...Array(12).keys()].reverse().map(i => `MemoryPc${i}`).join(',\n    ')},
      1'b0,
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
  );`;
    }
};
const typeMap = {
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
};
const verilogFile = `
module generated${ednFile ? '' : '_kicad'}(
  $ports
);

$wires

$assigns

$displayDriver

$eeproms

$tristates

$instances

endmodule`
    .replace(/\$wires/g, wires.sort().map(w => `wire ${w};`).join('\n'))
    .replace(/\$instances/g, unitsForVerilog.map(unit => {
    return `
$type inst_$id (
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
            || (unit.id === 'JT9' && [18, 20].find(x => x === port.portNumber))) {
            return `  .port${port.portNumber}()`;
        }
        return `  .port${port.portNumber}(${port.name})`;
    }).join(',\n'));
}).join('\n'))
    .replace(/\$ports/g, `
  // clocks
  input wire i_oszClk,
  input wire i_asyncRamSpecialClock,
  input wire i_asyncEEPROMSpecialClock,
  input wire i_resetn,

  // button controls
  // 1 is closed, 0 is open
  input wire i_btnStep,
  input wire i_swInstrNCycle,
  input wire i_swStepNRun,
  input wire i_swEnableBreakpoint,
  input wire i_btnReset,
  input wire [15:0] i_breakpointAddress,
  output wire [7:0] o_output,

  // io card
  input wire [7:0] i_bus,
  output wire [7:0] o_bus,
  input wire i_busNOE,

  output wire o_ioNCE,
  output wire [7:0] o_ioAddress,
  output wire o_ioNOE,
  output wire o_ioNWE,

  // fpga specific ports
  output wire [7:0] o_cathodes, // dot + gfedcba
  output wire [7:0] o_anodes,
  input wire [7:0] i_switches,
  output wire [7:0] o_r0,
  output wire [7:0] o_r1
`)
    .replace(/\$assigns/g, assignments.map(a => {
    return `assign ${a.target} = ${a.origin};`;
}).join('\n'))
    .replace(/\$tristates/g, tristateNets.map(net => {
    if (net.name === 'N16449995' || net.name === 'CLK_UNBUF') {
        return ''; // is reset or clock
    }
    return `
tristatenet #(
  .INPUT_COUNT(${net.inputs.length})
) inst_triBus${net.name} (
  .i_data({${net.inputs.map(i => i.dataName).join(', ')}}),
  .i_noe({${net.inputs.map(i => i.noeName).join(', ')}}),
  .o_data(${net.name}),
  .o_noe(${net.noe})
);`;
}).join('\n'))
    .replace(/\$eeproms/g, eeproms.map(eeprom => {
    return `
${eeprom.id} inst_${eeprom.id} (
  .clka(i_asyncEEPROMSpecialClock),
  .addra({${eeprom.address.reverse().join(', ')}}),
  .douta({${eeprom.data.reverse().join(', ')}})
);`;
}).join('\n'))
    .replace(/\$displayDriver/g, getDisplayDriver());
;
const uniqueUnits = unitsForVerilog.map(u => u.type)
    .filter((u, i, self) => self.indexOf(u) === i);
console.log(uniqueUnits.map(u => ({
    name: u,
    count: unitsForVerilog.filter(v => v.type === u).length
})).sort((a, b) => a.count - b.count));
(0, fs_1.writeFileSync)(process_1.argv[3], verilogFile);
//# sourceMappingURL=netlist2verilog.js.map