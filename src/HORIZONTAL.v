/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : HORIZONTAL                                                   **
 **                                                                          **
 *****************************************************************************/

module HORIZONTAL( CLK,
                   EQUAL,
                   Input_bus_1,
                   Input_bus_2,
                   LINE,
                   RST,
                   X,
                   X1,
                   X2,
                   XWRITE,
                   Y,
                   YTHENX );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       CLK;
   input [7:0] Input_bus_1;
   input [7:0] Input_bus_2;
   input       LINE;
   input       RST;
   input [7:0] X1;
   input [7:0] X2;
   input       XWRITE;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output       EQUAL;
   output       X;
   output       Y;
   output [7:0] YTHENX;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus14;
   wire [1:0] s_logisimBus16;
   wire [1:0] s_logisimBus17;
   wire [7:0] s_logisimBus22;
   wire [7:0] s_logisimBus3;
   wire [7:0] s_logisimBus5;
   wire [7:0] s_logisimBus8;
   wire [7:0] s_logisimBus9;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet11;
   wire       s_logisimNet12;
   wire       s_logisimNet13;
   wire       s_logisimNet15;
   wire       s_logisimNet18;
   wire       s_logisimNet19;
   wire       s_logisimNet2;
   wire       s_logisimNet20;
   wire       s_logisimNet21;
   wire       s_logisimNet23;
   wire       s_logisimNet24;
   wire       s_logisimNet25;
   wire       s_logisimNet26;
   wire       s_logisimNet4;
   wire       s_logisimNet6;
   wire       s_logisimNet7;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus3[7:0] = Input_bus_2;
   assign s_logisimBus5[7:0] = X2;
   assign s_logisimBus8[7:0] = Input_bus_1;
   assign s_logisimBus9[7:0] = X1;
   assign s_logisimNet0      = XWRITE;
   assign s_logisimNet19     = CLK;
   assign s_logisimNet6      = LINE;
   assign s_logisimNet7      = RST;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign EQUAL  = s_logisimNet18;
   assign X      = s_logisimNet1;
   assign Y      = s_logisimNet11;
   assign YTHENX = s_logisimBus22[7:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus17[1:0]  =  2'b10;


   // NOT Gate
   assign s_logisimNet24 = ~s_logisimNet6;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b10))
      GATES_1 (.input1(s_logisimNet13),
               .input2(s_logisimNet20),
               .result(s_logisimNet21));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet13),
               .input2(s_logisimNet2),
               .result(s_logisimNet1));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet12),
               .input2(s_logisimNet1),
               .result(s_logisimNet20));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_4 (.input1(s_logisimNet12),
               .input2(s_logisimNet15),
               .input3(s_logisimNet0),
               .result(s_logisimNet26));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet26),
               .input2(s_logisimNet4),
               .result(s_logisimNet18));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet24),
               .input2(s_logisimNet0),
               .result(s_logisimNet2));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet24),
               .input2(s_logisimNet7),
               .result(s_logisimNet25));

   Decoder_4   PLEXERS_8 (.decoderOut_0(s_logisimNet10),
                          .decoderOut_1(s_logisimNet11),
                          .decoderOut_2(s_logisimNet13),
                          .decoderOut_3(s_logisimNet4),
                          .enable(1'b1),
                          .sel(s_logisimBus16[1:0]));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_9 (.enable(1'b1),
                 .muxIn_0(s_logisimBus14[7:0]),
                 .muxIn_1(s_logisimBus8[7:0]),
                 .muxOut(s_logisimBus22[7:0]),
                 .sel(s_logisimNet11));

   Subtractor #(.extendedBits(9),
                .nrOfBits(8))
      ARITH_10 (.borrowIn(1'b0),
                .borrowOut(s_logisimNet23),
                .dataA(s_logisimBus5[7:0]),
                .dataB(s_logisimBus9[7:0]),
                .result());

   Comparator #(.nrOfBits(8),
                .twosComplement(0))
      ARITH_11 (.aEqualsB(s_logisimNet12),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus14[7:0]),
                .dataB(s_logisimBus9[7:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(0))
      ARITH_12 (.aEqualsB(s_logisimNet15),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus8[7:0]),
                .dataB(s_logisimBus3[7:0]));

   LogisimCounter #(.invertClock(0),
                    .maxVal(2'b11),
                    .mode(0),
                    .width(2))
      MEMORY_13 (.clear(s_logisimNet25),
                 .clock(s_logisimNet19),
                 .compareOut(),
                 .countValue(s_logisimBus16[1:0]),
                 .enable(s_logisimNet6),
                 .load(s_logisimNet21),
                 .loadData(s_logisimBus17[1:0]),
                 .tick(1'b1),
                 .upNotDown(1'b0));

   LogisimCounter #(.invertClock(0),
                    .maxVal(8'hFF),
                    .mode(0),
                    .width(8))
      MEMORY_14 (.clear(s_logisimNet7),
                 .clock(s_logisimNet19),
                 .compareOut(),
                 .countValue(s_logisimBus14[7:0]),
                 .enable(s_logisimNet1),
                 .load(s_logisimNet10),
                 .loadData(s_logisimBus5[7:0]),
                 .tick(1'b1),
                 .upNotDown(s_logisimNet23));


endmodule
