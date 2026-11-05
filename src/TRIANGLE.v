/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : TRIANGLE                                                     **
 **                                                                          **
 *****************************************************************************/

module TRIANGLE( CLK,
                 COORD,
                 DONE,
                 SET,
                 START,
                 X,
                 XLOW,
                 XMID,
                 XTOP,
                 Y,
                 YLOW,
                 YMID,
                 YTOP );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       CLK;
   input       SET;
   input       START;
   input [7:0] XLOW;
   input [7:0] XMID;
   input [7:0] XTOP;
   input [7:0] YLOW;
   input [7:0] YMID;
   input [7:0] YTOP;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0] COORD;
   output       DONE;
   output       X;
   output       Y;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus12;
   wire [7:0] s_logisimBus13;
   wire [7:0] s_logisimBus14;
   wire [7:0] s_logisimBus18;
   wire [7:0] s_logisimBus20;
   wire [7:0] s_logisimBus21;
   wire [7:0] s_logisimBus22;
   wire [7:0] s_logisimBus26;
   wire [7:0] s_logisimBus27;
   wire [7:0] s_logisimBus28;
   wire [7:0] s_logisimBus33;
   wire [7:0] s_logisimBus34;
   wire [7:0] s_logisimBus40;
   wire [7:0] s_logisimBus5;
   wire [7:0] s_logisimBus6;
   wire [7:0] s_logisimBus7;
   wire [7:0] s_logisimBus9;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet11;
   wire       s_logisimNet15;
   wire       s_logisimNet16;
   wire       s_logisimNet17;
   wire       s_logisimNet19;
   wire       s_logisimNet2;
   wire       s_logisimNet23;
   wire       s_logisimNet24;
   wire       s_logisimNet25;
   wire       s_logisimNet29;
   wire       s_logisimNet3;
   wire       s_logisimNet30;
   wire       s_logisimNet31;
   wire       s_logisimNet32;
   wire       s_logisimNet35;
   wire       s_logisimNet36;
   wire       s_logisimNet37;
   wire       s_logisimNet38;
   wire       s_logisimNet39;
   wire       s_logisimNet4;
   wire       s_logisimNet8;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus20[7:0] = YTOP;
   assign s_logisimBus26[7:0] = YMID;
   assign s_logisimBus27[7:0] = XMID;
   assign s_logisimBus5[7:0]  = YLOW;
   assign s_logisimBus6[7:0]  = XTOP;
   assign s_logisimBus9[7:0]  = XLOW;
   assign s_logisimNet11      = CLK;
   assign s_logisimNet15 = START | SET;   // global reset also acts as a start/clear pulse (power-up state)
   assign s_logisimNet29      = SET;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign COORD = s_logisimBus28[7:0];
   assign DONE  = s_logisimNet4;
   assign X     = s_logisimNet30;
   assign Y     = s_logisimNet39;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus7[7:0]  =  8'h40;


   // NOT Gate
   assign s_logisimNet32 = ~s_logisimBus28[7];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_1 (.input1(s_logisimNet15),
               .input2(s_logisimNet23),
               .input3(s_logisimNet4),
               .result(s_logisimNet19));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_2 (.input1(s_logisimNet15),
               .input2(s_logisimNet23),
               .input3(s_logisimNet2),
               .result(s_logisimNet3));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet1),
               .input2(s_logisimNet25),
               .result(s_logisimNet24));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet10),
               .input2(s_logisimNet24),
               .result(s_logisimNet38));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_5 (.input1(s_logisimNet2),
               .input2(s_logisimNet10),
               .input3(s_logisimNet8),
               .result(s_logisimNet37));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet36),
               .input2(s_logisimNet10),
               .result(s_logisimNet23));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet16),
               .input2(s_logisimNet32),
               .result(s_logisimNet39));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b010))
      GATES_8 (.input1(s_logisimNet35),
               .input2(s_logisimBus28[7]),
               .input3(s_logisimNet0),
               .result(s_logisimNet30));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_9 (.enable(1'b1),
                 .muxIn_0(s_logisimBus6[7:0]),
                 .muxIn_1(s_logisimBus9[7:0]),
                 .muxOut(s_logisimBus13[7:0]),
                 .sel(s_logisimNet8));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_10 (.enable(1'b1),
                  .muxIn_0(s_logisimBus20[7:0]),
                  .muxIn_1(s_logisimBus5[7:0]),
                  .muxOut(s_logisimBus33[7:0]),
                  .sel(s_logisimNet8));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_11 (.enable(1'b1),
                  .muxIn_0(s_logisimBus9[7:0]),
                  .muxIn_1(s_logisimBus6[7:0]),
                  .muxOut(s_logisimBus40[7:0]),
                  .sel(s_logisimNet8));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_12 (.enable(1'b1),
                  .muxIn_0(s_logisimBus5[7:0]),
                  .muxIn_1(s_logisimBus20[7:0]),
                  .muxOut(s_logisimBus18[7:0]),
                  .sel(s_logisimNet8));

   Subtractor #(.extendedBits(9),
                .nrOfBits(8))
      ARITH_13 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus14[7:0]),
                .dataB(s_logisimBus7[7:0]),
                .result(s_logisimBus28[7:0]));

   S_R_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_14 (.clock(s_logisimNet11),
                 .preset(1'b0),
                 .q(s_logisimNet8),
                 .qBar(s_logisimNet36),
                 .r(s_logisimNet15),
                 .reset(s_logisimNet29),
                 .s(s_logisimNet10),
                 .tick(1'b1));

   S_R_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_15 (.clock(s_logisimNet11),
                 .preset(1'b0),
                 .q(s_logisimNet4),
                 .qBar(),
                 .r(s_logisimNet15),
                 .reset(s_logisimNet29),
                 .s(s_logisimNet37),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_16 (.clock(s_logisimNet11),
                 .clockEnable(s_logisimNet16),
                 .d(s_logisimNet32),
                 .q(s_logisimNet0),
                 .reset(s_logisimNet15),
                 .tick(1'b1));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   Bresenham   Bresenham_1 (.GRST(s_logisimNet29),
                            .CLKIN(s_logisimNet11),
                            .EQUAL(s_logisimNet10),
                            .INC(s_logisimNet3),
                            .RST(s_logisimNet19),
                            .X(s_logisimBus34[7:0]),
                            .X1(s_logisimBus13[7:0]),
                            .X2(s_logisimBus27[7:0]),
                            .Y(s_logisimBus12[7:0]),
                            .Y1(s_logisimBus33[7:0]),
                            .Y2(s_logisimBus26[7:0]),
                            .YCHANGE(s_logisimNet1),
                            .YEQUAL(s_logisimNet31));

   BRESENY   BRESENY_1 (.GRST(s_logisimNet29),
                        .CLKIN(s_logisimNet11),
                        .INC(s_logisimNet3),
                        .Output_1(s_logisimNet25),
                        .RST(s_logisimNet19),
                        .X(s_logisimBus21[7:0]),
                        .X1(s_logisimBus13[7:0]),
                        .X2(s_logisimBus40[7:0]),
                        .Y(s_logisimBus22[7:0]),
                        .Y1(s_logisimBus33[7:0]),
                        .Y2(s_logisimBus18[7:0]));

   HORIZONTAL   HORIZONTAL_1 (.CLK(s_logisimNet11),
                              .EQUAL(s_logisimNet2),
                              .Input_bus_1(s_logisimBus12[7:0]),
                              .Input_bus_2(s_logisimBus22[7:0]),
                              .LINE(s_logisimNet38),
                              .RST(s_logisimNet4),
                              .X(s_logisimNet35),
                              .X1(s_logisimBus21[7:0]),
                              .X2(s_logisimBus34[7:0]),
                              .XWRITE(s_logisimNet31),
                              .Y(s_logisimNet16),
                              .YTHENX(s_logisimBus14[7:0]));

endmodule
