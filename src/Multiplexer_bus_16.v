/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Multiplexer_bus_16                                           **
 **                                                                          **
 *****************************************************************************/

module Multiplexer_bus_16( enable,
                           muxIn_0,
                           muxIn_1,
                           muxIn_10,
                           muxIn_11,
                           muxIn_12,
                           muxIn_13,
                           muxIn_14,
                           muxIn_15,
                           muxIn_2,
                           muxIn_3,
                           muxIn_4,
                           muxIn_5,
                           muxIn_6,
                           muxIn_7,
                           muxIn_8,
                           muxIn_9,
                           muxOut,
                           sel );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter nrOfBits = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input                enable;
   input [nrOfBits-1:0] muxIn_0;
   input [nrOfBits-1:0] muxIn_1;
   input [nrOfBits-1:0] muxIn_10;
   input [nrOfBits-1:0] muxIn_11;
   input [nrOfBits-1:0] muxIn_12;
   input [nrOfBits-1:0] muxIn_13;
   input [nrOfBits-1:0] muxIn_14;
   input [nrOfBits-1:0] muxIn_15;
   input [nrOfBits-1:0] muxIn_2;
   input [nrOfBits-1:0] muxIn_3;
   input [nrOfBits-1:0] muxIn_4;
   input [nrOfBits-1:0] muxIn_5;
   input [nrOfBits-1:0] muxIn_6;
   input [nrOfBits-1:0] muxIn_7;
   input [nrOfBits-1:0] muxIn_8;
   input [nrOfBits-1:0] muxIn_9;
   input [3:0]          sel;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [nrOfBits-1:0] muxOut;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/
   reg [nrOfBits:0] s_selected_vector;
   assign muxOut = s_selected_vector;

   always @(*)
   begin
      if (~enable) s_selected_vector <= 0;
      else case (sel)
         4'h0:
            s_selected_vector <= muxIn_0;
         4'h1:
            s_selected_vector <= muxIn_1;
         4'h2:
            s_selected_vector <= muxIn_2;
         4'h3:
            s_selected_vector <= muxIn_3;
         4'h4:
            s_selected_vector <= muxIn_4;
         4'h5:
            s_selected_vector <= muxIn_5;
         4'h6:
            s_selected_vector <= muxIn_6;
         4'h7:
            s_selected_vector <= muxIn_7;
         4'h8:
            s_selected_vector <= muxIn_8;
         4'h9:
            s_selected_vector <= muxIn_9;
         4'hA:
            s_selected_vector <= muxIn_10;
         4'hB:
            s_selected_vector <= muxIn_11;
         4'hC:
            s_selected_vector <= muxIn_12;
         4'hD:
            s_selected_vector <= muxIn_13;
         4'hE:
            s_selected_vector <= muxIn_14;
        default:
           s_selected_vector <= muxIn_15;
      endcase
   end

endmodule
