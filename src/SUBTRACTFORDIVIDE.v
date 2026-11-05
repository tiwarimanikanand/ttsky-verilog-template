/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : SUBTRACTFORDIVIDE                                            **
 **                                                                          **
 *****************************************************************************/

module SUBTRACTFORDIVIDE( A,
                          B,
                          COUT,
                          ENABLESUB,
                          SUM );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [8:0] A;
   input [8:0] B;
   input       ENABLESUB;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output       COUT;
   output [8:0] SUM;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [8:0] s_logisimBus11;
   wire [8:0] s_logisimBus36;
   wire [8:0] s_logisimBus42;
   wire [8:0] s_logisimBus43;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet12;
   wire       s_logisimNet13;
   wire       s_logisimNet14;
   wire       s_logisimNet15;
   wire       s_logisimNet16;
   wire       s_logisimNet17;
   wire       s_logisimNet18;
   wire       s_logisimNet19;
   wire       s_logisimNet2;
   wire       s_logisimNet20;
   wire       s_logisimNet21;
   wire       s_logisimNet22;
   wire       s_logisimNet23;
   wire       s_logisimNet24;
   wire       s_logisimNet25;
   wire       s_logisimNet26;
   wire       s_logisimNet27;
   wire       s_logisimNet28;
   wire       s_logisimNet29;
   wire       s_logisimNet3;
   wire       s_logisimNet30;
   wire       s_logisimNet31;
   wire       s_logisimNet32;
   wire       s_logisimNet33;
   wire       s_logisimNet34;
   wire       s_logisimNet35;
   wire       s_logisimNet37;
   wire       s_logisimNet38;
   wire       s_logisimNet39;
   wire       s_logisimNet4;
   wire       s_logisimNet40;
   wire       s_logisimNet41;
   wire       s_logisimNet44;
   wire       s_logisimNet45;
   wire       s_logisimNet46;
   wire       s_logisimNet47;
   wire       s_logisimNet48;
   wire       s_logisimNet49;
   wire       s_logisimNet5;
   wire       s_logisimNet6;
   wire       s_logisimNet7;
   wire       s_logisimNet8;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus36[8:0] = B;
   assign s_logisimBus42[8:0] = A;
   assign s_logisimNet6       = ENABLESUB;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign COUT = s_logisimNet33;
   assign SUM  = s_logisimBus43[8:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // NOT Gate
   assign s_logisimBus11 = ~s_logisimBus36;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimBus11[0]),
               .input2(s_logisimNet6),
               .result(s_logisimNet2));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimBus11[1]),
               .input2(s_logisimNet6),
               .result(s_logisimNet3));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimBus11[2]),
               .input2(s_logisimNet6),
               .result(s_logisimNet4));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimBus11[3]),
               .input2(s_logisimNet6),
               .result(s_logisimNet5));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimBus11[4]),
               .input2(s_logisimNet6),
               .result(s_logisimNet28));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimBus11[5]),
               .input2(s_logisimNet6),
               .result(s_logisimNet29));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimBus11[6]),
               .input2(s_logisimNet6),
               .result(s_logisimNet30));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimBus11[7]),
               .input2(s_logisimNet6),
               .result(s_logisimNet31));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_9 (.input1(s_logisimBus11[8]),
               .input2(s_logisimNet6),
               .result(s_logisimNet47));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   FA   FA_6 (.A(s_logisimBus42[5]),
              .B(s_logisimNet29),
              .C(s_logisimNet18),
              .COUT(s_logisimNet19),
              .SUM(s_logisimBus43[5]));

   FA   FA_7 (.A(s_logisimBus42[6]),
              .B(s_logisimNet30),
              .C(s_logisimNet19),
              .COUT(s_logisimNet20),
              .SUM(s_logisimBus43[6]));

   FA   FA_8 (.A(s_logisimBus42[7]),
              .B(s_logisimNet31),
              .C(s_logisimNet20),
              .COUT(s_logisimNet27),
              .SUM(s_logisimBus43[7]));

   FA   FA_9 (.A(s_logisimBus42[8]),
              .B(s_logisimNet47),
              .C(s_logisimNet27),
              .COUT(s_logisimNet33),
              .SUM(s_logisimBus43[8]));

   FA   FA_1 (.A(s_logisimBus42[0]),
              .B(s_logisimNet2),
              .C(s_logisimNet6),
              .COUT(s_logisimNet22),
              .SUM(s_logisimBus43[0]));

   FA   FA_2 (.A(s_logisimBus42[1]),
              .B(s_logisimNet3),
              .C(s_logisimNet22),
              .COUT(s_logisimNet23),
              .SUM(s_logisimBus43[1]));

   FA   FA_3 (.A(s_logisimBus42[2]),
              .B(s_logisimNet4),
              .C(s_logisimNet23),
              .COUT(s_logisimNet17),
              .SUM(s_logisimBus43[2]));

   FA   FA_4 (.A(s_logisimBus42[3]),
              .B(s_logisimNet5),
              .C(s_logisimNet17),
              .COUT(s_logisimNet21),
              .SUM(s_logisimBus43[3]));

   FA   FA_5 (.A(s_logisimBus42[4]),
              .B(s_logisimNet28),
              .C(s_logisimNet21),
              .COUT(s_logisimNet18),
              .SUM(s_logisimBus43[4]));

endmodule
