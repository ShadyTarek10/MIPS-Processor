`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:01:50 04/18/2022
// Design Name:   SignExtend_ShadyTarek_19100178
// Module Name:   D:/week 6 lab-20220404T095516Z-002/week 6 lab/MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178_sec2/signExtend_test_shady_19100178.v
// Project Name:  MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SignExtend_ShadyTarek_19100178
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module signExtend_test_shady_19100178;

	// Inputs
	reg [15:0] inputt;

	// Outputs
	wire [31:0] outputt;

	// Instantiate the Unit Under Test (UUT)
	SignExtend_ShadyTarek_19100178 uut (
		.inputt(inputt), 
		.outputt(outputt)
	);

	initial begin
		// Initialize Inputs
		inputt = 0;

		// Wait 100 ns for global reset to finish
		#100;
		inputt=0; #100;
		inputt= 1; #100;
        
		// Add stimulus here

	end
      
endmodule

