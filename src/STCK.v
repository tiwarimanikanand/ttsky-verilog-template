/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : STCK                                                         **
 **                                                                          **
 *****************************************************************************/

module STCK( CLOCK,
             DATA,
             POP,
             PUSH,
             RESET,
             STACKOUT );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       CLOCK;
   input [7:0] DATA;
   input       POP;
   input       PUSH;
   input       RESET;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0] STACKOUT;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0]  s_logisimBus0;
   wire [7:0]  s_logisimBus1;
   wire [7:0]  s_logisimBus5;
   wire [63:0] s_logisimBus6;
   wire [63:0] s_logisimBus7;
   wire [7:0]  s_logisimBus8;
   wire        s_logisimNet2;
   wire        s_logisimNet3;
   wire        s_logisimNet4;
   wire        s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus1[7:0] = DATA;
   assign s_logisimNet2      = POP;
   assign s_logisimNet3      = CLOCK;
   assign s_logisimNet4      = RESET;
   assign s_logisimNet9      = PUSH;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign STACKOUT = s_logisimBus8[7:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Ground
   assign  s_logisimBus0[7:0]  =  8'h00;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   SHIFTREG_18_Classic #(.negateClock(0),
                         .nrOfBits(8))
      MEMORY_1 (.D0(s_logisimBus5[7:0]),
                .D1(s_logisimBus6[63:56]),
                .D10(s_logisimBus7[55:48]),
                .D11(s_logisimBus7[47:40]),
                .D12(s_logisimBus7[39:32]),
                .D13(s_logisimBus7[31:24]),
                .D14(s_logisimBus7[23:16]),
                .D15(s_logisimBus7[15:8]),
                .D16(s_logisimBus7[7:0]),
                .D17(s_logisimBus0[7:0]),
                .D2(s_logisimBus6[55:48]),
                .D3(s_logisimBus6[47:40]),
                .D4(s_logisimBus6[39:32]),
                .D5(s_logisimBus6[31:24]),
                .D6(s_logisimBus6[23:16]),
                .D7(s_logisimBus6[15:8]),
                .D8(s_logisimBus6[7:0]),
                .D9(s_logisimBus7[63:56]),
                .Q0(s_logisimBus8[7:0]),
                .Q1(s_logisimBus5[7:0]),
                .Q10(s_logisimBus7[63:56]),
                .Q11(s_logisimBus7[55:48]),
                .Q12(s_logisimBus7[47:40]),
                .Q13(s_logisimBus7[39:32]),
                .Q14(s_logisimBus7[31:24]),
                .Q15(s_logisimBus7[23:16]),
                .Q16(s_logisimBus7[15:8]),
                .Q17(s_logisimBus7[7:0]),
                .Q2(s_logisimBus6[63:56]),
                .Q3(s_logisimBus6[55:48]),
                .Q4(s_logisimBus6[47:40]),
                .Q5(s_logisimBus6[39:32]),
                .Q6(s_logisimBus6[31:24]),
                .Q7(s_logisimBus6[23:16]),
                .Q8(s_logisimBus6[15:8]),
                .Q9(s_logisimBus6[7:0]),
                .clock(s_logisimNet3),
                .parLoad(s_logisimNet2),
                .reset(s_logisimNet4),
                .shiftEnable(s_logisimNet9),
                .shiftIn(s_logisimBus1[7:0]),
                .shiftOut(),
                .tick(1'b1));


endmodule
