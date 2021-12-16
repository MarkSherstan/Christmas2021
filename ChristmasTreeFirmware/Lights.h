#ifndef Lights_H
#define Lights_H

// Libs
#include <Arduino.h>

// Constants 
#define CHARLIEPLEX_A   0
#define CHARLIEPLEX_B   1
#define CHARLIEPLEX_C   2
#define starLight       4

// Class
class Lights
{
    private:
        // Variables
        uint8_t stateMatrix[6][2][3] = {
            // Pin Mode {A, B, C}     Pin State {A, B, C}
            {{OUTPUT, OUTPUT, INPUT}, {HIGH, LOW, LOW}},
            {{OUTPUT, OUTPUT, INPUT}, {LOW, HIGH, LOW}},
            {{INPUT, OUTPUT, OUTPUT}, {LOW, HIGH, LOW}},
            {{INPUT, OUTPUT, OUTPUT}, {LOW, LOW, HIGH}},
            {{OUTPUT, INPUT, OUTPUT}, {HIGH, LOW, LOW}},
            {{OUTPUT, INPUT, OUTPUT}, {LOW, LOW, HIGH}}};

        // Functions
        void lightSelect(uint8_t LED);

    public:
        // Config
        Lights() = default;

        // Functions
        void patternA();
        void reset();
};

#endif // Lights_H
