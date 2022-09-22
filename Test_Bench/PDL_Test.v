`timescale 1ns / 1ps

module PDL_Test;

	// Inputs
	reg en;
	reg clr;
	reg clk;
	reg [2:0] del;

	// Outputs
	wire z;

	// Instantiate the Unit Under Test (UUT)
	PDL uut ( 
		.en(en), 
		.clr(clr), 
		.clk(clk), 
		.del(del), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		del = 3'b010;
		clk = 0;
		clr = 0;
		en = 0;

      
        #100
        en = 1;
		  del = 3'b001;
		  
		  #100
        en = 1;
		  del = 3'b100;
		
		// Wait 100 ns for global reset to finish
        
	end
	
	always
	#100 clk = ~clk;
	
      
endmodule