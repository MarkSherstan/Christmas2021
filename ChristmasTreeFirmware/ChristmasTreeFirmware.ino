#include <Arduino.h>
#include <avr/sleep.h>
#include <avr/interrupt.h>
#include "Lights.h"

// Pinout
#define switchPin   3

// Functions
void sleep();

// Class
Lights lights;

// Initialize
void setup()
{
    // Set up digital pins
    pinMode(switchPin, INPUT);
    digitalWrite(switchPin, HIGH);
    lights.lightReset();

    // Flash quick sequence so we know setup has started
    lights.sequenceAlpha();
}

// Run forever
void loop()
{
    // Put processor into a deep sleep waiting for a button press
    sleep();

    // Run a sequence
    lights.sequenceAlpha();
}

// Put processor into lowest power state possible and set an external
// interrupt to wake the processor when it is time to do something.
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
