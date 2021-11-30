// Bootloader example
// https://create.arduino.cc/projecthub/arjun/programming-attiny85-with-arduino-uno-afb829

// #define LED_1 0
// #define LED_2 1
// #define LED_3 2

// void setup()
// {
//    pinMode(LED_1, INPUT);
//    pinMode(LED_2, INPUT);
//    pinMode(LED_3, INPUT);

//    pinMode(4, OUTPUT);
// }

// void loop()
// {
//    digitalWrite(4, HIGH);

//    set_pins(LED_1, LED_2);
//    delay(50);
//    set_pins(LED_2, LED_1);
//    delay(50);
//    set_pins(LED_3, LED_1);
//    delay(50);
//    set_pins(LED_1, LED_3);
//    delay(50);
//    set_pins(LED_2, LED_3);
//    delay(50);
//    set_pins(LED_3, LED_2);
//    delay(50);
// }

// void set_pins(int high_pin, int low_pin)
// {
//    reset_pins();
//    pinMode(high_pin, OUTPUT);
//    pinMode(low_pin, OUTPUT);
//    digitalWrite(high_pin, HIGH);
//    digitalWrite(low_pin,LOW);
// }

// void reset_pins()
// {
//    pinMode(LED_1, INPUT);
//    pinMode(LED_2, INPUT);
//    pinMode(LED_3, INPUT);
//    digitalWrite(LED_1, LOW);
//    digitalWrite(LED_2, LOW);
//    digitalWrite(LED_3, LOW);
// }

#include <Arduino.h>
#include <avr/sleep.h>
#include <avr/interrupt.h>

// Pinout
#define switchPin 3
#define statusLED 4

// Functions
void sleep();

// Initialize
void setup()
{
    // Set up digital pins
    pinMode(switchPin, INPUT);
    digitalWrite(switchPin, HIGH);
    pinMode(statusLED, OUTPUT);

    // Flash quick sequence so we know setup has started
}

// Run forever
void loop()
{
    // Put processor into a deep sleep waiting for a button press
    sleep();

    // Run this once before going back to sleep
    digitalWrite(statusLED, HIGH);
    delay(1000);
    digitalWrite(statusLED, LOW);
    delay(1000);
    digitalWrite(statusLED, HIGH);
    delay(1000);
    digitalWrite(statusLED, LOW);
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
ISR(PCINT0_vect){}

// #define A 8
// #define B 9
// #define C 10
// #define D 11

// #define PIN_CONFIG 0
// #define PIN_STATE 1

// #define LED_Num 12

// int matrix[LED_Num][2][4] = {
//   //        PIN_CONFIG              PIN_STATE
//   //    A       B       C         A     B    C
//   { { OUTPUT, OUTPUT, INPUT }, { HIGH, LOW, LOW } },
//   { { OUTPUT, OUTPUT, INPUT }, { LOW, HIGH, LOW } },
//   { { INPUT, OUTPUT, OUTPUT }, { LOW, HIGH, LOW } },
//   { { INPUT, OUTPUT, OUTPUT }, { LOW, LOW, HIGH } },
//   { { OUTPUT, INPUT, OUTPUT }, { HIGH, LOW, LOW } },
//   { { OUTPUT, INPUT, OUTPUT }, { LOW, LOW, HIGH } },
//   { { OUTPUT, INPUT, INPUT },  { HIGH, LOW, LOW } },
//   { { OUTPUT, INPUT, INPUT },  { LOW, LOW, LOW }  },
//   { { INPUT, OUTPUT, INPUT },  { LOW, HIGH, LOW } },
//   { { INPUT, OUTPUT, INPUT },  { LOW, LOW, LOW }  },
//   { { INPUT, INPUT, OUTPUT },  { LOW, LOW, HIGH } },
//   { { INPUT, INPUT, OUTPUT },  { LOW, LOW, LOW }  }
// };

// void lightOn( int led ) {
//   pinMode( A, matrix[led][PIN_CONFIG][0] );
//   pinMode( B, matrix[led][PIN_CONFIG][1] );
//   pinMode( C, matrix[led][PIN_CONFIG][2] );
//   pinMode( D, matrix[led][PIN_CONFIG][3] );
//   digitalWrite( A, matrix[led][PIN_STATE][0] );
//   digitalWrite( B, matrix[led][PIN_STATE][1] );
//   digitalWrite( C, matrix[led][PIN_STATE][2] );
//   digitalWrite( D, matrix[led][PIN_STATE][3] );
// }