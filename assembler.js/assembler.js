#!/usr/bin/node
'use strict';
Object.defineProperty(exports, "__esModule", { value: true });
const fs_1 = require("fs");
const process_1 = require("process");
const aluOps = {
    add: '000',
    sub: '001',
    and: '010',
    eor: '100',
    xor: '100',
    xnor: '101',
    lsr: '110',
    lsl: '111',
};
const branchOps = {
    b: '0000',
    bal: '0000',
    jmp: '0000',
    beq: '0001',
    bne: '0010',
    bcs: '0011',
    bhs: '0011',
    bcc: '0100',
    blo: '0100',
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
const numericRegEx = '\\b0x[0-9a-fA-F]+\\b|-?\\d+\\b';
const identifierRegEx = '[a-zA-Z]\\w*';
const stringRegEx = '"(\\\\.|[^"])*"';
const labelDefRegEx = `\\s*(${identifierRegEx}):\\s*`;
const constantDefRegEx = `\\s*(${identifierRegEx})\\s*=\\s*(${numericRegEx})\\s*`;
const stringDefRegEx = `\\s*\\.(${identifierRegEx})\\s* =\\s*(${stringRegEx})\\s*`;
const valueRegEx = `(?:${numericRegEx})|(?:${identifierRegEx})`;
const lineCommentRegex = /^\s*(?:#|@|;|(?:\/\/)).*$/;
;
;
const labels = [];
const constants = [];
const checkImmediate = (match, options = {}) => {
    if (typeof options.stack === 'undefined') {
        options.stack = false;
    }
    if (typeof options.memory === 'undefined') {
        options.memory = true;
    }
    if (typeof options.regValue === 'undefined') {
        options.regValue = false;
    }
    // [0xffff] is used for return address and register can only hold 8bit
    const maxImm = options.memory ? 0xfffe : options.regValue ? 127 : 0xffff;
    const minImm = options.regValue ? -128 : 0;
    let imm = parseInt(match);
    if (isNaN(imm)) {
        const constant = constants.find(c => c.name === match);
        if (constant) {
            imm = constant.value;
        }
        else {
            console.error(`Found no constant '${match}'`);
            process_1.exit(1);
        }
    }
    if (imm > maxImm || imm < minImm) {
        console.error(`Immediate must be in range of ${minImm} to ${maxImm} but is ${imm}.`);
        return false;
    }
    if (imm < 0) {
        imm = 256 + imm; // to get the two's complement value correctly
    }
    return imm | (options.stack ? 0xff00 : 0x0000);
};
const instructions = [
    {
        regex: new RegExp(`^\\s*(${aluOpRegEx})(s?)\\s+r([01])\\s*,\\s*r([01])`),
        result: match => ({ instr: `00${match[2] == 's' ? '1' : '0'}${match[3]}${match[4]}${aluOps[match[1]]}` })
    },
    {
        regex: new RegExp(`^\\s*cmp\\s+r([01])\\s*,\\s*r([01])`),
        result: match => ({ instr: `001${match[1]}${match[2]}${aluOps['sub']}` })
    },
    {
        regex: /^\s*ldr\s+r([01])\s*,\s*\[\s*r([01])\s*\]/,
        result: match => ({ instr: `010000${match[1]}${match[2]}` })
    },
    {
        regex: /^\s*str\s+r([01])\s*,\s*\[\s*r([01])\s*\]/,
        result: match => ({ instr: `010001${match[1]}${match[2]}` })
    },
    {
        regex: /^\s*mov\s+r([01])\s*,\s*r([01])/,
        result: match => ({ instr: `010010${match[1]}${match[2]}` })
    },
    {
        regex: /^\s*sma\s+r([01])\s*/,
        result: match => ({ instr: `0100110${match[1]}` })
    },
    {
        regex: new RegExp(`^\\s*sma\\s+(${valueRegEx})`),
        result: match => {
            const imm = checkImmediate(match[1], { regValue: true });
            return { instr: '01001110', imm };
        }
    },
    {
        regex: new RegExp(`^\\s*(${aluOpRegEx})\\s+r([01])\\s*,\\s*\\[\\s*r([01])\\s*\\]`),
        result: match => ({ instr: `011${match[2]}${match[3]}${aluOps[match[1]]}` })
    },
    {
        regex: new RegExp(`^\\s*(${aluOpRegEx})(s?)\\s+r([01])\\s*,\\s*(${valueRegEx})`),
        result: match => {
            const imm = checkImmediate(match[4], { regValue: true });
            return { instr: `100${match[2] == 's' ? '1' : '0'}${match[3]}${aluOps[match[1]]}`, imm };
        }
    },
    {
        regex: new RegExp(`^\\s*cmp\\s+r([01])\\s*,\\s*(${valueRegEx})`),
        result: match => {
            const imm = checkImmediate(match[2], { regValue: true });
            return { instr: `1001${match[1]}${aluOps['sub']}`, imm };
        }
    },
    {
        regex: new RegExp(`^\\s*(${branchOpRegEx})\\s+(${numericRegEx})\\s*`),
        result: match => {
            const imm = checkImmediate(match[2]);
            return { instr: `1010${branchOps[match[1]]}`, imm };
        }
    },
    {
        regex: new RegExp(`^\\s*(${branchOpRegEx})\\s+(${identifierRegEx})\\s*`),
        result: match => {
            const label = labels.find(l => l.name === match[2]);
            let imm = false;
            if (typeof label === 'undefined') {
                console.error(`${match[0]}: Could not find label '${match[2]}' in ${labels.map(l => ` ${l.name} @ ${l.instruction}`)}.`);
            }
            else {
                imm = checkImmediate(label.instruction.toString());
            }
            return { instr: `1010${branchOps[match[1]]}`, imm };
        }
    },
    {
        regex: new RegExp(`^\\s*call\\s+(${identifierRegEx})\\s*`),
        result: match => {
            const label = labels.find(l => l.name === match[1]);
            let imm = false;
            if (typeof label === 'undefined') {
                console.error(`${match[0]}: Could not find label '${match[1]}' in ${labels.map(l => ` ${l.name} @ ${l.instruction}`)}.`);
            }
            else {
                imm = checkImmediate(label.instruction.toString());
            }
            return { instr: `10110000`, imm };
        }
    },
    {
        regex: /^\s*(return|ret)\s*/,
        result: () => ({ instr: `10110001` })
    },
    {
        regex: new RegExp(`^\\s*(${aluOpRegEx})(s?)\\s+r([01])\\s*,\\s*\\[\\s*(${valueRegEx})\\s*\\]`),
        result: match => {
            const imm = checkImmediate(match[4], { regValue: true });
            return { instr: `110${match[2] == 's' ? '1' : '0'}${match[3]}${aluOps[match[1]]}`, imm };
        }
    },
    {
        regex: new RegExp(`^\\s*ldr\\s+r([01])\\s*,\\s*\\[\\s*r([01])\\s*\\]`),
        result: match => {
            return { instr: `010000${match[1]}${match[2] == 's' ? '1' : '0'}` };
        }
    },
    {
        regex: new RegExp(`^\\s*ldr\\s+r([01])\\s*,\\s*\\[\\s*(${valueRegEx})\\s*\\]`),
        result: match => {
            const imm = checkImmediate(match[2]);
            return { instr: `1111000${match[1]}`, imm };
        }
    },
    {
        regex: new RegExp(`^\\s*lds\\s+r([01])\\s*,\\s*\\[\\s*(${valueRegEx})\\s*\\]`),
        result: match => {
            const imm = checkImmediate(match[2], { stack: true });
            return { instr: `1111000${match[1]}`, imm };
        }
    },
    {
        regex: new RegExp(`^\\s*str\\s+r([01])\\s*,\\s*\\[\\s*r([01])\\s*\\]`),
        result: match => {
            return { instr: `010001${match[1]}` };
        }
    },
    {
        regex: new RegExp(`^\\s*str\\s+r([01])\\s*,\\s*\\[\\s*(${valueRegEx})\\s*\\]`),
        result: match => {
            const imm = checkImmediate(match[2]);
            return { instr: `1111001${match[1]}`, imm };
        }
    },
    {
        regex: new RegExp(`^\\s*sts\\s+r([01])\\s*,\\s*\\[\\s*(${valueRegEx})\\s*\\]`),
        result: match => {
            const imm = checkImmediate(match[2], { stack: true });
            return { instr: `1111001${match[1]}`, imm };
        }
    },
    {
        regex: new RegExp(`^\\s*ldf\\s+r([01])\\s*,\\s*\\[\\s*(${valueRegEx})\\s*\\]`),
        result: match => {
            const imm = checkImmediate(match[2], { stack: true });
            return { instr: `1111010${match[1]}`, imm };
        }
    },
    {
        regex: new RegExp(`^\\s*stf\\s+r([01])\\s*,\\s*\\[\\s*(${valueRegEx})\\s*\\]`),
        result: match => {
            const imm = checkImmediate(match[2], { stack: true });
            return { instr: `1111011${match[1]}`, imm };
        }
    },
    {
        regex: new RegExp(`^\\s*mov\\s+r([01])\\s*,\\s*(${valueRegEx})\\s*`),
        result: match => {
            const imm = checkImmediate(match[2], { regValue: true });
            return { instr: `1111100${match[1]}`, imm };
        }
    },
];
if (process_1.argv.length !== 4) {
    console.error(`${process_1.argv[0]} ${process_1.argv[1]} <in>.cson <out>.coe`);
    process_1.exit(1);
}
const coeFile = process_1.argv[3].endsWith('.coe');
const code = fs_1.readFileSync(process_1.argv[2]).toString().replace('\r', '').split('\n');
let fileContent = coeFile
    ? 'MEMORY_INITIALIZATION_RADIX=16;\nMEMORY_INITIALIZATION_VECTOR=\n'
    : `#ifndef DATA_H
#define DATA_H

#include <Arduino.h>

const uint16_t length = 512;
const uint8_t data[] PROGMEM = {\n`;
let lineCount = 0;
let instrCount = 0;
const data = [];
const insertInstruction = (line) => {
    for (const instr of instructions) {
        const match = line.match(instr.regex);
        if (match) {
            const result = instr.result(match);
            if (result.imm === false) {
                console.error(`Error in line ${lineCount}.`);
                process_1.exit(1);
            }
            data[instrCount] = parseInt(result.instr, 2) << 16;
            if (typeof result.imm === 'number') {
                data[instrCount] |= result.imm;
                console.log(`${instrCount.toString(16).padStart(2, '0')}: ${result.instr.trim()} - ${line.trim()} (imm: 0x${result.imm.toString(16).padStart(2, '0')})`);
            }
            else {
                console.log(`${instrCount.toString(16).padStart(2, '0')}: ${result.instr.trim()} - ${line.trim()}`);
            }
            instrCount++;
            return true;
        }
    }
    return false;
};
let addressMSB = 0; // each new string gets a new 256 block of bytes for ease of use
// first pass: find strings and create instructions for it
for (const origLine of code) {
    lineCount++;
    const line = origLine.replace(lineCommentRegex, '');
    if (line.match(/^\s*$/)) {
        continue;
    }
    // find string definitions -> the strings are stored in memory and a constant is created that holds the start address
    const stringMatch = line.match(stringDefRegEx);
    if (stringMatch) {
        const values = [];
        const existingConstant = constants.find(c => c.name === stringMatch[1]);
        if (existingConstant) {
            console.error(`Constant '${stringMatch[1]}' defined multiple times (line ${existingConstant.line} and ${lineCount}).`);
            process_1.exit(1);
        }
        if (stringMatch[2].length > 255) {
            console.error(`String '${stringMatch[2]}' exceeds the 255 char limit (line ${lineCount}).`);
            process_1.exit(1);
        }
        // ignore quotes of the string
        let stringI = 1;
        let addressI = 0;
        while (stringI < stringMatch[2].length - 1) {
            let charCode = stringMatch[2].charCodeAt(stringI);
            if (charCode > 256) {
                console.error(`Char ${stringMatch[2].charAt(stringI)} with the code ${charCode} in string '${stringMatch}' in line ${lineCount} is not supported.`);
                process_1.exit(1);
            }
            if (charCode == 92) { // backslash
                stringI++;
                let value = -1;
                const nextChar = stringMatch[2].charAt(stringI);
                switch (nextChar) {
                    case 'n':
                        value = 0x0a;
                        break;
                    case 'r':
                        value = 0x0d;
                        break;
                    case 't':
                        value = 0x09;
                        break;
                    case '\\':
                        value = 0x5c;
                        break;
                    case '"':
                        value = 0x22;
                        break;
                    case 'x':
                        stringI++;
                        let hexEnd = stringI;
                        let charEndCode = stringMatch[2].charCodeAt(hexEnd);
                        while ((charEndCode >= 0x30 && charEndCode <= 0x39)
                            || (charEndCode >= 0x41 && charEndCode <= 0x46)
                            || (charEndCode >= 0x61 && charEndCode <= 0x66)) {
                            hexEnd++;
                            charEndCode = stringMatch[2].charCodeAt(hexEnd);
                        }
                        value = parseInt(stringMatch[2].substring(stringI, hexEnd), 16);
                        stringI = hexEnd - 1;
                        break;
                    default:
                        console.error(`Unkown escape code \\${nextChar} in string ${stringMatch[2]} in line ${lineCount}.`);
                        process_1.exit(1);
                }
                if (value > 255 || value < 0) {
                    console.error(`Cannot store value ${value} in string ${stringMatch[2]} in line ${lineCount}.`);
                    process_1.exit(1);
                }
                charCode = value;
            }
            values[addressI] = charCode;
            addressI++;
            stringI++;
        }
        values[addressI] = 0;
        // add constant and instructions
        constants.push({
            line: lineCount,
            name: stringMatch[1],
            value: addressMSB
        });
        insertInstruction(`sma 0x${addressMSB.toString(16)}`);
        values.forEach((value, i) => {
            insertInstruction(`mov r0, 0x${value.toString(16)}`);
            insertInstruction(`str r0, [0x${i.toString(16)}]`);
        });
        addressMSB++;
    }
}
if (instrCount > 0) {
    insertInstruction('sma 0');
    insertInstruction('mov r0, 0');
}
const startOfProgramInstr = instrCount;
lineCount = 0;
// second pass: find labels and constants
for (const origLine of code) {
    lineCount++;
    const line = origLine.replace(lineCommentRegex, '');
    if (line.match(/^\s*$/) || line.match(stringDefRegEx)) {
        continue;
    }
    // find label definitions
    const labelMatch = line.match(labelDefRegEx);
    if (labelMatch) {
        const existingLabel = labels.find(l => l.name === labelMatch[1]);
        if (existingLabel) {
            console.error(`Label '${labelMatch[1]}' defined multiple times (line ${existingLabel.line} and ${lineCount}).`);
            process_1.exit(1);
        }
        labels.push({ name: labelMatch[1], instruction: instrCount, line: lineCount });
        continue;
    }
    // find constant definitions
    const constantMatch = line.match(constantDefRegEx);
    if (constantMatch) {
        const existingConstant = constants.find(c => c.name === constantMatch[1]);
        if (existingConstant) {
            console.error(`Constant '${constantMatch[1]}' defined multiple times (line ${existingConstant.line} and ${lineCount}).`);
            process_1.exit(1);
        }
        constants.push({ name: constantMatch[1], value: parseInt(constantMatch[2]), line: lineCount });
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
        process_1.exit(1);
    }
}
// third pass: find instructions
instrCount = startOfProgramInstr;
lineCount = 0;
if (labels.find(l => l.name === 'start')) {
    labels.forEach(l => l.instruction++);
    insertInstruction('b start');
}
for (const origLine of code) {
    lineCount++;
    const line = origLine.replace(lineCommentRegex, '');
    if (line.match(/^\s*$/)) {
        continue;
    }
    if (line.match(labelDefRegEx) || line.match(constantDefRegEx) || line.match(stringDefRegEx)) {
        console.log(line.trim());
        continue;
    }
    let success = insertInstruction(line);
    if (!success) {
        console.error(`Unrecognized instruction in line ${lineCount}:\n'${line.trim()}'`);
        process_1.exit(1);
    }
}
if (coeFile) {
    for (const word of data) {
        fileContent += `${word.toString(16).padStart(6, '0')}\n`;
    }
    fileContent += ';';
}
else {
    for (let i = 0; i < 512; i++) {
        fileContent += data[i] ? `0x${data[i].toString(16).padStart(2, '0')},\n` : '0xff,\n';
    }
    fileContent += '};\n#endif';
}
fs_1.writeFileSync(process_1.argv[3], fileContent);
