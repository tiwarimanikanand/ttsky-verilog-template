/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : DLY                                                          **
 **                                                                          **
 *****************************************************************************/

module DLY( ADDRESS,
            CLK,
            ENCLK,
            RST,
            SET );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [23:0] ADDRESS;
   input        CLK;
   input        RST;
   input        SET;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output ENCLK;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [23:0] s_logisimBus2;
   wire        s_logisimNet0;
   wire        s_logisimNet1;
   wire        s_logisimNet3;
   wire        s_logisimNet4;
   wire        s_logisimNet5;
   wire        s_logisimNet6;
   wire        s_logisimNet7;
   wire        s_logisimNet8;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus2[23:0] = ADDRESS;
   assign s_logisimNet0       = SET;
   assign s_logisimNet4       = CLK;
   assign s_logisimNet5       = RST;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign ENCLK = s_logisimNet1;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Ground
   assign  s_logisimNet8  =  1'b0;


   // NOT Gate
   assign s_logisimNet7 = ~s_logisimNet4;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet3),
               .input2(s_logisimNet0),
               .result(s_logisimNet6));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet3),
               .input2(s_logisimNet4),
               .result(s_logisimNet1));

   LogisimCounter #(.invertClock(0),
                    .maxVal(24'hFFFFFF),
                    .mode(0),
                    .width(24))
      MEMORY_3 (.clear(s_logisimNet5),
                .clock(s_logisimNet7),
                .compareOut(s_logisimNet3),
                .countValue(),
                .enable(s_logisimNet0),
                .load(s_logisimNet6),
                .loadData(s_logisimBus2[23:0]),
                .tick(1'b1),
                .upNotDown(s_logisimNet8));


endmodule
