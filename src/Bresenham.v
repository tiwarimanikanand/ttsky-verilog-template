/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Bresenham                                                    **
 **                                                                          **
 *****************************************************************************/

module Bresenham( GRST,
   CLKIN,
                  EQUAL,
                  INC,
                  RST,
                  X,
                  X1,
                  X2,
                  Y,
                  Y1,
                  Y2,
                  YCHANGE,
                  YEQUAL );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       GRST;
   input       CLKIN;
   input       INC;
   input       RST;
   input [7:0] X1;
   input [7:0] X2;
   input [7:0] Y1;
   input [7:0] Y2;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output       EQUAL;
   output [7:0] X;
   output [7:0] Y;
   output       YCHANGE;
   output       YEQUAL;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [9:0]  s_logisimBus15;
   wire [10:0] s_logisimBus19;
   wire [7:0]  s_logisimBus21;
   wire [9:0]  s_logisimBus23;
   wire [7:0]  s_logisimBus25;
   wire [7:0]  s_logisimBus26;
   wire [7:0]  s_logisimBus27;
   wire [9:0]  s_logisimBus29;
   wire [9:0]  s_logisimBus31;
   wire [2:0]  s_logisimBus33;
   wire [9:0]  s_logisimBus34;
   wire [10:0] s_logisimBus35;
   wire [9:0]  s_logisimBus39;
   wire [9:0]  s_logisimBus4;
   wire [7:0]  s_logisimBus40;
   wire [9:0]  s_logisimBus43;
   wire [7:0]  s_logisimBus44;
   wire [10:0] s_logisimBus45;
   wire [9:0]  s_logisimBus49;
   wire [9:0]  s_logisimBus5;
   wire [3:0]  s_logisimBus56;
   wire [10:0] s_logisimBus59;
   wire [9:0]  s_logisimBus60;
   wire [2:0]  s_logisimBus9;
   wire        s_logisimNet0;
   wire        s_logisimNet1;
   wire        s_logisimNet10;
   wire        s_logisimNet11;
   wire        s_logisimNet12;
   wire        s_logisimNet13;
   wire        s_logisimNet14;
   wire        s_logisimNet16;
   wire        s_logisimNet17;
   wire        s_logisimNet18;
   wire        s_logisimNet20;
   wire        s_logisimNet22;
   wire        s_logisimNet28;
   wire        s_logisimNet3;
   wire        s_logisimNet30;
   wire        s_logisimNet32;
   wire        s_logisimNet36;
   wire        s_logisimNet37;
   wire        s_logisimNet38;
   wire        s_logisimNet41;
   wire        s_logisimNet42;
   wire        s_logisimNet46;
   wire        s_logisimNet47;
   wire        s_logisimNet48;
   wire        s_logisimNet50;
   wire        s_logisimNet52;
   wire        s_logisimNet53;
   wire        s_logisimNet54;
   wire        s_logisimNet55;
   wire        s_logisimNet57;
   wire        s_logisimNet58;
   wire        s_logisimNet6;
   wire        s_logisimNet61;
   wire        s_logisimNet63;
   wire        s_logisimNet7;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus23[0] = s_logisimNet13;
   assign s_logisimBus23[1] = s_logisimNet13;
   assign s_logisimBus23[2] = s_logisimNet13;
   assign s_logisimBus23[3] = s_logisimNet13;
   assign s_logisimBus23[4] = s_logisimNet13;
   assign s_logisimBus23[5] = s_logisimNet13;
   assign s_logisimBus23[6] = s_logisimNet13;
   assign s_logisimBus23[7] = s_logisimNet13;
   assign s_logisimBus23[8] = s_logisimNet13;
   assign s_logisimBus23[9] = s_logisimNet13;
   assign s_logisimBus31[0] = s_logisimNet12;
   assign s_logisimBus31[1] = s_logisimNet12;
   assign s_logisimBus31[2] = s_logisimNet12;
   assign s_logisimBus31[3] = s_logisimNet12;
   assign s_logisimBus31[4] = s_logisimNet12;
   assign s_logisimBus31[5] = s_logisimNet12;
   assign s_logisimBus31[6] = s_logisimNet12;
   assign s_logisimBus31[7] = s_logisimNet12;
   assign s_logisimBus31[8] = s_logisimNet12;
   assign s_logisimBus31[9] = s_logisimNet12;
   assign s_logisimBus34[8] = s_logisimNet22;
   assign s_logisimBus34[9] = s_logisimNet22;
   assign s_logisimBus39[8] = s_logisimNet36;
   assign s_logisimBus39[9] = s_logisimNet36;

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus21[7:0] = X1;
   assign s_logisimBus26[7:0] = Y2;
   assign s_logisimBus27[7:0] = Y1;
   assign s_logisimBus44[7:0] = X2;
   assign s_logisimNet0       = RST;
   assign s_logisimNet11      = INC;
   assign s_logisimNet6       = CLKIN;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign EQUAL   = s_logisimNet3;
   assign X       = s_logisimBus25[7:0];
   assign Y       = s_logisimBus40[7:0];
   assign YCHANGE = s_logisimNet16;
   assign YEQUAL  = s_logisimNet32;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Power
   assign  s_logisimNet41  =  1'b1;


   // Constant
   assign  s_logisimBus56[3:0]  =  4'h1;


   // Ground
   assign  s_logisimBus45[10]  =  1'b0;


   // Constant
   assign  s_logisimBus33[2:0]  =  3'b010;


   // Ground
   assign  s_logisimNet38  =  1'b0;


   // Ground
   assign  s_logisimNet54  =  1'b0;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   OR_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet30),
               .input2(s_logisimNet50),
               .result(s_logisimNet57));

   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(10))
      GATES_2 (.input1(s_logisimBus19[9:0]),
               .input2(s_logisimBus23[9:0]),
               .result(s_logisimBus15[9:0]));

   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(10))
      GATES_3 (.input1(s_logisimBus45[9:0]),
               .input2(s_logisimBus31[9:0]),
               .result(s_logisimBus60[9:0]));

   OR_GATE_BUS #(.BubblesMask(2'b00),
                 .NrOfBits(10))
      GATES_4 (.input1(s_logisimBus15[9:0]),
               .input2(s_logisimBus60[9:0]),
               .result(s_logisimBus43[9:0]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet53),
               .input2(s_logisimNet10),
               .result(s_logisimNet13));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet28),
               .input2(s_logisimNet47),
               .result(s_logisimNet12));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet13),
               .input2(s_logisimNet12),
               .result(s_logisimNet50));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet0),
               .input2(s_logisimNet14),
               .result(s_logisimNet1));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_9 (.input1(s_logisimNet52),
               .input2(s_logisimNet18),
               .input3(s_logisimNet7),
               .result(s_logisimNet58));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_10 (.input1(s_logisimNet7),
                .input2(s_logisimNet13),
                .result(s_logisimNet55));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_11 (.input1(s_logisimNet55),
                .input2(s_logisimNet10),
                .result(s_logisimNet32));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_12 (.input1(s_logisimNet3),
                .input2(s_logisimNet17),
                .result(s_logisimNet16));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_13 (.input1(s_logisimNet30),
                .input2(s_logisimNet12),
                .result(s_logisimNet42));

   Multiplexer_bus_2 #(.nrOfBits(10))
      PLEXERS_14 (.enable(1'b1),
                  .muxIn_0(s_logisimBus4[9:0]),
                  .muxIn_1(s_logisimBus49[9:0]),
                  .muxOut(s_logisimBus29[9:0]),
                  .sel(s_logisimNet30));

   Decoder_8   PLEXERS_15 (.decoderOut_0(s_logisimNet14),
                           .decoderOut_1(s_logisimNet30),
                           .decoderOut_2(s_logisimNet18),
                           .decoderOut_3(s_logisimNet10),
                           .decoderOut_4(s_logisimNet28),
                           .decoderOut_5(),
                           .decoderOut_6(),
                           .decoderOut_7(),
                           .enable(1'b1),
                           .sel(s_logisimBus9[2:0]));

   Shifter_11_bit #(.shifterMode(0))
      ARITH_16 (.dataA(s_logisimBus59[10:0]),
                .result(s_logisimBus35[10:0]),
                .shiftAmount(s_logisimBus56[3:0]));

   Comparator #(.nrOfBits(11),
                .twosComplement(1))
      ARITH_17 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet48),
                .dataA(s_logisimBus19[10:0]),
                .dataB(s_logisimBus35[10:0]));

   Comparator #(.nrOfBits(11),
                .twosComplement(1))
      ARITH_18 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet37),
                .aLessThanB(),
                .dataA(s_logisimBus45[10:0]),
                .dataB(s_logisimBus35[10:0]));

   Adder #(.extendedBits(11),
           .nrOfBits(10))
      ARITH_19 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus59[9:0]),
                .dataB(s_logisimBus43[9:0]),
                .result(s_logisimBus4[9:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(0))
      ARITH_20 (.aEqualsB(s_logisimNet52),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus25[7:0]),
                .dataB(s_logisimBus44[7:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(0))
      ARITH_21 (.aEqualsB(s_logisimNet7),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus40[7:0]),
                .dataB(s_logisimBus26[7:0]));

   Subtractor #(.extendedBits(9),
                .nrOfBits(8))
      ARITH_22 (.borrowIn(1'b0),
                .borrowOut(s_logisimNet36),
                .dataA(s_logisimBus21[7:0]),
                .dataB(s_logisimBus44[7:0]),
                .result(s_logisimBus39[7:0]));

   Subtractor #(.extendedBits(9),
                .nrOfBits(8))
      ARITH_23 (.borrowIn(1'b0),
                .borrowOut(s_logisimNet22),
                .dataA(s_logisimBus27[7:0]),
                .dataB(s_logisimBus26[7:0]),
                .result(s_logisimBus34[7:0]));

   Subtractor #(.extendedBits(11),
                .nrOfBits(10))
      ARITH_24 (.borrowIn(1'b0),
                .borrowOut(s_logisimBus59[10]),
                .dataA(s_logisimBus45[9:0]),
                .dataB(s_logisimBus5[9:0]),
                .result(s_logisimBus49[9:0]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(10))
      MEMORY_25 (.clock(s_logisimNet6),
                 .clockEnable(s_logisimNet57),
                 .d(s_logisimBus29[9:0]),
                 .q(s_logisimBus59[9:0]),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_26 (.clock(s_logisimNet6),
                 .clockEnable(s_logisimNet18),
                 .d(s_logisimNet48),
                 .q(s_logisimNet53),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_27 (.clock(s_logisimNet6),
                 .clockEnable(s_logisimNet18),
                 .d(s_logisimNet37),
                 .q(s_logisimNet47),
                 .reset(s_logisimNet0),
                 .tick(1'b1));

   LogisimCounter #(.invertClock(0),
                    .maxVal(8'hFF),
                    .mode(0),
                    .width(8))
      MEMORY_28 (.clear(GRST),
                 .clock(s_logisimNet6),
                 .compareOut(),
                 .countValue(s_logisimBus25[7:0]),
                 .enable(s_logisimNet13),
                 .load(s_logisimNet14),
                 .loadData(s_logisimBus21[7:0]),
                 .tick(1'b1),
                 .upNotDown(s_logisimNet36));

   LogisimCounter #(.invertClock(0),
                    .maxVal(8'hFF),
                    .mode(0),
                    .width(8))
      MEMORY_29 (.clear(GRST),
                 .clock(s_logisimNet6),
                 .compareOut(),
                 .countValue(s_logisimBus40[7:0]),
                 .enable(s_logisimNet12),
                 .load(s_logisimNet14),
                 .loadData(s_logisimBus27[7:0]),
                 .tick(1'b1),
                 .upNotDown(s_logisimNet22));

   S_R_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_30 (.clock(s_logisimNet6),
                 .preset(1'b0),
                 .q(s_logisimNet3),
                 .qBar(),
                 .r(s_logisimNet1),
                 .reset(GRST),
                 .s(s_logisimNet58),
                 .tick(1'b1));

   S_R_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_31 (.clock(s_logisimNet6),
                 .preset(1'b0),
                 .q(s_logisimNet61),
                 .qBar(s_logisimNet17),
                 .r(s_logisimNet42),
                 .reset(GRST),
                 .s(s_logisimNet11),
                 .tick(1'b1));

   LogisimCounter #(.invertClock(0),
                    .maxVal(3'b111),
                    .mode(0),
                    .width(3))
      MEMORY_32 (.clear(s_logisimNet0),
                 .clock(s_logisimNet6),
                 .compareOut(),
                 .countValue(s_logisimBus9[2:0]),
                 .enable(s_logisimNet61),
                 .load(s_logisimNet28),
                 .loadData(s_logisimBus33[2:0]),
                 .tick(1'b1),
                 .upNotDown(1'b0));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   ABSOLUTE   ABSOLUTE_2 (.Input_1(s_logisimNet41),
                          .Input_bus_1(s_logisimBus5[9:0]),
                          .Output_1(s_logisimBus19[10]),
                          .Output_bus_1(s_logisimBus19[9:0]));

   ABSOLUTE   ABSOLUTE_1 (.Input_1(s_logisimNet38),
                          .Input_bus_1(s_logisimBus39[9:0]),
                          .Output_1(),
                          .Output_bus_1(s_logisimBus45[9:0]));

   ABSOLUTE   ABSOLUTE_3 (.Input_1(s_logisimNet54),
                          .Input_bus_1(s_logisimBus34[9:0]),
                          .Output_1(),
                          .Output_bus_1(s_logisimBus5[9:0]));

endmodule
