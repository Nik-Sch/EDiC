void setShiftRegister(uint8_t *data, uint8_t def) {
  for (uint8_t i = 0; i < 7; i++) {
    PORTD = def | (data[i] & 0x01);
    PORTD = def | B00000010 | (data[i] & 0x01);
    PORTD = def | B00000000;
  }
}

void setup() {
  Serial.end();
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  pinMode(A2, INPUT);
  pinMode(A3, INPUT);
  pinMode(A4, INPUT);
  pinMode(A5, INPUT);
  for (uint8_t i = 0; i < 12; i++) {
    pinMode(i, OUTPUT);
  }
  pinMode(12, INPUT);
  pinMode(13, INPUT);
}
/*_       _  _       _   _  _   _   _   _       _      _  _
 | |   |  _| _| |_| |_  |_   | |_| |_| |_| |_  |   _| |_ |_
 |_|   | |_  _|   |  _| |_|  | |_|  _| | | |_| |_ |_| |_ |

  a
 f b
  g
 e c
  d
*/


void loop() {
  uint8_t digit0 = digitalRead(A5) << 3
    | digitalRead(A4) << 2
    | digitalRead(A3) << 1
    | digitalRead(A2) << 0;
  uint8_t digit1 = digitalRead(A1) << 3
    | digitalRead(A0) << 2
    | digitalRead(13) << 1
    | digitalRead(12) << 0;

 // port 5, 6, 7 are on pd5-7
  uint8_t pd = (digit0 == 0x0 // left e
    || digit0 == 0x2
    || digit0 == 0x6
    || digit0 == 0x8
    || digit0 == 0xa
    || digit0 == 0xb
    || digit0 == 0xc
    || digit0 == 0xd
    || digit0 == 0xe
    || digit0 == 0xf) << 5;
  pd = pd | ((digit0 == 0x0 // left d
    || digit0 == 0x2
    || digit0 == 0x3
    || digit0 == 0x5
    || digit0 == 0x6
    || digit0 == 0x8
    || digit0 == 0x9
    || digit0 == 0xb
    || digit0 == 0xc
    || digit0 == 0xd
    || digit0 == 0xe) << 6);

  pd = pd | ((digit0 == 0x0 // left c
    || digit0 == 0x1
    || digit0 == 0x3
    || digit0 == 0x4
    || digit0 == 0x5
    || digit0 == 0x6
    || digit0 == 0x7
    || digit0 == 0x8
    || digit0 == 0x9
    || digit0 == 0xa
    || digit0 == 0xb
    || digit0 == 0xd) << 7);

  uint8_t data1[7];
  data1[0] = digit1 == 0x0 // right f
    || digit1 == 0x4
    || digit1 == 0x5
    || digit1 == 0x6
    || digit1 == 0x8
    || digit1 == 0x9
    || digit1 == 0xa
    || digit1 == 0xb
    || digit1 == 0xc
    || digit1 == 0xe
    || digit1 == 0xf;
  data1[1] = digit1 == 0x0 // right a
    || digit1 == 0x2
    || digit1 == 0x3
    || digit1 == 0x5
    || digit1 == 0x6
    || digit1 == 0x7
    || digit1 == 0x8
    || digit1 == 0x9
    || digit1 == 0xa
    || digit1 == 0xc
    || digit1 == 0xe
    || digit1 == 0xf;
  data1[2] = digit1 == 0x0 // right b
    || digit1 == 0x1
    || digit1 == 0x2
    || digit1 == 0x3
    || digit1 == 0x4
    || digit1 == 0x7
    || digit1 == 0x8
    || digit1 == 0x9
    || digit1 == 0xa
    || digit1 == 0xd;
  data1[3] = digit1 == 0x0 // right c
    || digit1 == 0x1
    || digit1 == 0x3
    || digit1 == 0x4
    || digit1 == 0x5
    || digit1 == 0x6
    || digit1 == 0x7
    || digit1 == 0x8
    || digit1 == 0x9
    || digit1 == 0xa
    || digit1 == 0xb
    || digit1 == 0xd;
  data1[4] = digit1 == 0x2 // right g
    || digit1 == 0x3
    || digit1 == 0x4
    || digit1 == 0x5
    || digit1 == 0x6
    || digit1 == 0x8
    || digit1 == 0x9
    || digit1 == 0xa
    || digit1 == 0xb
    || digit1 == 0xd
    || digit1 == 0xe
    || digit1 == 0xf;
  data1[5] = digit1 == 0x0 // right d
    || digit1 == 0x2
    || digit1 == 0x3
    || digit1 == 0x5
    || digit1 == 0x6
    || digit1 == 0x8
    || digit1 == 0x9
    || digit1 == 0xb
    || digit1 == 0xc
    || digit1 == 0xd
    || digit1 == 0xe;
  data1[6] = digit1 == 0x0 // right e
    || digit1 == 0x2
    || digit1 == 0x6
    || digit1 == 0x8
    || digit1 == 0xa
    || digit1 == 0xb
    || digit1 == 0xc
    || digit1 == 0xd
    || digit1 == 0xe
    || digit1 == 0xf;

  setShiftRegister(data1, pd);
  delay(10);

  digitalWrite(8, digit0 == 0x0 // left f
    || digit0 == 0x4
    || digit0 == 0x5
    || digit0 == 0x6
    || digit0 == 0x8
    || digit0 == 0x9
    || digit0 == 0xa
    || digit0 == 0xb
    || digit0 == 0xc
    || digit0 == 0xe
    || digit0 == 0xf);
  digitalWrite(11, digit0 == 0x2 // left g
    || digit0 == 0x3
    || digit0 == 0x4
    || digit0 == 0x5
    || digit0 == 0x6
    || digit0 == 0x8
    || digit0 == 0x9
    || digit0 == 0xa
    || digit0 == 0xb
    || digit0 == 0xd
    || digit0 == 0xe
    || digit0 == 0xf);
  digitalWrite(10, digit0 == 0x0 // left a
    || digit0 == 0x2
    || digit0 == 0x3
    || digit0 == 0x5
    || digit0 == 0x6
    || digit0 == 0x7
    || digit0 == 0x8
    || digit0 == 0x9
    || digit0 == 0xa
    || digit0 == 0xc
    || digit0 == 0xe
    || digit0 == 0xf);
  digitalWrite(9, digit0 == 0x0 // left b
    || digit0 == 0x1
    || digit0 == 0x2
    || digit0 == 0x3
    || digit0 == 0x4
    || digit0 == 0x7
    || digit0 == 0x8
    || digit0 == 0x9
    || digit0 == 0xa
    || digit0 == 0xd);

}
