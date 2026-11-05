/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : UNA                                                          **
 **                                                                          **
 *****************************************************************************/

module UNA( CLK,
            DATAOUT,
            INPUT,
            OUTSIDECONTROL,
            RST,
            X,
            Y );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       CLK;
   input [7:0] INPUT;
   input       RST;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0] DATAOUT;
   output [5:0] OUTSIDECONTROL;
   output       X;
   output       Y;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [6:0]  s_logisimBus0;
   wire [1:0]  s_logisimBus11;
   wire [7:0]  s_logisimBus12;
   wire [3:0]  s_logisimBus14;
   wire [7:0]  s_logisimBus15;
   wire [7:0]  s_logisimBus19;
   wire [7:0]  s_logisimBus20;
   wire [7:0]  s_logisimBus21;
   wire [5:0]  s_logisimBus23;
   wire [7:0]  s_logisimBus26;
   wire [23:0] s_logisimBus27;
   wire [7:0]  s_logisimBus7;
   wire [7:0]  s_logisimBus9;
   wire        s_logisimNet1;
   wire        s_logisimNet10;
   wire        s_logisimNet13;
   wire        s_logisimNet16;
   wire        s_logisimNet17;
   wire        s_logisimNet18;
   wire        s_logisimNet2;
   wire        s_logisimNet22;
   wire        s_logisimNet24;
   wire        s_logisimNet25;
   wire        s_logisimNet28;
   wire        s_logisimNet29;
   wire        s_logisimNet3;
   wire        s_logisimNet30;
   wire        s_logisimNet31;
   wire        s_logisimNet4;
   wire        s_logisimNet5;
   wire        s_logisimNet6;
   wire        s_logisimNet8;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus12[7:0] = INPUT;
   assign s_logisimNet24      = RST;
   assign s_logisimNet3       = CLK;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign DATAOUT        = s_logisimBus26[7:0];
   assign OUTSIDECONTROL = s_logisimBus23[5:0];
   assign X              = s_logisimNet1;
   assign Y              = s_logisimNet10;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b10))
      GATES_1 (.input1(s_logisimNet3),
               .input2(s_logisimNet22),
               .result(s_logisimNet28));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet3),
               .input2(s_logisimNet8),
               .result(s_logisimNet31));

   Multiplexer_bus_4 #(.nrOfBits(8))
      PLEXERS_3 (.enable(1'b1),
                 .muxIn_0(s_logisimBus21[7:0]),
                 .muxIn_1(s_logisimBus20[7:0]),
                 .muxIn_2(s_logisimBus9[7:0]),
                 .muxIn_3(s_logisimBus12[7:0]),
                 .muxOut(s_logisimBus7[7:0]),
                 .sel(s_logisimBus11[1:0]));

   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_4 (.enable(1'b1),
                 .muxIn_0(s_logisimBus15[7:0]),
                 .muxIn_1(s_logisimBus7[7:0]),
                 .muxOut(s_logisimBus26[7:0]),
                 .sel(s_logisimNet22));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   CNTRL   CNTRL_1 (.CLK(s_logisimNet31),
                    .CONTROL(s_logisimBus23[5:0]),
                    .DELAY(s_logisimNet18),
                    .FLAGS(s_logisimBus0[6:0]),
                    .GPUDONE(s_logisimNet5),
                    .Input_bus_1(s_logisimBus12[7:0]),
                    .LDX(s_logisimNet30),
                    .LDY(s_logisimNet17),
                    .MATH(s_logisimNet6),
                    .MUX(s_logisimBus11[1:0]),
                    .OPERAND(s_logisimBus19[7:0]),
                    .OUTPUT(s_logisimNet22),
                    .POP(s_logisimNet4),
                    .PUSH(s_logisimNet13),
                    .REGADD(s_logisimBus14[3:0]),
                    .RST(s_logisimNet24),
                    .SAVEA(s_logisimNet25),
                    .SAVEREG(s_logisimNet29),
                    .STARTGPU(s_logisimNet16),
                    .SVB(s_logisimNet2));

   REGISTERS   REGISTERS_1 (.ADDRESS(s_logisimBus14[3:0]),
                            .CLK(s_logisimNet3),
                            .DATA(s_logisimBus7[7:0]),
                            .Output_bus_1(s_logisimBus21[7:0]),
                            .Output_bus_2(s_logisimBus27[23:0]),
                            .WRITE(s_logisimNet29));

   MATH   MATH_1 (.ALU(s_logisimNet6),
                  .ALUOUT(s_logisimBus20[7:0]),
                  .CLK(s_logisimNet3),
                  .CNTRL(s_logisimBus19[7:0]),
                  .DATAIN(s_logisimBus21[7:0]),
                  .FLAGS(s_logisimBus0[6:0]),
                  .RST(s_logisimNet24),
                  .SVA(s_logisimNet25),
                  .SVB(s_logisimNet2));

   STCK   STCK_1 (.CLOCK(s_logisimNet3),
                  .DATA(s_logisimBus7[7:0]),
                  .POP(s_logisimNet4),
                  .PUSH(s_logisimNet13),
                  .RESET(s_logisimNet24),
                  .STACKOUT(s_logisimBus9[7:0]));

   DLY   DLY_1 (.ADDRESS(s_logisimBus27[23:0]),
                .CLK(s_logisimNet3),
                .ENCLK(s_logisimNet8),
                .RST(s_logisimNet24),
                .SET(s_logisimNet18));

   GRAPHICSCARD   GRAPHICSCARD_1 (.CLK(s_logisimNet28),
                                  .COORD(s_logisimBus15[7:0]),
                                  .DATA(s_logisimBus21[7:0]),
                                  .DONE(s_logisimNet5),
                                  .LDX(s_logisimNet30),
                                  .LDY(s_logisimNet17),
                                  .RST(s_logisimNet24),
                                  .START(s_logisimNet16),
                                  .X(s_logisimNet1),
                                  .Y(s_logisimNet10));

endmodule
