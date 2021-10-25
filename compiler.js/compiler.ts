#!/usr/bin/node

'use strict';
import { readFileSync, writeFileSync } from 'fs';
import { argv, exit } from 'process';

interface IInstruction {
  regex: RegExp;
  result: (match: RegExpMatchArray) => { instr: string, imm?: string | false }
}

const aluOps: { [i: string]: string } = {
  add: '000',
  sub: '001',
  and: '010',
  eor: '100',
  xor: '100',
  xnor: '101',
  lsr: '110',
  lsl: '111',
};


const branchOps: { [i: string]: string } = {
  b: '0000',
  bal: '0000',
  jmp: '0000',
  beq: '0001',
  bne: '0010',
  bcs: '0011',
  bcc: '0100',
  bmi: '0101',
  bpl: '0110',
  bvs: '0111',
  bvc: '1000',
  bhi: '1001',
  bls: '1010',
  bge: '1011',
  blt: '1100',
  bgt: '1101',
  ble: '1110',
};

const aluOpRegEx = Object.keys(aluOps).reduce((p, c) => `${p}|${c}`);
const branchOpRegEx = Object.keys(branchOps).reduce((p, c) => `${p}|${c}`);
const immRegEx = '\\b0x[0-9a-fA-F]+\\b|\\b\\d+\\b';
const labelRegEx = '[a-zA-Z]\\w*';
const labelDefRegEx = `\\s*(${labelRegEx}):\\s*`;

interface ILabel {
  name: string;
  pos: number
};
const labels: ILabel[] = [];

const checkImmediate = (match: string) => {
  const imm = parseInt(match);
  if (imm > 0xffff || imm < 0) {
    console.error(`Immediate must be in range of 0 to 0xffff but is 0x${imm.toString(16)}.`);
    return false;
  }
  return imm.toString(2).padStart(8, '0');
}

const instructions: IInstruction[] = [
  // alu ops
  { // two regs
    regex: new RegExp(`\\s*(${aluOpRegEx})(s?)\\s+r([01])\\s*,\\s*r([01])`),
    result: match => ({ instr: `00${match[2] == 's' ? '1' : '0'}${match[3]}${match[4]}${aluOps[match[1]]}` })
  },
  { // memory with two regs
    regex: new RegExp(`\\s*(${aluOpRegEx})\\s+r([01])\\s*,\\s*\\[\\s*r([01])\\s*\\]`),
    result: match => ({ instr: `011${match[2]}${match[3]}${aluOps[match[1]]}` })
  },
  { // reg x imm
    regex: new RegExp(`\\s*(${aluOpRegEx})(s?)\\s+r([01])\\s*,\\s*(${immRegEx})`),
    result: match => {
      const imm = checkImmediate(match[4]);
      return { instr: `100${match[2] == 's' ? '1' : '0'}${match[3]}${aluOps[match[1]]}`, imm }
    }
  },
  { // reg x [imm] (memory with reg and imm)
    regex: new RegExp(`\\s*(${aluOpRegEx})(s?)\\s+r([01])\\s*,\\s*\\[\\s*(${immRegEx})\\s*\\]`),
    result: match => {
      const imm = checkImmediate(match[4]);
      return { instr: `110${match[2] == 's' ? '1' : '0'}${match[3]}${aluOps[match[1]]}`, imm }
    }
  },

  // memory ops and io
  {
    regex: /\s*ldr\s+r([01])\s*,\s*\[\s*r([01])\s*\]/,
    result: match => ({ instr: `010100${match[1]}${match[2]}` })
  },
  {
    regex: new RegExp(`\\s*ldr\\s+r([01])\\s*,\\s*\\[\\s*(${immRegEx})\\s*\\]`),
    result: match => {
      const imm = checkImmediate(match[2]);
      return { instr: `1111000${match[1]}`, imm }
    }
  },
  {
    regex: /\s*str\s+r([01])\s*,\s*\[\s*r([01])\s*\]/,
    result: match => ({ instr: `010101${match[1]}${match[2]}` })
  },
  {
    regex: new RegExp(`\\s*str\\s+r([01])\\s*,\\s*\\[\\s*(${immRegEx})\\s*\\]`),
    result: match => {
      const imm = checkImmediate(match[2]);
      return { instr: `1111001${match[1]}`, imm }
    }
  },
  {
    regex: /\s*mov\s+r([01])\s*,\s*r([01])/,
    result: match => ({ instr: `010110${match[1]}${match[2]}` })
  },
  {
    regex: new RegExp(`\\s*mov\\s+r([01])\\s*,\\s*(${immRegEx})\\s*`),
    result: match => {
      const imm = checkImmediate(match[2]);
      return { instr: `1111010${match[1]}`, imm }
    }
  },
  {
    regex: new RegExp(`\\s*(${branchOpRegEx})\\s+(${immRegEx})\\s*`),
    result: match => {
      const imm = checkImmediate(match[2]);
      return { instr: `10100${branchOps[match[1]]}`, imm }
    }
  },
  {
    regex: new RegExp(`\\s*(${branchOpRegEx})\\s+(${labelRegEx})\\s*`),
    result: match => {
      const label = labels.find(l => l.name === match[2]);
      let imm: string | false = false;
      if (typeof label === 'undefined') {
        console.error(`Could not find label '${match[2]}'.`);
      } else {
        imm = checkImmediate(label.pos.toString());
      }
      return { instr: `1010${branchOps[match[1]]}`, imm }
    }
  },
  {
    regex: new RegExp(`\\s*call\\s+(${labelRegEx})\\s*`),
    result: match => {
      const label = labels.find(l => l.name === match[2]);
      let imm: string | false = false;
      if (typeof label === 'undefined') {
        console.error(`Could not find label '${match[2]}'.`);
      } else {
        imm = checkImmediate(label.pos.toString());
      }
      return { instr: `10110000`, imm }
    }
  },
  {
    regex: /\s*(return|ret)\s*/,
    result: () => ({ instr: `10110000` })
  },
];
if (argv.length !== 4) {
  console.error(`${argv[0]} ${argv[1]} <in>.cson <out>.coe`);
  exit(1);
}

