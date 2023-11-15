`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:58:03 02/28/2022
// Design Name:   Mux2to1_19100178
// Module Name:   D:/MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178/Mux2to1_test.v
// Project Name:  MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux2to1_19100178
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux2to1_test;

	// Inputs
	reg s0;
	reg i0;
	reg i1;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	Mux2to1_19100178 uut (
		.s0(s0), 
		.i0(i0), 
		.i1(i1), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		s0 = 0;
		i0 = 0;
		i1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		s0 = 1;
		i0 = 0;
		i1 = 1;
		#100;
		
		s0 = 1;
		i0 = 1;
		i1 = 1;
		#100;

	end
      
endmodule

