/* Unsigned 8x8 multiplier (replaces the Logisim adder-array netlist, whose carry outs were
   unconnected and whose upper partial products were misaligned). Same ports as the original. */
module MULTIPLY( Input_bus_1,
                 Input_bus_2,
                 Output_bus_1 );
   input  [7:0]  Input_bus_1;
   input  [7:0]  Input_bus_2;
   output [15:0] Output_bus_1;
   assign Output_bus_1 = Input_bus_1 * Input_bus_2;
endmodule
