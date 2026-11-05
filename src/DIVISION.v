/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : DIVISION                                                     **
 **                                                                          **
 *****************************************************************************/

module DIVISION( Input_bus_1,
                 Input_bus_2,
                 Output_bus_1,
                 Output_bus_2 );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [15:0] Input_bus_1;
   input [7:0]  Input_bus_2;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [15:0] Output_bus_1;
   output [7:0]  Output_bus_2;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [8:0]  s_logisimBus102;
   wire [15:0] s_logisimBus104;
   wire [8:0]  s_logisimBus105;
   wire [8:0]  s_logisimBus14;
   wire [8:0]  s_logisimBus18;
   wire [8:0]  s_logisimBus19;
   wire [7:0]  s_logisimBus2;
   wire [8:0]  s_logisimBus20;
   wire [8:0]  s_logisimBus21;
   wire [8:0]  s_logisimBus24;
   wire [7:0]  s_logisimBus25;
   wire [8:0]  s_logisimBus28;
   wire [8:0]  s_logisimBus29;
   wire [7:0]  s_logisimBus3;
   wire [8:0]  s_logisimBus30;
   wire [8:0]  s_logisimBus32;
   wire [8:0]  s_logisimBus33;
   wire [8:0]  s_logisimBus34;
   wire [8:0]  s_logisimBus35;
   wire [8:0]  s_logisimBus38;
   wire [8:0]  s_logisimBus39;
   wire [8:0]  s_logisimBus40;
   wire [8:0]  s_logisimBus43;
   wire [8:0]  s_logisimBus45;
   wire [7:0]  s_logisimBus46;
   wire [7:0]  s_logisimBus47;
   wire [8:0]  s_logisimBus48;
   wire [8:0]  s_logisimBus50;
   wire [7:0]  s_logisimBus51;
   wire [7:0]  s_logisimBus52;
   wire [7:0]  s_logisimBus53;
   wire [8:0]  s_logisimBus6;
   wire [8:0]  s_logisimBus61;
   wire [8:0]  s_logisimBus62;
   wire [7:0]  s_logisimBus63;
   wire [7:0]  s_logisimBus64;
   wire [8:0]  s_logisimBus65;
   wire [8:0]  s_logisimBus66;
   wire [8:0]  s_logisimBus73;
   wire [8:0]  s_logisimBus74;
   wire [7:0]  s_logisimBus76;
   wire [7:0]  s_logisimBus77;
   wire [7:0]  s_logisimBus78;
   wire [8:0]  s_logisimBus79;
   wire [7:0]  s_logisimBus83;
   wire [7:0]  s_logisimBus84;
   wire [7:0]  s_logisimBus85;
   wire [15:0] s_logisimBus89;
   wire [8:0]  s_logisimBus90;
   wire [8:0]  s_logisimBus91;
   wire [8:0]  s_logisimBus98;
   wire        s_logisimNet0;
   wire        s_logisimNet1;
   wire        s_logisimNet10;
   wire        s_logisimNet100;
   wire        s_logisimNet103;
   wire        s_logisimNet106;
   wire        s_logisimNet109;
   wire        s_logisimNet11;
   wire        s_logisimNet110;
   wire        s_logisimNet111;
   wire        s_logisimNet12;
   wire        s_logisimNet13;
   wire        s_logisimNet15;
   wire        s_logisimNet16;
   wire        s_logisimNet17;
   wire        s_logisimNet22;
   wire        s_logisimNet23;
   wire        s_logisimNet26;
   wire        s_logisimNet27;
   wire        s_logisimNet31;
   wire        s_logisimNet36;
   wire        s_logisimNet37;
   wire        s_logisimNet4;
   wire        s_logisimNet41;
   wire        s_logisimNet42;
   wire        s_logisimNet44;
   wire        s_logisimNet49;
   wire        s_logisimNet5;
   wire        s_logisimNet54;
   wire        s_logisimNet55;
   wire        s_logisimNet56;
   wire        s_logisimNet57;
   wire        s_logisimNet58;
   wire        s_logisimNet59;
   wire        s_logisimNet60;
   wire        s_logisimNet67;
   wire        s_logisimNet68;
   wire        s_logisimNet69;
   wire        s_logisimNet7;
   wire        s_logisimNet70;
   wire        s_logisimNet71;
   wire        s_logisimNet72;
   wire        s_logisimNet75;
   wire        s_logisimNet8;
   wire        s_logisimNet80;
   wire        s_logisimNet81;
   wire        s_logisimNet82;
   wire        s_logisimNet86;
   wire        s_logisimNet87;
   wire        s_logisimNet88;
   wire        s_logisimNet9;
   wire        s_logisimNet93;
   wire        s_logisimNet94;
   wire        s_logisimNet95;
   wire        s_logisimNet96;
   wire        s_logisimNet97;
   wire        s_logisimNet99;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus14[0] = s_logisimNet11;
   assign s_logisimBus14[1] = s_logisimBus64[0];
   assign s_logisimBus14[2] = s_logisimBus64[1];
   assign s_logisimBus14[3] = s_logisimBus64[2];
   assign s_logisimBus14[4] = s_logisimBus64[3];
   assign s_logisimBus14[5] = s_logisimBus64[4];
   assign s_logisimBus14[6] = s_logisimBus64[5];
   assign s_logisimBus14[7] = s_logisimBus64[6];
   assign s_logisimBus14[8] = s_logisimBus64[7];
   assign s_logisimBus18[0] = s_logisimNet5;
   assign s_logisimBus18[1] = s_logisimBus63[0];
   assign s_logisimBus18[2] = s_logisimBus63[1];
   assign s_logisimBus18[3] = s_logisimBus63[2];
   assign s_logisimBus18[4] = s_logisimBus63[3];
   assign s_logisimBus18[5] = s_logisimBus63[4];
   assign s_logisimBus18[6] = s_logisimBus63[5];
   assign s_logisimBus18[7] = s_logisimBus63[6];
   assign s_logisimBus18[8] = s_logisimBus63[7];
   assign s_logisimBus19[0] = s_logisimNet72;
   assign s_logisimBus19[1] = s_logisimBus52[0];
   assign s_logisimBus19[2] = s_logisimBus52[1];
   assign s_logisimBus19[3] = s_logisimBus52[2];
   assign s_logisimBus19[4] = s_logisimBus52[3];
   assign s_logisimBus19[5] = s_logisimBus52[4];
   assign s_logisimBus19[6] = s_logisimBus52[5];
   assign s_logisimBus19[7] = s_logisimBus52[6];
   assign s_logisimBus19[8] = s_logisimBus52[7];
   assign s_logisimBus20[0] = s_logisimNet36;
   assign s_logisimBus20[1] = s_logisimBus2[0];
   assign s_logisimBus20[2] = s_logisimBus2[1];
   assign s_logisimBus20[3] = s_logisimBus2[2];
   assign s_logisimBus20[4] = s_logisimBus2[3];
   assign s_logisimBus20[5] = s_logisimBus2[4];
   assign s_logisimBus20[6] = s_logisimBus2[5];
   assign s_logisimBus20[7] = s_logisimBus2[6];
   assign s_logisimBus20[8] = s_logisimBus2[7];
   assign s_logisimBus21[0] = s_logisimNet59;
   assign s_logisimBus21[1] = s_logisimBus3[0];
   assign s_logisimBus21[2] = s_logisimBus3[1];
   assign s_logisimBus21[3] = s_logisimBus3[2];
   assign s_logisimBus21[4] = s_logisimBus3[3];
   assign s_logisimBus21[5] = s_logisimBus3[4];
   assign s_logisimBus21[6] = s_logisimBus3[5];
   assign s_logisimBus21[7] = s_logisimBus3[6];
   assign s_logisimBus21[8] = s_logisimBus3[7];
   assign s_logisimBus24[0] = s_logisimNet26;
   assign s_logisimBus24[1] = s_logisimBus78[0];
   assign s_logisimBus24[2] = s_logisimBus78[1];
   assign s_logisimBus24[3] = s_logisimBus78[2];
   assign s_logisimBus24[4] = s_logisimBus78[3];
   assign s_logisimBus24[5] = s_logisimBus78[4];
   assign s_logisimBus24[6] = s_logisimBus78[5];
   assign s_logisimBus24[7] = s_logisimBus78[6];
   assign s_logisimBus24[8] = s_logisimBus78[7];
   assign s_logisimBus28[0] = s_logisimNet80;
   assign s_logisimBus28[1] = s_logisimBus83[0];
   assign s_logisimBus28[2] = s_logisimBus83[1];
   assign s_logisimBus28[3] = s_logisimBus83[2];
   assign s_logisimBus28[4] = s_logisimBus83[3];
   assign s_logisimBus28[5] = s_logisimBus83[4];
   assign s_logisimBus28[6] = s_logisimBus83[5];
   assign s_logisimBus28[7] = s_logisimBus83[6];
   assign s_logisimBus28[8] = s_logisimBus83[7];
   assign s_logisimBus29[0] = s_logisimNet23;
   assign s_logisimBus29[1] = s_logisimBus84[0];
   assign s_logisimBus29[2] = s_logisimBus84[1];
   assign s_logisimBus29[3] = s_logisimBus84[2];
   assign s_logisimBus29[4] = s_logisimBus84[3];
   assign s_logisimBus29[5] = s_logisimBus84[4];
   assign s_logisimBus29[6] = s_logisimBus84[5];
   assign s_logisimBus29[7] = s_logisimBus84[6];
   assign s_logisimBus29[8] = s_logisimBus84[7];
   assign s_logisimBus2[0]  = s_logisimBus102[0];
   assign s_logisimBus2[1]  = s_logisimBus102[1];
   assign s_logisimBus2[2]  = s_logisimBus102[2];
   assign s_logisimBus2[3]  = s_logisimBus102[3];
   assign s_logisimBus2[4]  = s_logisimBus102[4];
   assign s_logisimBus2[5]  = s_logisimBus102[5];
   assign s_logisimBus2[6]  = s_logisimBus102[6];
   assign s_logisimBus2[7]  = s_logisimBus102[7];
   assign s_logisimBus30[0] = s_logisimNet27;
   assign s_logisimBus30[1] = s_logisimBus85[0];
   assign s_logisimBus30[2] = s_logisimBus85[1];
   assign s_logisimBus30[3] = s_logisimBus85[2];
   assign s_logisimBus30[4] = s_logisimBus85[3];
   assign s_logisimBus30[5] = s_logisimBus85[4];
   assign s_logisimBus30[6] = s_logisimBus85[5];
   assign s_logisimBus30[7] = s_logisimBus85[6];
   assign s_logisimBus30[8] = s_logisimBus85[7];
   assign s_logisimBus34[0] = s_logisimNet22;
   assign s_logisimBus34[1] = s_logisimBus77[0];
   assign s_logisimBus34[2] = s_logisimBus77[1];
   assign s_logisimBus34[3] = s_logisimBus77[2];
   assign s_logisimBus34[4] = s_logisimBus77[3];
   assign s_logisimBus34[5] = s_logisimBus77[4];
   assign s_logisimBus34[6] = s_logisimBus77[5];
   assign s_logisimBus34[7] = s_logisimBus77[6];
   assign s_logisimBus34[8] = s_logisimBus77[7];
   assign s_logisimBus35[0] = s_logisimNet7;
   assign s_logisimBus35[1] = s_logisimBus76[0];
   assign s_logisimBus35[2] = s_logisimBus76[1];
   assign s_logisimBus35[3] = s_logisimBus76[2];
   assign s_logisimBus35[4] = s_logisimBus76[3];
   assign s_logisimBus35[5] = s_logisimBus76[4];
   assign s_logisimBus35[6] = s_logisimBus76[5];
   assign s_logisimBus35[7] = s_logisimBus76[6];
   assign s_logisimBus35[8] = s_logisimBus76[7];
   assign s_logisimBus3[0]  = s_logisimBus105[0];
   assign s_logisimBus3[1]  = s_logisimBus105[1];
   assign s_logisimBus3[2]  = s_logisimBus105[2];
   assign s_logisimBus3[3]  = s_logisimBus105[3];
   assign s_logisimBus3[4]  = s_logisimBus105[4];
   assign s_logisimBus3[5]  = s_logisimBus105[5];
   assign s_logisimBus3[6]  = s_logisimBus105[6];
   assign s_logisimBus3[7]  = s_logisimBus105[7];
   assign s_logisimBus46[0] = s_logisimBus43[0];
   assign s_logisimBus46[1] = s_logisimBus43[1];
   assign s_logisimBus46[2] = s_logisimBus43[2];
   assign s_logisimBus46[3] = s_logisimBus43[3];
   assign s_logisimBus46[4] = s_logisimBus43[4];
   assign s_logisimBus46[5] = s_logisimBus43[5];
   assign s_logisimBus46[6] = s_logisimBus43[6];
   assign s_logisimBus46[7] = s_logisimBus43[7];
   assign s_logisimBus47[0] = s_logisimBus45[0];
   assign s_logisimBus47[1] = s_logisimBus45[1];
   assign s_logisimBus47[2] = s_logisimBus45[2];
   assign s_logisimBus47[3] = s_logisimBus45[3];
   assign s_logisimBus47[4] = s_logisimBus45[4];
   assign s_logisimBus47[5] = s_logisimBus45[5];
   assign s_logisimBus47[6] = s_logisimBus45[6];
   assign s_logisimBus47[7] = s_logisimBus45[7];
   assign s_logisimBus51[0] = s_logisimBus39[0];
   assign s_logisimBus51[1] = s_logisimBus39[1];
   assign s_logisimBus51[2] = s_logisimBus39[2];
   assign s_logisimBus51[3] = s_logisimBus39[3];
   assign s_logisimBus51[4] = s_logisimBus39[4];
   assign s_logisimBus51[5] = s_logisimBus39[5];
   assign s_logisimBus51[6] = s_logisimBus39[6];
   assign s_logisimBus51[7] = s_logisimBus39[7];
   assign s_logisimBus52[0] = s_logisimBus40[0];
   assign s_logisimBus52[1] = s_logisimBus40[1];
   assign s_logisimBus52[2] = s_logisimBus40[2];
   assign s_logisimBus52[3] = s_logisimBus40[3];
   assign s_logisimBus52[4] = s_logisimBus40[4];
   assign s_logisimBus52[5] = s_logisimBus40[5];
   assign s_logisimBus52[6] = s_logisimBus40[6];
   assign s_logisimBus52[7] = s_logisimBus40[7];
   assign s_logisimBus53[0] = s_logisimBus38[0];
   assign s_logisimBus53[1] = s_logisimBus38[1];
   assign s_logisimBus53[2] = s_logisimBus38[2];
   assign s_logisimBus53[3] = s_logisimBus38[3];
   assign s_logisimBus53[4] = s_logisimBus38[4];
   assign s_logisimBus53[5] = s_logisimBus38[5];
   assign s_logisimBus53[6] = s_logisimBus38[6];
   assign s_logisimBus53[7] = s_logisimBus38[7];
   assign s_logisimBus61[0] = s_logisimNet12;
   assign s_logisimBus61[1] = s_logisimBus53[0];
   assign s_logisimBus61[2] = s_logisimBus53[1];
   assign s_logisimBus61[3] = s_logisimBus53[2];
   assign s_logisimBus61[4] = s_logisimBus53[3];
   assign s_logisimBus61[5] = s_logisimBus53[4];
   assign s_logisimBus61[6] = s_logisimBus53[5];
   assign s_logisimBus61[7] = s_logisimBus53[6];
   assign s_logisimBus61[8] = s_logisimBus53[7];
   assign s_logisimBus62[0] = s_logisimNet60;
   assign s_logisimBus62[1] = s_logisimBus51[0];
   assign s_logisimBus62[2] = s_logisimBus51[1];
   assign s_logisimBus62[3] = s_logisimBus51[2];
   assign s_logisimBus62[4] = s_logisimBus51[3];
   assign s_logisimBus62[5] = s_logisimBus51[4];
   assign s_logisimBus62[6] = s_logisimBus51[5];
   assign s_logisimBus62[7] = s_logisimBus51[6];
   assign s_logisimBus62[8] = s_logisimBus51[7];
   assign s_logisimBus63[0] = s_logisimBus48[0];
   assign s_logisimBus63[1] = s_logisimBus48[1];
   assign s_logisimBus63[2] = s_logisimBus48[2];
   assign s_logisimBus63[3] = s_logisimBus48[3];
   assign s_logisimBus63[4] = s_logisimBus48[4];
   assign s_logisimBus63[5] = s_logisimBus48[5];
   assign s_logisimBus63[6] = s_logisimBus48[6];
   assign s_logisimBus63[7] = s_logisimBus48[7];
   assign s_logisimBus64[0] = s_logisimBus50[0];
   assign s_logisimBus64[1] = s_logisimBus50[1];
   assign s_logisimBus64[2] = s_logisimBus50[2];
   assign s_logisimBus64[3] = s_logisimBus50[3];
   assign s_logisimBus64[4] = s_logisimBus50[4];
   assign s_logisimBus64[5] = s_logisimBus50[5];
   assign s_logisimBus64[6] = s_logisimBus50[6];
   assign s_logisimBus64[7] = s_logisimBus50[7];
   assign s_logisimBus65[0] = s_logisimNet37;
   assign s_logisimBus65[1] = s_logisimBus47[0];
   assign s_logisimBus65[2] = s_logisimBus47[1];
   assign s_logisimBus65[3] = s_logisimBus47[2];
   assign s_logisimBus65[4] = s_logisimBus47[3];
   assign s_logisimBus65[5] = s_logisimBus47[4];
   assign s_logisimBus65[6] = s_logisimBus47[5];
   assign s_logisimBus65[7] = s_logisimBus47[6];
   assign s_logisimBus65[8] = s_logisimBus47[7];
   assign s_logisimBus66[0] = s_logisimNet57;
   assign s_logisimBus66[1] = s_logisimBus46[0];
   assign s_logisimBus66[2] = s_logisimBus46[1];
   assign s_logisimBus66[3] = s_logisimBus46[2];
   assign s_logisimBus66[4] = s_logisimBus46[3];
   assign s_logisimBus66[5] = s_logisimBus46[4];
   assign s_logisimBus66[6] = s_logisimBus46[5];
   assign s_logisimBus66[7] = s_logisimBus46[6];
   assign s_logisimBus66[8] = s_logisimBus46[7];
   assign s_logisimBus6[0]  = s_logisimNet58;
   assign s_logisimBus6[1]  = s_logisimNet106;
   assign s_logisimBus6[2]  = s_logisimNet88;
   assign s_logisimBus6[3]  = s_logisimNet41;
   assign s_logisimBus6[4]  = s_logisimNet103;
   assign s_logisimBus6[5]  = s_logisimNet69;
   assign s_logisimBus6[6]  = s_logisimNet4;
   assign s_logisimBus6[7]  = s_logisimNet93;
   assign s_logisimBus76[0] = s_logisimBus74[0];
   assign s_logisimBus76[1] = s_logisimBus74[1];
   assign s_logisimBus76[2] = s_logisimBus74[2];
   assign s_logisimBus76[3] = s_logisimBus74[3];
   assign s_logisimBus76[4] = s_logisimBus74[4];
   assign s_logisimBus76[5] = s_logisimBus74[5];
   assign s_logisimBus76[6] = s_logisimBus74[6];
   assign s_logisimBus76[7] = s_logisimBus74[7];
   assign s_logisimBus77[0] = s_logisimBus73[0];
   assign s_logisimBus77[1] = s_logisimBus73[1];
   assign s_logisimBus77[2] = s_logisimBus73[2];
   assign s_logisimBus77[3] = s_logisimBus73[3];
   assign s_logisimBus77[4] = s_logisimBus73[4];
   assign s_logisimBus77[5] = s_logisimBus73[5];
   assign s_logisimBus77[6] = s_logisimBus73[6];
   assign s_logisimBus77[7] = s_logisimBus73[7];
   assign s_logisimBus78[0] = s_logisimBus90[0];
   assign s_logisimBus78[1] = s_logisimBus90[1];
   assign s_logisimBus78[2] = s_logisimBus90[2];
   assign s_logisimBus78[3] = s_logisimBus90[3];
   assign s_logisimBus78[4] = s_logisimBus90[4];
   assign s_logisimBus78[5] = s_logisimBus90[5];
   assign s_logisimBus78[6] = s_logisimBus90[6];
   assign s_logisimBus78[7] = s_logisimBus90[7];
   assign s_logisimBus79[0] = s_logisimNet31;
   assign s_logisimBus83[0] = s_logisimBus91[0];
   assign s_logisimBus83[1] = s_logisimBus91[1];
   assign s_logisimBus83[2] = s_logisimBus91[2];
   assign s_logisimBus83[3] = s_logisimBus91[3];
   assign s_logisimBus83[4] = s_logisimBus91[4];
   assign s_logisimBus83[5] = s_logisimBus91[5];
   assign s_logisimBus83[6] = s_logisimBus91[6];
   assign s_logisimBus83[7] = s_logisimBus91[7];
   assign s_logisimBus84[0] = s_logisimBus33[0];
   assign s_logisimBus84[1] = s_logisimBus33[1];
   assign s_logisimBus84[2] = s_logisimBus33[2];
   assign s_logisimBus84[3] = s_logisimBus33[3];
   assign s_logisimBus84[4] = s_logisimBus33[4];
   assign s_logisimBus84[5] = s_logisimBus33[5];
   assign s_logisimBus84[6] = s_logisimBus33[6];
   assign s_logisimBus84[7] = s_logisimBus33[7];
   assign s_logisimBus85[0] = s_logisimBus32[0];
   assign s_logisimBus85[1] = s_logisimBus32[1];
   assign s_logisimBus85[2] = s_logisimBus32[2];
   assign s_logisimBus85[3] = s_logisimBus32[3];
   assign s_logisimBus85[4] = s_logisimBus32[4];
   assign s_logisimBus85[5] = s_logisimBus32[5];
   assign s_logisimBus85[6] = s_logisimBus32[6];
   assign s_logisimBus85[7] = s_logisimBus32[7];
   assign s_logisimNet103   = s_logisimBus25[4];
   assign s_logisimNet106   = s_logisimBus25[1];
   assign s_logisimNet11    = s_logisimBus89[0];
   assign s_logisimNet12    = s_logisimBus89[1];
   assign s_logisimNet22    = s_logisimBus89[5];
   assign s_logisimNet23    = s_logisimBus89[11];
   assign s_logisimNet26    = s_logisimBus89[2];
   assign s_logisimNet27    = s_logisimBus89[3];
   assign s_logisimNet31    = s_logisimBus89[15];
   assign s_logisimNet36    = s_logisimBus89[6];
   assign s_logisimNet37    = s_logisimBus89[4];
   assign s_logisimNet4     = s_logisimBus25[6];
   assign s_logisimNet41    = s_logisimBus25[3];
   assign s_logisimNet5     = s_logisimBus89[8];
   assign s_logisimNet57    = s_logisimBus89[12];
   assign s_logisimNet58    = s_logisimBus25[0];
   assign s_logisimNet59    = s_logisimBus89[14];
   assign s_logisimNet60    = s_logisimBus89[9];
   assign s_logisimNet69    = s_logisimBus25[5];
   assign s_logisimNet7     = s_logisimBus89[13];
   assign s_logisimNet72    = s_logisimBus89[7];
   assign s_logisimNet80    = s_logisimBus89[10];
   assign s_logisimNet88    = s_logisimBus25[2];
   assign s_logisimNet93    = s_logisimBus25[7];

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus25[7:0]  = Input_bus_2;
   assign s_logisimBus89[15:0] = Input_bus_1;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Output_bus_1 = s_logisimBus104[15:0];
   assign Output_bus_2 = s_logisimBus98[7:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Ground
   assign  s_logisimBus6[8]  =  1'b0;


   // Ground
   assign  s_logisimBus79[8:1]  =  8'h00;


   // NOT Gate
   assign s_logisimBus104[15] = ~s_logisimNet87;

   // NOT Gate
   assign s_logisimBus104[7] = ~s_logisimNet70;

   // NOT Gate
   assign s_logisimBus104[14] = ~s_logisimNet109;

   // NOT Gate
   assign s_logisimBus104[6] = ~s_logisimNet110;

   // NOT Gate
   assign s_logisimBus104[13] = ~s_logisimNet99;

   // NOT Gate
   assign s_logisimBus104[5] = ~s_logisimNet100;

   // NOT Gate
   assign s_logisimBus104[12] = ~s_logisimNet82;

   // NOT Gate
   assign s_logisimBus104[4] = ~s_logisimNet81;

   // NOT Gate
   assign s_logisimBus104[11] = ~s_logisimNet95;

   // NOT Gate
   assign s_logisimBus104[3] = ~s_logisimNet94;

   // NOT Gate
   assign s_logisimBus104[10] = ~s_logisimNet97;

   // NOT Gate
   assign s_logisimBus104[2] = ~s_logisimNet96;

   // NOT Gate
   assign s_logisimBus104[9] = ~s_logisimNet75;

   // NOT Gate
   assign s_logisimBus104[1] = ~s_logisimNet71;

   // NOT Gate
   assign s_logisimBus104[8] = ~s_logisimNet44;

   // NOT Gate
   assign s_logisimBus104[0] = ~s_logisimNet42;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Comparator #(.nrOfBits(9),
                .twosComplement(0))
      ARITH_1 (.aEqualsB(),
               .aGreaterThanB(),
               .aLessThanB(s_logisimNet87),
               .dataA(s_logisimBus79[8:0]),
               .dataB(s_logisimBus6[8:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(0))
      ARITH_2 (.aEqualsB(),
               .aGreaterThanB(),
               .aLessThanB(s_logisimNet70),
               .dataA(s_logisimBus19[8:0]),
               .dataB(s_logisimBus6[8:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(0))
      ARITH_3 (.aEqualsB(),
               .aGreaterThanB(),
               .aLessThanB(s_logisimNet109),
               .dataA(s_logisimBus21[8:0]),
               .dataB(s_logisimBus6[8:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(0))
      ARITH_4 (.aEqualsB(),
               .aGreaterThanB(),
               .aLessThanB(s_logisimNet110),
               .dataA(s_logisimBus20[8:0]),
               .dataB(s_logisimBus6[8:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(0))
      ARITH_5 (.aEqualsB(),
               .aGreaterThanB(),
               .aLessThanB(s_logisimNet99),
               .dataA(s_logisimBus35[8:0]),
               .dataB(s_logisimBus6[8:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(0))
      ARITH_6 (.aEqualsB(),
               .aGreaterThanB(),
               .aLessThanB(s_logisimNet100),
               .dataA(s_logisimBus34[8:0]),
               .dataB(s_logisimBus6[8:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(0))
      ARITH_7 (.aEqualsB(),
               .aGreaterThanB(),
               .aLessThanB(s_logisimNet82),
               .dataA(s_logisimBus66[8:0]),
               .dataB(s_logisimBus6[8:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(0))
      ARITH_8 (.aEqualsB(),
               .aGreaterThanB(),
               .aLessThanB(s_logisimNet81),
               .dataA(s_logisimBus65[8:0]),
               .dataB(s_logisimBus6[8:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(0))
      ARITH_9 (.aEqualsB(),
               .aGreaterThanB(),
               .aLessThanB(s_logisimNet95),
               .dataA(s_logisimBus29[8:0]),
               .dataB(s_logisimBus6[8:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(0))
      ARITH_10 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet94),
                .dataA(s_logisimBus30[8:0]),
                .dataB(s_logisimBus6[8:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(0))
      ARITH_11 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet97),
                .dataA(s_logisimBus28[8:0]),
                .dataB(s_logisimBus6[8:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(0))
      ARITH_12 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet96),
                .dataA(s_logisimBus24[8:0]),
                .dataB(s_logisimBus6[8:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(0))
      ARITH_13 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet75),
                .dataA(s_logisimBus62[8:0]),
                .dataB(s_logisimBus6[8:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(0))
      ARITH_14 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet71),
                .dataA(s_logisimBus61[8:0]),
                .dataB(s_logisimBus6[8:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(0))
      ARITH_15 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet44),
                .dataA(s_logisimBus18[8:0]),
                .dataB(s_logisimBus6[8:0]));

   Comparator #(.nrOfBits(9),
                .twosComplement(0))
      ARITH_16 (.aEqualsB(),
                .aGreaterThanB(),
                .aLessThanB(s_logisimNet42),
                .dataA(s_logisimBus14[8:0]),
                .dataB(s_logisimBus6[8:0]));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   SUBTRACTFORDIVIDE   SUBTRACTFORDIVIDE_1 (.A(s_logisimBus79[8:0]),
                                            .B(s_logisimBus6[8:0]),
                                            .COUT(),
                                            .ENABLESUB(s_logisimBus104[15]),
                                            .SUM(s_logisimBus105[8:0]));

   SUBTRACTFORDIVIDE   SUBTRACTFORDIVIDE_9 (.A(s_logisimBus19[8:0]),
                                            .B(s_logisimBus6[8:0]),
                                            .COUT(),
                                            .ENABLESUB(s_logisimBus104[7]),
                                            .SUM(s_logisimBus102[8:0]));

   SUBTRACTFORDIVIDE   SUBTRACTFORDIVIDE_2 (.A(s_logisimBus21[8:0]),
                                            .B(s_logisimBus6[8:0]),
                                            .COUT(),
                                            .ENABLESUB(s_logisimBus104[14]),
                                            .SUM(s_logisimBus74[8:0]));

   SUBTRACTFORDIVIDE   SUBTRACTFORDIVIDE_10 (.A(s_logisimBus20[8:0]),
                                             .B(s_logisimBus6[8:0]),
                                             .COUT(),
                                             .ENABLESUB(s_logisimBus104[6]),
                                             .SUM(s_logisimBus73[8:0]));

   SUBTRACTFORDIVIDE   SUBTRACTFORDIVIDE_3 (.A(s_logisimBus35[8:0]),
                                            .B(s_logisimBus6[8:0]),
                                            .COUT(),
                                            .ENABLESUB(s_logisimBus104[13]),
                                            .SUM(s_logisimBus43[8:0]));

   SUBTRACTFORDIVIDE   SUBTRACTFORDIVIDE_11 (.A(s_logisimBus34[8:0]),
                                             .B(s_logisimBus6[8:0]),
                                             .COUT(),
                                             .ENABLESUB(s_logisimBus104[5]),
                                             .SUM(s_logisimBus45[8:0]));

   SUBTRACTFORDIVIDE   SUBTRACTFORDIVIDE_4 (.A(s_logisimBus66[8:0]),
                                            .B(s_logisimBus6[8:0]),
                                            .COUT(),
                                            .ENABLESUB(s_logisimBus104[12]),
                                            .SUM(s_logisimBus33[8:0]));

   SUBTRACTFORDIVIDE   SUBTRACTFORDIVIDE_12 (.A(s_logisimBus65[8:0]),
                                             .B(s_logisimBus6[8:0]),
                                             .COUT(),
                                             .ENABLESUB(s_logisimBus104[4]),
                                             .SUM(s_logisimBus32[8:0]));

   SUBTRACTFORDIVIDE   SUBTRACTFORDIVIDE_5 (.A(s_logisimBus29[8:0]),
                                            .B(s_logisimBus6[8:0]),
                                            .COUT(),
                                            .ENABLESUB(s_logisimBus104[11]),
                                            .SUM(s_logisimBus91[8:0]));

   SUBTRACTFORDIVIDE   SUBTRACTFORDIVIDE_13 (.A(s_logisimBus30[8:0]),
                                             .B(s_logisimBus6[8:0]),
                                             .COUT(),
                                             .ENABLESUB(s_logisimBus104[3]),
                                             .SUM(s_logisimBus90[8:0]));

   SUBTRACTFORDIVIDE   SUBTRACTFORDIVIDE_6 (.A(s_logisimBus28[8:0]),
                                            .B(s_logisimBus6[8:0]),
                                            .COUT(),
                                            .ENABLESUB(s_logisimBus104[10]),
                                            .SUM(s_logisimBus39[8:0]));

   SUBTRACTFORDIVIDE   SUBTRACTFORDIVIDE_14 (.A(s_logisimBus24[8:0]),
                                             .B(s_logisimBus6[8:0]),
                                             .COUT(),
                                             .ENABLESUB(s_logisimBus104[2]),
                                             .SUM(s_logisimBus38[8:0]));

   SUBTRACTFORDIVIDE   SUBTRACTFORDIVIDE_7 (.A(s_logisimBus62[8:0]),
                                            .B(s_logisimBus6[8:0]),
                                            .COUT(),
                                            .ENABLESUB(s_logisimBus104[9]),
                                            .SUM(s_logisimBus48[8:0]));

   SUBTRACTFORDIVIDE   SUBTRACTFORDIVIDE_15 (.A(s_logisimBus61[8:0]),
                                             .B(s_logisimBus6[8:0]),
                                             .COUT(),
                                             .ENABLESUB(s_logisimBus104[1]),
                                             .SUM(s_logisimBus50[8:0]));

   SUBTRACTFORDIVIDE   SUBTRACTFORDIVIDE_8 (.A(s_logisimBus18[8:0]),
                                            .B(s_logisimBus6[8:0]),
                                            .COUT(),
                                            .ENABLESUB(s_logisimBus104[8]),
                                            .SUM(s_logisimBus40[8:0]));

   SUBTRACTFORDIVIDE   SUBTRACTFORDIVIDE_16 (.A(s_logisimBus14[8:0]),
                                             .B(s_logisimBus6[8:0]),
                                             .COUT(),
                                             .ENABLESUB(s_logisimBus104[0]),
                                             .SUM(s_logisimBus98[8:0]));

endmodule
