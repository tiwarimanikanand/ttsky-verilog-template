/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : BRESENY                                                      **
 **                                                                          **
 *****************************************************************************/

module BRESENY( GRST,
   CLKIN,
                INC,
                Output_1,
                RST,
                X,
                X1,
                X2,
                Y,
                Y1,
                Y2 );

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
   output       Output_1;
   output [7:0] X;
   output [7:0] Y;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [2:0]  s_logisimBus11;
   wire [7:0]  s_logisimBus12;
   wire [9:0]  s_logisimBus16;
   wire [9:0]  s_logisimBus25;
   wire [7:0]  s_logisimBus27;
   wire [7:0]  s_logisimBus28;
   wire [3:0]  s_logisimBus29;
   wire [9:0]  s_logisimBus3;
   wire [10:0] s_logisimBus31;
   wire [9:0]  s_logisimBus35;
   wire [7:0]  s_logisimBus37;
   wire [9:0]  s_logisimBus38;
   wire [10:0] s_logisimBus39;
   wire [9:0]  s_logisimBus40;
   wire [7:0]  s_logisimBus41;
   wire [7:0]  s_logisimBus42;
   wire [2:0]  s_logisimBus43;
   wire [10:0] s_logisimBus47;
   wire [9:0]  s_logisimBus5;
   wire [10:0] s_logisimBus8;
   wire        s_logisimNet0;
   wire        s_logisimNet1;
   wire        s_logisimNet10;
   wire        s_logisimNet13;
   wire        s_logisimNet15;
   wire        s_logisimNet17;
   wire        s_logisimNet18;
   wire        s_logisimNet19;
   wire        s_logisimNet2;
   wire        s_logisimNet20;
   wire        s_logisimNet21;
   wire        s_logisimNet22;
   wire        s_logisimNet23;
   wire        s_logisimNet24;
   wire        s_logisimNet26;
   wire        s_logisimNet30;
   wire        s_logisimNet32;
   wire        s_logisimNet33;
   wire        s_logisimNet34;
   wire        s_logisimNet4;
   wire        s_logisimNet44;
   wire        s_logisimNet45;
   wire        s_logisimNet46;
   wire        s_logisimNet48;
   wire        s_logisimNet49;
   wire        s_logisimNet51;
   wire        s_logisimNet6;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus25[8] = s_logisimNet0;
   assign s_logisimBus25[9] = s_logisimNet0;
   assign s_logisimBus35[8] = s_logisimNet26;
   assign s_logisimBus35[9] = s_logisimNet26;

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus12[7:0] = X2;
   assign s_logisimBus27[7:0] = Y1;
   assign s_logisimBus28[7:0] = X1;
   assign s_logisimBus42[7:0] = Y2;
   assign s_logisimNet13      = RST;
   assign s_logisimNet21      = CLKIN;
   assign s_logisimNet44      = INC;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Output_1 = s_logisimNet34;
   assign X        = s_logisimBus41[7:0];
   assign Y        = s_logisimBus37[7:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus43[2:0]  =  3'b010;


   // Ground
   assign  s_logisimNet45  =  1'b0;


   // Ground
   assign  s_logisimNet17  =  1'b0;


   // Power
   assign  s_logisimNet46  =  1'b1;


   // Constant
   assign  s_logisimBus29[3:0]  =  4'h1;


   // Ground
   assign  s_logisimBus47[10]  =  1'b0;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   OR_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet2),
               .input2(s_logisimNet22),
               .result(s_logisimNet30));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet15),
               .input2(s_logisimNet18),
               .result(s_logisimNet10));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet20),
               .input2(s_logisimNet49),
               .result(s_logisimNet1));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet10),
               .input2(s_logisimNet1),
               .result(s_logisimNet22));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet2),
               .input2(s_logisimNet1),
               .result(s_logisimNet23));

   Decoder_8   PLEXERS_6 (.decoderOut_0(s_logisimNet33),
                          .decoderOut_1(s_logisimNet2),
                          .decoderOut_2(s_logisimNet4),
                          .decoderOut_3(s_logisimNet18),
                          .decoderOut_4(s_logisimNet20),
                          .decoderOut_5(),
                          .decoderOut_6(),
                          .decoderOut_7(),
                          .enable(1'b1),
                          .sel(s_logisimBus11[2:0]));

   Multiplexer_bus_2 #(.nrOfBits(10))
      PLEXERS_7 (.enable(1'b1),
                 .muxIn_0(s_logisimBus16[9:0]),
                 .muxIn_1(s_logisimBus3[9:0]),
                 .muxOut(s_logisimBus40[9:0]),
                 .sel(s_logisimNet2));

   Multiplexer_bus_2 #(.nrOfBits(10))
      PLEXERS_8 (.enable(1'b1),
                 .muxIn_0(s_logisimBus47[9:0]),
                 .muxIn_1(s_logisimBus39[9:0]),
                 .muxOut(s_logisimBus38[9:0]),
                 .sel(s_logisimNet10));

   Subtractor #(.extendedBits(9),
                .nrOfBits(8))
      ARITH_9 (.borrowIn(1'b0),
               .borrowOut(s_logisimNet26),
               .dataA(s_logisimBus28[7:0]),
               .dataB(s_logisimBus12[7:0]),
               .result(s_logisimBus35[7:0]));

   Subtractor #(.extendedBits(9),
                .nrOfBits(8))
      ARITH_10 (.borrowIn(1'b0),
                .borrowOut(s_logisimNet0),
                .dataA(s_logisimBus27[7:0]),
                .dataB(s_logisimBus42[7:0]),
                .result(s_logisimBus25[7:0]));

   Subtractor #(.extendedBits(11),
                .nrOfBits(10))
      ARITH_11 (.borrowIn(1'b0),
                .borrowOut(s_logisimBus31[10]),
                .dataA(s_logisimBus47[9:0]),
                .dataB(s_logisimBus5[9:0]),
                .result(s_logisimBus3[9:0]));

   Shifter_11_bit #(.shifterMode(0))
      ARITH_12 (.dataA(s_logisimBus31[10:0]),
                .result(s_logisimBus8[10:0]),
                .shiftAmount(s_logisimBus29[3:0]));

   Adder #(.extendedBits(11),
           .nrOfBits(10))
      ARITH_13 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus31[9:0]),
                .dataB(s_logisimBus38[9:0]),
                .result(s_logisimBus16[9:0]));

   Comparator #(.nrOfBits(11),
                .twosComplement(1))
      ARITH_14 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet24),
                .dataA(s_logisimBus39[10:0]),
                .dataB(s_logisimBus8[10:0]));

   Comparator #(.nrOfBits(11),
                .twosComplement(1))
      ARITH_15 (.aEqualsB(),
                .aGreaterThanB(s_logisimNet32),
                .aLessThanB(),
                .dataA(s_logisimBus47[10:0]),
                .dataB(s_logisimBus8[10:0]));

   LogisimCounter #(.invertClock(0),
                    .maxVal(3'b111),
                    .mode(0),
                    .width(3))
      MEMORY_16 (.clear(s_logisimNet13),
                 .clock(s_logisimNet21),
                 .compareOut(),
                 .countValue(s_logisimBus11[2:0]),
                 .enable(s_logisimNet48),
                 .load(s_logisimNet20),
                 .loadData(s_logisimBus43[2:0]),
                 .tick(1'b1),
                 .upNotDown(1'b0));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(10))
      MEMORY_17 (.clock(s_logisimNet21),
                 .clockEnable(s_logisimNet30),
                 .d(s_logisimBus40[9:0]),
                 .q(s_logisimBus31[9:0]),
                 .reset(s_logisimNet13),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_18 (.clock(s_logisimNet21),
                 .clockEnable(s_logisimNet4),
                 .d(s_logisimNet24),
                 .q(s_logisimNet15),
                 .reset(s_logisimNet13),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_19 (.clock(s_logisimNet21),
                 .clockEnable(s_logisimNet4),
                 .d(s_logisimNet32),
                 .q(s_logisimNet49),
                 .reset(s_logisimNet13),
                 .tick(1'b1));

   LogisimCounter #(.invertClock(0),
                    .maxVal(8'hFF),
                    .mode(0),
                    .width(8))
      MEMORY_20 (.clear(GRST),
                 .clock(s_logisimNet21),
                 .compareOut(),
                 .countValue(s_logisimBus41[7:0]),
                 .enable(s_logisimNet10),
                 .load(s_logisimNet33),
                 .loadData(s_logisimBus28[7:0]),
                 .tick(1'b1),
                 .upNotDown(s_logisimNet26));

   LogisimCounter #(.invertClock(0),
                    .maxVal(8'hFF),
                    .mode(0),
                    .width(8))
      MEMORY_21 (.clear(GRST),
                 .clock(s_logisimNet21),
                 .compareOut(),
                 .countValue(s_logisimBus37[7:0]),
                 .enable(s_logisimNet1),
                 .load(s_logisimNet33),
                 .loadData(s_logisimBus27[7:0]),
                 .tick(1'b1),
                 .upNotDown(s_logisimNet0));

   S_R_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_22 (.clock(s_logisimNet21),
                 .preset(1'b0),
                 .q(s_logisimNet48),
                 .qBar(s_logisimNet34),
                 .r(s_logisimNet23),
                 .reset(GRST),
                 .s(s_logisimNet44),
                 .tick(1'b1));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   ABSOLUTE   ABSOLUTE_1 (.Input_1(s_logisimNet45),
                          .Input_bus_1(s_logisimBus35[9:0]),
                          .Output_1(),
                          .Output_bus_1(s_logisimBus47[9:0]));

   ABSOLUTE   ABSOLUTE_3 (.Input_1(s_logisimNet17),
                          .Input_bus_1(s_logisimBus25[9:0]),
                          .Output_1(),
                          .Output_bus_1(s_logisimBus5[9:0]));

   ABSOLUTE   ABSOLUTE_2 (.Input_1(s_logisimNet46),
                          .Input_bus_1(s_logisimBus5[9:0]),
                          .Output_1(s_logisimBus39[10]),
                          .Output_bus_1(s_logisimBus39[9:0]));

endmodule
