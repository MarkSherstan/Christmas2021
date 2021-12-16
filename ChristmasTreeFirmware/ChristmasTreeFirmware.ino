#include <Arduino.h>
#include <avr/sleep.h>
#include <avr/interrupt.h>
#include "Lights.h"

// Pinout
#define SWITCH_PIN 3

// Functions
void sleep();

// Class
Lights lights;

// Initialize
void setup()
{
    // Set up button
    pinMode(SWITCH_PIN, INPUT);
    digitalWrite(SWITCH_PIN, HIGH);

    // Initialize the LEDs
    lights.reset();
}

// Run forever
void loop()
{
    // Put processor into a deep sleep waiting for a button press
    sleep();

    // Run a sequence
    lights.patternA();
}

// Sleep processor and only wake on button press
void sleep()
{
    // Enable interrupts, turn off ADC, prepare for sleep mode
    GIMSK |= _BV(PCIE);
    PCMSK |= _BV(PCINT3);
    ADCSRA &= ~_BV(ADEN);
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);

    // Enable interrupts and put to sleep
    sleep_enable();
    sei();
    sleep_cpu();

    // Disable interrupts and turn ADC on
    cli();
    PCMSK &= ~_BV(PCINT3);
    sleep_disable();
    ADCSRA |= _BV(ADEN);

    // Enable interrupts
    sei();
}

// Interrupt service routine
ISR(PCINT0_vect) {}
