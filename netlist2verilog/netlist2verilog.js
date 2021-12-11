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
const ignoreWire = (wire) => {
    // return wire.name !== 'GND' && wire.name !== '+5V' && wire.name !== '?';
    return wire.name !== '?';
};
const transformWire = (wire) => {
    wire.name = transformWireStr(wire.name);
    return wire;
};
const transformWireStr = (wire) => {
    wire = wire
        .replace(/\/([a-z])/g, v => v.toUpperCase()) // make letter after / to uppercase
        .replace(/\//g, '')
        .replace(/-/g, '_')
        .replace(/\(/g, '')
        .replace(/\)/g, '')
        .replace(/'/g, '')
        .replace(/~(\S+)~/g, '$1N')
        .replace(/^\+5V$/, '1')
        .replace(/^GND$/, '0');
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
                name: `${pinPort.name}_in`
            });
        }
        pinPort.name = `${pinPort.name}_${unit.id}`;
        triStateNet.inputs.push({
            dataName: transformWireStr(pinPort.name),
            noeName: transformWireStr(noePort.name)
        });
    }
};
for (const unit of unitsForVerilog) {
    if (unit.type == '74LS245') {
        addTristatePort(unit, 19, [11, 12, 13, 14, 15, 16, 17, 18], false);
    }
}
;
// console.log(JSON.stringify(tristateNets, null, 2));
wires.push(...unitsForVerilog
    .flatMap(w => w.ports)
    .filter((v, i, self) => self.findIndex(w => w.name === v.name) === i)
    .filter(v => wires.findIndex(w => w === transformWire(v).name) === -1)
    .filter(ignoreWire)
    .map(transformWire)
    .map(w => w.name));
if (wires.filter((v, i, self) => self.indexOf(v) !== i).length > 0) {
    console.log('the naming transformation removed uniqueness of the wire names.');
    console.log(wires.filter((v, i, self) => self.indexOf(v) !== i));
    (0, process_1.exit)(1);
}
const verilogFile = `
module generated(
  $ports
);

$wires

$tristates

$assigns

$instances

endmodule`
    .replace(/\$wires/g, wires.filter(w => w.match(/^[0-9]$/) === null).sort().map(w => `wire ${w};`).join('\n'))
    .replace(/\$instances/g, unitsForVerilog.map(unit => {
    return `
ic$type inst_$id (
$ports
);`
        .replace(/\$id/g, unit.id)
        .replace(/\$type/g, unit.type)
        .replace(/\$ports/g, unit.ports
        .filter(ignoreWire)
        .map(transformWire)
        .map(port => {
        return `  .port${port.portNumber}(${port.name})`;
    }).join(',\n'));
}).join('\n'))
    .replace(/\$ports/g, `
// clocks
input wire i_oszClk,
input wire i_asyncRamSpecialClock,
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
    .replace(/\$assigns/g, `
${[0, 1, 2, 3, 4, 5, 6, 7].map(i => `assign o_bus[${i}] = Bus${i};`).join('\n')}
${[0, 1, 2, 3, 4, 5, 6, 7].map(i => `assign Bus${i} = i_bus[${i}];`).join('\n')}
assign Net_U95_Pad2 = i_oszClk;
`)
    .replace(/\$tristates/g, tristateNets.map(net => {
    return `
tristatenet #(
  .INPUT_COUNT(${net.inputs.length})
) inst_triBus (
  .i_data({${net.inputs.map(i => i.dataName).join(', ')}}),
  .i_noe({${net.inputs.map(i => i.noeName).join(', ')}}),
  .o_data(${net.name}),
  .o_noe(${net.noe})
);`;
}).join('\n'));
const uniqueUnits = unitsForVerilog.map(u => u.type)
    .filter((u, i, self) => self.indexOf(u) === i);
console.log(uniqueUnits.map(u => ({
    name: u,
    count: unitsForVerilog.filter(v => v.type === u).length
})).sort((a, b) => a.count - b.count));
(0, fs_1.writeFileSync)(process_1.argv[3], verilogFile);
//# sourceMappingURL=netlist2verilog.js.map