// -*- verilog -*-
// Flash the LEDs in sequence on the Lattice iCE40-HX8K.

module flash (input in, output led, output led2);

wire clk;

SB_HFOSC inthosc (
  .CLKHFPU(1'b1),
  .CLKHFEN(1'b1),
  .CLKHF(clk)
);

   assign led = in;
   
   reg [23:0] ctr;

	always@(posedge clk)
	begin
	  ctr <= ctr + 1;
	end
	
	assign led2 = ctr[23] != 0;
   
endmodule // flash
