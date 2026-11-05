/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : SHIFTREG_3_Classic                                           **
 **                                                                          **
 *****************************************************************************/

module SHIFTREG_3_Classic( D0,
                           D1,
                           D2,
                           Q0,
                           Q1,
                           Q2,
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
   input [nrOfBits-1:0] D2;
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
   output [nrOfBits-1:0] Q2;
   output [nrOfBits-1:0] shiftOut;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire                s_clock;
   wire [nrOfBits-1:0] s_stageNext0;
   wire [nrOfBits-1:0] s_stageNext1;
   wire [nrOfBits-1:0] s_stageNext2;

   /*******************************************************************************
   ** The registers are defined here                                             **
   *******************************************************************************/
   reg [nrOfBits-1:0] s_stageReg0;
   reg [nrOfBits-1:0] s_stageReg1;
   reg [nrOfBits-1:0] s_stageReg2;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the outputs are mapped                                                **
   *******************************************************************************/
   assign shiftOut = s_stageReg2;
   assign Q0 = s_stageReg0;
   assign Q1 = s_stageReg1;
   assign Q2 = s_stageReg2;

   /*******************************************************************************
   ** Here the next state is defined                                             **
   *******************************************************************************/
   assign s_stageNext0 = (parLoad == 1'b1) ? D0 : (shiftEnable == 1'b1) ? shiftIn : s_stageReg0;
   assign s_stageNext1 = (parLoad == 1'b1) ? D1 : (shiftEnable == 1'b1) ? s_stageReg0 : s_stageReg1;
   assign s_stageNext2 = (parLoad == 1'b1) ? D2 : (shiftEnable == 1'b1) ? s_stageReg1 : s_stageReg2;

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
      end else if (tick) begin
         s_stageReg0 <= s_stageNext0;
         s_stageReg1 <= s_stageNext1;
         s_stageReg2 <= s_stageNext2;
      end
     end

endmodule
