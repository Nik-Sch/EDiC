#!/usr/bin/node

'use strict';
import { readFileSync, writeFileSync } from 'fs';
import { argv, exit } from 'process';

interface IInstruction {
  regex: RegExp;
  result: (match: RegExpMatchArray) => { instr: string, imm?: number | false }
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

const checkImmediate = (match: string, options: { stack?: boolean, memory?: boolean } = {}) => {
  if (typeof options.stack === 'undefined') {
    options.stack = false;
  }
  if (typeof options.memory === 'undefined') {
    options.memory = true;
  }
  const maxImm = options.memory ? 0xfffe : 0xffff; // [0xffff] is used for return address
  const imm = parseInt(match);
  if (imm > maxImm || imm < 0) {
    console.error(`Immediate must be in range of 0 to  0x${maxImm.toString(16)} but is 0x${imm.toString(16)}.`);
    return false;
  }
  return imm | (options.stack ? 0xff00 : 0x0000);
}

const instructions: IInstruction[] = [
  { // r/y := r x s
    regex: new RegExp(`^\\s*(${aluOpRegEx})(s?)\\s+r([01])\\s*,\\s*r([01])`),
    result: match => ({ instr: `00${match[2] == 's' ? '1' : '0'}${match[3]}${match[4]}${aluOps[match[1]]}` })
  },
  { // r := [s] # ldr
    regex: /^\s*ldr\s+r([01])\s*,\s*\[\s*r([01])\s*\]/,
    result: match => ({ instr: `010000${match[1]}${match[2]}` })
  },
  { // [s] := r # str
    regex: /^\s*str\s+r([01])\s*,\s*\[\s*r([01])\s*\]/,
    result: match => ({ instr: `010001${match[1]}${match[2]}` })
  },
  { // r := s
    regex: /^\s*mov\s+r([01])\s*,\s*r([01])/,
    result: match => ({ instr: `010010${match[1]}${match[2]}` })
  },
  { // r := r x [s]
    regex: new RegExp(`^\\s*(${aluOpRegEx})\\s+r([01])\\s*,\\s*\\[\\s*r([01])\\s*\\]`),
    result: match => ({ instr: `011${match[2]}${match[3]}${aluOps[match[1]]}` })
  },
  { // r/y := r x imm
    regex: new RegExp(`^\\s*(${aluOpRegEx})(s?)\\s+r([01])\\s*,\\s*(${immRegEx})`),
    result: match => {
      const imm = checkImmediate(match[4], { memory: false });
      return { instr: `100${match[2] == 's' ? '1' : '0'}${match[3]}${aluOps[match[1]]}`, imm }
    }
  },
  { // pc := imm
    regex: new RegExp(`^\\s*(${branchOpRegEx})\\s+(${immRegEx})\\s*`),
    result: match => {
      const imm = checkImmediate(match[2]);
      return { instr: `1010${branchOps[match[1]]}`, imm }
    }
  },
  { // pc := imm
    regex: new RegExp(`^\\s*(${branchOpRegEx})\\s+(${labelRegEx})\\s*`),
    result: match => {
      const label = labels.find(l => l.name === match[2]);
      let imm: number | false = false;
      if (typeof label === 'undefined') {
        console.error(`${match[0]}: Could not find label '${match[2]}' in ${labels.map(l => ` ${l.name} @ ${l.pos}`)}.`);
      } else {
        imm = checkImmediate(label.pos.toString());
      }
      return { instr: `1010${branchOps[match[1]]}`, imm }
    }
  },
  { // call
    regex: new RegExp(`^\\s*call\\s+(${labelRegEx})\\s*`),
    result: match => {
      const label = labels.find(l => l.name === match[1]);
      let imm: number | false = false;
      if (typeof label === 'undefined') {
        console.error(`${match[0]}: Could not find label '${match[1]}' in ${labels.map(l => ` ${l.name} @ ${l.pos}`)}.`);
      } else {
        imm = checkImmediate(label.pos.toString());
      }
      return { instr: `10110000`, imm }
    }
  },
  { // return
    regex: /^\s*(return|ret)\s*/,
    result: () => ({ instr: `10110001` })
  },
  { // r/y := r x [imm]
    regex: new RegExp(`^\\s*(${aluOpRegEx})(s?)\\s+r([01])\\s*,\\s*\\[\\s*(${immRegEx})\\s*\\]`),
    result: match => {
      const imm = checkImmediate(match[4]);
      return { instr: `110${match[2] == 's' ? '1' : '0'}${match[3]}${aluOps[match[1]]}`, imm }
    }
  },
  { // r := [imm] # ldr
    regex: new RegExp(`^\\s*ldr\\s+r([01])\\s*,\\s*\\[\\s*(${immRegEx})\\s*\\]`),
    result: match => {
      const imm = checkImmediate(match[2]);
      return { instr: `1111000${match[1]}`, imm }
    }
  },
  { // r := [imm] # ldr
    regex: new RegExp(`^\\s*lds\\s+r([01])\\s*,\\s*\\[\\s*(${immRegEx})\\s*\\]`),
    result: match => {
      const imm = checkImmediate(match[2], { stack: true });
      return { instr: `1111000${match[1]}`, imm }
    }
  },
  { // [imm] := r # str
    regex: new RegExp(`^\\s*str\\s+r([01])\\s*,\\s*\\[\\s*(${immRegEx})\\s*\\]`),
    result: match => {
      const imm = checkImmediate(match[2]);
      return { instr: `1111001${match[1]}`, imm }
    }
  },
  { // [imm] := r # str
    regex: new RegExp(`^\\s*sts\\s+r([01])\\s*,\\s*\\[\\s*(${immRegEx})\\s*\\]`),
    result: match => {
      const imm = checkImmediate(match[2], { stack: true });
      return { instr: `1111001${match[1]}`, imm }
    }
  },
  { // r := [imm] # ldr from function call
    regex: new RegExp(`^\\s*ldf\\s+r([01])\\s*,\\s*\\[\\s*(${immRegEx})\\s*\\]`),
    result: match => {
      const imm = checkImmediate(match[2], { stack: true });
      return { instr: `1111010${match[1]}`, imm }
    }
  },
  { // [imm] := r # str for function call
    regex: new RegExp(`^\\s*stf\\s+r([01])\\s*,\\s*\\[\\s*(${immRegEx})\\s*\\]`),
    result: match => {
      const imm = checkImmediate(match[2], { stack: true });
      return { instr: `1111011${match[1]}`, imm }
    }
  },
  { // r := imm
    regex: new RegExp(`^\\s*mov\\s+r([01])\\s*,\\s*(${immRegEx})\\s*`),
    result: match => {
      const imm = checkImmediate(match[2], { memory: false });
      return { instr: `1111100${match[1]}`, imm }
    }
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

// find labels
for (const origLine of code) {
  lineCount++;
  const line = origLine.replace(/\s*[#@;].*$/, '');
  if (line.match(/^\s*$/)) {
    continue;
  }
  const labelMatch = line.match(labelDefRegEx);
  if (labelMatch) {
    labels.push({ name: labelMatch[1], pos: instrCount });
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

const data: number[] = [];

const insertInstruction = (line: string): boolean => {
  for (const instr of instructions) {
    const match = line.match(instr.regex);
    if (match) {
      const result = instr.result(match);
      if (result.imm === false) {
        console.error(`Error in line ${lineCount}.`);
        exit(1);
      }
      data[instrCount] = parseInt(result.instr, 2) << 16;
      if (result.imm) {
        data[instrCount] |= result.imm;
        console.log(`${instrCount.toString(16).padStart(2, '0')}: ${result.instr.trim()} - ${line.trim()} (imm: 0x${result.imm.toString(16).padStart(2, '0')})`);
      } else {
        console.log(`${instrCount.toString(16).padStart(2, '0')}: ${result.instr.trim()} - ${line.trim()}`);
      }
      instrCount++;
      return true;
    }
  }
  return false;
}

instrCount = 0;
if (labels.find(l => l.name === 'start')) {
  labels.forEach(l => l.pos++);
  insertInstruction('b start');
}
lineCount = 0;
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
  let success = insertInstruction(line);
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