#!/usr/bin/node
'use strict';
Object.defineProperty(exports, "__esModule", { value: true });
const fs_1 = require("fs");
const process_1 = require("process");
const parser_1 = require("./parser");
if (process_1.argv.length !== 4) {
    console.error(`${process_1.argv[0]} ${process_1.argv[1]} <in>.net <out>.v`);
    (0, process_1.exit)(1);
}
const netlist = (0, fs_1.readFileSync)(process_1.argv[2]).toString();
const parser = new parser_1.Parser(netlist);
parser.parse();
const unitsForVerilog = parser.units.filter(v => v.id.startsWith('U'));
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
    if (unit.type == '74LS245') { // tristate transceiver
        addTristatePort(unit, 19, [11, 12, 13, 14, 15, 16, 17, 18], false);
    }
    if (unit.type == 'AS6C4008_55PCN') { // ram
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
    if (unit.type == '74AS825') { // tristate register
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
    for (let i = 0; i < 16; i++) {
        assignments.push({
            target: `MemoryComp${i}`,
            origin: `i_breakpointAddress[${i}]`
        });
    }
    // ioAddress
    for (let i = 0; i < 8; i++) {
        assignments.push({
            target: `o_ioAddress[${i}]`,
            origin: `ioAddr${i}`
        });
    }
    // i_switches
    for (let i = 0; i < 8; i++) {
        assignments.push({
            target: `Net_RN10_Pad${9 - i}`,
            origin: `i_switches[${i}]`
        });
    }
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
};
addAssignments();
const verilogFile = `
module generated(
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
ic$type inst_$id (
$ports
);`
        .replace(/\$id/g, unit.id)
        .replace(/\$type/g, unit.type)
        .replace(/\$ports/g, unit.ports
        .filter(wire => wire.name !== '?')
        .map(transformWire)
        .map(port => {
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
    .replace(/\$displayDriver/g, `

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
);`);
;
const uniqueUnits = unitsForVerilog.map(u => u.type)
    .filter((u, i, self) => self.indexOf(u) === i);
console.log(uniqueUnits.map(u => ({
    name: u,
    count: unitsForVerilog.filter(v => v.type === u).length
})).sort((a, b) => a.count - b.count));
(0, fs_1.writeFileSync)(process_1.argv[3], verilogFile);
//# sourceMappingURL=netlist2verilog.js.map