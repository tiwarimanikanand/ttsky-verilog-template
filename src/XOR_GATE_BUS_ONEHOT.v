/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : XOR_GATE_BUS_ONEHOT                                          **
 **                                                                          **
 *****************************************************************************/

module XOR_GATE_BUS_ONEHOT( input1,
                            input2,
                            result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter NrOfBits = 1;
   parameter [1:0] BubblesMask = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [NrOfBits-1:0] input1;
   input [NrOfBits-1:0] input2;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [NrOfBits-1:0] result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [NrOfBits-1:0] s_realInput1;
   wire [NrOfBits-1:0] s_realInput2;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here the bubbles are processed                                             **
   *******************************************************************************/
   assign  s_realInput1 = (BubblesMask[0] == 1'b0) ? input1 : ~input1;
   assign  s_realInput2 = (BubblesMask[1] == 1'b0) ? input2 : ~input2;

   /*******************************************************************************
   ** Here the functionality is defined                                          **
   *******************************************************************************/
   genvar n;
   generate
      for (n = 0 ; n < NrOfBits ; n = n + 1)
         begin: gen_bit
         assign result[n] = (s_realInput1[n]&~(s_realInput2[n]))|
                            (~(s_realInput1[n])&s_realInput2[n]);
         end
   endgenerate


endmodule
