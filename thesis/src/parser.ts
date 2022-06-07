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
  units: IUnit[];

  constructor(private netlist: string, private ednFile: boolean) {
    this.i = 0;
    this.units = [];
  }

  parse() {
    if (this.ednFile) {
      this.advancePast(/contents/i);
      try {
        while (this.i < this.netlist.length) {
          this.units.push(this.ednTryParseInstance());
        }
      } catch (e: any) {
        console.log(e.message);
        this.i--;
      }
      // parsed all instances hopefully, parse the nets
      try {
        while (this.i < this.netlist.length) {
          this.ednTryParseNet();
        }
      } catch (e: any) {
        console.log(e.message);
      }
      // merge wires that are connected through 0R0 resistors
      for (const resistor of this.units) {
        if (resistor.id.match(/^R\d/) && resistor.type === '0R0' && resistor.ports.length == 2) {
          const wireToReplace = resistor.ports[0];
          const newWireName = resistor.ports[1];
          for (const unit of this.units) {
            unit.ports.map(port => {
              if (port.name === wireToReplace.name) {
                port.name = newWireName.name
              }
              return port
            });
          }
        }
      }

      this.units.sort((a, b) => a.id.localeCompare(b.id, undefined, {numeric: true}));
      for (const unit of this.units) {
        const max = unit.ports.reduce((p, v) => (p > v.portNumber) ? p : v.portNumber, 0);
        for (let i = 1; i < max; i++) {
          if (!unit.ports.find(p => p.portNumber === i)) {
            unit.ports.push({
              name: `unconnected-${unit.id}-${i}`,
              portNumber: i
            })
          }
        }
        unit.ports.sort((a, b) => a.portNumber - b.portNumber);
      }
    } else {
      while (this.i < this.netlist.length) {
        const newUnit = this.netTryParseUnit();
        if (newUnit) {
          this.units.push(newUnit);
        }
      }
    }
  }

  ednTryParseInstance(): IUnit {
    this.expect('(');
    this.expect('instance');
    const id = this.getNextWord();
    const type = this.advancePast(/\(property Value \(string "([^"]*)"\)\)/i);
    while (this.i < this.netlist.length && this.netlist[this.i] !== ')') {
      this.advancePast(/\(portInstance &\d+\)/);
    }
    this.expect(')');
    return {
      id,
      type: type[1],
      pack: '',
      uuid: '',
      ports: [],
    };
  }


  ednTryParseNet() {
    this.expect('(');
    this.expect('net');
    const name = this.getNextWord();
    this.expect('(');
    this.expect('joined');
    while (this.i < this.netlist.length && this.netlist[this.i] !== ')') {
      this.expect('(');
      this.expect('portRef');
      this.expect('&');
      const number = parseInt(this.getNextWord({re: /^\d+/}));
      this.expect('(');
      this.expect('instanceRef');
      const instance = this.getNextWord({re: /^[^)]+/});
      this.expect(')');
      this.expect(')');
      const unit = this.units.find(u => u.id === instance);
      if (unit) {
        unit.ports.push({name, portNumber: number})
      } else {
        throw new Error(`Could not find unit ${instance} for net at line ${this.getLine()}`);
      }
    }
    this.expect(')');
    this.advancePast(/\(property Name \(string "[^"]+"\)\)/i);
    this.expect(')');
  }

  tryParseUnitEdn(): IUnit|null {
    return null;
  }
  netTryParseUnit(): IUnit|null {
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

  advancePast(search: RegExp) {
    let match = this.netlist.substring(this.i).match(search);
    if (match !== null && typeof match.index !== 'undefined') {
      this.i += match.index + match[0].length;
      this.advanceWhitespace();
      return match;
    } else {
      throw new Error(`could not find ${search}`);
    }
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