Presentation based on my repos (https://github.com/ValeryAndreevichPushkarev)

### Structure


designs - directory with OpenLane projects (copy content to OpenLane/designs)

	Run synthesis:
	(
		./flow.tcl -design test_add_2
		./flow.tcl -design test_add_2 -synth_explore 
	)
	Run testbenches:

	iverilog *.v
	vvp a.out - only for windows

	there are 3 projects:
	1) add_test_2 - standard OpenLane addition
	2) add_test_3 - addition based on positional encoding with the converter
	3) add_test_4 - addition based on positional encoding without a converter
	4) add_test_5 - addition based on positional encoding with converter based on 1 bit functions
	5) add_test_6 - addition based on positional encoding with the converter based on 4 bit functions


results - synthesis results for all types of projects

	With synthesis log, metrics and -synth_explore.
### Short analysis of the result

		1)ABC: netlist                       : i/o =   32/   16  lat =    0  nd =    85  edge =    227  area =1026.19  delay = 7.00  lev = 7
		Delay =  2138.07 ps  ( 21.2 %)  
		2)ABC: netlist                       : i/o =   32/   16  lat =    0  nd =    99  edge =    267  area =1117.52  delay = 7.00  lev = 7
		Delay =  2093.05 ps  ( 13.1 %)
		3)ABC: netlist                       : i/o =   64/   32  lat =    0  nd =   162  edge =    523  area =1572.65  delay = 7.00  lev = 7
		Delay =  1770.45 ps  ( 14.3 %)
		4)ABC: netlist                       : i/o =   32/   16  lat =    0  nd =   136  edge =    303  area =1284.00  delay =781.17  lev = 19
		Delay =  2081.29 ps  ( 35.3 %)     
		5)ABC: netlist                       : i/o =   32/   16  lat =    0  nd =  1935  edge =   4613  area =14268.17  delay =1268.10  lev = 22
		Delay =  2756.73 ps  ( 10.3 %)


Minimal delay for (1),(2),(3) is almost the same. 

Or, we have **same delay for full adder in our encoding and carry-lookahed adder** in OpenLane.

(4) seems not working because of (4) is almost the same that (1) but with logical scheme that works with FO-2. 

(5) And (5) is for different Fan Out factor (and transistors, because we expect even lower lev and delay there)

Result: 
Even 4 transistors that work in the parallel can reduce logical depth of any operation (down to 4 bit functions with delay of 2 FO-4 inverters).
If you have branching factor that greater than 4, you can drive that load by 4 more times transistors count.

For FO-4 positional encoding is almost the same as logical elements with FO-4 (and assemblies). But with incresead number of LE.
One cell (logical assembly from transistors) can represent the same number of states (and can have even less power consumption).

### Testbenches:
	Smoke test 2+6
	Carry test (All)
	10 self-check tests with random numbers

### TODO:
	
	Add carry-lookahead adder instead of full adder :) Implement multiplier
	Test other operators.
