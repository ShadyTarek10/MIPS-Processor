`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:49:22 05/04/2022
// Design Name:   adde_2022_ShadyTarek_19100178
// Module Name:   D:/Term 6/Computer_arch/week 6 lab-20220404T095516Z-003/week 6 lab/MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178_sec2/adder_test.v
// Project Name:  MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adde_2022_ShadyTarek_19100178
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder_test;

	// Inputs
	reg [31:0] input1;
	reg [31:0] input2;

	// Outputs
	wire [31:0] outputt;

	// Instantiate the Unit Under Test (UUT)
	adde_2022_ShadyTarek_19100178 uut (
		.input1(input1), 
		.input2(input2), 
		.outputt(outputt)
	);

	initial begin
		// Initialize Inputs
		input1 = 3;
		input2 = 6;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		input1=1; input2=4; #100;

	end
      
endmodule

