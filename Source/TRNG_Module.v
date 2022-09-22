`timescale 1ns / 1ps

module TRNG_Module(en,clk,clr,rand_num);

input en,clk,clr;
wire [31:0] z;
wire [2:0] del_z [7:0];
wire xor_value;
output rand_num;

PDL pdl_0 (.en(en),.clr(clr),.clk(clk),.del(del_z[0]),.z(z[0]));
PDL pdl_1 (.en(en),.clr(clr),.clk(clk),.del(del_z[1]),.z(z[1]));
PDL pdl_2 (.en(en),.clr(clr),.clk(clk),.del(del_z[2]),.z(z[2]));
PDL pdl_3 (.en(en),.clr(clr),.clk(clk),.del(del_z[3]),.z(z[3]));
PDL pdl_4 (.en(en),.clr(clr),.clk(clk),.del(del_z[4]),.z(z[4]));
PDL pdl_5 (.en(en),.clr(clr),.clk(clk),.del(del_z[5]),.z(z[5]));
PDL pdl_6 (.en(en),.clr(clr),.clk(clk),.del(del_z[6]),.z(z[6]));
PDL pdl_7 (.en(en),.clr(clr),.clk(clk),.del(del_z[7]),.z(z[7]));
PDL pdl_8 (.en(en),.clr(clr),.clk(clk),.del(del_z[0]),.z(z[8]));
PDL pdl_9 (.en(en),.clr(clr),.clk(clk),.del(del_z[1]),.z(z[9]));
PDL pdl_10 (.en(en),.clr(clr),.clk(clk),.del(del_z[2]),.z(z[10]));
PDL pdl_11 (.en(en),.clr(clr),.clk(clk),.del(del_z[3]),.z(z[11]));
PDL pdl_12 (.en(en),.clr(clr),.clk(clk),.del(del_z[4]),.z(z[12]));
PDL pdl_13 (.en(en),.clr(clr),.clk(clk),.del(del_z[5]),.z(z[13]));
PDL pdl_14 (.en(en),.clr(clr),.clk(clk),.del(del_z[6]),.z(z[14]));
PDL pdl_15 (.en(en),.clr(clr),.clk(clk),.del(del_z[7]),.z(z[15]));
PDL pdl_16 (.en(en),.clr(clr),.clk(clk),.del(del_z[0]),.z(z[16]));
PDL pdl_17 (.en(en),.clr(clr),.clk(clk),.del(del_z[1]),.z(z[17]));
PDL pdl_18 (.en(en),.clr(clr),.clk(clk),.del(del_z[2]),.z(z[18]));
PDL pdl_19 (.en(en),.clr(clr),.clk(clk),.del(del_z[3]),.z(z[19]));
PDL pdl_20 (.en(en),.clr(clr),.clk(clk),.del(del_z[4]),.z(z[20]));
PDL pdl_21 (.en(en),.clr(clr),.clk(clk),.del(del_z[5]),.z(z[21]));
PDL pdl_22 (.en(en),.clr(clr),.clk(clk),.del(del_z[6]),.z(z[22]));
PDL pdl_23 (.en(en),.clr(clr),.clk(clk),.del(del_z[7]),.z(z[23]));
PDL pdl_24 (.en(en),.clr(clr),.clk(clk),.del(del_z[0]),.z(z[24]));
PDL pdl_25 (.en(en),.clr(clr),.clk(clk),.del(del_z[1]),.z(z[25]));
PDL pdl_26 (.en(en),.clr(clr),.clk(clk),.del(del_z[2]),.z(z[26]));
PDL pdl_27 (.en(en),.clr(clr),.clk(clk),.del(del_z[3]),.z(z[27]));
PDL pdl_28 (.en(en),.clr(clr),.clk(clk),.del(del_z[4]),.z(z[28]));
PDL pdl_29 (.en(en),.clr(clr),.clk(clk),.del(del_z[5]),.z(z[29]));
PDL pdl_30 (.en(en),.clr(clr),.clk(clk),.del(del_z[6]),.z(z[30]));
PDL pdl_31 (.en(en),.clr(clr),.clk(clk),.del(del_z[7]),.z(z[31]));

Delay_Control #(.count_init(3'b000)) D_0 (.cnt(del_z[0]),.clk(clk),.clr(clr));
Delay_Control #(.count_init(3'b001)) D_1 (.cnt(del_z[1]),.clk(clk),.clr(clr));
Delay_Control #(.count_init(3'b010)) D_2 (.cnt(del_z[2]),.clk(clk),.clr(clr));
Delay_Control #(.count_init(3'b011)) D_3 (.cnt(del_z[3]),.clk(clk),.clr(clr));
Delay_Control #(.count_init(3'b100)) D_4 (.cnt(del_z[4]),.clk(clk),.clr(clr));
Delay_Control #(.count_init(3'b101)) D_5 (.cnt(del_z[5]),.clk(clk),.clr(clr));
Delay_Control #(.count_init(3'b110)) D_6 (.cnt(del_z[6]),.clk(clk),.clr(clr));
Delay_Control #(.count_init(3'b111)) D_7 (.cnt(del_z[7]),.clk(clk),.clr(clr));

assign xor_value = ^z;

DFF dff_z (.d_in(xor_value),.ce(en),.clk(clk),.clr(clr),.dout(rand_num));

endmodule
