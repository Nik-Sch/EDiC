interface IMicrocodeFile {
  signals: [
    {
      name: string;
      noOp: 0 | 1;
    }
  ];

  instructionFetch: [
    {
      [signalName: string]: 0 | 1;
    }
  ];
  
  instructions: [
    {
      op: string;
      cycles: [
        {
          [signalName: string]: 0 | 1 | 'r' | 's' | '!r' | '!s';
        }
      ];
    }
  ];
};