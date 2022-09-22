`timescale 1ns / 1ps

module DFF_Test;

	// Inputs
	reg d_in;
	reg ce;
	reg clk;
	reg clr;

	// Outputs
	wire dout;

	// Instantiate the Unit Under Test (UUT)
	DFF uut (
		.d_in(d_in), 
		.ce(ce), 
		.clk(clk), 
		.clr(clr), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		d_in = 0;
		ce = 0;
		clk = 0;
		clr = 1;

		// Wait 100 ns for global reset to finish
		#2;
		d_in =1;
		ce=1;
		clr=0;
		#10
		d_in =0;

	end
	
	always #10 clk =~clk;
      
endmodule

