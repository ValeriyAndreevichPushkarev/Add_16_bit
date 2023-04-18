module add_test_6
(
	input wire clk,
	input wire[15:0] r1,
	input wire[15:0] r2,
	output reg[15:0] res_r
);
 
	wire[63:0] res;
	wire[63:0] r1_p, r2_p;
	wire[15:0] res_b;
	
	add_16 a1 (r1_p,r2_p, res);
	
	converter_16 c2 (res, r1,r2,r1_p,r2_p,res_b);


	// arithmetic_16 a32 (1'b1, 1'b0, r1_p, r2_p, r_res_p);
	
	always@(posedge clk)
		res_r <=res_b;
		
endmodule

module add_16 
(
	input wire[63:0] r1,
	input wire[63:0] r2,
	output wire[63:0] res_r
	);
	
	wire [15:0] a1_r1= r1[15:0];
	wire [15:0] a1_r2= r2[15:0];
	
	wire [31:0] a1_res;
	wire a1_c = a1_res[17];
	
arithmetics a1 (1'b1, 1'b0, 1'b0, a1_r1, a1_r2,a1_res);

	wire [15:0] a2_r1= r1[31:16];
	wire [15:0] a2_r2= r2[31:16];
	
	wire [31:0] a2_res;
	wire a2_c = a2_res[17];
	
arithmetics a2 (~a1_c, 1'b0, a1_c, a2_r1, a2_r2,a2_res);

	wire [15:0] a3_r1= r1[47:32];
	wire [15:0] a3_r2= r2[47:32];
	
	wire [31:0] a3_res;
	wire a3_c = a3_res[17];
	
arithmetics a3 (~a2_c, 1'b0, a2_c, a3_r1, a3_r2,a3_res);

	wire [15:0] a4_r1= r1[63:48];
	wire [15:0] a4_r2= r2[63:48];
	
	wire [31:0] a4_res;
	wire a4_c = a4_res[17];
	
arithmetics a4 (~a3_c, 1'b0, a3_c, a4_r1, a4_r2,a4_res);

assign res_r = {a4_res[15:0],a3_res[15:0],a2_res[15:0],a1_res[15:0]};

endmodule

module arithmetics
    (
        input wire add,

    input wire mul,

    input wire add_c,


        input wire[15:0] r1,
        input wire[15:0] r2,
        output wire[31:0] output_reg
    );
    wire input_0_0 = r1[0]&r2[0];

wire input_0_1 = r1[0]&r2[1];

wire input_0_2 = r1[0]&r2[2];

wire input_0_3 = r1[0]&r2[3];

wire input_0_4 = r1[0]&r2[4];

wire input_0_5 = r1[0]&r2[5];

wire input_0_6 = r1[0]&r2[6];

wire input_0_7 = r1[0]&r2[7];

wire input_0_8 = r1[0]&r2[8];

wire input_0_9 = r1[0]&r2[9];

wire input_0_10 = r1[0]&r2[10];

wire input_0_11 = r1[0]&r2[11];

wire input_0_12 = r1[0]&r2[12];

wire input_0_13 = r1[0]&r2[13];

wire input_0_14 = r1[0]&r2[14];

wire input_0_15 = r1[0]&r2[15];

wire input_1_0 = r1[1]&r2[0];

wire input_1_1 = r1[1]&r2[1];

wire input_1_2 = r1[1]&r2[2];

wire input_1_3 = r1[1]&r2[3];

wire input_1_4 = r1[1]&r2[4];

wire input_1_5 = r1[1]&r2[5];

wire input_1_6 = r1[1]&r2[6];

wire input_1_7 = r1[1]&r2[7];

wire input_1_8 = r1[1]&r2[8];

wire input_1_9 = r1[1]&r2[9];

wire input_1_10 = r1[1]&r2[10];

wire input_1_11 = r1[1]&r2[11];

wire input_1_12 = r1[1]&r2[12];

wire input_1_13 = r1[1]&r2[13];

wire input_1_14 = r1[1]&r2[14];

wire input_1_15 = r1[1]&r2[15];

wire input_2_0 = r1[2]&r2[0];

wire input_2_1 = r1[2]&r2[1];

wire input_2_2 = r1[2]&r2[2];

wire input_2_3 = r1[2]&r2[3];

wire input_2_4 = r1[2]&r2[4];

wire input_2_5 = r1[2]&r2[5];

wire input_2_6 = r1[2]&r2[6];

wire input_2_7 = r1[2]&r2[7];

wire input_2_8 = r1[2]&r2[8];

wire input_2_9 = r1[2]&r2[9];

wire input_2_10 = r1[2]&r2[10];

wire input_2_11 = r1[2]&r2[11];

wire input_2_12 = r1[2]&r2[12];

wire input_2_13 = r1[2]&r2[13];

wire input_2_14 = r1[2]&r2[14];

wire input_2_15 = r1[2]&r2[15];

wire input_3_0 = r1[3]&r2[0];

wire input_3_1 = r1[3]&r2[1];

wire input_3_2 = r1[3]&r2[2];

wire input_3_3 = r1[3]&r2[3];

wire input_3_4 = r1[3]&r2[4];

wire input_3_5 = r1[3]&r2[5];

wire input_3_6 = r1[3]&r2[6];

wire input_3_7 = r1[3]&r2[7];

wire input_3_8 = r1[3]&r2[8];

wire input_3_9 = r1[3]&r2[9];

wire input_3_10 = r1[3]&r2[10];

wire input_3_11 = r1[3]&r2[11];

wire input_3_12 = r1[3]&r2[12];

wire input_3_13 = r1[3]&r2[13];

wire input_3_14 = r1[3]&r2[14];

wire input_3_15 = r1[3]&r2[15];

wire input_4_0 = r1[4]&r2[0];

wire input_4_1 = r1[4]&r2[1];

wire input_4_2 = r1[4]&r2[2];

wire input_4_3 = r1[4]&r2[3];

wire input_4_4 = r1[4]&r2[4];

wire input_4_5 = r1[4]&r2[5];

wire input_4_6 = r1[4]&r2[6];

wire input_4_7 = r1[4]&r2[7];

wire input_4_8 = r1[4]&r2[8];

wire input_4_9 = r1[4]&r2[9];

wire input_4_10 = r1[4]&r2[10];

wire input_4_11 = r1[4]&r2[11];

wire input_4_12 = r1[4]&r2[12];

wire input_4_13 = r1[4]&r2[13];

wire input_4_14 = r1[4]&r2[14];

wire input_4_15 = r1[4]&r2[15];

wire input_5_0 = r1[5]&r2[0];

wire input_5_1 = r1[5]&r2[1];

wire input_5_2 = r1[5]&r2[2];

wire input_5_3 = r1[5]&r2[3];

wire input_5_4 = r1[5]&r2[4];

wire input_5_5 = r1[5]&r2[5];

wire input_5_6 = r1[5]&r2[6];

wire input_5_7 = r1[5]&r2[7];

wire input_5_8 = r1[5]&r2[8];

wire input_5_9 = r1[5]&r2[9];

wire input_5_10 = r1[5]&r2[10];

wire input_5_11 = r1[5]&r2[11];

wire input_5_12 = r1[5]&r2[12];

wire input_5_13 = r1[5]&r2[13];

wire input_5_14 = r1[5]&r2[14];

wire input_5_15 = r1[5]&r2[15];

wire input_6_0 = r1[6]&r2[0];

wire input_6_1 = r1[6]&r2[1];

wire input_6_2 = r1[6]&r2[2];

wire input_6_3 = r1[6]&r2[3];

wire input_6_4 = r1[6]&r2[4];

wire input_6_5 = r1[6]&r2[5];

wire input_6_6 = r1[6]&r2[6];

wire input_6_7 = r1[6]&r2[7];

wire input_6_8 = r1[6]&r2[8];

wire input_6_9 = r1[6]&r2[9];

wire input_6_10 = r1[6]&r2[10];

wire input_6_11 = r1[6]&r2[11];

wire input_6_12 = r1[6]&r2[12];

wire input_6_13 = r1[6]&r2[13];

wire input_6_14 = r1[6]&r2[14];

wire input_6_15 = r1[6]&r2[15];

wire input_7_0 = r1[7]&r2[0];

wire input_7_1 = r1[7]&r2[1];

wire input_7_2 = r1[7]&r2[2];

wire input_7_3 = r1[7]&r2[3];

wire input_7_4 = r1[7]&r2[4];

wire input_7_5 = r1[7]&r2[5];

wire input_7_6 = r1[7]&r2[6];

wire input_7_7 = r1[7]&r2[7];

wire input_7_8 = r1[7]&r2[8];

wire input_7_9 = r1[7]&r2[9];

wire input_7_10 = r1[7]&r2[10];

wire input_7_11 = r1[7]&r2[11];

wire input_7_12 = r1[7]&r2[12];

wire input_7_13 = r1[7]&r2[13];

wire input_7_14 = r1[7]&r2[14];

wire input_7_15 = r1[7]&r2[15];

wire input_8_0 = r1[8]&r2[0];

wire input_8_1 = r1[8]&r2[1];

wire input_8_2 = r1[8]&r2[2];

wire input_8_3 = r1[8]&r2[3];

wire input_8_4 = r1[8]&r2[4];

wire input_8_5 = r1[8]&r2[5];

wire input_8_6 = r1[8]&r2[6];

wire input_8_7 = r1[8]&r2[7];

wire input_8_8 = r1[8]&r2[8];

wire input_8_9 = r1[8]&r2[9];

wire input_8_10 = r1[8]&r2[10];

wire input_8_11 = r1[8]&r2[11];

wire input_8_12 = r1[8]&r2[12];

wire input_8_13 = r1[8]&r2[13];

wire input_8_14 = r1[8]&r2[14];

wire input_8_15 = r1[8]&r2[15];

wire input_9_0 = r1[9]&r2[0];

wire input_9_1 = r1[9]&r2[1];

wire input_9_2 = r1[9]&r2[2];

wire input_9_3 = r1[9]&r2[3];

wire input_9_4 = r1[9]&r2[4];

wire input_9_5 = r1[9]&r2[5];

wire input_9_6 = r1[9]&r2[6];

wire input_9_7 = r1[9]&r2[7];

wire input_9_8 = r1[9]&r2[8];

wire input_9_9 = r1[9]&r2[9];

wire input_9_10 = r1[9]&r2[10];

wire input_9_11 = r1[9]&r2[11];

wire input_9_12 = r1[9]&r2[12];

wire input_9_13 = r1[9]&r2[13];

wire input_9_14 = r1[9]&r2[14];

wire input_9_15 = r1[9]&r2[15];

wire input_10_0 = r1[10]&r2[0];

wire input_10_1 = r1[10]&r2[1];

wire input_10_2 = r1[10]&r2[2];

wire input_10_3 = r1[10]&r2[3];

wire input_10_4 = r1[10]&r2[4];

wire input_10_5 = r1[10]&r2[5];

wire input_10_6 = r1[10]&r2[6];

wire input_10_7 = r1[10]&r2[7];

wire input_10_8 = r1[10]&r2[8];

wire input_10_9 = r1[10]&r2[9];

wire input_10_10 = r1[10]&r2[10];

wire input_10_11 = r1[10]&r2[11];

wire input_10_12 = r1[10]&r2[12];

wire input_10_13 = r1[10]&r2[13];

wire input_10_14 = r1[10]&r2[14];

wire input_10_15 = r1[10]&r2[15];

wire input_11_0 = r1[11]&r2[0];

wire input_11_1 = r1[11]&r2[1];

wire input_11_2 = r1[11]&r2[2];

wire input_11_3 = r1[11]&r2[3];

wire input_11_4 = r1[11]&r2[4];

wire input_11_5 = r1[11]&r2[5];

wire input_11_6 = r1[11]&r2[6];

wire input_11_7 = r1[11]&r2[7];

wire input_11_8 = r1[11]&r2[8];

wire input_11_9 = r1[11]&r2[9];

wire input_11_10 = r1[11]&r2[10];

wire input_11_11 = r1[11]&r2[11];

wire input_11_12 = r1[11]&r2[12];

wire input_11_13 = r1[11]&r2[13];

wire input_11_14 = r1[11]&r2[14];

wire input_11_15 = r1[11]&r2[15];

wire input_12_0 = r1[12]&r2[0];

wire input_12_1 = r1[12]&r2[1];

wire input_12_2 = r1[12]&r2[2];

wire input_12_3 = r1[12]&r2[3];

wire input_12_4 = r1[12]&r2[4];

wire input_12_5 = r1[12]&r2[5];

wire input_12_6 = r1[12]&r2[6];

wire input_12_7 = r1[12]&r2[7];

wire input_12_8 = r1[12]&r2[8];

wire input_12_9 = r1[12]&r2[9];

wire input_12_10 = r1[12]&r2[10];

wire input_12_11 = r1[12]&r2[11];

wire input_12_12 = r1[12]&r2[12];

wire input_12_13 = r1[12]&r2[13];

wire input_12_14 = r1[12]&r2[14];

wire input_12_15 = r1[12]&r2[15];

wire input_13_0 = r1[13]&r2[0];

wire input_13_1 = r1[13]&r2[1];

wire input_13_2 = r1[13]&r2[2];

wire input_13_3 = r1[13]&r2[3];

wire input_13_4 = r1[13]&r2[4];

wire input_13_5 = r1[13]&r2[5];

wire input_13_6 = r1[13]&r2[6];

wire input_13_7 = r1[13]&r2[7];

wire input_13_8 = r1[13]&r2[8];

wire input_13_9 = r1[13]&r2[9];

wire input_13_10 = r1[13]&r2[10];

wire input_13_11 = r1[13]&r2[11];

wire input_13_12 = r1[13]&r2[12];

wire input_13_13 = r1[13]&r2[13];

wire input_13_14 = r1[13]&r2[14];

wire input_13_15 = r1[13]&r2[15];

wire input_14_0 = r1[14]&r2[0];

wire input_14_1 = r1[14]&r2[1];

wire input_14_2 = r1[14]&r2[2];

wire input_14_3 = r1[14]&r2[3];

wire input_14_4 = r1[14]&r2[4];

wire input_14_5 = r1[14]&r2[5];

wire input_14_6 = r1[14]&r2[6];

wire input_14_7 = r1[14]&r2[7];

wire input_14_8 = r1[14]&r2[8];

wire input_14_9 = r1[14]&r2[9];

wire input_14_10 = r1[14]&r2[10];

wire input_14_11 = r1[14]&r2[11];

wire input_14_12 = r1[14]&r2[12];

wire input_14_13 = r1[14]&r2[13];

wire input_14_14 = r1[14]&r2[14];

wire input_14_15 = r1[14]&r2[15];

wire input_15_0 = r1[15]&r2[0];

wire input_15_1 = r1[15]&r2[1];

wire input_15_2 = r1[15]&r2[2];

wire input_15_3 = r1[15]&r2[3];

wire input_15_4 = r1[15]&r2[4];

wire input_15_5 = r1[15]&r2[5];

wire input_15_6 = r1[15]&r2[6];

wire input_15_7 = r1[15]&r2[7];

wire input_15_8 = r1[15]&r2[8];

wire input_15_9 = r1[15]&r2[9];

wire input_15_10 = r1[15]&r2[10];

wire input_15_11 = r1[15]&r2[11];

wire input_15_12 = r1[15]&r2[12];

wire input_15_13 = r1[15]&r2[13];

wire input_15_14 = r1[15]&r2[14];

wire input_15_15 = r1[15]&r2[15];

wire command_add_0 =  0;

wire command_add_1 =  0;

wire command_add_2 =  0;

wire command_add_3 =  0;

wire command_add_4 =  0;

wire command_add_5 =  0;

wire command_add_6 =  0;

wire command_add_7 =  0;

wire command_add_8 =  0;

wire command_add_9 =  0;

wire command_add_10 =  0;

wire command_add_11 =  0;

wire command_add_12 =  0;

wire command_add_13 =  0;

wire command_add_14 = add&(input_1_15|input_2_14|input_2_15|input_3_13|input_3_14|input_3_15|input_4_12|input_4_13|input_4_14|input_4_15|input_5_11|input_5_12|input_5_13|input_5_14|input_5_15|input_6_10|input_6_11|input_6_12|input_6_13|input_6_14|input_6_15|input_7_9|input_7_10|input_7_11|input_7_12|input_7_13|input_7_14|input_7_15|input_8_8|input_8_9|input_8_10|input_8_11|input_8_12|input_8_13|input_8_14|input_8_15|input_9_7|input_9_8|input_9_9|input_9_10|input_9_11|input_9_12|input_9_13|input_9_14|input_9_15|input_10_6|input_10_7|input_10_8|input_10_9|input_10_10|input_10_11|input_10_12|input_10_13|input_10_14|input_10_15|input_11_5|input_11_6|input_11_7|input_11_8|input_11_9|input_11_10|input_11_11|input_11_12|input_11_13|input_11_14|input_11_15|input_12_4|input_12_5|input_12_6|input_12_7|input_12_8|input_12_9|input_12_10|input_12_11|input_12_12|input_12_13|input_12_14|input_12_15|input_13_3|input_13_4|input_13_5|input_13_6|input_13_7|input_13_8|input_13_9|input_13_10|input_13_11|input_13_12|input_13_13|input_13_14|input_13_15|input_14_2|input_14_3|input_14_4|input_14_5|input_14_6|input_14_7|input_14_8|input_14_9|input_14_10|input_14_11|input_14_12|input_14_13|input_14_14|input_14_15|input_15_1|input_15_2|input_15_3|input_15_4|input_15_5|input_15_6|input_15_7|input_15_8|input_15_9|input_15_10|input_15_11|input_15_12|input_15_13|input_15_14|input_15_15);

wire command_add_15 = add&(input_0_0|input_0_1|input_0_2|input_0_3|input_0_4|input_0_5|input_0_6|input_0_7|input_0_8|input_0_9|input_0_10|input_0_11|input_0_12|input_0_13|input_0_14|input_0_15|input_1_0|input_1_1|input_1_2|input_1_3|input_1_4|input_1_5|input_1_6|input_1_7|input_1_8|input_1_9|input_1_10|input_1_11|input_1_12|input_1_13|input_1_14|input_2_0|input_2_1|input_2_2|input_2_3|input_2_4|input_2_5|input_2_6|input_2_7|input_2_8|input_2_9|input_2_10|input_2_11|input_2_12|input_2_13|input_3_0|input_3_1|input_3_2|input_3_3|input_3_4|input_3_5|input_3_6|input_3_7|input_3_8|input_3_9|input_3_10|input_3_11|input_3_12|input_4_0|input_4_1|input_4_2|input_4_3|input_4_4|input_4_5|input_4_6|input_4_7|input_4_8|input_4_9|input_4_10|input_4_11|input_5_0|input_5_1|input_5_2|input_5_3|input_5_4|input_5_5|input_5_6|input_5_7|input_5_8|input_5_9|input_5_10|input_6_0|input_6_1|input_6_2|input_6_3|input_6_4|input_6_5|input_6_6|input_6_7|input_6_8|input_6_9|input_7_0|input_7_1|input_7_2|input_7_3|input_7_4|input_7_5|input_7_6|input_7_7|input_7_8|input_8_0|input_8_1|input_8_2|input_8_3|input_8_4|input_8_5|input_8_6|input_8_7|input_9_0|input_9_1|input_9_2|input_9_3|input_9_4|input_9_5|input_9_6|input_10_0|input_10_1|input_10_2|input_10_3|input_10_4|input_10_5|input_11_0|input_11_1|input_11_2|input_11_3|input_11_4|input_12_0|input_12_1|input_12_2|input_12_3|input_13_0|input_13_1|input_13_2|input_14_0|input_14_1|input_15_0);

wire command_add_16 = add&(input_0_15|input_1_14|input_2_13|input_3_12|input_4_11|input_5_10|input_6_9|input_7_8|input_8_7|input_9_6|input_10_5|input_11_4|input_12_3|input_13_2|input_14_1|input_15_0);

wire command_add_17 = add&(input_0_14|input_1_13|input_2_12|input_3_11|input_4_10|input_5_9|input_6_8|input_7_7|input_8_6|input_9_5|input_10_4|input_11_3|input_12_2|input_13_1|input_14_0|input_15_15);

wire command_add_18 = add&(input_0_13|input_1_12|input_2_11|input_3_10|input_4_9|input_5_8|input_6_7|input_7_6|input_8_5|input_9_4|input_10_3|input_11_2|input_12_1|input_13_0|input_14_15|input_15_14);

wire command_add_19 = add&(input_0_12|input_1_11|input_2_10|input_3_9|input_4_8|input_5_7|input_6_6|input_7_5|input_8_4|input_9_3|input_10_2|input_11_1|input_12_0|input_13_15|input_14_14|input_15_13);

wire command_add_20 = add&(input_0_11|input_1_10|input_2_9|input_3_8|input_4_7|input_5_6|input_6_5|input_7_4|input_8_3|input_9_2|input_10_1|input_11_0|input_12_15|input_13_14|input_14_13|input_15_12);

wire command_add_21 = add&(input_0_10|input_1_9|input_2_8|input_3_7|input_4_6|input_5_5|input_6_4|input_7_3|input_8_2|input_9_1|input_10_0|input_11_15|input_12_14|input_13_13|input_14_12|input_15_11);

wire command_add_22 = add&(input_0_9|input_1_8|input_2_7|input_3_6|input_4_5|input_5_4|input_6_3|input_7_2|input_8_1|input_9_0|input_10_15|input_11_14|input_12_13|input_13_12|input_14_11|input_15_10);

wire command_add_23 = add&(input_0_8|input_1_7|input_2_6|input_3_5|input_4_4|input_5_3|input_6_2|input_7_1|input_8_0|input_9_15|input_10_14|input_11_13|input_12_12|input_13_11|input_14_10|input_15_9);

wire command_add_24 = add&(input_0_7|input_1_6|input_2_5|input_3_4|input_4_3|input_5_2|input_6_1|input_7_0|input_8_15|input_9_14|input_10_13|input_11_12|input_12_11|input_13_10|input_14_9|input_15_8);

wire command_add_25 = add&(input_0_6|input_1_5|input_2_4|input_3_3|input_4_2|input_5_1|input_6_0|input_7_15|input_8_14|input_9_13|input_10_12|input_11_11|input_12_10|input_13_9|input_14_8|input_15_7);

wire command_add_26 = add&(input_0_5|input_1_4|input_2_3|input_3_2|input_4_1|input_5_0|input_6_15|input_7_14|input_8_13|input_9_12|input_10_11|input_11_10|input_12_9|input_13_8|input_14_7|input_15_6);

wire command_add_27 = add&(input_0_4|input_1_3|input_2_2|input_3_1|input_4_0|input_5_15|input_6_14|input_7_13|input_8_12|input_9_11|input_10_10|input_11_9|input_12_8|input_13_7|input_14_6|input_15_5);

wire command_add_28 = add&(input_0_3|input_1_2|input_2_1|input_3_0|input_4_15|input_5_14|input_6_13|input_7_12|input_8_11|input_9_10|input_10_9|input_11_8|input_12_7|input_13_6|input_14_5|input_15_4);

wire command_add_29 = add&(input_0_2|input_1_1|input_2_0|input_3_15|input_4_14|input_5_13|input_6_12|input_7_11|input_8_10|input_9_9|input_10_8|input_11_7|input_12_6|input_13_5|input_14_4|input_15_3);

wire command_add_30 = add&(input_0_1|input_1_0|input_2_15|input_3_14|input_4_13|input_5_12|input_6_11|input_7_10|input_8_9|input_9_8|input_10_7|input_11_6|input_12_5|input_13_4|input_14_3|input_15_2);

wire command_add_31 = add&(input_0_0|input_1_15|input_2_14|input_3_13|input_4_12|input_5_11|input_6_10|input_7_9|input_8_8|input_9_7|input_10_6|input_11_5|input_12_4|input_13_3|input_14_2|input_15_1);

wire command_mul_0 =  0;

wire command_mul_1 = mul&(input_15_15);

wire command_mul_2 = mul&(input_14_15|input_15_14);

wire command_mul_3 = mul&(input_13_15|input_14_14|input_15_13);

wire command_mul_4 = mul&(input_12_15|input_13_14|input_14_13|input_15_12);

wire command_mul_5 = mul&(input_11_15|input_12_14|input_13_13|input_14_12|input_15_11);

wire command_mul_6 = mul&(input_10_15|input_11_14|input_12_12|input_12_13|input_13_12|input_14_11|input_15_10);

wire command_mul_7 = mul&(input_9_15|input_10_13|input_10_14|input_11_12|input_11_13|input_12_11|input_13_10|input_13_11|input_14_10|input_15_9);

wire command_mul_8 = mul&(input_8_14|input_8_15|input_9_13|input_9_14|input_10_12|input_11_11|input_12_10|input_13_9|input_14_8|input_14_9|input_15_8);

wire command_mul_9 = mul&(input_7_14|input_7_15|input_8_12|input_8_13|input_9_11|input_9_12|input_10_10|input_10_11|input_11_9|input_11_10|input_12_8|input_12_9|input_13_8|input_14_7|input_15_7);

wire command_mul_10 = mul&(input_6_14|input_6_15|input_7_12|input_7_13|input_8_10|input_8_11|input_9_9|input_9_10|input_10_8|input_10_9|input_11_8|input_12_7|input_13_7|input_14_6|input_15_6);

wire command_mul_11 = mul&(input_5_13|input_5_14|input_5_15|input_6_11|input_6_12|input_6_13|input_7_10|input_7_11|input_8_8|input_8_9|input_9_8|input_10_7|input_11_6|input_11_7|input_12_6|input_13_5|input_13_6|input_14_5|input_15_5);

wire command_mul_12 = mul&(input_4_12|input_4_13|input_4_14|input_4_15|input_5_10|input_5_11|input_5_12|input_6_8|input_6_9|input_6_10|input_7_7|input_7_8|input_7_9|input_8_6|input_8_7|input_9_6|input_9_7|input_10_5|input_10_6|input_11_5|input_12_4|input_12_5|input_13_4|input_14_4|input_15_4);

wire command_mul_13 = mul&(input_3_11|input_3_12|input_3_13|input_3_14|input_3_15|input_4_8|input_4_9|input_4_10|input_4_11|input_5_7|input_5_8|input_5_9|input_6_6|input_6_7|input_7_5|input_7_6|input_8_4|input_8_5|input_9_4|input_9_5|input_10_4|input_11_3|input_11_4|input_12_3|input_13_3|input_14_3|input_15_3);

wire command_mul_14 = mul&(input_2_8|input_2_9|input_2_10|input_2_11|input_2_12|input_2_13|input_2_14|input_2_15|input_3_6|input_3_7|input_3_8|input_3_9|input_3_10|input_4_4|input_4_5|input_4_6|input_4_7|input_5_4|input_5_5|input_5_6|input_6_3|input_6_4|input_6_5|input_7_3|input_7_4|input_8_2|input_8_3|input_9_2|input_9_3|input_10_2|input_10_3|input_11_2|input_12_2|input_13_2|input_14_2|input_15_2);

wire command_mul_15 = mul&(input_0_0|input_0_1|input_0_2|input_0_3|input_0_4|input_0_5|input_0_6|input_0_7|input_0_8|input_0_9|input_0_10|input_0_11|input_0_12|input_0_13|input_0_14|input_0_15|input_1_0|input_1_1|input_1_2|input_1_3|input_1_4|input_1_5|input_1_6|input_1_7|input_1_8|input_1_9|input_1_10|input_1_11|input_1_12|input_1_13|input_1_14|input_1_15|input_2_0|input_2_1|input_2_2|input_2_3|input_2_4|input_2_5|input_2_6|input_2_7|input_3_0|input_3_1|input_3_2|input_3_3|input_3_4|input_3_5|input_4_0|input_4_1|input_4_2|input_4_3|input_5_0|input_5_1|input_5_2|input_5_3|input_6_0|input_6_1|input_6_2|input_7_0|input_7_1|input_7_2|input_8_0|input_8_1|input_9_0|input_9_1|input_10_0|input_10_1|input_11_0|input_11_1|input_12_0|input_12_1|input_13_0|input_13_1|input_14_0|input_14_1|input_15_0|input_15_1);

wire command_mul_16 = mul&(input_1_15|input_3_5|input_5_3|input_7_9|input_9_7|input_11_13|input_13_11|input_15_1);

wire command_mul_17 = mul&(input_1_14|input_2_7|input_2_15|input_3_10|input_5_6|input_6_5|input_6_13|input_7_2|input_9_14|input_10_3|input_10_11|input_11_10|input_13_6|input_14_1|input_14_9|input_15_2);

wire command_mul_18 = mul&(input_1_13|input_3_15|input_5_9|input_7_11|input_9_5|input_11_7|input_13_1|input_15_3);

wire command_mul_19 = mul&(input_1_12|input_2_6|input_2_14|input_3_4|input_4_3|input_4_7|input_4_11|input_4_15|input_5_12|input_6_2|input_6_10|input_7_4|input_9_12|input_10_6|input_10_14|input_11_4|input_12_1|input_12_5|input_12_9|input_12_13|input_13_12|input_14_2|input_14_10|input_15_4);

wire command_mul_20 = mul&(input_1_11|input_3_9|input_5_15|input_7_13|input_9_3|input_11_1|input_13_7|input_15_5);

wire command_mul_21 = mul&(input_1_10|input_2_5|input_2_13|input_3_14|input_5_2|input_6_7|input_6_15|input_7_6|input_9_10|input_10_1|input_10_9|input_11_14|input_13_2|input_14_3|input_14_11|input_15_6);

wire command_mul_22 = mul&(input_1_9|input_3_3|input_5_5|input_7_15|input_9_1|input_11_11|input_13_13|input_15_7);

wire command_mul_23 = mul&(input_1_8|input_2_4|input_2_12|input_3_8|input_4_2|input_4_6|input_4_10|input_4_14|input_5_8|input_6_4|input_6_12|input_7_8|input_8_1|input_8_3|input_8_5|input_8_7|input_8_9|input_8_11|input_8_13|input_8_15|input_9_8|input_10_4|input_10_12|input_11_8|input_12_2|input_12_6|input_12_10|input_12_14|input_13_8|input_14_4|input_14_12|input_15_8);

wire command_mul_24 = mul&(input_1_7|input_3_13|input_5_11|input_7_1|input_9_15|input_11_5|input_13_3|input_15_9);

wire command_mul_25 = mul&(input_1_6|input_2_3|input_2_11|input_3_2|input_5_14|input_6_1|input_6_9|input_7_10|input_9_6|input_10_7|input_10_15|input_11_2|input_13_14|input_14_5|input_14_13|input_15_10);

wire command_mul_26 = mul&(input_1_5|input_3_7|input_5_1|input_7_3|input_9_13|input_11_15|input_13_9|input_15_11);

wire command_mul_27 = mul&(input_1_4|input_2_2|input_2_10|input_3_12|input_4_1|input_4_5|input_4_9|input_4_13|input_5_4|input_6_6|input_6_14|input_7_12|input_9_4|input_10_2|input_10_10|input_11_12|input_12_3|input_12_7|input_12_11|input_12_15|input_13_4|input_14_6|input_14_14|input_15_12);

wire command_mul_28 = mul&(input_1_3|input_3_1|input_5_7|input_7_5|input_9_11|input_11_9|input_13_15|input_15_13);

wire command_mul_29 = mul&(input_1_2|input_2_1|input_2_9|input_3_6|input_5_10|input_6_3|input_6_11|input_7_14|input_9_2|input_10_5|input_10_13|input_11_6|input_13_10|input_14_7|input_14_15|input_15_14);

wire command_mul_30 = mul&(input_1_1|input_3_11|input_5_13|input_7_7|input_9_9|input_11_3|input_13_5|input_15_15);

wire command_mul_31 = mul&(input_0_0|input_0_1|input_0_2|input_0_3|input_0_4|input_0_5|input_0_6|input_0_7|input_0_8|input_0_9|input_0_10|input_0_11|input_0_12|input_0_13|input_0_14|input_0_15|input_1_0|input_2_0|input_2_8|input_3_0|input_4_0|input_4_4|input_4_8|input_4_12|input_5_0|input_6_0|input_6_8|input_7_0|input_8_0|input_8_2|input_8_4|input_8_6|input_8_8|input_8_10|input_8_12|input_8_14|input_9_0|input_10_0|input_10_8|input_11_0|input_12_0|input_12_4|input_12_8|input_12_12|input_13_0|input_14_0|input_14_8|input_15_0);

wire command_add_c_0 =  0;

wire command_add_c_1 =  0;

wire command_add_c_2 =  0;

wire command_add_c_3 =  0;

wire command_add_c_4 =  0;

wire command_add_c_5 =  0;

wire command_add_c_6 =  0;

wire command_add_c_7 =  0;

wire command_add_c_8 =  0;

wire command_add_c_9 =  0;

wire command_add_c_10 =  0;

wire command_add_c_11 =  0;

wire command_add_c_12 =  0;

wire command_add_c_13 =  0;

wire command_add_c_14 = add_c&(input_0_15|input_1_14|input_1_15|input_2_13|input_2_14|input_2_15|input_3_12|input_3_13|input_3_14|input_3_15|input_4_11|input_4_12|input_4_13|input_4_14|input_4_15|input_5_10|input_5_11|input_5_12|input_5_13|input_5_14|input_5_15|input_6_9|input_6_10|input_6_11|input_6_12|input_6_13|input_6_14|input_6_15|input_7_8|input_7_9|input_7_10|input_7_11|input_7_12|input_7_13|input_7_14|input_7_15|input_8_7|input_8_8|input_8_9|input_8_10|input_8_11|input_8_12|input_8_13|input_8_14|input_8_15|input_9_6|input_9_7|input_9_8|input_9_9|input_9_10|input_9_11|input_9_12|input_9_13|input_9_14|input_9_15|input_10_5|input_10_6|input_10_7|input_10_8|input_10_9|input_10_10|input_10_11|input_10_12|input_10_13|input_10_14|input_10_15|input_11_4|input_11_5|input_11_6|input_11_7|input_11_8|input_11_9|input_11_10|input_11_11|input_11_12|input_11_13|input_11_14|input_11_15|input_12_3|input_12_4|input_12_5|input_12_6|input_12_7|input_12_8|input_12_9|input_12_10|input_12_11|input_12_12|input_12_13|input_12_14|input_12_15|input_13_2|input_13_3|input_13_4|input_13_5|input_13_6|input_13_7|input_13_8|input_13_9|input_13_10|input_13_11|input_13_12|input_13_13|input_13_14|input_13_15|input_14_1|input_14_2|input_14_3|input_14_4|input_14_5|input_14_6|input_14_7|input_14_8|input_14_9|input_14_10|input_14_11|input_14_12|input_14_13|input_14_14|input_14_15|input_15_0|input_15_1|input_15_2|input_15_3|input_15_4|input_15_5|input_15_6|input_15_7|input_15_8|input_15_9|input_15_10|input_15_11|input_15_12|input_15_13|input_15_14|input_15_15);

wire command_add_c_15 = add_c&(input_0_0|input_0_1|input_0_2|input_0_3|input_0_4|input_0_5|input_0_6|input_0_7|input_0_8|input_0_9|input_0_10|input_0_11|input_0_12|input_0_13|input_0_14|input_1_0|input_1_1|input_1_2|input_1_3|input_1_4|input_1_5|input_1_6|input_1_7|input_1_8|input_1_9|input_1_10|input_1_11|input_1_12|input_1_13|input_2_0|input_2_1|input_2_2|input_2_3|input_2_4|input_2_5|input_2_6|input_2_7|input_2_8|input_2_9|input_2_10|input_2_11|input_2_12|input_3_0|input_3_1|input_3_2|input_3_3|input_3_4|input_3_5|input_3_6|input_3_7|input_3_8|input_3_9|input_3_10|input_3_11|input_4_0|input_4_1|input_4_2|input_4_3|input_4_4|input_4_5|input_4_6|input_4_7|input_4_8|input_4_9|input_4_10|input_5_0|input_5_1|input_5_2|input_5_3|input_5_4|input_5_5|input_5_6|input_5_7|input_5_8|input_5_9|input_6_0|input_6_1|input_6_2|input_6_3|input_6_4|input_6_5|input_6_6|input_6_7|input_6_8|input_7_0|input_7_1|input_7_2|input_7_3|input_7_4|input_7_5|input_7_6|input_7_7|input_8_0|input_8_1|input_8_2|input_8_3|input_8_4|input_8_5|input_8_6|input_9_0|input_9_1|input_9_2|input_9_3|input_9_4|input_9_5|input_10_0|input_10_1|input_10_2|input_10_3|input_10_4|input_11_0|input_11_1|input_11_2|input_11_3|input_12_0|input_12_1|input_12_2|input_13_0|input_13_1|input_14_0);

wire command_add_c_16 = add_c&(input_0_14|input_1_13|input_2_12|input_3_11|input_4_10|input_5_9|input_6_8|input_7_7|input_8_6|input_9_5|input_10_4|input_11_3|input_12_2|input_13_1|input_14_0|input_15_15);

wire command_add_c_17 = add_c&(input_0_13|input_1_12|input_2_11|input_3_10|input_4_9|input_5_8|input_6_7|input_7_6|input_8_5|input_9_4|input_10_3|input_11_2|input_12_1|input_13_0|input_14_15|input_15_14);

wire command_add_c_18 = add_c&(input_0_12|input_1_11|input_2_10|input_3_9|input_4_8|input_5_7|input_6_6|input_7_5|input_8_4|input_9_3|input_10_2|input_11_1|input_12_0|input_13_15|input_14_14|input_15_13);

wire command_add_c_19 = add_c&(input_0_11|input_1_10|input_2_9|input_3_8|input_4_7|input_5_6|input_6_5|input_7_4|input_8_3|input_9_2|input_10_1|input_11_0|input_12_15|input_13_14|input_14_13|input_15_12);

wire command_add_c_20 = add_c&(input_0_10|input_1_9|input_2_8|input_3_7|input_4_6|input_5_5|input_6_4|input_7_3|input_8_2|input_9_1|input_10_0|input_11_15|input_12_14|input_13_13|input_14_12|input_15_11);

wire command_add_c_21 = add_c&(input_0_9|input_1_8|input_2_7|input_3_6|input_4_5|input_5_4|input_6_3|input_7_2|input_8_1|input_9_0|input_10_15|input_11_14|input_12_13|input_13_12|input_14_11|input_15_10);

wire command_add_c_22 = add_c&(input_0_8|input_1_7|input_2_6|input_3_5|input_4_4|input_5_3|input_6_2|input_7_1|input_8_0|input_9_15|input_10_14|input_11_13|input_12_12|input_13_11|input_14_10|input_15_9);

wire command_add_c_23 = add_c&(input_0_7|input_1_6|input_2_5|input_3_4|input_4_3|input_5_2|input_6_1|input_7_0|input_8_15|input_9_14|input_10_13|input_11_12|input_12_11|input_13_10|input_14_9|input_15_8);

wire command_add_c_24 = add_c&(input_0_6|input_1_5|input_2_4|input_3_3|input_4_2|input_5_1|input_6_0|input_7_15|input_8_14|input_9_13|input_10_12|input_11_11|input_12_10|input_13_9|input_14_8|input_15_7);

wire command_add_c_25 = add_c&(input_0_5|input_1_4|input_2_3|input_3_2|input_4_1|input_5_0|input_6_15|input_7_14|input_8_13|input_9_12|input_10_11|input_11_10|input_12_9|input_13_8|input_14_7|input_15_6);

wire command_add_c_26 = add_c&(input_0_4|input_1_3|input_2_2|input_3_1|input_4_0|input_5_15|input_6_14|input_7_13|input_8_12|input_9_11|input_10_10|input_11_9|input_12_8|input_13_7|input_14_6|input_15_5);

wire command_add_c_27 = add_c&(input_0_3|input_1_2|input_2_1|input_3_0|input_4_15|input_5_14|input_6_13|input_7_12|input_8_11|input_9_10|input_10_9|input_11_8|input_12_7|input_13_6|input_14_5|input_15_4);

wire command_add_c_28 = add_c&(input_0_2|input_1_1|input_2_0|input_3_15|input_4_14|input_5_13|input_6_12|input_7_11|input_8_10|input_9_9|input_10_8|input_11_7|input_12_6|input_13_5|input_14_4|input_15_3);

wire command_add_c_29 = add_c&(input_0_1|input_1_0|input_2_15|input_3_14|input_4_13|input_5_12|input_6_11|input_7_10|input_8_9|input_9_8|input_10_7|input_11_6|input_12_5|input_13_4|input_14_3|input_15_2);

wire command_add_c_30 = add_c&(input_0_0|input_1_15|input_2_14|input_3_13|input_4_12|input_5_11|input_6_10|input_7_9|input_8_8|input_9_7|input_10_6|input_11_5|input_12_4|input_13_3|input_14_2|input_15_1);

wire command_add_c_31 = add_c&(input_0_15|input_1_14|input_2_13|input_3_12|input_4_11|input_5_10|input_6_9|input_7_8|input_8_7|input_9_6|input_10_5|input_11_4|input_12_3|input_13_2|input_14_1|input_15_0);

assign output_reg = {command_add_0|command_mul_0|command_add_c_0,

command_add_1|command_mul_1|command_add_c_1,

command_add_2|command_mul_2|command_add_c_2,

command_add_3|command_mul_3|command_add_c_3,

command_add_4|command_mul_4|command_add_c_4,

command_add_5|command_mul_5|command_add_c_5,

command_add_6|command_mul_6|command_add_c_6,

command_add_7|command_mul_7|command_add_c_7,

command_add_8|command_mul_8|command_add_c_8,

command_add_9|command_mul_9|command_add_c_9,

command_add_10|command_mul_10|command_add_c_10,

command_add_11|command_mul_11|command_add_c_11,

command_add_12|command_mul_12|command_add_c_12,

command_add_13|command_mul_13|command_add_c_13,

command_add_14|command_mul_14|command_add_c_14,

command_add_15|command_mul_15|command_add_c_15,

command_add_16|command_mul_16|command_add_c_16,

command_add_17|command_mul_17|command_add_c_17,

command_add_18|command_mul_18|command_add_c_18,

command_add_19|command_mul_19|command_add_c_19,

command_add_20|command_mul_20|command_add_c_20,

command_add_21|command_mul_21|command_add_c_21,

command_add_22|command_mul_22|command_add_c_22,

command_add_23|command_mul_23|command_add_c_23,

command_add_24|command_mul_24|command_add_c_24,

command_add_25|command_mul_25|command_add_c_25,

command_add_26|command_mul_26|command_add_c_26,

command_add_27|command_mul_27|command_add_c_27,

command_add_28|command_mul_28|command_add_c_28,

command_add_29|command_mul_29|command_add_c_29,

command_add_30|command_mul_30|command_add_c_30,

command_add_31|command_mul_31|command_add_c_31};

endmodule



module converter_16
(
    
    input wire[63:0] r_res,
    input wire[15:0] r1_binary,
    input wire[15:0] r2_binary,
    output wire[63:0] r1,
    output wire[63:0] r2,
    output wire[15:0] r_res_binary
);

    assign r1[0] = (r1_binary[3:0]==4'b0000) ?1'b1:1'b0;
    assign r1[1] = (r1_binary[3:0]==4'b0001) ?1'b1:1'b0;
    assign r1[2] = (r1_binary[3:0]==4'b0010) ?1'b1:1'b0;
    assign r1[3] = (r1_binary[3:0]==4'b0011) ?1'b1:1'b0;
    assign r1[4] = (r1_binary[3:0]==4'b0100) ?1'b1:1'b0;
    assign r1[5] = (r1_binary[3:0]==4'b0101) ?1'b1:1'b0;
    assign r1[6] = (r1_binary[3:0]==4'b0110) ?1'b1:1'b0;
    assign r1[7] = (r1_binary[3:0]==4'b0111) ?1'b1:1'b0;
    assign r1[8] = (r1_binary[3:0]==4'b1000) ?1'b1:1'b0;
    assign r1[9] = (r1_binary[3:0]==4'b1001) ?1'b1:1'b0;
    assign r1[10] = (r1_binary[3:0]==4'b1010) ?1'b1:1'b0;
    assign r1[11] = (r1_binary[3:0]==4'b1011) ?1'b1:1'b0;
    assign r1[12] = (r1_binary[3:0]==4'b1100) ?1'b1:1'b0;
    assign r1[13] = (r1_binary[3:0]==4'b1101) ?1'b1:1'b0;
    assign r1[14] = (r1_binary[3:0]==4'b1110) ?1'b1:1'b0;
    assign r1[15] = (r1_binary[3:0]==4'b1111) ?1'b1:1'b0;
    assign r1[16] = (r1_binary[7:4]==4'b0000) ?1'b1:1'b0;
    assign r1[17] = (r1_binary[7:4]==4'b0001) ?1'b1:1'b0;
    assign r1[18] = (r1_binary[7:4]==4'b0010) ?1'b1:1'b0;
    assign r1[19] = (r1_binary[7:4]==4'b0011) ?1'b1:1'b0;
    assign r1[20] = (r1_binary[7:4]==4'b0100) ?1'b1:1'b0;
    assign r1[21] = (r1_binary[7:4]==4'b0101) ?1'b1:1'b0;
    assign r1[22] = (r1_binary[7:4]==4'b0110) ?1'b1:1'b0;
    assign r1[23] = (r1_binary[7:4]==4'b0111) ?1'b1:1'b0;
    assign r1[24] = (r1_binary[7:4]==4'b1000) ?1'b1:1'b0;
    assign r1[25] = (r1_binary[7:4]==4'b1001) ?1'b1:1'b0;
    assign r1[26] = (r1_binary[7:4]==4'b1010) ?1'b1:1'b0;
    assign r1[27] = (r1_binary[7:4]==4'b1011) ?1'b1:1'b0;
    assign r1[28] = (r1_binary[7:4]==4'b1100) ?1'b1:1'b0;
    assign r1[29] = (r1_binary[7:4]==4'b1101) ?1'b1:1'b0;
    assign r1[30] = (r1_binary[7:4]==4'b1110) ?1'b1:1'b0;
    assign r1[31] = (r1_binary[7:4]==4'b1111) ?1'b1:1'b0;
    assign r1[32] = (r1_binary[11:8]==4'b0000) ?1'b1:1'b0;
    assign r1[33] = (r1_binary[11:8]==4'b0001) ?1'b1:1'b0;
    assign r1[34] = (r1_binary[11:8]==4'b0010) ?1'b1:1'b0;
    assign r1[35] = (r1_binary[11:8]==4'b0011) ?1'b1:1'b0;
    assign r1[36] = (r1_binary[11:8]==4'b0100) ?1'b1:1'b0;
    assign r1[37] = (r1_binary[11:8]==4'b0101) ?1'b1:1'b0;
    assign r1[38] = (r1_binary[11:8]==4'b0110) ?1'b1:1'b0;
    assign r1[39] = (r1_binary[11:8]==4'b0111) ?1'b1:1'b0;
    assign r1[40] = (r1_binary[11:8]==4'b1000) ?1'b1:1'b0;
    assign r1[41] = (r1_binary[11:8]==4'b1001) ?1'b1:1'b0;
    assign r1[42] = (r1_binary[11:8]==4'b1010) ?1'b1:1'b0;
    assign r1[43] = (r1_binary[11:8]==4'b1011) ?1'b1:1'b0;
    assign r1[44] = (r1_binary[11:8]==4'b1100) ?1'b1:1'b0;
    assign r1[45] = (r1_binary[11:8]==4'b1101) ?1'b1:1'b0;
    assign r1[46] = (r1_binary[11:8]==4'b1110) ?1'b1:1'b0;
    assign r1[47] = (r1_binary[11:8]==4'b1111) ?1'b1:1'b0;
    assign r1[48] = (r1_binary[15:12]==4'b0000) ?1'b1:1'b0;
    assign r1[49] = (r1_binary[15:12]==4'b0001) ?1'b1:1'b0;
    assign r1[50] = (r1_binary[15:12]==4'b0010) ?1'b1:1'b0;
    assign r1[51] = (r1_binary[15:12]==4'b0011) ?1'b1:1'b0;
    assign r1[52] = (r1_binary[15:12]==4'b0100) ?1'b1:1'b0;
    assign r1[53] = (r1_binary[15:12]==4'b0101) ?1'b1:1'b0;
    assign r1[54] = (r1_binary[15:12]==4'b0110) ?1'b1:1'b0;
    assign r1[55] = (r1_binary[15:12]==4'b0111) ?1'b1:1'b0;
    assign r1[56] = (r1_binary[15:12]==4'b1000) ?1'b1:1'b0;
    assign r1[57] = (r1_binary[15:12]==4'b1001) ?1'b1:1'b0;
    assign r1[58] = (r1_binary[15:12]==4'b1010) ?1'b1:1'b0;
    assign r1[59] = (r1_binary[15:12]==4'b1011) ?1'b1:1'b0;
    assign r1[60] = (r1_binary[15:12]==4'b1100) ?1'b1:1'b0;
    assign r1[61] = (r1_binary[15:12]==4'b1101) ?1'b1:1'b0;
    assign r1[62] = (r1_binary[15:12]==4'b1110) ?1'b1:1'b0;
    assign r1[63] = (r1_binary[15:12]==4'b1111) ?1'b1:1'b0;
    assign r2[0] = (r2_binary[3:0]==4'b0000) ?1'b1:1'b0;
    assign r2[1] = (r2_binary[3:0]==4'b0001) ?1'b1:1'b0;
    assign r2[2] = (r2_binary[3:0]==4'b0010) ?1'b1:1'b0;
    assign r2[3] = (r2_binary[3:0]==4'b0011) ?1'b1:1'b0;
    assign r2[4] = (r2_binary[3:0]==4'b0100) ?1'b1:1'b0;
    assign r2[5] = (r2_binary[3:0]==4'b0101) ?1'b1:1'b0;
    assign r2[6] = (r2_binary[3:0]==4'b0110) ?1'b1:1'b0;
    assign r2[7] = (r2_binary[3:0]==4'b0111) ?1'b1:1'b0;
    assign r2[8] = (r2_binary[3:0]==4'b1000) ?1'b1:1'b0;
    assign r2[9] = (r2_binary[3:0]==4'b1001) ?1'b1:1'b0;
    assign r2[10] = (r2_binary[3:0]==4'b1010) ?1'b1:1'b0;
    assign r2[11] = (r2_binary[3:0]==4'b1011) ?1'b1:1'b0;
    assign r2[12] = (r2_binary[3:0]==4'b1100) ?1'b1:1'b0;
    assign r2[13] = (r2_binary[3:0]==4'b1101) ?1'b1:1'b0;
    assign r2[14] = (r2_binary[3:0]==4'b1110) ?1'b1:1'b0;
    assign r2[15] = (r2_binary[3:0]==4'b1111) ?1'b1:1'b0;
    assign r2[16] = (r2_binary[7:4]==4'b0000) ?1'b1:1'b0;
    assign r2[17] = (r2_binary[7:4]==4'b0001) ?1'b1:1'b0;
    assign r2[18] = (r2_binary[7:4]==4'b0010) ?1'b1:1'b0;
    assign r2[19] = (r2_binary[7:4]==4'b0011) ?1'b1:1'b0;
    assign r2[20] = (r2_binary[7:4]==4'b0100) ?1'b1:1'b0;
    assign r2[21] = (r2_binary[7:4]==4'b0101) ?1'b1:1'b0;
    assign r2[22] = (r2_binary[7:4]==4'b0110) ?1'b1:1'b0;
    assign r2[23] = (r2_binary[7:4]==4'b0111) ?1'b1:1'b0;
    assign r2[24] = (r2_binary[7:4]==4'b1000) ?1'b1:1'b0;
    assign r2[25] = (r2_binary[7:4]==4'b1001) ?1'b1:1'b0;
    assign r2[26] = (r2_binary[7:4]==4'b1010) ?1'b1:1'b0;
    assign r2[27] = (r2_binary[7:4]==4'b1011) ?1'b1:1'b0;
    assign r2[28] = (r2_binary[7:4]==4'b1100) ?1'b1:1'b0;
    assign r2[29] = (r2_binary[7:4]==4'b1101) ?1'b1:1'b0;
    assign r2[30] = (r2_binary[7:4]==4'b1110) ?1'b1:1'b0;
    assign r2[31] = (r2_binary[7:4]==4'b1111) ?1'b1:1'b0;
    assign r2[32] = (r2_binary[11:8]==4'b0000) ?1'b1:1'b0;
    assign r2[33] = (r2_binary[11:8]==4'b0001) ?1'b1:1'b0;
    assign r2[34] = (r2_binary[11:8]==4'b0010) ?1'b1:1'b0;
    assign r2[35] = (r2_binary[11:8]==4'b0011) ?1'b1:1'b0;
    assign r2[36] = (r2_binary[11:8]==4'b0100) ?1'b1:1'b0;
    assign r2[37] = (r2_binary[11:8]==4'b0101) ?1'b1:1'b0;
    assign r2[38] = (r2_binary[11:8]==4'b0110) ?1'b1:1'b0;
    assign r2[39] = (r2_binary[11:8]==4'b0111) ?1'b1:1'b0;
    assign r2[40] = (r2_binary[11:8]==4'b1000) ?1'b1:1'b0;
    assign r2[41] = (r2_binary[11:8]==4'b1001) ?1'b1:1'b0;
    assign r2[42] = (r2_binary[11:8]==4'b1010) ?1'b1:1'b0;
    assign r2[43] = (r2_binary[11:8]==4'b1011) ?1'b1:1'b0;
    assign r2[44] = (r2_binary[11:8]==4'b1100) ?1'b1:1'b0;
    assign r2[45] = (r2_binary[11:8]==4'b1101) ?1'b1:1'b0;
    assign r2[46] = (r2_binary[11:8]==4'b1110) ?1'b1:1'b0;
    assign r2[47] = (r2_binary[11:8]==4'b1111) ?1'b1:1'b0;
    assign r2[48] = (r2_binary[15:12]==4'b0000) ?1'b1:1'b0;
    assign r2[49] = (r2_binary[15:12]==4'b0001) ?1'b1:1'b0;
    assign r2[50] = (r2_binary[15:12]==4'b0010) ?1'b1:1'b0;
    assign r2[51] = (r2_binary[15:12]==4'b0011) ?1'b1:1'b0;
    assign r2[52] = (r2_binary[15:12]==4'b0100) ?1'b1:1'b0;
    assign r2[53] = (r2_binary[15:12]==4'b0101) ?1'b1:1'b0;
    assign r2[54] = (r2_binary[15:12]==4'b0110) ?1'b1:1'b0;
    assign r2[55] = (r2_binary[15:12]==4'b0111) ?1'b1:1'b0;
    assign r2[56] = (r2_binary[15:12]==4'b1000) ?1'b1:1'b0;
    assign r2[57] = (r2_binary[15:12]==4'b1001) ?1'b1:1'b0;
    assign r2[58] = (r2_binary[15:12]==4'b1010) ?1'b1:1'b0;
    assign r2[59] = (r2_binary[15:12]==4'b1011) ?1'b1:1'b0;
    assign r2[60] = (r2_binary[15:12]==4'b1100) ?1'b1:1'b0;
    assign r2[61] = (r2_binary[15:12]==4'b1101) ?1'b1:1'b0;
    assign r2[62] = (r2_binary[15:12]==4'b1110) ?1'b1:1'b0;
    assign r2[63] = (r2_binary[15:12]==4'b1111) ?1'b1:1'b0;

    assign r_res_binary = {


{r_res[56]|r_res[57]|r_res[58]|r_res[59]|r_res[60]|r_res[61]|r_res[62]|r_res[63],

r_res[52]|r_res[53]|r_res[54]|r_res[55]|r_res[60]|r_res[61]|r_res[62]|r_res[63],

r_res[50]|r_res[51]|r_res[54]|r_res[55]|r_res[58]|r_res[59]|r_res[62]|r_res[63],

r_res[49]|r_res[51]|r_res[53]|r_res[55]|r_res[57]|r_res[59]|r_res[61]|r_res[63]},



{r_res[40]|r_res[41]|r_res[42]|r_res[43]|r_res[44]|r_res[45]|r_res[46]|r_res[47],

r_res[36]|r_res[37]|r_res[38]|r_res[39]|r_res[44]|r_res[45]|r_res[46]|r_res[47],

r_res[34]|r_res[35]|r_res[38]|r_res[39]|r_res[42]|r_res[43]|r_res[46]|r_res[47],

r_res[33]|r_res[35]|r_res[37]|r_res[39]|r_res[41]|r_res[43]|r_res[45]|r_res[47]},



{r_res[24]|r_res[25]|r_res[26]|r_res[27]|r_res[28]|r_res[29]|r_res[30]|r_res[31],

r_res[20]|r_res[21]|r_res[22]|r_res[23]|r_res[28]|r_res[29]|r_res[30]|r_res[31],

r_res[18]|r_res[19]|r_res[22]|r_res[23]|r_res[26]|r_res[27]|r_res[30]|r_res[31],

r_res[17]|r_res[19]|r_res[21]|r_res[23]|r_res[25]|r_res[27]|r_res[29]|r_res[31]},



{r_res[8]|r_res[9]|r_res[10]|r_res[11]|r_res[12]|r_res[13]|r_res[14]|r_res[15],

r_res[4]|r_res[5]|r_res[6]|r_res[7]|r_res[12]|r_res[13]|r_res[14]|r_res[15],

r_res[2]|r_res[3]|r_res[6]|r_res[7]|r_res[10]|r_res[11]|r_res[14]|r_res[15],

r_res[1]|r_res[3]|r_res[5]|r_res[7]|r_res[9]|r_res[11]|r_res[13]|r_res[15]}};

endmodule
