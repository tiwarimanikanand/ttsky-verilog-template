/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : MATH                                                         **
 **                                                                          **
 *****************************************************************************/

module MATH( ALU,
             ALUOUT,
             CLK,
             CNTRL,
             DATAIN,
             FLAGS,
             RST,
             SVA,
             SVB );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       ALU;
   input       CLK;
   input [7:0] CNTRL;
   input [7:0] DATAIN;
   input       RST;
   input       SVA;
   input       SVB;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0] ALUOUT;
   output [6:0] FLAGS;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0]  s_logisimBus0;
   wire [6:0]  s_logisimBus11;
   wire [7:0]  s_logisimBus21;
   wire [7:0]  s_logisimBus23;
   wire [7:0]  s_logisimBus3;
   wire [7:0]  s_logisimBus30;
   wire [7:0]  s_logisimBus31;
   wire [6:0]  s_logisimBus33;
   wire [7:0]  s_logisimBus34;
   wire [7:0]  s_logisimBus36;
   wire [7:0]  s_logisimBus38;
   wire [7:0]  s_logisimBus4;
   wire [3:0]  s_logisimBus44;
   wire [15:0] s_logisimBus45;
   wire [15:0] s_logisimBus46;
   wire [7:0]  s_logisimBus54;
   wire [15:0] s_logisimBus62;
   wire [7:0]  s_logisimBus8;
   wire        s_logisimNet1;
   wire        s_logisimNet10;
   wire        s_logisimNet12;
   wire        s_logisimNet14;
   wire        s_logisimNet15;
   wire        s_logisimNet17;
   wire        s_logisimNet18;
   wire        s_logisimNet19;
   wire        s_logisimNet20;
   wire        s_logisimNet22;
   wire        s_logisimNet24;
   wire        s_logisimNet25;
   wire        s_logisimNet26;
   wire        s_logisimNet27;
   wire        s_logisimNet28;
   wire        s_logisimNet29;
   wire        s_logisimNet32;
   wire        s_logisimNet35;
   wire        s_logisimNet37;
   wire        s_logisimNet39;
   wire        s_logisimNet40;
   wire        s_logisimNet41;
   wire        s_logisimNet42;
   wire        s_logisimNet43;
   wire        s_logisimNet47;
   wire        s_logisimNet48;
   wire        s_logisimNet49;
   wire        s_logisimNet5;
   wire        s_logisimNet50;
   wire        s_logisimNet51;
   wire        s_logisimNet52;
   wire        s_logisimNet53;
   wire        s_logisimNet55;
   wire        s_logisimNet56;
   wire        s_logisimNet57;
   wire        s_logisimNet58;
   wire        s_logisimNet6;
   wire        s_logisimNet60;
   wire        s_logisimNet61;
   wire        s_logisimNet63;
   wire        s_logisimNet64;
   wire        s_logisimNet66;
   wire        s_logisimNet67;
   wire        s_logisimNet68;
   wire        s_logisimNet69;
   wire        s_logisimNet7;
   wire        s_logisimNet70;
   wire        s_logisimNet71;
   wire        s_logisimNet72;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus21[0] = s_logisimNet27;
   assign s_logisimBus21[1] = s_logisimNet64;
   assign s_logisimBus21[2] = s_logisimNet50;
   assign s_logisimBus21[3] = s_logisimNet6;
   assign s_logisimBus21[4] = s_logisimNet60;
   assign s_logisimBus21[5] = s_logisimNet39;
   assign s_logisimBus21[6] = s_logisimNet66;
   assign s_logisimBus21[7] = s_logisimNet47;
   assign s_logisimBus33[1] = s_logisimNet12;
   assign s_logisimBus38[0] = s_logisimNet35;
   assign s_logisimBus38[1] = s_logisimNet49;
   assign s_logisimBus38[2] = s_logisimNet5;
   assign s_logisimBus38[3] = s_logisimNet61;
   assign s_logisimBus38[4] = s_logisimNet40;
   assign s_logisimBus38[5] = s_logisimNet67;
   assign s_logisimBus38[6] = s_logisimNet55;
   assign s_logisimBus38[7] = s_logisimNet26;
   assign s_logisimBus44[0] = s_logisimNet68;
   assign s_logisimBus44[1] = s_logisimNet69;
   assign s_logisimBus44[2] = s_logisimNet70;
   assign s_logisimBus44[3] = s_logisimNet71;
   assign s_logisimNet12    = s_logisimBus4[7];
   assign s_logisimNet26    = s_logisimBus45[14];
   assign s_logisimNet27    = s_logisimBus45[9];
   assign s_logisimNet35    = s_logisimBus45[15];
   assign s_logisimNet39    = s_logisimBus45[14];
   assign s_logisimNet40    = s_logisimBus45[11];
   assign s_logisimNet47    = s_logisimBus45[8];
   assign s_logisimNet49    = s_logisimBus45[8];
   assign s_logisimNet5     = s_logisimBus45[9];
   assign s_logisimNet50    = s_logisimBus45[11];
   assign s_logisimNet55    = s_logisimBus45[13];
   assign s_logisimNet6     = s_logisimBus45[12];
   assign s_logisimNet60    = s_logisimBus45[13];
   assign s_logisimNet61    = s_logisimBus45[10];
   assign s_logisimNet64    = s_logisimBus45[10];
   assign s_logisimNet66    = s_logisimBus45[15];
   assign s_logisimNet67    = s_logisimBus45[12];
   assign s_logisimNet68    = s_logisimBus30[4];
   assign s_logisimNet69    = s_logisimBus30[5];
   assign s_logisimNet70    = s_logisimBus30[6];
   assign s_logisimNet71    = s_logisimBus30[7];

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus30[7:0] = CNTRL;
   assign s_logisimBus34[7:0] = DATAIN;
   assign s_logisimNet1       = SVB;
   assign s_logisimNet14      = SVA;
   assign s_logisimNet20      = ALU;
   assign s_logisimNet28      = CLK;
   assign s_logisimNet7       = RST;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign ALUOUT = s_logisimBus4[7:0];
   assign FLAGS  = s_logisimBus11[6:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Ground
   assign  s_logisimNet72  =  1'b0;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(8))
      GATES_1 (.input1(s_logisimBus45[7:0]),
               .input2(s_logisimBus45[15:8]),
               .result(s_logisimBus23[7:0]));

   OR_GATE_BUS #(.BubblesMask(2'b00),
                 .NrOfBits(8))
      GATES_2 (.input1(s_logisimBus45[7:0]),
               .input2(s_logisimBus45[15:8]),
               .result(s_logisimBus3[7:0]));

   XOR_GATE_BUS_ONEHOT #(.BubblesMask(2'b00),
                         .NrOfBits(8))
      GATES_3 (.input1(s_logisimBus45[7:0]),
               .input2(s_logisimBus45[15:8]),
               .result(s_logisimBus31[7:0]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet20),
               .input2(s_logisimBus30[3]),
               .result(s_logisimNet18));

   NOR_GATE_8_INPUTS #(.BubblesMask(8'h00))
      GATES_5 (.input1(s_logisimBus4[0]),
               .input2(s_logisimBus4[1]),
               .input3(s_logisimBus4[2]),
               .input4(s_logisimBus4[3]),
               .input5(s_logisimBus4[4]),
               .input6(s_logisimBus4[5]),
               .input7(s_logisimBus4[6]),
               .input8(s_logisimNet12),
               .result(s_logisimBus33[6]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimBus11[0]),
               .input2(s_logisimBus30[0]),
               .result(s_logisimNet37));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet37),
               .input2(s_logisimBus30[1]),
               .result(s_logisimNet52));

   Multiplexer_bus_16 #(.nrOfBits(8))
      PLEXERS_8 (.enable(1'b1),
                 .muxIn_0(s_logisimBus54[7:0]),
                 .muxIn_1(s_logisimBus23[7:0]),
                 .muxIn_10(s_logisimBus38[7:0]),
                 .muxIn_11(s_logisimBus45[15:8]),
                 .muxIn_12(s_logisimBus0[7:0]),
                 .muxIn_13(8'd0),
                 .muxIn_14(8'd0),
                 .muxIn_15(8'd0),
                 .muxIn_2(s_logisimBus3[7:0]),
                 .muxIn_3(s_logisimBus31[7:0]),
                 .muxIn_4(s_logisimBus46[7:0]),
                 .muxIn_5(s_logisimBus46[15:8]),
                 .muxIn_6(s_logisimBus62[7:0]),
                 .muxIn_7(s_logisimBus62[15:8]),
                 .muxIn_8(s_logisimBus8[7:0]),
                 .muxIn_9(s_logisimBus21[7:0]),
                 .muxOut(s_logisimBus4[7:0]),
                 .sel(s_logisimBus44[3:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_9 (.aEqualsB(),
               .aGreaterThanB(s_logisimBus33[2]),
               .aLessThanB(s_logisimBus33[3]),
               .dataA(s_logisimBus45[15:8]),
               .dataB(s_logisimBus45[7:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(0))
      ARITH_10 (.aEqualsB(),
                .aGreaterThanB(s_logisimBus33[4]),
                .aLessThanB(s_logisimBus33[5]),
                .dataA(s_logisimBus45[15:8]),
                .dataB(s_logisimBus45[7:0]));

   LogisimRNG #(.initialState0(64'hC81A0D35C50EB982),
                .initialState1(64'h506E90F594419A89),
                .initialState2(64'h734D0E03E6F349E9),
                .initialState3(64'h8A4763566F4D6D62),
                .nrOfBits(8))
      MEMORY_11 (.clear(s_logisimNet7),
                 .clock(s_logisimNet28),
                 .enable(s_logisimNet20),
                 .q(s_logisimBus0[7:0]),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_12 (.clock(s_logisimNet28),
                 .clockEnable(s_logisimNet20),
                 .d(s_logisimNet19),
                 .q(s_logisimBus33[0]),
                 .reset(s_logisimNet72),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(7))
      MEMORY_13 (.clock(s_logisimNet28),
                 .clockEnable(s_logisimNet18),
                 .d(s_logisimBus33[6:0]),
                 .q(s_logisimBus11[6:0]),
                 .reset(s_logisimNet7),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_14 (.clock(s_logisimNet28),
                 .clockEnable(s_logisimNet14),
                 .d(s_logisimBus34[7:0]),
                 .q(s_logisimBus45[15:8]),
                 .reset(s_logisimNet7),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_15 (.clock(s_logisimNet28),
                 .clockEnable(s_logisimNet1),
                 .d(s_logisimBus34[7:0]),
                 .q(s_logisimBus45[7:0]),
                 .reset(s_logisimNet7),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_16 (.clock(s_logisimNet28),
                 .clockEnable(s_logisimNet1),
                 .d(s_logisimBus45[7:0]),
                 .q(s_logisimBus36[7:0]),
                 .reset(s_logisimNet7),
                 .tick(1'b1));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   ADDSUB   ADDSUB_1 (.A(s_logisimBus45[15:8]),
                      .B(s_logisimBus45[7:0]),
                      .CIN(s_logisimNet52),
                      .COUT(s_logisimNet19),
                      .INVERTB(s_logisimBus30[2]),
                      .SUM(s_logisimBus54[7:0]));

   MULTIPLY   MULTIPLY_1 (.Input_bus_1(s_logisimBus45[7:0]),
                          .Input_bus_2(s_logisimBus45[15:8]),
                          .Output_bus_1(s_logisimBus46[15:0]));

   DIVISION   DIVISION_1 (.Input_bus_1(s_logisimBus45[15:0]),
                          .Input_bus_2(s_logisimBus36[7:0]),
                          .Output_bus_1(s_logisimBus62[15:0]),
                          .Output_bus_2(s_logisimBus8[7:0]));

endmodule
