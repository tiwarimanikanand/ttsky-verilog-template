/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Shifter_11_bit                                               **
 **                                                                          **
 *****************************************************************************/

module Shifter_11_bit( dataA,
                       result,
                       shiftAmount );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter shifterMode = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [10:0] dataA;
   input [3:0]  shiftAmount;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [10:0] result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [10:0] s_stage0Result;
   wire        s_stage0ShiftIn;
   wire [10:0] s_stage1Result;
   wire [1:0]  s_stage1ShiftIn;
   wire [10:0] s_stage2Result;
   wire [3:0]  s_stage2ShiftIn;
   wire [10:0] s_stage3Result;
   wire [7:0]  s_stage3ShiftIn;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/
   /*******************************************************************************
   ** ShifterMode represents when:                                               **
   ** 0 : Logical Shift Left                                                     **
   ** 1 : Rotate Left                                                            **
   ** 2 :                                                                        **
   ** Logical Shift Right                                                        **
   ** 3 : Arithmetic Shift Right                                                 **
   ** 4 : Rotate Right                                                           **
   *******************************************************************************/

   /*******************************************************************************
   ** Stage 0 of the binary shift tree is defined here                           **
   *******************************************************************************/
   assign s_stage0ShiftIn = ((shifterMode == 1) || (shifterMode == 3))
        ? dataA[shifterMode] : (10 == 4) ? dataA[0] : 0;

   assign s_stage0Result  = (shiftAmount[0] == 1'b0)
        ? dataA
        : ((shifterMode == 0) || (shifterMode == 1))
           ? {dataA[9:0],s_stage0ShiftIn}
           : {s_stage0ShiftIn,dataA[10:1]};

   /*******************************************************************************
   ** Stage 1 of the binary shift tree is defined here                           **
   *******************************************************************************/
   assign s_stage1ShiftIn = (shifterMode == 1) ?
                              s_stage0Result[10:9] :
                              (shifterMode == 3) ?
                              { 2{s_stage0Result[10]} } :
                              (shifterMode == 4) ?
                              s_stage0Result[1:0] : 0;

   assign s_stage1Result  = (shiftAmount[1]==0) ?
                              s_stage0Result :
                              ((shifterMode == 0)||(shifterMode == 1)) ?
                              {s_stage0Result[8:0],s_stage1ShiftIn} :
                              {s_stage1ShiftIn,s_stage0Result[10:2]};

   /*******************************************************************************
   ** Stage 2 of the binary shift tree is defined here                           **
   *******************************************************************************/
   assign s_stage2ShiftIn = (shifterMode == 1) ?
                              s_stage1Result[10:7] :
                              (shifterMode == 3) ?
                              { 4{s_stage1Result[10]} } :
                              (shifterMode == 4) ?
                              s_stage1Result[3:0] : 0;

   assign s_stage2Result  = (shiftAmount[2]==0) ?
                              s_stage1Result :
                              ((shifterMode == 0)||(shifterMode == 1)) ?
                              {s_stage1Result[6:0],s_stage2ShiftIn} :
                              {s_stage2ShiftIn,s_stage1Result[10:4]};

   /*******************************************************************************
   ** Stage 3 of the binary shift tree is defined here                           **
   *******************************************************************************/
   assign s_stage3ShiftIn = (shifterMode == 1) ?
                              s_stage2Result[10:3] :
                              (shifterMode == 3) ?
                              { 8{s_stage2Result[10]} } :
                              (shifterMode == 4) ?
                              s_stage2Result[7:0] : 0;

   assign s_stage3Result  = (shiftAmount[3]==0) ?
                              s_stage2Result :
                              ((shifterMode == 0)||(shifterMode == 1)) ?
                              {s_stage2Result[2:0],s_stage3ShiftIn} :
                              {s_stage3ShiftIn,s_stage2Result[10:8]};

   /*******************************************************************************
   ** The result is assigned here                                                **
   *******************************************************************************/
   assign result = s_stage3Result;

endmodule
