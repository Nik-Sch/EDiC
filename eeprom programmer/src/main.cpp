#include <Arduino.h>
#include "square.h"


void setData(uint8_t data) {
  digitalWrite(A0, 0);
  for (uint8_t i = 0; i < 8; i++) {
    digitalWrite(A1, (data >> (7 - i)) & 0x01);
    digitalWrite(A0, 1);
    digitalWrite(A0, 0);
  }
}
void setAddress(uint16_t address) {
  digitalWrite(A2, (address >> 0) & 0x01);
  digitalWrite(A3, (address >> 1) & 0x01);
  for (uint8_t i = 2; i <= 12; i++) {
    digitalWrite(i, (address >> i) & 0x01);
  }

}

void writeData(uint16_t address, uint8_t data) {
  setData(data);
  setAddress(address);
  digitalWrite(A4, 0);
  // delay(1);
  digitalWrite(A4, 1);
  delay(10); // write cycle time 10ms
}

void setup() {
  Serial.begin(115200);
  pinMode(A0, OUTPUT); // sr clk
  digitalWrite(A0, 0);
  pinMode(A1, OUTPUT); // sr d
  pinMode(A2, OUTPUT); // a0
  pinMode(A3, OUTPUT); // a1
  pinMode(A4, OUTPUT); // !we
  digitalWrite(A4, 1);
  for (uint8_t i = 2; i <= 12; i++) {
    pinMode(i, OUTPUT); // a2-12
  }

#if 0
  for (uint16_t i = 0; i < length; i++) {
  // for (uint16_t i = 0; i < 50; i++) {
    uint8_t byte = pgm_read_byte_near(data + i);
    writeData(i, byte);
    Serial.print(i + 1);
    Serial.print("/");
    Serial.print(length);
    // Serial.print(": ");
    // Serial.println(byte);
    Serial.print("\r");
  }
  Serial.println("\nfinished");
#else
  // uint8_t byte = pgm_read_byte_near(data + 0);
  // writeData(0, byte);
  setAddress(0);
#endif
}

void loop() {
  // writeData()
}