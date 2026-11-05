/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : ADDSUB                                                       **
 **                                                                          **
 *****************************************************************************/

module ADDSUB( A,
               B,
               CIN,
               COUT,
               INVERTB,
               SUM );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [7:0] A;
   input [7:0] B;
   input       CIN;
   input       INVERTB;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output       COUT;
   output [7:0] SUM;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus40;
   wire [7:0] s_logisimBus44;
   wire [7:0] s_logisimBus8;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet11;
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
   wire       s_logisimNet36;
   wire       s_logisimNet37;
   wire       s_logisimNet38;
   wire       s_logisimNet39;
   wire       s_logisimNet4;
   wire       s_logisimNet41;
   wire       s_logisimNet42;
   wire       s_logisimNet43;
   wire       s_logisimNet5;
   wire       s_logisimNet6;
   wire       s_logisimNet7;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus40[7:0] = A;
   assign s_logisimBus44[7:0] = B;
   assign s_logisimNet14      = INVERTB;
   assign s_logisimNet29      = CIN;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign COUT = s_logisimNet43;
   assign SUM  = s_logisimBus8[7:0];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimBus44[0]),
               .input2(s_logisimNet14),
               .result(s_logisimNet36));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimBus44[1]),
               .input2(s_logisimNet14),
               .result(s_logisimNet20));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimBus44[2]),
               .input2(s_logisimNet14),
               .result(s_logisimNet37));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimBus44[3]),
               .input2(s_logisimNet14),
               .result(s_logisimNet23));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimBus44[4]),
               .input2(s_logisimNet14),
               .result(s_logisimNet7));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimBus44[5]),
               .input2(s_logisimNet14),
               .result(s_logisimNet27));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimBus44[6]),
               .input2(s_logisimNet14),
               .result(s_logisimNet38));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimBus44[7]),
               .input2(s_logisimNet14),
               .result(s_logisimNet31));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   FA   FA_1 (.A(s_logisimBus40[0]),
              .B(s_logisimNet36),
              .C(s_logisimNet29),
              .COUT(s_logisimNet0),
              .SUM(s_logisimBus8[0]));

   FA   FA_2 (.A(s_logisimBus40[1]),
              .B(s_logisimNet20),
              .C(s_logisimNet0),
              .COUT(s_logisimNet1),
              .SUM(s_logisimBus8[1]));

   FA   FA_3 (.A(s_logisimBus40[2]),
              .B(s_logisimNet37),
              .C(s_logisimNet1),
              .COUT(s_logisimNet2),
              .SUM(s_logisimBus8[2]));

   FA   FA_4 (.A(s_logisimBus40[3]),
              .B(s_logisimNet23),
              .C(s_logisimNet2),
              .COUT(s_logisimNet3),
              .SUM(s_logisimBus8[3]));

   FA   FA_5 (.A(s_logisimBus40[4]),
              .B(s_logisimNet7),
              .C(s_logisimNet3),
              .COUT(s_logisimNet4),
              .SUM(s_logisimBus8[4]));

   FA   FA_6 (.A(s_logisimBus40[5]),
              .B(s_logisimNet27),
              .C(s_logisimNet4),
              .COUT(s_logisimNet5),
              .SUM(s_logisimBus8[5]));

   FA   FA_7 (.A(s_logisimBus40[6]),
              .B(s_logisimNet38),
              .C(s_logisimNet5),
              .COUT(s_logisimNet6),
              .SUM(s_logisimBus8[6]));

   FA   FA_8 (.A(s_logisimBus40[7]),
              .B(s_logisimNet31),
              .C(s_logisimNet6),
              .COUT(s_logisimNet43),
              .SUM(s_logisimBus8[7]));

endmodule
