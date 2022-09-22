`timescale 1ns / 1ps

module TRNG_Test;

	// Inputs
	reg en;
	reg clk;
	reg clr;

	// Outputs
	wire rand_num;

	// Instantiate the Unit Under Test (UUT)
	TRNG_Module uut (
		.en(en), 
		.clk(clk), 
		.clr(clr), 
		.rand_num(rand_num)
	);

		initial begin
		// Initialize Inputs
		clk = 0;
		clr = 1;
		en = 0;

		
		// Wait 100 ns for global reset to finish
		#5 en=1;
		   clr=0;
        
		end
	
		always 
		#10 clk = ~clk;
      
endmodule

