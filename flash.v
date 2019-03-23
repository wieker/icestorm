// -*- verilog -*-
// Flash the LEDs in sequence on the Lattice iCE40-HX8K.

module flash (input in1, input in2, input in3, input in4, output led1, output led3, output led2);

wire clk;

SB_HFOSC inthosc (
  .CLKHFPU(1'b1),
  .CLKHFEN(1'b1),
  .CLKHF(clk)
);

   assign led1 = in1;
   assign led2 = in2;
   assign led3 = in3;
   
   
   reg [23:0] ctr;

	always@(posedge clk)
	begin
	  ctr <= ctr + 1;
	end
	
	//assign led2 = ctr[23];
   
endmodule // flash
