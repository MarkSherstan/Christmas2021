#include <Arduino.h>
#include <avr/sleep.h>
#include <avr/interrupt.h>

// Pinout
#define CHARLIEPLEX_A 0
#define CHARLIEPLEX_B 1
#define CHARLIEPLEX_C 2
#define switchPin 3
#define starLED 4

// Functions
void sleep();
void lightReset();
void lightSelect(uint8_t LED);
void sequenceAlpha();

// Variables
uint8_t stateMatrix[6][2][3] = {
    // Pin Mode {A, B, C}     Pin State {A, B, C}
    {{OUTPUT, OUTPUT, INPUT}, {HIGH, LOW, LOW}},
    {{OUTPUT, OUTPUT, INPUT}, {LOW, HIGH, LOW}},
    {{INPUT, OUTPUT, OUTPUT}, {LOW, HIGH, LOW}},
    {{INPUT, OUTPUT, OUTPUT}, {LOW, LOW, HIGH}},
    {{OUTPUT, INPUT, OUTPUT}, {HIGH, LOW, LOW}},
    {{OUTPUT, INPUT, OUTPUT}, {LOW, LOW, HIGH}}};

// Initialize
void setup()
{
    // Set up digital pins
    pinMode(switchPin, INPUT);
    digitalWrite(switchPin, HIGH);
    pinMode(starLED, OUTPUT);
    lightReset();

    // Flash quick sequence so we know setup has started
    sequenceAlpha();
}

// Run forever
void loop()
{
    // Put processor into a deep sleep waiting for a button press
    sleep();

    // Run this once before going back to sleep
    digitalWrite(starLED, HIGH);
    delay(1000);
    digitalWrite(starLED, LOW);
    delay(1000);
    digitalWrite(starLED, HIGH);
    delay(1000);
    digitalWrite(starLED, LOW);

    sequenceAlpha();
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

// Select LED to turn on
void lightSelect(uint8_t LED)
{
    pinMode(CHARLIEPLEX_A, stateMatrix[LED][0][0]);
    pinMode(CHARLIEPLEX_B, stateMatrix[LED][0][1]);
    pinMode(CHARLIEPLEX_C, stateMatrix[LED][0][2]);
    digitalWrite(CHARLIEPLEX_A, stateMatrix[LED][1][0]);
    digitalWrite(CHARLIEPLEX_B, stateMatrix[LED][1][1]);
    digitalWrite(CHARLIEPLEX_C, stateMatrix[LED][1][2]);
}

// Inititalize all LEDS to off
void lightReset()
{
    pinMode(CHARLIEPLEX_A, INPUT);
    pinMode(CHARLIEPLEX_B, INPUT);
    pinMode(CHARLIEPLEX_C, INPUT);

    digitalWrite(CHARLIEPLEX_A, LOW);
    digitalWrite(CHARLIEPLEX_B, LOW);
    digitalWrite(CHARLIEPLEX_C, LOW);
}

// Pattern alpha - just loop through the light
void sequenceAlpha(){
    for (uint8_t i = 0; i < 50; i++)
    {
        for (uint8_t j = 0; j < 6; j++)
        {
            lightSelect(j);
            delay(10);
        }
    }

    lightReset();
}
