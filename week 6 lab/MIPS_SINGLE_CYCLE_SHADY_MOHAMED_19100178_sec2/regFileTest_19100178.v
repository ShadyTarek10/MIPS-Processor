`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:18:32 03/28/2022
// Design Name:   reg_file_shady_mohamed_19100178
// Module Name:   D:/Student/Downloads/Lab-20220321T112146Z-001/Lab/MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178-20220307T104311Z-001/MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178_sec2/regFileTest_19100178.v
// Project Name:  MIPS_SINGLE_CYCLE_SHADY_MOHAMED_19100178
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: reg_file_shady_mohamed_19100178
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module regFileTest_19100178;

	// Inputs
	reg [4:0] readRegnum1;
	reg [4:0] readRegnum2;
	reg [4:0] writeregnum;
	reg [31:0] write_data;
	reg Regwrite;
	reg clk;

	// Outputs
	wire [31:0] readData1;
	wire [31:0] readData2;

	// Instantiate the Unit Under Test (UUT)
	reg_file_shady_mohamed_19100178 uut (
		.readRegnum1(readRegnum1), 
		.readRegnum2(readRegnum2), 
		.writeregnum(writeregnum), 
		.write_data(write_data), 
		.Regwrite(Regwrite), 
		.readData1(readData1), 
		.readData2(readData2), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		readRegnum1 = 0;
		readRegnum2 = 0;
		writeregnum = 0;
		write_data = 0;
		Regwrite = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
    readRegnum1 <= "00000";
		readRegnum2 <= "00001";
		wait for 100 ns;
		Regwrite<='1';
		writeregnum <= "01101";
		write_data=<= x"12470000";
		
	end
      
endmodule

