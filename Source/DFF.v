`timescale 1ns / 1ps

module DFF(d_in,ce,clk,clr,dout);

input d_in;
input ce;
input clk;
input clr;
output dout;
reg d_reg;

always @ (posedge clk or posedge clr)
begin

if(clr)
 d_reg <= 0;

else if(ce)
 d_reg <= d_in;
 
end

assign dout = d_reg;

endmodule
