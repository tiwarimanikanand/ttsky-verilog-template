/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : ABSOLUTE                                                     **
 **                                                                          **
 *****************************************************************************/

module ABSOLUTE( Input_1,
                 Input_bus_1,
                 Output_1,
                 Output_bus_1 );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       Input_1;
   input [9:0] Input_bus_1;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output       Output_1;
   output [9:0] Output_bus_1;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [9:0] s_logisimBus14;
   wire [9:0] s_logisimBus43;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet11;
   wire       s_logisimNet12;
   wire       s_logisimNet13;
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
   wire       s_logisimNet40;
   wire       s_logisimNet41;
   wire       s_logisimNet42;
   wire       s_logisimNet44;
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
   assign s_logisimBus43[9:0] = Input_bus_1;
   assign s_logisimNet37      = Input_1;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Output_1     = s_logisimNet44;
   assign Output_bus_1 = s_logisimBus14[9:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // NOT Gate
   assign s_logisimNet44 = ~s_logisimNet41;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet21),
               .input2(s_logisimNet3),
               .result(s_logisimNet41));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet29),
               .input2(s_logisimNet7),
               .result(s_logisimNet36));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet13),
               .input2(s_logisimNet36),
               .result(s_logisimNet30));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet10),
               .input2(s_logisimNet30),
               .result(s_logisimNet22));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet0),
               .input2(s_logisimNet22),
               .result(s_logisimNet1));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet6),
               .input2(s_logisimNet1),
               .result(s_logisimNet4));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet38),
               .input2(s_logisimNet4),
               .result(s_logisimNet35));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet35),
               .input2(s_logisimNet2),
               .result(s_logisimNet24));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_9 (.input1(s_logisimNet24),
               .input2(s_logisimNet31),
               .result(s_logisimNet27));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_10 (.input1(s_logisimNet27),
                .input2(s_logisimNet32),
                .result(s_logisimNet21));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_11 (.input1(s_logisimNet29),
                .input2(s_logisimNet7),
                .result(s_logisimBus14[0]));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_12 (.input1(s_logisimNet13),
                .input2(s_logisimNet36),
                .result(s_logisimBus14[1]));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_13 (.input1(s_logisimNet10),
                .input2(s_logisimNet30),
                .result(s_logisimBus14[2]));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_14 (.input1(s_logisimNet0),
                .input2(s_logisimNet22),
                .result(s_logisimBus14[3]));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_15 (.input1(s_logisimNet6),
                .input2(s_logisimNet1),
                .result(s_logisimBus14[4]));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_16 (.input1(s_logisimNet38),
                .input2(s_logisimNet4),
                .result(s_logisimBus14[5]));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_17 (.input1(s_logisimNet2),
                .input2(s_logisimNet35),
                .result(s_logisimBus14[6]));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_18 (.input1(s_logisimNet24),
                .input2(s_logisimNet31),
                .result(s_logisimBus14[7]));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_19 (.input1(s_logisimNet27),
                .input2(s_logisimNet32),
                .result(s_logisimBus14[8]));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_20 (.input1(s_logisimNet21),
                .input2(s_logisimNet3),
                .result(s_logisimBus14[9]));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_21 (.input1(s_logisimBus43[9]),
                .input2(s_logisimNet37),
                .result(s_logisimNet7));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_22 (.input1(s_logisimBus43[0]),
                .input2(s_logisimNet7),
                .result(s_logisimNet29));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_23 (.input1(s_logisimBus43[1]),
                .input2(s_logisimNet7),
                .result(s_logisimNet13));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_24 (.input1(s_logisimBus43[2]),
                .input2(s_logisimNet7),
                .result(s_logisimNet10));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_25 (.input1(s_logisimBus43[3]),
                .input2(s_logisimNet7),
                .result(s_logisimNet0));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_26 (.input1(s_logisimBus43[4]),
                .input2(s_logisimNet7),
                .result(s_logisimNet6));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_27 (.input1(s_logisimBus43[5]),
                .input2(s_logisimNet7),
                .result(s_logisimNet38));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_28 (.input1(s_logisimBus43[6]),
                .input2(s_logisimNet7),
                .result(s_logisimNet2));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_29 (.input1(s_logisimBus43[7]),
                .input2(s_logisimNet7),
                .result(s_logisimNet31));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_30 (.input1(s_logisimBus43[8]),
                .input2(s_logisimNet7),
                .result(s_logisimNet32));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_31 (.input1(s_logisimBus43[9]),
                .input2(s_logisimNet7),
                .result(s_logisimNet3));


endmodule
