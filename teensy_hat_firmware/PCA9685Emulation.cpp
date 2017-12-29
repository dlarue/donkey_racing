#include <Arduino.h>
#include <Wire.h>
#include "PCA9685Emulator.h"


static const uint8_t MODE1              = 0x00;
static const uint8_t MODE2              = 0x01;
static const uint8_t SUBADR1            = 0x02;
static const uint8_t SUBADR2            = 0x03;
static const uint8_t SUBADR3            = 0x04;
static const uint8_t FAKE_PRESCALE      = 0x05;
static const uint8_t LED0_ON_L          = 0x06;
static const uint8_t LED0_ON_H          = 0x07;
static const uint8_t LED0_OFF_L         = 0x08;
static const uint8_t LED0_OFF_H         = 0x09;
static const uint8_t ALL_LED_ON_L       = 0xFA;
static const uint8_t ALL_LED_ON_H       = 0xFB;
static const uint8_t ALL_LED_OFF_L      = 0xFC;
static const uint8_t ALL_LED_OFF_H      = 0xFD;
static const uint8_t PRESCALE           = 0xFE;

static const uint8_t SWRESET            = 0x06;

static const uint8_t RESTART            = 0x80;
static const uint8_t SLEEP              = 0x10;
static const uint8_t ALLCALL            = 0x01;
static const uint8_t INVRT              = 0x10;
static const uint8_t OUTDRV             = 0x04;


PCA9685Emulator *PCA9685Emulator::active;

PCA9685Emulator::PCA9685Emulator()
{
  wptr = 0;
  gotwrite = false;
}

void PCA9685Emulator::begin(uint8_t address)
{
  active = this;
  Wire.begin(address);
  Wire.onRequest(onRequest);
  Wire.onReceive(onReceive);
}

bool PCA9685Emulator::step(uint32_t now)
{
  bool ret;
  cli();
  ret = gotwrite;
  gotwrite = false;
  sei();
  return ret;
}

uint16_t PCA9685Emulator::readChannelUs(uint8_t ch) {
  if (ch >= NUM_CHANNELS) {
    return 0xffff;
  }
  uint16_t ret;
  cli();
  if ((mem[MODE1] & SLEEP) | !(mem[MODE2] & OUTDRV)) {
    ret = 0;
  } else {
    ret = ((uint32_t)mem[LED0_ON_L+4*ch] + ((uint32_t)mem[LED0_ON_H+4*ch]<<8)) * (mem[PRESCALE]+1) / 25ul;
  }
  sei();
  return ret;
}

void PCA9685Emulator::onRequest()
{
  //  only support returning a single byte
  if (wptr < sizeof(mem)) {
    Wire.send(mem[wptr&0xf]);
  } else {
    Wire.send(0xff);
  }
}

void PCA9685Emulator::onReceive(int received)
{
  //  Empty the pipe within the interrupt request, to 
  //  make sure I don't race with the step() function.
  if (received != 0) {
    if (received == 1) {
      //  a command
      wptr = Wire.read();
      if (wptr == SWRESET) {
        //  software reset -- I don't care?
      }
    } else {
      //  a write
      gotwrite = true;
      wptr = Wire.read();
      --received;
      while (received > 0) {
        if (wptr < sizeof(mem)) {
          mem[wptr & 0xf] = Wire.read();
        } else if (wptr == PRESCALE) {
          mem[FAKE_PRESCALE] = Wire.read();
        } else {
          (void)Wire.read();
        }
        ++wptr;
        --received;
      }
    }
  }
}

