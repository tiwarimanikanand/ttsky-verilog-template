/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : SHIFTREG_18_Classic                                          **
 **                                                                          **
 *****************************************************************************/

module SHIFTREG_18_Classic( D0,
                            D1,
                            D10,
                            D11,
                            D12,
                            D13,
                            D14,
                            D15,
                            D16,
                            D17,
                            D2,
                            D3,
                            D4,
                            D5,
                            D6,
                            D7,
                            D8,
                            D9,
                            Q0,
                            Q1,
                            Q10,
                            Q11,
                            Q12,
                            Q13,
                            Q14,
                            Q15,
                            Q16,
                            Q17,
                            Q2,
                            Q3,
                            Q4,
                            Q5,
                            Q6,
                            Q7,
                            Q8,
                            Q9,
                            clock,
                            parLoad,
                            reset,
                            shiftEnable,
                            shiftIn,
                            shiftOut,
                            tick );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter negateClock = 1;
   parameter nrOfBits = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [nrOfBits-1:0] D0;
   input [nrOfBits-1:0] D1;
   input [nrOfBits-1:0] D10;
   input [nrOfBits-1:0] D11;
   input [nrOfBits-1:0] D12;
   input [nrOfBits-1:0] D13;
   input [nrOfBits-1:0] D14;
   input [nrOfBits-1:0] D15;
   input [nrOfBits-1:0] D16;
   input [nrOfBits-1:0] D17;
   input [nrOfBits-1:0] D2;
   input [nrOfBits-1:0] D3;
   input [nrOfBits-1:0] D4;
   input [nrOfBits-1:0] D5;
   input [nrOfBits-1:0] D6;
   input [nrOfBits-1:0] D7;
   input [nrOfBits-1:0] D8;
   input [nrOfBits-1:0] D9;
   input                clock;
   input                parLoad;
   input                reset;
   input                shiftEnable;
   input [nrOfBits-1:0] shiftIn;
   input                tick;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [nrOfBits-1:0] Q0;
   output [nrOfBits-1:0] Q1;
   output [nrOfBits-1:0] Q10;
   output [nrOfBits-1:0] Q11;
   output [nrOfBits-1:0] Q12;
   output [nrOfBits-1:0] Q13;
   output [nrOfBits-1:0] Q14;
   output [nrOfBits-1:0] Q15;
   output [nrOfBits-1:0] Q16;
   output [nrOfBits-1:0] Q17;
   output [nrOfBits-1:0] Q2;
   output [nrOfBits-1:0] Q3;
   output [nrOfBits-1:0] Q4;
   output [nrOfBits-1:0] Q5;
   output [nrOfBits-1:0] Q6;
   output [nrOfBits-1:0] Q7;
   output [nrOfBits-1:0] Q8;
   output [nrOfBits-1:0] Q9;
   output [nrOfBits-1:0] shiftOut;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire                s_clock;
   wire [nrOfBits-1:0] s_stageNext0;
   wire [nrOfBits-1:0] s_stageNext1;
   wire [nrOfBits-1:0] s_stageNext10;
   wire [nrOfBits-1:0] s_stageNext11;
   wire [nrOfBits-1:0] s_stageNext12;
   wire [nrOfBits-1:0] s_stageNext13;
   wire [nrOfBits-1:0] s_stageNext14;
   wire [nrOfBits-1:0] s_stageNext15;
   wire [nrOfBits-1:0] s_stageNext16;
   wire [nrOfBits-1:0] s_stageNext17;
   wire [nrOfBits-1:0] s_stageNext2;
   wire [nrOfBits-1:0] s_stageNext3;
   wire [nrOfBits-1:0] s_stageNext4;
   wire [nrOfBits-1:0] s_stageNext5;
   wire [nrOfBits-1:0] s_stageNext6;
   wire [nrOfBits-1:0] s_stageNext7;
   wire [nrOfBits-1:0] s_stageNext8;
   wire [nrOfBits-1:0] s_stageNext9;

   /*******************************************************************************
   ** The registers are defined here                                             **
   *******************************************************************************/
   reg [nrOfBits-1:0] s_stageReg0;
   reg [nrOfBits-1:0] s_stageReg1;
   reg [nrOfBits-1:0] s_stageReg10;
   reg [nrOfBits-1:0] s_stageReg11;
   reg [nrOfBits-1:0] s_stageReg12;
   reg [nrOfBits-1:0] s_stageReg13;
   reg [nrOfBits-1:0] s_stageReg14;
   reg [nrOfBits-1:0] s_stageReg15;
   reg [nrOfBits-1:0] s_stageReg16;
   reg [nrOfBits-1:0] s_stageReg17;
   reg [nrOfBits-1:0] s_stageReg2;
   reg [nrOfBits-1:0] s_stageReg3;
   reg [nrOfBits-1:0] s_stageReg4;
   reg [nrOfBits-1:0] s_stageReg5;
   reg [nrOfBits-1:0] s_stageReg6;
   reg [nrOfBits-1:0] s_stageReg7;
   reg [nrOfBits-1:0] s_stageReg8;
   reg [nrOfBits-1:0] s_stageReg9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the outputs are mapped                                                **
   *******************************************************************************/
   assign shiftOut = s_stageReg17;
   assign Q0 = s_stageReg0;
   assign Q1 = s_stageReg1;
   assign Q2 = s_stageReg2;
   assign Q3 = s_stageReg3;
   assign Q4 = s_stageReg4;
   assign Q5 = s_stageReg5;
   assign Q6 = s_stageReg6;
   assign Q7 = s_stageReg7;
   assign Q8 = s_stageReg8;
   assign Q9 = s_stageReg9;
   assign Q10 = s_stageReg10;
   assign Q11 = s_stageReg11;
   assign Q12 = s_stageReg12;
   assign Q13 = s_stageReg13;
   assign Q14 = s_stageReg14;
   assign Q15 = s_stageReg15;
   assign Q16 = s_stageReg16;
   assign Q17 = s_stageReg17;

   /*******************************************************************************
   ** Here the next state is defined                                             **
   *******************************************************************************/
   assign s_stageNext0 = (parLoad == 1'b1) ? D0 : (shiftEnable == 1'b1) ? shiftIn : s_stageReg0;
   assign s_stageNext1 = (parLoad == 1'b1) ? D1 : (shiftEnable == 1'b1) ? s_stageReg0 : s_stageReg1;
   assign s_stageNext2 = (parLoad == 1'b1) ? D2 : (shiftEnable == 1'b1) ? s_stageReg1 : s_stageReg2;
   assign s_stageNext3 = (parLoad == 1'b1) ? D3 : (shiftEnable == 1'b1) ? s_stageReg2 : s_stageReg3;
   assign s_stageNext4 = (parLoad == 1'b1) ? D4 : (shiftEnable == 1'b1) ? s_stageReg3 : s_stageReg4;
   assign s_stageNext5 = (parLoad == 1'b1) ? D5 : (shiftEnable == 1'b1) ? s_stageReg4 : s_stageReg5;
   assign s_stageNext6 = (parLoad == 1'b1) ? D6 : (shiftEnable == 1'b1) ? s_stageReg5 : s_stageReg6;
   assign s_stageNext7 = (parLoad == 1'b1) ? D7 : (shiftEnable == 1'b1) ? s_stageReg6 : s_stageReg7;
   assign s_stageNext8 = (parLoad == 1'b1) ? D8 : (shiftEnable == 1'b1) ? s_stageReg7 : s_stageReg8;
   assign s_stageNext9 = (parLoad == 1'b1) ? D9 : (shiftEnable == 1'b1) ? s_stageReg8 : s_stageReg9;
   assign s_stageNext10 = (parLoad == 1'b1) ? D10 : (shiftEnable == 1'b1) ? s_stageReg9 : s_stageReg10;
   assign s_stageNext11 = (parLoad == 1'b1) ? D11 : (shiftEnable == 1'b1) ? s_stageReg10 : s_stageReg11;
   assign s_stageNext12 = (parLoad == 1'b1) ? D12 : (shiftEnable == 1'b1) ? s_stageReg11 : s_stageReg12;
   assign s_stageNext13 = (parLoad == 1'b1) ? D13 : (shiftEnable == 1'b1) ? s_stageReg12 : s_stageReg13;
   assign s_stageNext14 = (parLoad == 1'b1) ? D14 : (shiftEnable == 1'b1) ? s_stageReg13 : s_stageReg14;
   assign s_stageNext15 = (parLoad == 1'b1) ? D15 : (shiftEnable == 1'b1) ? s_stageReg14 : s_stageReg15;
   assign s_stageNext16 = (parLoad == 1'b1) ? D16 : (shiftEnable == 1'b1) ? s_stageReg15 : s_stageReg16;
   assign s_stageNext17 = (parLoad == 1'b1) ? D17 : (shiftEnable == 1'b1) ? s_stageReg16 : s_stageReg17;

   /*******************************************************************************
   ** Here the state registers are defined                                       **
   *******************************************************************************/
   assign s_clock = (negateClock == 0) ? clock : ~clock;

   always @(posedge s_clock or posedge reset)
     begin
      if (reset) begin
         s_stageReg0 <= 0;
         s_stageReg1 <= 0;
         s_stageReg2 <= 0;
         s_stageReg3 <= 0;
         s_stageReg4 <= 0;
         s_stageReg5 <= 0;
         s_stageReg6 <= 0;
         s_stageReg7 <= 0;
         s_stageReg8 <= 0;
         s_stageReg9 <= 0;
         s_stageReg10 <= 0;
         s_stageReg11 <= 0;
         s_stageReg12 <= 0;
         s_stageReg13 <= 0;
         s_stageReg14 <= 0;
         s_stageReg15 <= 0;
         s_stageReg16 <= 0;
         s_stageReg17 <= 0;
      end else if (tick) begin
         s_stageReg0 <= s_stageNext0;
         s_stageReg1 <= s_stageNext1;
         s_stageReg2 <= s_stageNext2;
         s_stageReg3 <= s_stageNext3;
         s_stageReg4 <= s_stageNext4;
         s_stageReg5 <= s_stageNext5;
         s_stageReg6 <= s_stageNext6;
         s_stageReg7 <= s_stageNext7;
         s_stageReg8 <= s_stageNext8;
         s_stageReg9 <= s_stageNext9;
         s_stageReg10 <= s_stageNext10;
         s_stageReg11 <= s_stageNext11;
         s_stageReg12 <= s_stageNext12;
         s_stageReg13 <= s_stageNext13;
         s_stageReg14 <= s_stageNext14;
         s_stageReg15 <= s_stageNext15;
         s_stageReg16 <= s_stageNext16;
         s_stageReg17 <= s_stageNext17;
      end
     end

endmodule
