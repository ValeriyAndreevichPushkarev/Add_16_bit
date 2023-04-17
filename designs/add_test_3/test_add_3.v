module add_test_3
(
	input wire clk,
	input wire[15:0] r1,
	input wire[15:0] r2,
	output reg[15:0] res_r
);
 
	wire[31:0] res;
	wire[31:0] r1_p, r2_p;
	wire[15:0] res_b;
	
	add_16 a1 (r1_p,r2_p, res);
	
	converter_16 c2 (res, r1,r2,r1_p,r2_p,res_b);


	// arithmetic_16 a32 (1'b1, 1'b0, r1_p, r2_p, r_res_p);
	
	always@(posedge clk)
		res_r <=res_b;
		
endmodule

module add_16 
(
	input wire[31:0] r1,
	input wire[31:0] r2,
	output wire[31:0] res_r
	);
	
	wire [3:0] a1_r1= r1[3:0];
	wire [3:0] a1_r2= r2[3:0];
	
	wire [7:0] a1_res;
	wire a1_c = a1_res[5];
	
arithmetics a1 (1'b1, 1'b0, 1'b0, a1_r1, a1_r2,a1_res);

	wire [3:0] a2_r1= r1[7:4];
	wire [3:0] a2_r2= r2[7:4];
	
	wire [7:0] a2_res;
	wire a2_c = a2_res[5];

arithmetics a2 (~a1_c, 1'b0, a1_c, a2_r1, a2_r2,a2_res);

	wire [3:0] a3_r1= r1[11:8];
	wire [3:0] a3_r2= r2[11:8];
	
	wire [7:0] a3_res;
	wire a3_c = a3_res[5];

arithmetics a3 (~a2_c, 1'b0, a2_c, a3_r1, a3_r2,a3_res);

	wire [3:0] a4_r1= r1[15:12];
	wire [3:0] a4_r2= r2[15:12];
	
	wire [7:0] a4_res;
	wire a4_c = a4_res[5];

arithmetics a4 (~a3_c, 1'b0, a3_c, a4_r1, a4_r2,a4_res);

	wire [3:0] a5_r1= r1[19:16];
	wire [3:0] a5_r2= r2[19:16];
	
	wire [7:0] a5_res;
	wire a5_c = a5_res[5];

arithmetics a5 (~a4_c, 1'b0, a4_c, a5_r1, a5_r2,a5_res);

	wire [3:0] a6_r1= r1[23:20];
	wire [3:0] a6_r2= r2[23:20];
	
	wire [7:0] a6_res;
	wire a6_c = a6_res[5];

arithmetics a6 (~a5_c, 1'b0, a5_c, a6_r1, a6_r2,a6_res);

	wire [3:0] a7_r1= r1[27:24];
	wire [3:0] a7_r2= r2[27:24];
	
	wire [7:0] a7_res;
	wire a7_c = a7_res[5];

arithmetics a7 (~a6_c, 1'b0, a6_c, a7_r1, a7_r2,a7_res);

	wire [3:0] a8_r1= r1[31:28];
	wire [3:0] a8_r2= r2[31:28];
	
	wire [7:0] a8_res;
	wire a8_c = a8_res[5];

arithmetics a8 (~a7_c, 1'b0, a7_c, a8_r1, a8_r2,a8_res);

assign res_r = {a8_res[3:0],a7_res[3:0],a6_res[3:0],a5_res[3:0],a4_res[3:0],a3_res[3:0],a2_res[3:0],a1_res[3:0]};

endmodule

module arithmetics
    (
        input wire add,

    input wire mul,

    input wire add_c,


        input wire[3:0] r1,
        input wire[3:0] r2,
        output wire[7:0] output_reg
    );
    wire input_0_0 = r1[0]&r2[0];

wire input_0_1 = r1[0]&r2[1];

wire input_0_2 = r1[0]&r2[2];

wire input_0_3 = r1[0]&r2[3];

wire input_1_0 = r1[1]&r2[0];

wire input_1_1 = r1[1]&r2[1];

wire input_1_2 = r1[1]&r2[2];

wire input_1_3 = r1[1]&r2[3];

wire input_2_0 = r1[2]&r2[0];

wire input_2_1 = r1[2]&r2[1];

wire input_2_2 = r1[2]&r2[2];

wire input_2_3 = r1[2]&r2[3];

wire input_3_0 = r1[3]&r2[0];

wire input_3_1 = r1[3]&r2[1];

wire input_3_2 = r1[3]&r2[2];

wire input_3_3 = r1[3]&r2[3];

wire command_add_0 =  0;

wire command_add_1 =  0;

wire command_add_2 = add&(input_1_3|input_2_2|input_2_3|input_3_1|input_3_2|input_3_3);

wire command_add_3 = add&(input_0_0|input_0_1|input_0_2|input_0_3|input_1_0|input_1_1|input_1_2|input_2_0|input_2_1|input_3_0);

wire command_add_4 = add&(input_0_3|input_1_2|input_2_1|input_3_0);

wire command_add_5 = add&(input_0_2|input_1_1|input_2_0|input_3_3);

wire command_add_6 = add&(input_0_1|input_1_0|input_2_3|input_3_2);

wire command_add_7 = add&(input_0_0|input_1_3|input_2_2|input_3_1);

wire command_mul_0 =  0;

wire command_mul_1 = mul&(input_3_3);

wire command_mul_2 = mul&(input_2_2|input_2_3|input_3_2);

wire command_mul_3 = mul&(input_0_0|input_0_1|input_0_2|input_0_3|input_1_0|input_1_1|input_1_2|input_1_3|input_2_0|input_2_1|input_3_0|input_3_1);

wire command_mul_4 = mul&(input_1_3|input_3_1);

wire command_mul_5 = mul&(input_1_2|input_2_1|input_2_3|input_3_2);

wire command_mul_6 = mul&(input_1_1|input_3_3);

wire command_mul_7 = mul&(input_0_0|input_0_1|input_0_2|input_0_3|input_1_0|input_2_0|input_2_2|input_3_0);

wire command_add_c_0 =  0;

wire command_add_c_1 =  0;

wire command_add_c_2 = add_c&(input_0_3|input_1_2|input_1_3|input_2_1|input_2_2|input_2_3|input_3_0|input_3_1|input_3_2|input_3_3);

wire command_add_c_3 = add_c&(input_0_0|input_0_1|input_0_2|input_1_0|input_1_1|input_2_0);

wire command_add_c_4 = add_c&(input_0_2|input_1_1|input_2_0|input_3_3);

wire command_add_c_5 = add_c&(input_0_1|input_1_0|input_2_3|input_3_2);

wire command_add_c_6 = add_c&(input_0_0|input_1_3|input_2_2|input_3_1);

wire command_add_c_7 = add_c&(input_0_3|input_1_2|input_2_1|input_3_0);

assign output_reg = {command_add_0|command_mul_0|command_add_c_0,

command_add_1|command_mul_1|command_add_c_1,

command_add_2|command_mul_2|command_add_c_2,

command_add_3|command_mul_3|command_add_c_3,

command_add_4|command_mul_4|command_add_c_4,

command_add_5|command_mul_5|command_add_c_5,

command_add_6|command_mul_6|command_add_c_6,

command_add_7|command_mul_7|command_add_c_7};

endmodule


module converter_16
(
	
	input wire[31:0] r_res,
	input wire[15:0] r1_binary,
	input wire[15:0] r2_binary,
	output wire[31:0] r1,
	output wire[31:0] r2,
	output wire[15:0] r_res_binary
);

	assign r1[0] = (r1_binary[1:0]==2'b00) ?1'b1:1'b0;
	assign r1[1] = (r1_binary[1:0]==2'b01) ?1'b1:1'b0;
	assign r1[2] = (r1_binary[1:0]==2'b10) ?1'b1:1'b0;
	assign r1[3] = (r1_binary[1:0]==2'b11) ?1'b1:1'b0;
	assign r1[4] = (r1_binary[3:2]==2'b00) ?1'b1:1'b0;
	assign r1[5] = (r1_binary[3:2]==2'b01) ?1'b1:1'b0;
	assign r1[6] = (r1_binary[3:2]==2'b10) ?1'b1:1'b0;
	assign r1[7] = (r1_binary[3:2]==2'b11) ?1'b1:1'b0;
	assign r1[8] = (r1_binary[5:4]==2'b00) ?1'b1:1'b0;
	assign r1[9] = (r1_binary[5:4]==2'b01) ?1'b1:1'b0;
	assign r1[10] = (r1_binary[5:4]==2'b10) ?1'b1:1'b0;
	assign r1[11] = (r1_binary[5:4]==2'b11) ?1'b1:1'b0;
	assign r1[12] = (r1_binary[7:6]==2'b00) ?1'b1:1'b0;
	assign r1[13] = (r1_binary[7:6]==2'b01) ?1'b1:1'b0;
	assign r1[14] = (r1_binary[7:6]==2'b10) ?1'b1:1'b0;
	assign r1[15] = (r1_binary[7:6]==2'b11) ?1'b1:1'b0;
	assign r1[16] = (r1_binary[9:8]==2'b00) ?1'b1:1'b0;
	assign r1[17] = (r1_binary[9:8]==2'b01) ?1'b1:1'b0;
	assign r1[18] = (r1_binary[9:8]==2'b10) ?1'b1:1'b0;
	assign r1[19] = (r1_binary[9:8]==2'b11) ?1'b1:1'b0;
	assign r1[20] = (r1_binary[11:10]==2'b00) ?1'b1:1'b0;
	assign r1[21] = (r1_binary[11:10]==2'b01) ?1'b1:1'b0;
	assign r1[22] = (r1_binary[11:10]==2'b10) ?1'b1:1'b0;
	assign r1[23] = (r1_binary[11:10]==2'b11) ?1'b1:1'b0;
	assign r1[24] = (r1_binary[13:12]==2'b00) ?1'b1:1'b0;
	assign r1[25] = (r1_binary[13:12]==2'b01) ?1'b1:1'b0;
	assign r1[26] = (r1_binary[13:12]==2'b10) ?1'b1:1'b0;
	assign r1[27] = (r1_binary[13:12]==2'b11) ?1'b1:1'b0;
	assign r1[28] = (r1_binary[15:14]==2'b00) ?1'b1:1'b0;
	assign r1[29] = (r1_binary[15:14]==2'b01) ?1'b1:1'b0;
	assign r1[30] = (r1_binary[15:14]==2'b10) ?1'b1:1'b0;
	assign r1[31] = (r1_binary[15:14]==2'b11) ?1'b1:1'b0;
	assign r2[0] = (r2_binary[1:0]==2'b00) ?1'b1:1'b0;
	assign r2[1] = (r2_binary[1:0]==2'b01) ?1'b1:1'b0;
	assign r2[2] = (r2_binary[1:0]==2'b10) ?1'b1:1'b0;
	assign r2[3] = (r2_binary[1:0]==2'b11) ?1'b1:1'b0;
	assign r2[4] = (r2_binary[3:2]==2'b00) ?1'b1:1'b0;
	assign r2[5] = (r2_binary[3:2]==2'b01) ?1'b1:1'b0;
	assign r2[6] = (r2_binary[3:2]==2'b10) ?1'b1:1'b0;
	assign r2[7] = (r2_binary[3:2]==2'b11) ?1'b1:1'b0;
	assign r2[8] = (r2_binary[5:4]==2'b00) ?1'b1:1'b0;
	assign r2[9] = (r2_binary[5:4]==2'b01) ?1'b1:1'b0;
	assign r2[10] = (r2_binary[5:4]==2'b10) ?1'b1:1'b0;
	assign r2[11] = (r2_binary[5:4]==2'b11) ?1'b1:1'b0;
	assign r2[12] = (r2_binary[7:6]==2'b00) ?1'b1:1'b0;
	assign r2[13] = (r2_binary[7:6]==2'b01) ?1'b1:1'b0;
	assign r2[14] = (r2_binary[7:6]==2'b10) ?1'b1:1'b0;
	assign r2[15] = (r2_binary[7:6]==2'b11) ?1'b1:1'b0;
	assign r2[16] = (r2_binary[9:8]==2'b00) ?1'b1:1'b0;
	assign r2[17] = (r2_binary[9:8]==2'b01) ?1'b1:1'b0;
	assign r2[18] = (r2_binary[9:8]==2'b10) ?1'b1:1'b0;
	assign r2[19] = (r2_binary[9:8]==2'b11) ?1'b1:1'b0;
	assign r2[20] = (r2_binary[11:10]==2'b00) ?1'b1:1'b0;
	assign r2[21] = (r2_binary[11:10]==2'b01) ?1'b1:1'b0;
	assign r2[22] = (r2_binary[11:10]==2'b10) ?1'b1:1'b0;
	assign r2[23] = (r2_binary[11:10]==2'b11) ?1'b1:1'b0;
	assign r2[24] = (r2_binary[13:12]==2'b00) ?1'b1:1'b0;
	assign r2[25] = (r2_binary[13:12]==2'b01) ?1'b1:1'b0;
	assign r2[26] = (r2_binary[13:12]==2'b10) ?1'b1:1'b0;
	assign r2[27] = (r2_binary[13:12]==2'b11) ?1'b1:1'b0;
	assign r2[28] = (r2_binary[15:14]==2'b00) ?1'b1:1'b0;
	assign r2[29] = (r2_binary[15:14]==2'b01) ?1'b1:1'b0;
	assign r2[30] = (r2_binary[15:14]==2'b10) ?1'b1:1'b0;
	assign r2[31] = (r2_binary[15:14]==2'b11) ?1'b1:1'b0;

	assign r_res_binary = {

{r_res[30]|r_res[31],

r_res[29]|r_res[31]},



{r_res[26]|r_res[27],

r_res[25]|r_res[27]},



{r_res[22]|r_res[23],

r_res[21]|r_res[23]},



{r_res[18]|r_res[19],

r_res[17]|r_res[19]},



{r_res[14]|r_res[15],

r_res[13]|r_res[15]},



{r_res[10]|r_res[11],

r_res[9]|r_res[11]},



{r_res[6]|r_res[7],

r_res[5]|r_res[7]},



{r_res[2]|r_res[3],

r_res[1]|r_res[3]}};

endmodule