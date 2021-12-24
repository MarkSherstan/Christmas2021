# Christmas 2021
Hardware and firmware project for the 2021 holiday season. 

# How to Use
1. Put 2x AAA batteries in holder on the back of ornament (place batteries with correct polarity or the board might catch on fire)
2. Press button to see 1 of 5 patterns

Other notes:
* This item 100% contains lead
* The batteries should last somewhere between one week and a year or two (multimeter was not accurate enough to get a real number but its been running for at least a week)
* The board is not conformal coated meaning all contacts are "live". Therefore, make sure the board does not make contact with any metal objects (this will cause magic smoke; not good)
* Do your best to hold the PCB by the edges. This reduces the risk of static discharge which tends to put electrical components in the graveyard.

# AS IS
THE SOFTWARE AND HARDWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# Software Requirements
 Only required for changing design files
 
## Firmware
* Arduino IDE version 1.18.3 or greater
* In preferences add https://raw.githubusercontent.com/damellis/attiny/ide-1.6.x-boards-manager/package_damellis_attiny_index.json to `Additional Boards Manager URLs`
* Add ATtiny under `Boards Manager` and then configure the following settings:
- Board: ATtiny25/45/85
- Processor: ATtiny85
- Clock: Internal 8 MHz

Program over ICSP (will need a 2nd microcontroller acting as master)

## Hardware 
Boards designed in KiCad 5 and manufactured at JLCPCB

## Other
See all source code and design files at https://github.com/MarkSherstan/Christmas2021