const coeFile = argv[3].endsWith('.coe');
const code = readFileSync(argv[2]).toString().replace('\r', '').split('\n');
let fileContent = coeFile
  ? 'MEMORY_INITIALIZATION_RADIX=16;\nMEMORY_INITIALIZATION_VECTOR=\n'
  : `#ifndef DATA_H
#define DATA_H

#include <Arduino.h>

const uint16_t length = 512;
const uint8_t data[] PROGMEM = {\n`;

let lineCount = 0;
let instrCount = 0;

for (const origLine of code) {
  lineCount++;
  const line = origLine.replace(/\s*[#@;].*$/, '');
  if (line.match(/^\s*$/)) {
    continue;
  }
  const labelMatch = line.match(labelDefRegEx);
  if (labelMatch) {
    labels.push({name: labelMatch[1], pos: instrCount});
    continue;
  }
  let success = false;
  for (const instr of instructions) {
    const match = line.match(instr.regex);
    if (match) {
      success = true;
      instrCount++;
      break;
    }
  }
  if (!success) {
    console.error(`Unrecognized instruction in line ${lineCount}:\n'${line.trim()}'`);
    exit(1);
  }
}
instrCount = 0;
lineCount = 0;
const data: number[] = [];
for (const origLine of code) {
  lineCount++;
  const line = origLine.replace(/\s*[#@;].*$/, '');
  if (line.match(/^\s*$/)) {
    continue;
  }
  if (line.match(labelDefRegEx)) {
    console.log(line.trim());
    continue;
  }
  let success = false;
  for (const instr of instructions) {
    const match = line.match(instr.regex);
    if (match) {
      success = true;
      const result = instr.result(match);
      if (result.imm === false) {
        console.error(`Error in line ${lineCount}.`);
        exit(1);
      }
      data[instrCount] = parseInt(result.instr, 2) << 16;
      if (result.imm) {
        data[instrCount] |= parseInt(result.imm, 2);
        console.log(`${instrCount.toString(16).padStart(2, '0')}: ${result.instr.trim()} - ${line.trim()} (imm: 0x${parseInt(result.imm, 2).toString(16).padStart(2, '0')})`);
      } else {
        console.log(`${instrCount.toString(16).padStart(2, '0')}: ${result.instr.trim()} - ${line.trim()}`);
      }
      instrCount++;
      break;
    }
  }
  if (!success) {
    console.error(`Unrecognized instruction in line ${lineCount}:\n'${line.trim()}'`);
    exit(1);
  }
}
if (coeFile) {
  for (const word of data) {
    fileContent += `${word.toString(16).padStart(6, '0')}\n`;
  }
  fileContent += ';';
} else {
  for (let i = 0; i < 512; i++) {
    fileContent += data[i] ? `0x${data[i].toString(16).padStart(2, '0')},\n` : '0xff,\n';
  }
  fileContent += '};\n#endif';
}
writeFileSync(argv[3], fileContent);