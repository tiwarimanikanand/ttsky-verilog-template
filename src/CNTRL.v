/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : CNTRL                                                        **
 **                                                                          **
 *****************************************************************************/

module CNTRL( CLK,
              CONTROL,
              DELAY,
              FLAGS,
              GPUDONE,
              Input_bus_1,
              LDX,
              LDY,
              MATH,
              MUX,
              OPERAND,
              OUTPUT,
              POP,
              PUSH,
              REGADD,
              RST,
              SAVEA,
              SAVEREG,
              STARTGPU,
              SVB );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       CLK;
   input [6:0] FLAGS;
   input       GPUDONE;
   input [7:0] Input_bus_1;
   input       RST;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [5:0] CONTROL;
   output       DELAY;
   output       LDX;
   output       LDY;
   output       MATH;
   output [1:0] MUX;
   output [7:0] OPERAND;
   output       OUTPUT;
   output       POP;
   output       PUSH;
   output [3:0] REGADD;
   output       SAVEA;
   output       SAVEREG;
   output       STARTGPU;
   output       SVB;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [6:0]  s_logisimBus0;
   wire [7:0]  s_logisimBus10;
   wire [7:0]  s_logisimBus19;
   wire [19:0] s_logisimBus20;
   wire [5:0]  s_logisimBus25;
   wire [5:0]  s_logisimBus33;
   wire [3:0]  s_logisimBus35;
   wire [7:0]  s_logisimBus38;
   wire [5:0]  s_logisimBus42;
   wire [8:0]  s_logisimBus45;
   wire [2:0]  s_logisimBus53;
   wire [7:0]  s_logisimBus7;
   wire [7:0]  s_logisimBus8;
   wire        s_logisimNet11;
   wire        s_logisimNet12;
   wire        s_logisimNet13;
   wire        s_logisimNet14;
   wire        s_logisimNet15;
   wire        s_logisimNet16;
   wire        s_logisimNet17;
   wire        s_logisimNet18;
   wire        s_logisimNet2;
   wire        s_logisimNet21;
   wire        s_logisimNet22;
   wire        s_logisimNet23;
   wire        s_logisimNet24;
   wire        s_logisimNet26;
   wire        s_logisimNet27;
   wire        s_logisimNet29;
   wire        s_logisimNet3;
   wire        s_logisimNet30;
   wire        s_logisimNet31;
   wire        s_logisimNet32;
   wire        s_logisimNet34;
   wire        s_logisimNet39;
   wire        s_logisimNet4;
   wire        s_logisimNet40;
   wire        s_logisimNet41;
   wire        s_logisimNet43;
   wire        s_logisimNet44;
   wire        s_logisimNet46;
   wire        s_logisimNet47;
   wire        s_logisimNet48;
   wire        s_logisimNet49;
   wire        s_logisimNet5;
   wire        s_logisimNet50;
   wire        s_logisimNet51;
   wire        s_logisimNet52;
   wire        s_logisimNet6;
   wire        s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus35[0] = s_logisimBus10[4];
   assign s_logisimBus35[1] = s_logisimBus10[5];
   assign s_logisimBus35[2] = s_logisimBus10[6];
   assign s_logisimBus35[3] = s_logisimBus10[7];
   assign s_logisimBus45[0] = s_logisimBus35[0];
   assign s_logisimBus45[1] = s_logisimBus35[1];
   assign s_logisimBus45[2] = s_logisimBus35[2];
   assign s_logisimBus45[3] = s_logisimBus35[3];
   assign s_logisimBus45[8] = s_logisimNet4;
   assign s_logisimBus8[0]  = s_logisimNet46;
   assign s_logisimBus8[1]  = s_logisimNet47;
   assign s_logisimBus8[2]  = s_logisimNet48;
   assign s_logisimBus8[3]  = s_logisimNet49;
   assign s_logisimBus8[4]  = s_logisimNet50;
   assign s_logisimBus8[5]  = s_logisimNet51;
   assign s_logisimBus8[6]  = s_logisimNet52;
   assign s_logisimNet4     = s_logisimBus10[0];
   assign s_logisimNet46    = s_logisimBus0[0];
   assign s_logisimNet47    = s_logisimBus0[1];
   assign s_logisimNet48    = s_logisimBus0[2];
   assign s_logisimNet49    = s_logisimBus0[3];
   assign s_logisimNet50    = s_logisimBus0[4];
   assign s_logisimNet51    = s_logisimBus0[5];
   assign s_logisimNet52    = s_logisimBus0[6];

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus0[6:0]  = FLAGS;
   assign s_logisimBus19[7:0] = Input_bus_1;
   assign s_logisimBus8[7]    = GPUDONE;
   assign s_logisimNet18      = CLK;
   assign s_logisimNet6       = RST;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign CONTROL  = s_logisimBus42[5:0];
   assign DELAY    = s_logisimBus20[8];
   assign LDX      = s_logisimBus20[9];
   assign LDY      = s_logisimBus20[10];
   assign MATH     = s_logisimBus20[5];
   assign MUX      = s_logisimBus20[14:13];
   assign OPERAND  = s_logisimBus19[7:0];
   assign OUTPUT   = s_logisimBus20[12];
   assign POP      = s_logisimBus20[6];
   assign PUSH     = s_logisimBus20[7];
   assign REGADD   = s_logisimBus10[3:0];
   assign SAVEA    = s_logisimBus20[3];
   assign SAVEREG  = s_logisimBus20[2];
   assign STARTGPU = s_logisimBus20[11];
   assign SVB      = s_logisimBus20[4];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Bit Extender
   assign  s_logisimBus33[0]  =  s_logisimBus7[0];
   assign  s_logisimBus33[1]  =  s_logisimBus7[1];
   assign  s_logisimBus33[2]  =  s_logisimBus7[2];
   assign  s_logisimBus33[3]  =  s_logisimBus7[3];
   assign  s_logisimBus33[4]  =  s_logisimBus7[4];
   assign  s_logisimBus33[5]  =  s_logisimBus7[5];


   // Bit Extender
   assign  s_logisimBus25[0]  =  s_logisimBus20[15];
   assign  s_logisimBus25[1]  =  s_logisimBus20[16];
   assign  s_logisimBus25[2]  =  1'b0;
   assign  s_logisimBus25[3]  =  1'b0;
   assign  s_logisimBus25[4]  =  1'b0;
   assign  s_logisimBus25[5]  =  1'b0;


   // Ground
   assign  s_logisimBus53[2:0]  =  3'b000;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(8))
      GATES_1 (.input1(s_logisimBus7[7:0]),
               .input2(s_logisimBus8[7:0]),
               .result(s_logisimBus38[7:0]));

   OR_GATE_8_INPUTS #(.BubblesMask(8'h00))
      GATES_2 (.input1(s_logisimBus38[0]),
               .input2(s_logisimBus38[1]),
               .input3(s_logisimBus38[2]),
               .input4(s_logisimBus38[3]),
               .input5(s_logisimBus38[4]),
               .input6(s_logisimBus38[5]),
               .input7(s_logisimBus38[6]),
               .input8(s_logisimBus38[7]),
               .result(s_logisimBus45[4]));

   PLA_PLA_1   PLA_1 (.index(s_logisimBus45[8:0]),
                      .result(s_logisimBus20[19:0]));

   OR_GATE #(.BubblesMask(2'b01))
      GATES_4 (.input1(s_logisimBus20[18]),
               .input2(s_logisimBus8[7]),
               .result(s_logisimNet22));

   Multiplexer_bus_2 #(.nrOfBits(6))
      PLEXERS_5 (.enable(1'b1),
                 .muxIn_0(s_logisimBus25[5:0]),
                 .muxIn_1(s_logisimBus33[5:0]),
                 .muxOut(s_logisimBus42[5:0]),
                 .sel(s_logisimBus20[17]));

   LogisimCounter #(.invertClock(0),
                    .maxVal(3'b111),
                    .mode(0),
                    .width(3))
      MEMORY_6 (.clear(s_logisimNet6),
                .clock(s_logisimNet18),
                .compareOut(),
                .countValue(s_logisimBus45[7:5]),
                .enable(s_logisimNet22),
                .load(s_logisimBus20[1]),
                .loadData(s_logisimBus53[2:0]),
                .tick(1'b1),
                .upNotDown(1'b0));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_7 (.clock(s_logisimNet18),
                .clockEnable(s_logisimBus20[0]),
                .d(s_logisimBus19[7:0]),
                .q(s_logisimBus10[7:0]),
                .reset(s_logisimNet6),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_8 (.clock(s_logisimNet18),
                .clockEnable(s_logisimBus20[19]),
                .d(s_logisimBus19[7:0]),
                .q(s_logisimBus7[7:0]),
                .reset(s_logisimNet6),
                .tick(1'b1));


endmodule
