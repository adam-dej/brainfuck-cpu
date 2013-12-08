# brainfuck-cpu

A processor built from logic gates executing Brainfuck natively.

## The goal

To design, prototype and finally build a processor native instruction set of which is brainfuck.

## Current status

Currently the project is in **revision 0**. **Rev0** was designed to be a proof of concept, the first
iteration existing to learn from errors in design.

Currently the **rev0** is fully working. Unfortunately it is not very efficient and a bit overcomplicated.
From those reasons this version will never be built.

## Plans for the future

**rev0** wes designed to be a proof of concept, next revision will be designed to be built. In addition
to the logical diagram an electrical schematic will be added, and so will be the layout for the PCB.

The bus width will be changed from 8bit to 16bit and possibly the combinational logic will be replaced
by a microcode unit.

## Quick guide

To run a program open the circuit file (located it the `/logic` directory)
in Logisim and load a program image (.rom file by convention) by right clicking the Program ROM
component and selecting "Load image". Then either select compiled program from the `/programs`
directory or select your own program. When the program is loaded reset the processor by pressing the `Ctrl+R`.
In the `Simulation` menu select the desired simulation tick frequency and then enable the ticks by pressing
the `Ctrl+K`. Afterwards select the Poke tool (`Ctrl+1`) and click the `Bootstrap` button. After you
release the button the program will start executing. If you see the `REQ. INPUT` lignt it means the processor
is halted and waiting for user input. Switch from the Poke tool to the Mouse (`Ctrl+2`), select the Constant directly
to the right of the `REQ. INPUT` LED and enter your desired value in hex. Afterwards switch back to the Poke
tool and hit the `INPUT READY` button. Processor will then continue in execution of the program.

### `/logic`

The logical schematics can be found here. The file is intended to be loaded by
[Logisim](http://ozark.hendrix.edu/~burch/logisim/)

The design is licensed under the TAPR Open Hardware License (www.tapr.org/OHL)

### `/programs`

Example and testing programs (as well as their compiled versions) can be found here.  
Sources for programs which weren't written by me:

  - http://esoteric.sange.fi/brainfuck/bf-source/prog/
  - http://www.99-bottles-of-beer.net/

The convention in this directory is that the brainfuck source code has the `.bf` extension, programs in format intended for Logisim have the `.rom` extension and programs in format for the real CPU have no extension.

### `/binarizer`

This directory contains the script for transforming `.bf` source code to the binary opcodes used by the processor, as well as the script for transforming `.bf` source code to the format for the Logisim.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.