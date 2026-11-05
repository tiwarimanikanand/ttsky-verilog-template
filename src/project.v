/*
 * Tiny Tapeout wrapper for UNA: 8-bit CPU with an attached triangle rasterizer (GPU).
 * Program memory is external: instruction bytes are fed in on ui_in.
 *
 * Pin map
 *   ui_in[7:0]   -> INPUT[7:0]            instruction / data byte from the external ROM/RAM
 *   uo_out[7:0]  -> DATAOUT[7:0]          data output (coordinate/data bus)
 *   uio_out[5:0] -> OUTSIDECONTROL[5:0]   control lines for the external memory / peripherals
 *   uio_out[6]   -> X                     GPU: DATAOUT carries an X coordinate
 *   uio_out[7]   -> Y                     GPU: DATAOUT carries a Y coordinate
 *   rst_n (active low) is inverted for the core, whose RST is active high.
 */
`default_nettype none

module tt_um_una_cpu_gpu (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: input path (unused)
    output wire [7:0] uio_out,  // IOs: output path
    output wire [7:0] uio_oe,   // IOs: enable path (1 = output)
    input  wire       ena,      // always 1 when the design is powered
    input  wire       clk,
    input  wire       rst_n
);

  wire [7:0] s_dataout;
  wire [5:0] s_outsidecontrol;
  wire       s_x, s_y;

  UNA core (
      .CLK           (clk),
      .RST           (~rst_n),
      .INPUT         (ui_in),
      .DATAOUT       (s_dataout),
      .OUTSIDECONTROL(s_outsidecontrol),
      .X             (s_x),
      .Y             (s_y)
  );

  assign uo_out  = s_dataout;
  assign uio_out = {s_y, s_x, s_outsidecontrol};
  assign uio_oe  = 8'hFF;

  wire _unused = &{ena, uio_in, 1'b0};

endmodule

`default_nettype wire
