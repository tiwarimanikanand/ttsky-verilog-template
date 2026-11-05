/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : FA                                                           **
 **                                                                          **
 *****************************************************************************/

module FA( A,
           B,
           C,
           COUT,
           SUM );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input A;
   input B;
   input C;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output COUT;
   output SUM;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_logisimNet0;
   wire s_logisimNet1;
   wire s_logisimNet2;
   wire s_logisimNet3;
   wire s_logisimNet4;
   wire s_logisimNet5;
   wire s_logisimNet6;
   wire s_logisimNet7;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet1 = B;
   assign s_logisimNet2 = C;
   assign s_logisimNet6 = A;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign COUT = s_logisimNet5;
   assign SUM  = s_logisimNet7;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet1),
               .input2(s_logisimNet6),
               .result(s_logisimNet4));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet6),
               .input2(s_logisimNet1),
               .result(s_logisimNet3));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet2),
               .input2(s_logisimNet3),
               .result(s_logisimNet0));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet2),
               .input2(s_logisimNet3),
               .result(s_logisimNet7));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet0),
               .input2(s_logisimNet4),
               .result(s_logisimNet5));


endmodule
