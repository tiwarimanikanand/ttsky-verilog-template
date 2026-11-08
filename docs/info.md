<!---
This file is used to generate your project datasheet.
-->

## How it works

UNA is an 8-bit processor with a small hardware GPU that draws triangles. The design was built in
Logisim-evolution, exported to Verilog and merged into a single file (`src/una6.v`, top module `UNA`).
`src/project.v` is the Tiny Tapeout wrapper.

Main blocks:

- **CNTRL**: sequencer / instruction decoder (PLA based), produces the control signals and `OUTSIDECONTROL`
- **MATH**: 8-bit ALU (add, subtract, shifts, absolute value, multiply/divide helpers, flags)
- **REGISTERS**: 17 x 8-bit register file; **STCK**: hardware stack
- **DLY**: 24-bit programmable delay timer (also gates the CPU clock)
- **GRAPHICSCARD**: Bresenham line / horizontal-fill triangle rasteriser producing pixel coordinates `X`, `Y`

Program memory and RAM are **not** on the chip, they are provided externally through the `INPUT` bus.

The design is clocked at 20 MHz. Reset is active low (`rst_n`); the core's own reset is active high and is
inverted inside the wrapper.

## Pinout

| Pin | Direction | Function |
|-----|-----------|----------|
| `ui_in[7:0]` | in | `INPUT[7:0]` byte from external program memory / input |
| `uo_out[7:0]` | out | `DATAOUT[7:0]` |
| `uio[5:0]` | out | `OUTSIDECONTROL[5:0]` control output of the sequencer |
| `uio[6]` | out | `GPU_X` |
| `uio[7]` | out | `GPU_Y` |

All `uio` pins are always outputs (`uio_oe = 0xFF`).

## How to test

1. Apply a 20 MHz clock and hold `rst_n` low for a few cycles, then release it.
2. Drive `ui_in` with the program/instruction bytes from your external memory.
3. Observe `uo_out`, `OUTSIDECONTROL` and the `GPU_X` / `GPU_Y` outputs.

## External hardware

External program memory / microcontroller (e.g. the RP2040 on the Tiny Tapeout demo board) feeding `ui_in`.
