`timescale 1ns / 1ps

module delay_test;

	// Inputs
	reg clk;
	reg clr;

	// Outputs
	wire [2:0] cnt;

	// Instantiate the Unit Under Test (UUT)
	Delay_Control uut (
		.cnt(cnt), 
		.clk(clk), 
		.clr(clr)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clr = 1;
      #45
		clr =0;
	end
	
	always 
		#10 clk = ~clk;
      
endmodule

