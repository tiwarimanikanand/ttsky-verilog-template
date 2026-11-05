/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : RAMCONTENTS_RAM_1                                            **
 **                                                                          **
 *****************************************************************************/

module RAMCONTENTS_RAM_1( address,
                          clock,
                          data0In,
                          data0Out,
                          data1In,
                          data1Out,
                          data2In,
                          data2Out,
                          data3In,
                          data3Out,
                          lineEnable0In,
                          lineEnable1In,
                          lineEnable2In,
                          lineEnable3In,
                          tick,
                          we );

   /*******************************************************************************
   ** Here all private types are defined                                         **
   *******************************************************************************/

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [3:0] address;
   input       clock;
   input [7:0] data0In;
   input [7:0] data1In;
   input [7:0] data2In;
   input [7:0] data3In;
   input       lineEnable0In;
   input       lineEnable1In;
   input       lineEnable2In;
   input       lineEnable3In;
   input       tick;
   input       we;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0] data0Out;
   output [7:0] data1Out;
   output [7:0] data2Out;
   output [7:0] data3Out;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [3:0] s_ramReadAddress;
   wire       s_ramWe;
   wire [3:0] s_ramWriteAddress;

   /*******************************************************************************
   ** The registers are defined here                                             **
   *******************************************************************************/
   reg [4:0] s_addressOffsetReg;
   reg [7:0] s_dataIn0Reg;
   reg [7:0] s_dataIn1Reg;
   reg [7:0] s_dataIn2Reg;
   reg [7:0] s_dataIn3Reg;
   reg [7:0] s_dataOut0Reg;
   reg [7:0] s_dataOut1Reg;
   reg [7:0] s_dataOut2Reg;
   reg [7:0] s_dataOut3Reg;
   reg       s_lineEnable0Reg;
   reg       s_lineEnable1Reg;
   reg       s_lineEnable2Reg;
   reg       s_lineEnable3Reg;
   reg [7:0] s_ramDataIn;
   reg [7:0] s_ramDataOut;
   reg [3:0] s_readAddressReg;
   reg [4:0] s_tickDelayReg;
   reg       s_weReg;
   reg [3:0] s_writeAddressReg;

   /*******************************************************************************
   ** The type defined signals are defined here                                  **
   *******************************************************************************/
   reg [7:0] s_memContents [16:0];

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** The synchronous semi-dual-ported memory is defined here                    **
   *******************************************************************************/
   assign s_ramWriteAddress = s_writeAddressReg + s_addressOffsetReg[3:0];
   assign s_ramReadAddress = s_readAddressReg + s_addressOffsetReg[3:0];

   always @(posedge clock)
     if (s_ramWe == 1'b1) s_memContents[s_ramWriteAddress] <= s_ramDataIn;

   always @(negedge clock)
     s_ramDataOut <= s_memContents[s_ramReadAddress];

   /*******************************************************************************
   ** The input registers are defined here                                       **
   *******************************************************************************/
   always @(posedge clock)
     begin
       if (s_tickDelayReg[0] == 1'b1)
         s_readAddressReg <= address;
       if (tick == 1'b1)
         begin
           s_writeAddressReg     <= address;
           s_weReg               <= we;
           s_dataIn0Reg     <= data0In;
           s_lineEnable0Reg <= lineEnable0In;
           s_dataIn1Reg     <= data1In;
           s_lineEnable1Reg <= lineEnable1In;
           s_dataIn2Reg     <= data2In;
           s_lineEnable2Reg <= lineEnable2In;
           s_dataIn3Reg     <= data3In;
           s_lineEnable3Reg <= lineEnable3In;
         end
       end

   /*******************************************************************************
   ** The FSM's are defined here                                                 **
   *******************************************************************************/
   always @(posedge clock)
     begin
       s_tickDelayReg[0] <= tick;
       s_tickDelayReg[4:1] <= s_tickDelayReg[3:0];
       s_addressOffsetReg <= (s_tickDelayReg[0] == 1'b1) ? 5'd0 :
                             s_addressOffsetReg != 5'd4 ? s_addressOffsetReg + 5'd1 :
                             s_addressOffsetReg;
     end

   /*******************************************************************************
   ** Here the RamDatIn is defined                                               **
   *******************************************************************************/
   always @*
     case (s_addressOffsetReg)
       5'd3    : s_ramDataIn <= s_dataIn3Reg;
       5'd2    : s_ramDataIn <= s_dataIn2Reg;
       5'd1    : s_ramDataIn <= s_dataIn1Reg;
       default : s_ramDataIn <= s_dataIn0Reg;
     endcase;

   /*******************************************************************************
   ** Here the RamDatout is defined                                              **
   *******************************************************************************/
   assign data0Out = s_dataOut0Reg;
   assign data1Out = s_dataOut1Reg;
   assign data2Out = s_dataOut2Reg;
   assign data3Out = s_dataOut3Reg;

   always @(posedge clock)
     begin
       s_dataOut0Reg <= (s_tickDelayReg[1] == 1'b1) ? s_ramDataOut : s_dataOut0Reg;
       s_dataOut1Reg <= (s_tickDelayReg[2] == 1'b1) ? s_ramDataOut : s_dataOut1Reg;
       s_dataOut2Reg <= (s_tickDelayReg[3] == 1'b1) ? s_ramDataOut : s_dataOut2Reg;
       s_dataOut3Reg <= (s_tickDelayReg[4] == 1'b1) ? s_ramDataOut : s_dataOut3Reg;
     end

   /*******************************************************************************
   ** Here the Ram write enable is defined                                       **
   *******************************************************************************/
   assign s_ramWe = s_weReg & (
                    (s_lineEnable0Reg & s_tickDelayReg[1])|
                    (s_lineEnable1Reg & s_tickDelayReg[2])|
                    (s_lineEnable2Reg & s_tickDelayReg[3])|
                    (s_lineEnable3Reg & s_tickDelayReg[4]));

endmodule
