#include <Arduino.h>
#include "square.h"
// do program or validate
// #define DO_PROGRAM 1

void setData(uint8_t data) {
  digitalWrite(A2, (data >> 0) & 0x01);
  digitalWrite(A3, (data >> 1) & 0x01);
  for (uint8_t i = 2; i < 8; i++) {
    digitalWrite(i, (data >> i) & 0x01);
  }
}


uint8_t getData() {
  uint8_t data = 0x00;
  data = data | ((digitalRead(A2) & 0x01) << 0);
  data = data | ((digitalRead(A3) & 0x01) << 1);
  for (uint8_t i = 2; i < 8; i++) {
    data = data | ((digitalRead(i) & 0x01) << i);
  }
  return data;
}

void setAddress(uint16_t address) {
  digitalWrite(A0, 0);
  for (uint8_t i = 0; i < 8; i++) {
    digitalWrite(A1, (address >> (7 - i)) & 0x01);
    digitalWrite(A0, 1);
    digitalWrite(A0, 0);
  }
  for (uint8_t i = 8; i < 13; i++) {
    digitalWrite(i, (address >> i) & 0x01);
  }
}

void writeData(uint16_t address, uint8_t data) {
  setData(data);
  setAddress(address);
  digitalWrite(A4, 0);
  digitalWrite(A4, 1);
  delay(10); // write cycle time 10ms
}

uint8_t readData(uint16_t address) {
  setAddress(address);
  return getData();
}

void validate() {
  pinMode(A2, INPUT);
  pinMode(A3, INPUT);
  for (uint8_t i = 2; i < 8; i++) {
    pinMode(i, INPUT);
  }
  uint8_t errors = 0;
  for (uint16_t i = 0; i < length; i++) {
    uint8_t correct = pgm_read_byte_near(data + i);
    uint8_t actual = readData(i);
    if (actual == correct) {
      Serial.print(i + 1);
      Serial.print("/");
      Serial.print(length);
      Serial.print("\r");
    } else {
      errors++;
      Serial.print("\nByte at [0x");
      Serial.print(i, 16);
      Serial.print("] is 0x");
      Serial.print(actual, 16);
      Serial.print(" but should be 0x");
      Serial.println(correct, 16);
    }
  }
  if (errors == 1) {
    Serial.println("1 error has been found.");
  } else if (errors) {
    Serial.println();
    Serial.print(errors);
    Serial.println(" errors have been found.");
  } else {
    Serial.println("\nAll bytes are correct.");
  }
}

void program() {
  pinMode(A2, OUTPUT);
  pinMode(A3, OUTPUT);
  for (uint8_t i = 2; i < 8; i++) {
    pinMode(i, OUTPUT);
  }

  for (uint16_t i = 0; i < length; i++) {
    uint8_t byte = pgm_read_byte_near(data + i);
    writeData(i, byte);
    Serial.print(i + 1);
    Serial.print("/");
    Serial.print(length);
    Serial.print("\r");
  }
  Serial.println("\nfinished");
}

void setup() {
  // A0  : reg clk
  // A1  : reg data
  // A2  : d0
  // A3  : d1
  // A4  : !we
  // 2-7 : d2-d7
  // 8-12: a8-a12
  Serial.begin(115200);
  pinMode(A0, OUTPUT);
  digitalWrite(A0, 0);
  pinMode(A1, OUTPUT);
  pinMode(A4, OUTPUT);
  digitalWrite(A4, 1);
  for (uint8_t i = 8; i < 13; i++) {
    pinMode(i, OUTPUT); // a8-12
  }

#ifdef DO_PROGRAM
  program();
#else
  validate();
#endif
}

void loop() {
}