/*
 * Copyright (c) 2026
 * SPDX-License-Identifier: Apache-2.0
 *
 * Tiny Tapeout wrapper around UNA (8-bit CPU + triangle GPU, exported from
 * Logisim-evolution; see una6.v).
 *
 * Pin mapping
 *   ui_in[7:0]   -> UNA.INPUT          (data/instruction byte from external memory)
 *   rst_n        -> UNA.RST (inverted, UNA reset is active HIGH)
 *   uo_out[7:0]  <- UNA.DATAOUT
 *   uio_out[5:0] <- UNA.OUTSIDECONTROL (all uio pins are driven as outputs)
 *   uio_out[6]   <- UNA.X
 *   uio_out[7]   <- UNA.Y
 */

`default_nettype none

module tt_um_una_cpu_gpu (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  wire [7:0] dataout;
  wire [5:0] outsidecontrol;
  wire       gpu_x;
  wire       gpu_y;

  UNA una_i (
      .CLK           (clk),
      .RST           (~rst_n),
      .INPUT         (ui_in),
      .DATAOUT       (dataout),
      .OUTSIDECONTROL(outsidecontrol),
      .X             (gpu_x),
      .Y             (gpu_y)
  );

  assign uo_out  = dataout;
  assign uio_out = {gpu_y, gpu_x, outsidecontrol};
  assign uio_oe  = 8'hFF;  // all bidirectional pins are outputs

  // List all unused inputs to prevent warnings
  wire _unused = &{ena, uio_in, 1'b0};

endmodule

`default_nettype wire
