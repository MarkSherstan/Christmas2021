#include <Arduino.h>
#include <avr/sleep.h>
#include <avr/interrupt.h>

#define switchPin   3
#define statusLED   2

// Functions
void sleep();


#define A 8
#define B 9
#define C 10
#define D 11

#define PIN_CONFIG 0
#define PIN_STATE 1

#define LED_Num 12

int matrix[LED_Num][2][4] = {
  //           PIN_CONFIG                  PIN_STATE
  //    A       B       C      D         A     B    C    D
  { { OUTPUT, OUTPUT, INPUT, INPUT }, { HIGH, LOW, LOW, LOW } }, 
  { { OUTPUT, OUTPUT, INPUT, INPUT }, { LOW, HIGH, LOW, LOW } }, 
  { { INPUT, OUTPUT, OUTPUT, INPUT }, { LOW, HIGH, LOW, LOW } },
  { { INPUT, OUTPUT, OUTPUT, INPUT }, { LOW, LOW, HIGH, LOW } }, 
  { { OUTPUT, INPUT, OUTPUT, INPUT }, { HIGH, LOW, LOW, LOW } },
  { { OUTPUT, INPUT, OUTPUT, INPUT }, { LOW, LOW, HIGH, LOW } }, 
  { { OUTPUT, INPUT, INPUT, OUTPUT }, { HIGH, LOW, LOW, LOW } }, 
  { { OUTPUT, INPUT, INPUT, OUTPUT }, { LOW, LOW, LOW, HIGH } }, 
  { { INPUT, OUTPUT, INPUT, OUTPUT }, { LOW, HIGH, LOW, LOW } }, 
  { { INPUT, OUTPUT, INPUT, OUTPUT }, { LOW, LOW, LOW, HIGH } }, 
  { { INPUT, INPUT, OUTPUT, OUTPUT }, { LOW, LOW, HIGH, LOW } }, 
  { { INPUT, INPUT, OUTPUT, OUTPUT }, { LOW, LOW, LOW, HIGH } }  
};

void lightOn( int led ) {
  pinMode( A, matrix[led][PIN_CONFIG][0] );
  pinMode( B, matrix[led][PIN_CONFIG][1] );
  pinMode( C, matrix[led][PIN_CONFIG][2] );
  pinMode( D, matrix[led][PIN_CONFIG][3] );
  digitalWrite( A, matrix[led][PIN_STATE][0] );
  digitalWrite( B, matrix[led][PIN_STATE][1] );
  digitalWrite( C, matrix[led][PIN_STATE][2] );
  digitalWrite( D, matrix[led][PIN_STATE][3] );
}

void setup()
{
    pinMode(switchPin, INPUT);
    digitalWrite(switchPin, HIGH);
    pinMode(statusLED, OUTPUT);

    // Flash quick sequence so we know setup has started
    for (int k = 0; k < 10; k = k + 1)
    {
        if (k % 2 == 0)
        {
            digitalWrite(statusLED, HIGH);
        }
        else
        {
            digitalWrite(statusLED, LOW);
        }
        delay(250);
    }
}

void loop()
{
    sleep();
    digitalWrite(statusLED, HIGH);
    delay(1000);
    digitalWrite(statusLED, LOW);
}

void sleep()
{
    GIMSK |= _BV(PCIE);                  // Enable Pin Change Interrupts
    PCMSK |= _BV(PCINT3);                // Use PB3 as interrupt pin
    ADCSRA &= ~_BV(ADEN);                // ADC off
    set_sleep_mode(SLEEP_MODE_PWR_DOWN); // replaces above statement

    sleep_enable(); // Sets the Sleep Enable bit in the MCUCR Register (SE BIT)
    sei();          // Enable interrupts
    sleep_cpu();    // sleep

    cli();                 // Disable interrupts
    PCMSK &= ~_BV(PCINT3); // Turn off PB3 as interrupt pin
    sleep_disable();       // Clear SE bit
    ADCSRA |= _BV(ADEN);   // ADC on

    sei(); // Enable interrupts
}

ISR(PCINT0_vect){}


