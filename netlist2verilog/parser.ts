'use strict';


export interface INet {
  name: string;
  portNumber: number;
}

export interface IUnit {
  uuid: string;
  pack: string;
  id: string;
  type: string;
  ports: INet[];
}

export interface ITriStateIn {
  dataName: string;
  noeName: string;
}

export interface ITriStateNet {
  name: string;
  inputs: ITriStateIn[];
  noe: string;
}

export class Parser {

  i: number;
  netlist: string;
  units: IUnit[];

  constructor(fileContent: string) {
    this.i = 0;
    this.netlist = fileContent;
    this.units = [];
  }

  parse() {
    while (this.i < this.netlist.length) {
      const newUnit = this.tryParseUnit();
      if (newUnit) {
        this.units.push(newUnit);
      }
    }
    // console.log(this.units);
  }

  tryParseUnit() {
    try {
      this.expect('(');
      const unit: IUnit = {
      uuid: this.getNextWord(),
      pack: this.getNextWord(),
      id: this.getNextWord(),
      type: this.getNextWord().replace('-', '_'),
      ports: []
      };

      while (this.netlist[this.i] != ')') {
        this.expect('(');
        const portNumber = parseInt(this.getNextWord());
        unit.ports.push({
          name: this.getNextWord(),
          portNumber
        });
        this.expect(')');
      }
      this.expect(')');
      return unit;
    } catch (e) {
      console.log(e.message);
      this.advanceWhitespace();
      this.getNextWord();
      return null;
    }
  }

  advanceWhitespace() {
    const match = this.netlist.substring(this.i).match(/^\s+/);
    if (match) {
      this.i += match[0].length;
    }
  }

  expect(expected: string | string[]) {
    if (!Array.isArray(expected)) {
      expected = [expected];
    }
    let savedI: number;
    const re = new RegExp('^' + expected.map(e => escapeStringRegexp(e)).join('|'), 'i');
    // console.log(re);
    const match = re.exec(this.netlist.substr(this.i));
    if (match !== null) {
      this.i += match[0].length;
      savedI = this.i;
      this.advanceWhitespace();
    } else {
      throw new Error(`expected '${expected.join(', ')}' found '${this.getNextWord({re: /^\S+/, consume: false})}' line: ${this.getLine()}`);
    }
    return savedI;
  }

  getNextWord(options: { re?: RegExp, consume?: boolean } = {}) {
    let { re, consume } = options;
    if (!re) {
      re = /^\S+/;
    }
    if (typeof consume === 'undefined') {
      consume = true;
    }

    if (consume) {
      let word = '';
      const match = this.netlist.substring(this.i).match(re);
      if (match) {
        word = match[0];
        this.i += word.length;
        this.advanceWhitespace();
        return word;
      }
      throw new Error(`did not find ${re}. line: ${this.getLine()}`);
    }
    let word = '';
    let j = 0;
    while (this.netlist[this.i + j].match(re)) {
      word += this.netlist[this.i + j];
      j++;
    }
    return word;
  }

  getLine(position?: number) {
    if (!position) {
      position = this.i;
    }
    let line = 1;
    for (let counter = 0; counter < position; counter++) {
      if (this.netlist[counter] === '\n') {
        line++;
      }
    }
    return line;
  }
}

function escapeStringRegexp(string: string) {
// Escape characters with special meaning either inside or outside character sets.
  // Use a simple backslash escape when it’s always valid, and a `\xnn` escape when the simpler form would be disallowed by Unicode patterns’ stricter grammar.
  return string
    .replace(/[|\\{}()[\]^$+*?.]/g, '\\$&')
    .replace(/-/g, '\\x2d');
}