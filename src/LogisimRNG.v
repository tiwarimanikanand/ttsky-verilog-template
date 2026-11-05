/* Area-reduced replacement for Logisim's 256-bit RNG: an 8-bit maximal-length Galois LFSR.
   Same ports/parameters as the original so MATH.v is unchanged. Sequence differs from the original. */
module LogisimRNG( clear,
                   clock,
                   enable,
                   q,
                   tick );
   parameter [63:0] initialState0 = 1;
   parameter [63:0] initialState1 = 1;
   parameter [63:0] initialState2 = 1;
   parameter [63:0] initialState3 = 1;
   parameter nrOfBits = 1;
   input clear;
   input clock;
   input enable;
   input tick;
   output [nrOfBits-1:0] q;
   reg [7:0] s_lfsr;
   wire [7:0] s_seed = (initialState0[7:0] == 8'd0) ? 8'h01 : initialState0[7:0];
   assign q = s_lfsr[nrOfBits-1:0];
   always @(posedge clock or posedge clear)
   begin
      if (clear) s_lfsr <= s_seed;
      else if (enable & tick) s_lfsr <= {s_lfsr[6:0], 1'b0} ^ (s_lfsr[7] ? 8'h1D : 8'h00);
   end
endmodule
