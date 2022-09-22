`timescale 1ns / 1ps

module Delay_Control
#(parameter count_init = 3'b100)
(cnt,clk,clr);
input clk,clr;
output [2:0]cnt;

reg [2:0]cnt;
wire [2:0]next_cnt;

assign next_cnt = cnt + 1'b1;  //Just increment by 1

always @ (posedge clk or posedge clr)   
begin
 if(clr)
 begin
 cnt <= count_init;
 end
 else
 begin
 cnt <= next_cnt;
 end
end

endmodule
