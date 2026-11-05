<!---
This file is used to generate your project datasheet.
-->

## How it works

UNA is an 8-bit CPU with a built-in triangle rasterizer (GPU), exported from Logisim-evolution.
There is no program memory on the chip. An external ROM/RAM supplies instruction and data bytes on
`ui_in`. The CPU drives `uo_out` (data) and `uio_out[5:0]` (control lines for the external memory and
peripherals). When the GPU draws, `uio_out[6]` (X) or `uio_out[7]` (Y) says that `uo_out` currently
carries an X or a Y coordinate.

Blocks: control unit (PLA-based sequencer), 16-entry register file, stack, ALU (add/subtract, multiply,
divide, compare, pseudo-random number from an 8-bit LFSR), a programmable delay counter, and the GPU
(vertex sorter, Bresenham edge units, horizontal fill).

## How to test

Hold `rst_n` low for a few clock cycles, release it, then feed instruction bytes on `ui_in` from the
external memory while watching `uo_out` and `uio_out`.

## External hardware

An external program/data memory (for example the RP2040 on the Tiny Tapeout demo board) that answers
the `OUTSIDECONTROL` lines and presents instruction bytes on `ui_in`.
