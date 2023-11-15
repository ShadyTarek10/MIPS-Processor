`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:42:05 02/28/2022
// Design Name:   Mux4to1
// Module Name:   D:/MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178/Mux4to1.v
// Project Name:  MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux4to1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux4to1;

	// Inputs
	reg i0;
	reg i1;
	reg i2;
	reg i3;
	reg s0;
	reg s1;

	// Outputs
	wire outp;

	// Instantiate the Unit Under Test (UUT)
	Mux4to1 uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.s0(s0), 
		.s1(s1), 
		.outp(outp)
	);

	initial begin
		// Initialize Inputs
		 i0 = 0;
		i1 = 0;
		i2 = 0;
		i3 = 0;
		s0 = 0;
		s1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		i0 = 1;
		i1 = 0;
		i2 = 1;
		i3 = 0;
		s0 = 1;
		s1 = 0;
        #100;
		// Add stimulus here
      i0 = 0;
		i1 = 1;
		i2 = 0;
		i3 = 1;
		s0 = 0;
		s1 = 1;
        #100;

	end
      
endmodule

