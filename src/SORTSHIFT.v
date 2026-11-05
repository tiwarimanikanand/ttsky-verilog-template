/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : SORTSHIFT                                                    **
 **                                                                          **
 *****************************************************************************/

module SORTSHIFT( CLK,
                  COORDATA,
                  LDX,
                  LDY,
                  RST,
                  SORT,
                  SORTED,
                  X1,
                  X2,
                  XMID,
                  Y1,
                  Y2,
                  YMID );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       CLK;
   input [7:0] COORDATA;
   input       LDX;
   input       LDY;
   input       RST;
   input       SORT;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output       SORTED;
   output [7:0] X1;
   output [7:0] X2;
   output [7:0] XMID;
   output [7:0] Y1;
   output [7:0] Y2;
   output [7:0] YMID;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus0;
   wire [7:0] s_logisimBus12;
   wire [7:0] s_logisimBus13;
   wire [7:0] s_logisimBus14;
   wire [7:0] s_logisimBus17;
   wire [7:0] s_logisimBus19;
   wire [7:0] s_logisimBus20;
   wire [7:0] s_logisimBus21;
   wire [7:0] s_logisimBus4;
   wire [7:0] s_logisimBus5;
   wire [7:0] s_logisimBus6;
   wire [7:0] s_logisimBus7;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet11;
   wire       s_logisimNet15;
   wire       s_logisimNet16;
   wire       s_logisimNet18;
   wire       s_logisimNet2;
   wire       s_logisimNet22;
   wire       s_logisimNet3;
   wire       s_logisimNet8;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus17[7:0] = COORDATA;
   assign s_logisimNet1       = CLK;
   assign s_logisimNet10      = LDX;
   assign s_logisimNet15      = RST;
   assign s_logisimNet18      = LDY;
   assign s_logisimNet3       = SORT;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign SORTED = s_logisimNet9;
   assign X1     = s_logisimBus12[7:0];
   assign X2     = s_logisimBus0[7:0];
   assign XMID   = s_logisimBus4[7:0];
   assign Y1     = s_logisimBus19[7:0];
   assign Y2     = s_logisimBus5[7:0];
   assign YMID   = s_logisimBus6[7:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus20[7:0]  =  8'h80;


   // NOT Gate
   assign s_logisimNet22 = ~s_logisimNet2;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet8),
               .input2(s_logisimNet11),
               .result(s_logisimNet16));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet16),
               .input2(s_logisimNet3),
               .result(s_logisimNet2));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet22),
               .input2(s_logisimNet3),
               .result(s_logisimNet9));

   Subtractor #(.extendedBits(9),
                .nrOfBits(8))
      ARITH_4 (.borrowIn(1'b0),
               .borrowOut(s_logisimNet8),
               .dataA(s_logisimBus19[7:0]),
               .dataB(s_logisimBus6[7:0]),
               .result());

   Subtractor #(.extendedBits(9),
                .nrOfBits(8))
      ARITH_5 (.borrowIn(1'b0),
               .borrowOut(s_logisimNet11),
               .dataA(s_logisimBus6[7:0]),
               .dataB(s_logisimBus5[7:0]),
               .result());

   Adder #(.extendedBits(9),
           .nrOfBits(8))
      ARITH_6 (.carryIn(1'b0),
               .carryOut(),
               .dataA(s_logisimBus17[7:0]),
               .dataB(s_logisimBus20[7:0]),
               .result(s_logisimBus21[7:0]));

   Subtractor #(.extendedBits(9),
                .nrOfBits(8))
      ARITH_7 (.borrowIn(1'b0),
               .borrowOut(),
               .dataA(s_logisimBus20[7:0]),
               .dataB(s_logisimBus17[7:0]),
               .result(s_logisimBus14[7:0]));

   SHIFTREG_3_Classic #(.negateClock(1),
                        .nrOfBits(8))
      MEMORY_8 (.D0(s_logisimBus7[7:0]),
                .D1(s_logisimBus0[7:0]),
                .D2(s_logisimBus4[7:0]),
                .Q0(s_logisimBus0[7:0]),
                .Q1(s_logisimBus4[7:0]),
                .Q2(s_logisimBus12[7:0]),
                .clock(s_logisimNet1),
                .parLoad(s_logisimNet2),
                .reset(s_logisimNet15),
                .shiftEnable(s_logisimNet10),
                .shiftIn(s_logisimBus21[7:0]),
                .shiftOut(s_logisimBus7[7:0]),
                .tick(1'b1));

   SHIFTREG_3_Classic #(.negateClock(1),
                        .nrOfBits(8))
      MEMORY_9 (.D0(s_logisimBus13[7:0]),
                .D1(s_logisimBus5[7:0]),
                .D2(s_logisimBus6[7:0]),
                .Q0(s_logisimBus5[7:0]),
                .Q1(s_logisimBus6[7:0]),
                .Q2(s_logisimBus19[7:0]),
                .clock(s_logisimNet1),
                .parLoad(s_logisimNet2),
                .reset(s_logisimNet15),
                .shiftEnable(s_logisimNet18),
                .shiftIn(s_logisimBus14[7:0]),
                .shiftOut(s_logisimBus13[7:0]),
                .tick(1'b1));


endmodule
