//Test without converter in arithmetics
module tb;
reg [15:0] r1;
reg [15:0] r2;
wire [15:0] r_result_bus;

wire [31:0] r1_p;
wire [31:0] r2_p;
wire [31:0] r_result_p;

reg clk;

integer   i;

add_test_4 dut (clk,r1_p,r2_p,r_result_p);
converter_16 conv(r_result_p,r1,r2,r1_p,r2_p,r_result_bus);

initial
begin
$display("manual smoke test:");
clk =0;
r1 = 2;
r2 = 4;
# 10000000
clk=1;
# 10000000

$display ("TEST: %0d + %0d = %0d", r1, r2, r_result_bus);
if (r_result_bus!=r1+r2)
			begin
				$display ("ERROR: incorrect result %0d + %0d = %0d", r1, r2, r_result_bus);
			end
			

$display("test carry:");
r1 = 34952;
r2 = 34952;

clk =0;
# 10000000
clk=1;
# 10000000
$display ("TEST: %0d + %0d = %0d", r1, r2, r_result_bus);
if (r_result_bus!=4368)
			begin
				$display ("ERROR: incorrect result %0d + %0d = %0d", r1, r2, r_result_bus);
			end


$display("10 autotests:");
for (i=0; i<10; i=i+1)
	begin
		r1=$urandom%10000; 
		#100;
		r2=$urandom%20000;
		clk =0;
		# 10000000
		clk=1;
		# 10000000
		$display ("TEST: %0d + %0d = %0d", r1, r2, r_result_bus);   
		if (r_result_bus!=r1+r2)
			begin
				$display ("ERROR: incorrect result %0d + %0d = %0d", r1, r2, r_result_bus);
			end;
	end;
$finish;
end
endmodule