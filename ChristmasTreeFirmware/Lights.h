#ifndef Lights_H
#define Lights_H

// Libs
#include <Arduino.h>

// Constants 
#define CHARLIEPLEX_A   0
#define CHARLIEPLEX_B   1
#define CHARLIEPLEX_C   2
#define STAR_LIGHT      4

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
        /////////////////
        //      *      //
        //    3   0    //
        //   2     5   //
        //  4       1  //
        // ----------- //
        //      ||     //
        /////////////////
        void lightSelect(uint8_t LED);
        void lightSelect2x(uint8_t A, uint8_t B, uint8_t msDelay = 10);

    public:
        // Config
        Lights() = default;

        // Functions
        void patternA();
        void patternB();
        void patternC();
        void patternD();
        void patternE();
        void reset();
};

#endif // Lights_H
