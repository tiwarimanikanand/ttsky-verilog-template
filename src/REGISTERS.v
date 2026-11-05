/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : REGISTERS                                                    **
 **                                                                          **
 *****************************************************************************/

module REGISTERS( ADDRESS,
                  CLK,
                  DATA,
                  Output_bus_1,
                  Output_bus_2,
                  WRITE );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [3:0] ADDRESS;
   input       CLK;
   input [7:0] DATA;
   input       WRITE;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0]  Output_bus_1;
   output [23:0] Output_bus_2;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [3:0]  s_logisimBus1;
   wire [23:0] s_logisimBus2;
   wire [7:0]  s_logisimBus5;
   wire        s_logisimNet0;
   wire        s_logisimNet7;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus1[3:0] = ADDRESS;
   assign s_logisimBus5[7:0] = DATA;
   assign s_logisimNet0      = WRITE;
   assign s_logisimNet7      = CLK;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Output_bus_1 = s_logisimBus2[7:0];
   assign Output_bus_2 = s_logisimBus2[23:0];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   RAMCONTENTS_RAM_1   RAM_1 (.address(s_logisimBus1[3:0]),
                              .clock(s_logisimNet7),
                              .data0In(s_logisimBus5[7:0]),
                              .data0Out(s_logisimBus2[7:0]),
                              .data1In(8'd0),
                              .data1Out(s_logisimBus2[15:8]),
                              .data2In(8'd0),
                              .data2Out(s_logisimBus2[23:16]),
                              .data3In(8'd0),
                              .data3Out(),
                              .lineEnable0In(s_logisimNet0),
                              .lineEnable1In(1'b0),
                              .lineEnable2In(1'b0),
                              .lineEnable3In(1'b0),
                              .tick(1'b1),
                              .we(s_logisimNet0));


endmodule
