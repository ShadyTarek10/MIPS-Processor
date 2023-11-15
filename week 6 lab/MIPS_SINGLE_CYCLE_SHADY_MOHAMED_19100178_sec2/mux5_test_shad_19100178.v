`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:22:16 05/04/2022
// Design Name:   mux5_ShadyTarek_19100178
// Module Name:   D:/Term 6/Computer_arch/week 6 lab-20220404T095516Z-003/week 6 lab/MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178_sec2/mux5_test_shad_19100178.v
// Project Name:  MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux5_ShadyTarek_19100178
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux5_test_shad_19100178;

	// Inputs
	reg [4:0] in1;
	reg [4:0] in2;
	reg s;

	// Outputs
	wire [4:0] outt;

	// Instantiate the Unit Under Test (UUT)
	mux5_ShadyTarek_19100178 uut (
		.in1(in1), 
		.in2(in2), 
		.s(s), 
		.outt(outt)
	);

	initial begin
		// Initialize Inputs
		
		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here
		in1=5; in2=7; s=1; #100;
		in1=7; in2=5; s=0; #100;
		

	end
      
endmodule

