module add_test_2
(
	input wire clk,
	input wire[15:0] r1,
	input wire[15:0] r2,
	output reg[15:0] res_r
);
	always@(posedge clk)
	 res_r <= r1+r2;
	 
endmodule