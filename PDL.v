`timescale 1ns / 1ps

module PDL(en,clr,clk,del,z);
input [2:0] del;
input en,clk,clr;
output z;
wire z1,z2,z3,z4;

and(z1,en,z4);

LUT4 #(
   .INIT(16'b0101010101010101)  // Specify LUT Contents
) LUT4_1 (
   .O(z2),   // LUT general output
   .I0(z1), // LUT input
   .I1(del[0]), // LUT input
   .I2(del[1]), // LUT input
   .I3(del[2])  // LUT input
);

LUT4 #(
   .INIT(16'b0101010101010101)  // Specify LUT Contents
) LUT4_2 (
   .O(z3),   // LUT general output
   .I0(z2), // LUT input
   .I1(del[0]), // LUT input
   .I2(del[1]), // LUT input
   .I3(del[2])  // LUT input
);

LUT4 #(
   .INIT(16'b0101010101010101)  // Specify LUT Contents
) LUT4_3 (
   .O(z4),   // LUT general output
   .I0(z3), // LUT input
   .I1(del[0]), // LUT input
   .I2(del[1]), // LUT input
   .I3(del[2])  // LUT input
);

DFF dff_1 (.d_in(z4),.ce(en),.clk(clk),.clr(clr),.dout(z));

endmodule