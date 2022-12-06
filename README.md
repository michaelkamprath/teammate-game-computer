# T.E.A.M.M.A.T.E. Game Computer by Logix
This repository is an ode to one of my favorite childhood toys: the **T.E.A.M.M.A.T.E. Game Computer**.
## Schematics
The `schematic` directory contains a KiCad electrical schematic of the **T.E.A.M.M.A.T.E.** This was obtained by simply filling PCB traces and wires to understand what is connected to what.

## ROM
The ROM in the **T.E.A.M.M.A.T.E.** computer's original MOSTEK 3870 microcontroller can be found in the `original-rom` directory. This ROM was dumped using the [MOSTEK 3870 ROM Dumper](https://github.com/michaelkamprath/mostek-3870-rom-dumper) project. 

## Homebrew Software
Custom software and a kernel to build custom software on top of can be found in the `custom-software` directory. Note that this requires replacing the `MOSTEK 3870` in the **T.E.A.M.M.A.T.E.** computer with a `MOSTEK 38P70` and then using a M2716 EPROM or 28C16 EEPROM to store the compiled binary.

## MAME Support
Thanks to the effort of [GitHub user **happppp**](https://github.com/happppp), [MAME](https://github.com/mamedev/mame) has been updated to support the **T.E.A.M.M.A.T.E. Game Computer**. Both the original ROM and homebrew software can be run with MAME. The shell script `make_mame_rom.sh` is included in this repository to facilitate running **T.E.A.M.M.A.T.E.** ROMs with MAME. It will package a 2K binary image as MAME expects, and then copy it to your MAME `roms` directory as indicated as a command argument.

When running homebrew software, MAME must be launched from the command line with the `mame teammate` command. Furthermore, MAME will complain that the homebrew software image is incorrect, but this warning will be ignored when launching from the command line.

## Links
Here are some interesting links about the **T.E.A.M.M.A.T.E. Game Computer**:

* Original **T.E.A.M.M.A.T.E.** documentation:
  * [T.E.A.M.M.A.T.E. Game Computer manual](https://archive.org/details/elecgames/Logix%20Teammate%20Game%20Computer/LogixTeammateGameComputer/)
  * [Now In Play cards](https://archive.org/details/elecgames/Logix%20Teammate%20Game%20Computer/Teammate-NowInPlay/)
  * [LED Display Overlays](https://archive.org/details/elecgames/Logix%20Teammate%20Game%20Computer/Teammate-Slides/)
* [Creative Computing Magazine - November 1978](https://deramp.com/downloads/mfe_archive/010-S100%20Computers%20and%20Boards/00-Mac8/90-Articles/creative_computing_novdec78.pdf) - **T.E.A.M.M.A.T.E.** reference is on page 73 of magazine. Sold for $40-$50.
* [Consumer Reports review of TEAMMATE Game Computer](https://www.handheldmuseum.com/BooksMagazines/Mag-CR_1180/CR1180_07.htm) - This device was not liked by Consumer Reports. Said it sold for $70.

## Videos

[![Programming the Vintage T.E.A.M.M.A.T.E. Game Computer - ROM Dump](https://img.youtube.com/vi/QBq6Z2U4Ob8/maxresdefault.jpg)](https://youtu.be/QBq6Z2U4Ob8)


[![Programming the Vintage T.E.A.M.M.A.T.E. Game Computer - Refurbishing and Programming](https://img.youtube.com/vi/jLeeUsYbr_k/maxresdefault.jpg)](https://youtu.be/jLeeUsYbr_k)