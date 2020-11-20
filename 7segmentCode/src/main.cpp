#include <Arduino.h>

void setup() {
  Serial.end();
  pinMode(A0, INPUT_PULLUP);
  pinMode(A1, INPUT_PULLUP);
  pinMode(A2, INPUT_PULLUP);
  pinMode(A3, INPUT_PULLUP);
  pinMode(A4, INPUT_PULLUP);
  pinMode(A5, INPUT_PULLUP);
  pinMode(A6, INPUT); // A6 and 7 are analog input only without pullups...
  pinMode(A7, INPUT); // A6 and 7 are analog input only without pullups...
  for (uint8_t i = 0; i < 14; i++) {
    pinMode(i, OUTPUT);
  }
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
  Serial.end();
  uint8_t digit0 = digitalRead(A4) << 0
                 | digitalRead(A5) << 1
                 | ((analogRead(A6) < 100) ? 0 : (1 << 2))
                 | ((analogRead(A7) < 100) ? 0 : (1 << 3));
  uint8_t digit1 = digitalRead(A0) << 0
                 | digitalRead(A1) << 1
                 | digitalRead(A2) << 2
                 | digitalRead(A3) << 3;
                 

  pinMode(0, OUTPUT);
  pinMode(1, OUTPUT);
  // 0 and 1 are swapped
  digitalWrite(1, digit0 == 0x0 // left b
               || digit0 == 0x1
               || digit0 == 0x2
               || digit0 == 0x3
               || digit0 == 0x4
               || digit0 == 0x7
               || digit0 == 0x8
               || digit0 == 0x9
               || digit0 == 0xa
               || digit0 == 0xd);
  digitalWrite(0, digit1 == 0x0 // right f
               || digit1 == 0x4
               || digit1 == 0x5
               || digit1 == 0x6
               || digit1 == 0x8
               || digit1 == 0x9
               || digit1 == 0xa
               || digit1 == 0xb
               || digit1 == 0xc
               || digit1 == 0xe
               || digit1 == 0xf);
  digitalWrite(2, digit1 == 0x0 // right a
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
               || digit1 == 0xf);
  digitalWrite(3, digit1 == 0x0 // right b
               || digit1 == 0x1
               || digit1 == 0x2
               || digit1 == 0x3
               || digit1 == 0x4
               || digit1 == 0x7
               || digit1 == 0x8
               || digit1 == 0x9
               || digit1 == 0xa
               || digit1 == 0xd);
  digitalWrite(4, digit0 == 0x0 // left e
               || digit0 == 0x2
               || digit0 == 0x6
               || digit0 == 0x8
               || digit0 == 0xa
               || digit0 == 0xb
               || digit0 == 0xc
               || digit0 == 0xd
               || digit0 == 0xe
               || digit0 == 0xf);
  digitalWrite(5, digit1 == 0x0 // right e
               || digit1 == 0x2
               || digit1 == 0x6
               || digit1 == 0x8
               || digit1 == 0xa
               || digit1 == 0xb
               || digit1 == 0xc
               || digit1 == 0xd
               || digit1 == 0xe
               || digit1 == 0xf);
  digitalWrite(6, digit1 == 0x0 // right d
               || digit1 == 0x2
               || digit1 == 0x3
               || digit1 == 0x5
               || digit1 == 0x6
               || digit1 == 0x8
               || digit1 == 0x9
               || digit1 == 0xb
               || digit1 == 0xc
               || digit1 == 0xd
               || digit1 == 0xe);
  digitalWrite(7, digit1 == 0x2 // right g
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
               || digit1 == 0xf);
  digitalWrite(8, digit1 == 0x0 // right c
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
               || digit1 == 0xd);
  digitalWrite(9, digit0 == 0x0 // left d
               || digit0 == 0x2
               || digit0 == 0x3
               || digit0 == 0x5
               || digit0 == 0x6
               || digit0 == 0x8
               || digit0 == 0x9
               || digit0 == 0xb
               || digit0 == 0xc
               || digit0 == 0xd
               || digit0 == 0xe);
  digitalWrite(10, digit0 == 0x0 // left f
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
  digitalWrite(12, digit0 == 0x0 // left a
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
  digitalWrite(13, digit0 == 0x0 // left c
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
               || digit0 == 0xd);
}