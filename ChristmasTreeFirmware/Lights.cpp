#include "Lights.h"

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

// Inititalize all LEDS to off
void Lights::lightReset()
{
    pinMode(CHARLIEPLEX_A, INPUT);
    pinMode(CHARLIEPLEX_B, INPUT);
    pinMode(CHARLIEPLEX_C, INPUT);
    pinMode(starLight, OUTPUT);

    digitalWrite(CHARLIEPLEX_A, LOW);
    digitalWrite(CHARLIEPLEX_B, LOW);
    digitalWrite(CHARLIEPLEX_C, LOW);
}

// Pattern alpha - just loop through the lights
void Lights::sequenceAlpha()
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
        analogWrite(starLight, starBrightness);
    }

    lightReset();
}
