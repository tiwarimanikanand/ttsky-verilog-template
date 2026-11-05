/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : GRAPHICSCARD                                                 **
 **                                                                          **
 *****************************************************************************/

module GRAPHICSCARD( CLK,
                     COORD,
                     DATA,
                     DONE,
                     LDX,
                     LDY,
                     RST,
                     START,
                     X,
                     Y );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       CLK;
   input [7:0] DATA;
   input       LDX;
   input       LDY;
   input       RST;
   input       START;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0] COORD;
   output       DONE;
   output       X;
   output       Y;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus10;
   wire [7:0] s_logisimBus11;
   wire [7:0] s_logisimBus12;
   wire [7:0] s_logisimBus13;
   wire [7:0] s_logisimBus14;
   wire [7:0] s_logisimBus15;
   wire [7:0] s_logisimBus16;
   wire [7:0] s_logisimBus8;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet2;
   wire       s_logisimNet3;
   wire       s_logisimNet4;
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
   assign s_logisimBus16[7:0] = DATA;
   assign s_logisimNet3       = CLK;
   assign s_logisimNet4       = LDX;
   assign s_logisimNet5       = LDY;
   assign s_logisimNet6       = START;
   assign s_logisimNet9       = RST;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign COORD = s_logisimBus8[7:0];
   assign DONE  = s_logisimNet7;
   assign X     = s_logisimNet1;
   assign Y     = s_logisimNet0;

   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   SORTSHIFT   SORTSHIFT_1 (.CLK(s_logisimNet3),
                            .COORDATA(s_logisimBus16[7:0]),
                            .LDX(s_logisimNet4),
                            .LDY(s_logisimNet5),
                            .RST(s_logisimNet9),
                            .SORT(s_logisimNet6),
                            .SORTED(s_logisimNet2),
                            .X1(s_logisimBus10[7:0]),
                            .X2(s_logisimBus14[7:0]),
                            .XMID(s_logisimBus12[7:0]),
                            .Y1(s_logisimBus11[7:0]),
                            .Y2(s_logisimBus15[7:0]),
                            .YMID(s_logisimBus13[7:0]));

   TRIANGLE   TRIANGLE_1 (.CLK(s_logisimNet3),
                          .COORD(s_logisimBus8[7:0]),
                          .DONE(s_logisimNet7),
                          .SET(s_logisimNet9),
                          .START(s_logisimNet2),
                          .X(s_logisimNet1),
                          .XLOW(s_logisimBus14[7:0]),
                          .XMID(s_logisimBus12[7:0]),
                          .XTOP(s_logisimBus10[7:0]),
                          .Y(s_logisimNet0),
                          .YLOW(s_logisimBus15[7:0]),
                          .YMID(s_logisimBus13[7:0]),
                          .YTOP(s_logisimBus11[7:0]));

endmodule
