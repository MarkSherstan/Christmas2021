#include "Lights.h"

// Reset all LEDs
void Lights::reset()
{
    pinMode(CHARLIEPLEX_A, INPUT);
    pinMode(CHARLIEPLEX_B, INPUT);
    pinMode(CHARLIEPLEX_C, INPUT);
    pinMode(STAR_LIGHT, OUTPUT);

    digitalWrite(CHARLIEPLEX_A, LOW);
    digitalWrite(CHARLIEPLEX_B, LOW);
    digitalWrite(CHARLIEPLEX_C, LOW);
    digitalWrite(STAR_LIGHT, LOW);
}

// Select LED to turn on
void Lights::lightSelect(uint8_t LED)
{
    pinMode(CHARLIEPLEX_A, stateMatrix[LED][0][0]);
    pinMode(CHARLIEPLEX_B, stateMatrix[LED][0][1]);
    pinMode(CHARLIEPLEX_C, stateMatrix[LED][0][2]);

    digitalWrite(CHARLIEPLEX_A, stateMatrix[LED][1][0]);
    digitalWrite(CHARLIEPLEX_B, stateMatrix[LED][1][1]);
    digitalWrite(CHARLIEPLEX_C, stateMatrix[LED][1][2]);
}

// Select 2 LEDs to turn on
void Lights::lightSelect2x(uint8_t A, uint8_t B, uint8_t msDelay)
{
    lightSelect(A);
    delay(msDelay);
    lightSelect(B);
    delay(msDelay);
    reset();
}

// Pattern A: Flash all the lights
void Lights::patternA()
{
    // Initial conditions
    uint8_t starBrightness = 255;

    // Loop
    for (uint8_t i = 0; i < 51; i++)
    {
        // Loop through each LED
        for (uint8_t j = 0; j < 6; j++)
        {
            lightSelect(j);
            delay(17);
        }

        // Dim the star light
        starBrightness -= 5;
        analogWrite(STAR_LIGHT, starBrightness);
    }

    // Reset lights
    reset();
}

// Pattern B: Flash up and Down
void Lights::patternB()
{
    for (uint8_t i = 0; i < 15; i++)
    {
        for (uint8_t j = 0; j < 4; j++)
        {
            lightSelect2x(1, 4);
        }

        for (uint8_t j = 0; j < 4; j++)
        {
            lightSelect2x(2, 5);
        }

        for (uint8_t j = 0; j < 4; j++)
        {
            lightSelect2x(0, 3);
        }

        digitalWrite(STAR_LIGHT, HIGH);
        delay(100);
        digitalWrite(STAR_LIGHT, LOW);
    }

    // Reset lights
    reset();
}

// Pattern C: Around the world
void Lights::patternC()
{
    // Variables for nice loops
    uint8_t magicDelay = 100;
    uint8_t pins[7] = {4, 2, 3, STAR_LIGHT, 0, 5, 1};

    // Go around the world
    for (uint8_t i = 0; i < 10; i++)
    {
        for (uint8_t j = 0; j < sizeof(pins); j++) 
        {
            if (j == 3) {
                digitalWrite(pins[j], HIGH);
                delay(magicDelay);
                digitalWrite(pins[j], LOW);
            } else {
                lightSelect(pins[j]);
                delay(magicDelay);
            }
        }
    }

    // Reset lights
    reset();
}
