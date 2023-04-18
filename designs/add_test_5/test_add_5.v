module add_test_5
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
	
	wire [1:0] a1_r1= r1[1:0];
	wire [1:0] a1_r2= r2[1:0];
	
	wire [3:0] a1_res;
	wire a1_c = a1_res[3];
	
arithmetics a1 (1'b1, 1'b0, 1'b0, a1_r1, a1_r2,a1_res);

	wire [1:0] a2_r1= r1[3:2];
	wire [1:0] a2_r2= r2[3:2];
	
	wire [3:0] a2_res;
	wire a2_c = a2_res[3];
	
arithmetics a2 (~a1_c, 1'b0, a1_c, a2_r1, a2_r2,a2_res);

	wire [1:0] a3_r1= r1[5:4];
	wire [1:0] a3_r2= r2[5:4];
	
	wire [3:0] a3_res;
	wire a3_c = a3_res[3];
	
arithmetics a3 (~a2_c, 1'b0, a2_c, a3_r1, a3_r2,a3_res);

	wire [1:0] a4_r1= r1[7:6];
	wire [1:0] a4_r2= r2[7:6];
	
	wire [3:0] a4_res;
	wire a4_c = a4_res[3];
	
arithmetics a4 (~a3_c, 1'b0, a3_c, a4_r1, a4_r2,a4_res);

	wire [1:0] a5_r1= r1[9:8];
	wire [1:0] a5_r2= r2[9:8];
	
	wire [3:0] a5_res;
	wire a5_c = a5_res[3];
	
arithmetics a5 (~a4_c, 1'b0, a4_c, a5_r1, a5_r2,a5_res);

	wire [1:0] a6_r1= r1[11:10];
	wire [1:0] a6_r2= r2[11:10];
	
	wire [3:0] a6_res;
	wire a6_c = a6_res[3];
	
arithmetics a6 (~a5_c, 1'b0, a5_c, a6_r1, a6_r2,a6_res);

	wire [1:0] a7_r1= r1[13:12];
	wire [1:0] a7_r2= r2[13:12];
	
	wire [3:0] a7_res;
	wire a7_c = a7_res[3];
	
arithmetics a7 (~a6_c, 1'b0, a6_c, a7_r1, a7_r2,a7_res);

	wire [1:0] a8_r1= r1[15:14];
	wire [1:0] a8_r2= r2[15:14];
	
	wire [3:0] a8_res;
	wire a8_c = a8_res[3];
	
arithmetics a8 (~a7_c, 1'b0, a7_c, a8_r1, a8_r2,a8_res);

	wire [1:0] a9_r1= r1[17:16];
	wire [1:0] a9_r2= r2[17:16];
	
	wire [3:0] a9_res;
	wire a9_c = a9_res[3];
	
arithmetics a9 (~a8_c, 1'b0, a8_c, a9_r1, a9_r2,a9_res);


	wire [1:0] a10_r1= r1[19:18];
	wire [1:0] a10_r2= r2[19:18];
	
	wire [3:0] a10_res;
	wire a10_c = a10_res[3];
	
arithmetics a10 (~a9_c, 1'b0, a9_c, a10_r1, a10_r2,a10_res);
	wire [1:0] a11_r1= r1[21:20];
	wire [1:0] a11_r2= r2[21:20];
	
	wire [3:0] a11_res;
	wire a11_c = a11_res[3];
	
arithmetics a11 (~a10_c, 1'b0, a10_c, a11_r1, a11_r2,a11_res);
	wire [1:0] a12_r1= r1[23:22];
	wire [1:0] a12_r2= r2[23:22];
	
	wire [3:0] a12_res;
	wire a12_c = a12_res[3];
	
arithmetics a12 (~a11_c, 1'b0, a11_c, a12_r1, a12_r2,a12_res);

	wire [1:0] a13_r1= r1[25:24];
	wire [1:0] a13_r2= r2[25:24];
	
	wire [3:0] a13_res;
	wire a13_c = a13_res[3];
	
arithmetics a13 (~a12_c, 1'b0, a12_c, a13_r1, a13_r2,a13_res);

	wire [1:0] a14_r1= r1[27:26];
	wire [1:0] a14_r2= r2[27:26];
	
	wire [3:0] a14_res;
	wire a14_c = a14_res[3];
	
arithmetics a14 (~a13_c, 1'b0, a13_c, a14_r1, a14_r2,a14_res);

	wire [1:0] a15_r1= r1[29:28];
	wire [1:0] a15_r2= r2[29:28];
	
	wire [3:0] a15_res;
	wire a15_c = a15_res[3];
	
arithmetics a15 (~a14_c, 1'b0, a14_c, a15_r1, a15_r2,a15_res);

	wire [1:0] a16_r1= r1[31:30];
	wire [1:0] a16_r2= r2[31:30];
	
	wire [3:0] a16_res;
	wire a16_c = a16_res[3];
	
arithmetics a16 (~a15_c, 1'b0, a15_c, a16_r1, a16_r2,a16_res);
assign res_r = {a16_res[1:0],a15_res[1:0],a14_res[1:0],a13_res[1:0],a12_res[1:0],a11_res[1:0],a10_res[1:0],a9_res[1:0],a8_res[1:0],a7_res[1:0],a6_res[1:0],a5_res[1:0],a4_res[1:0],a3_res[1:0],a2_res[1:0],a1_res[1:0]};

endmodule

module arithmetics
    (
        input wire add,

    input wire mul,

    input wire add_c,


        input wire[1:0] r1,
        input wire[1:0] r2,
        output wire[3:0] output_reg
    );
    wire input_0_0 = r1[0]&r2[0];

wire input_0_1 = r1[0]&r2[1];

wire input_1_0 = r1[1]&r2[0];

wire input_1_1 = r1[1]&r2[1];

wire command_add_0 = add&(input_1_1);

wire command_add_1 = add&(input_0_0|input_0_1|input_1_0);

wire command_add_2 = add&(input_0_1|input_1_0);

wire command_add_3 = add&(input_0_0|input_1_1);

wire command_mul_0 =  0;

wire command_mul_1 = mul&(input_0_0|input_0_1|input_1_0|input_1_1);

wire command_mul_2 = mul&(input_1_1);

wire command_mul_3 = mul&(input_0_0|input_0_1|input_1_0);

wire command_add_c_0 = add_c&(input_0_1|input_1_0|input_1_1);

wire command_add_c_1 = add_c&(input_0_0);

wire command_add_c_2 = add_c&(input_0_0|input_1_1);

wire command_add_c_3 = add_c&(input_0_1|input_1_0);

assign output_reg = {command_add_0|command_mul_0|command_add_c_0,

command_add_1|command_mul_1|command_add_c_1,

command_add_2|command_mul_2|command_add_c_2,

command_add_3|command_mul_3|command_add_c_3};

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

    assign r1[0] = (r1_binary[0:0]==1'b0) ?1'b1:1'b0;
    assign r1[1] = (r1_binary[0:0]==1'b1) ?1'b1:1'b0;
    assign r1[2] = (r1_binary[1:1]==1'b0) ?1'b1:1'b0;
    assign r1[3] = (r1_binary[1:1]==1'b1) ?1'b1:1'b0;
    assign r1[4] = (r1_binary[2:2]==1'b0) ?1'b1:1'b0;
    assign r1[5] = (r1_binary[2:2]==1'b1) ?1'b1:1'b0;
    assign r1[6] = (r1_binary[3:3]==1'b0) ?1'b1:1'b0;
    assign r1[7] = (r1_binary[3:3]==1'b1) ?1'b1:1'b0;
    assign r1[8] = (r1_binary[4:4]==1'b0) ?1'b1:1'b0;
    assign r1[9] = (r1_binary[4:4]==1'b1) ?1'b1:1'b0;
    assign r1[10] = (r1_binary[5:5]==1'b0) ?1'b1:1'b0;
    assign r1[11] = (r1_binary[5:5]==1'b1) ?1'b1:1'b0;
    assign r1[12] = (r1_binary[6:6]==1'b0) ?1'b1:1'b0;
    assign r1[13] = (r1_binary[6:6]==1'b1) ?1'b1:1'b0;
    assign r1[14] = (r1_binary[7:7]==1'b0) ?1'b1:1'b0;
    assign r1[15] = (r1_binary[7:7]==1'b1) ?1'b1:1'b0;
    assign r1[16] = (r1_binary[8:8]==1'b0) ?1'b1:1'b0;
    assign r1[17] = (r1_binary[8:8]==1'b1) ?1'b1:1'b0;
    assign r1[18] = (r1_binary[9:9]==1'b0) ?1'b1:1'b0;
    assign r1[19] = (r1_binary[9:9]==1'b1) ?1'b1:1'b0;
    assign r1[20] = (r1_binary[10:10]==1'b0) ?1'b1:1'b0;
    assign r1[21] = (r1_binary[10:10]==1'b1) ?1'b1:1'b0;
    assign r1[22] = (r1_binary[11:11]==1'b0) ?1'b1:1'b0;
    assign r1[23] = (r1_binary[11:11]==1'b1) ?1'b1:1'b0;
    assign r1[24] = (r1_binary[12:12]==1'b0) ?1'b1:1'b0;
    assign r1[25] = (r1_binary[12:12]==1'b1) ?1'b1:1'b0;
    assign r1[26] = (r1_binary[13:13]==1'b0) ?1'b1:1'b0;
    assign r1[27] = (r1_binary[13:13]==1'b1) ?1'b1:1'b0;
    assign r1[28] = (r1_binary[14:14]==1'b0) ?1'b1:1'b0;
    assign r1[29] = (r1_binary[14:14]==1'b1) ?1'b1:1'b0;
    assign r1[30] = (r1_binary[15:15]==1'b0) ?1'b1:1'b0;
    assign r1[31] = (r1_binary[15:15]==1'b1) ?1'b1:1'b0;
    assign r2[0] = (r2_binary[0:0]==1'b0) ?1'b1:1'b0;
    assign r2[1] = (r2_binary[0:0]==1'b1) ?1'b1:1'b0;
    assign r2[2] = (r2_binary[1:1]==1'b0) ?1'b1:1'b0;
    assign r2[3] = (r2_binary[1:1]==1'b1) ?1'b1:1'b0;
    assign r2[4] = (r2_binary[2:2]==1'b0) ?1'b1:1'b0;
    assign r2[5] = (r2_binary[2:2]==1'b1) ?1'b1:1'b0;
    assign r2[6] = (r2_binary[3:3]==1'b0) ?1'b1:1'b0;
    assign r2[7] = (r2_binary[3:3]==1'b1) ?1'b1:1'b0;
    assign r2[8] = (r2_binary[4:4]==1'b0) ?1'b1:1'b0;
    assign r2[9] = (r2_binary[4:4]==1'b1) ?1'b1:1'b0;
    assign r2[10] = (r2_binary[5:5]==1'b0) ?1'b1:1'b0;
    assign r2[11] = (r2_binary[5:5]==1'b1) ?1'b1:1'b0;
    assign r2[12] = (r2_binary[6:6]==1'b0) ?1'b1:1'b0;
    assign r2[13] = (r2_binary[6:6]==1'b1) ?1'b1:1'b0;
    assign r2[14] = (r2_binary[7:7]==1'b0) ?1'b1:1'b0;
    assign r2[15] = (r2_binary[7:7]==1'b1) ?1'b1:1'b0;
    assign r2[16] = (r2_binary[8:8]==1'b0) ?1'b1:1'b0;
    assign r2[17] = (r2_binary[8:8]==1'b1) ?1'b1:1'b0;
    assign r2[18] = (r2_binary[9:9]==1'b0) ?1'b1:1'b0;
    assign r2[19] = (r2_binary[9:9]==1'b1) ?1'b1:1'b0;
    assign r2[20] = (r2_binary[10:10]==1'b0) ?1'b1:1'b0;
    assign r2[21] = (r2_binary[10:10]==1'b1) ?1'b1:1'b0;
    assign r2[22] = (r2_binary[11:11]==1'b0) ?1'b1:1'b0;
    assign r2[23] = (r2_binary[11:11]==1'b1) ?1'b1:1'b0;
    assign r2[24] = (r2_binary[12:12]==1'b0) ?1'b1:1'b0;
    assign r2[25] = (r2_binary[12:12]==1'b1) ?1'b1:1'b0;
    assign r2[26] = (r2_binary[13:13]==1'b0) ?1'b1:1'b0;
    assign r2[27] = (r2_binary[13:13]==1'b1) ?1'b1:1'b0;
    assign r2[28] = (r2_binary[14:14]==1'b0) ?1'b1:1'b0;
    assign r2[29] = (r2_binary[14:14]==1'b1) ?1'b1:1'b0;
    assign r2[30] = (r2_binary[15:15]==1'b0) ?1'b1:1'b0;
    assign r2[31] = (r2_binary[15:15]==1'b1) ?1'b1:1'b0;

    assign r_res_binary = {

{r_res[31]},



{r_res[29]},



{r_res[27]},



{r_res[25]},



{r_res[23]},



{r_res[21]},



{r_res[19]},



{r_res[17]},



{r_res[15]},



{r_res[13]},



{r_res[11]},



{r_res[9]},



{r_res[7]},



{r_res[5]},



{r_res[3]},



{r_res[1]}};

endmodule