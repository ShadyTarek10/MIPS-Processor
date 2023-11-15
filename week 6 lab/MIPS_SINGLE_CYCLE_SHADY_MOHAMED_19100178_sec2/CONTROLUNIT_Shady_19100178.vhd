----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:52:55 03/21/2022 
-- Design Name: 
-- Module Name:    CONTROLUNIT_Shady_19100178 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CONTROLUNIT_Shady_19100178 is
    Port ( operation : in  STD_LOGIC_VECTOR (5 downto 0);
           RegDst : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
			  RedWrite : out  STD_LOGIC;
			  MemRead : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           ALUOp0 : out  STD_LOGIC_VECTOR (1 downto 0));
end CONTROLUNIT_Shady_19100178;

architecture Behavioral of CONTROLUNIT_Shady_19100178 is

begin

   process (operation)
	begin
	   if operation="000000" then
		    RegDst <='1';
           ALUSrc <='0';
           MemtoReg <='0';
			  RedWrite <='1';
			  MemRead <='0';
           MemWrite <='0';
           Branch <='0';
           ALUOp0 <="10";
			  
	 elsif operation="100011" then
           	 
		    RegDst <='0';
           ALUSrc <='1';
           MemtoReg <='1';
			  RedWrite <='1';
			  MemRead <='1';
           MemWrite <='0';
           Branch <='0';
           ALUOp0 <="00";
	elsif operation="101011" then
           	 
		    RegDst <='0';
           ALUSrc <='1';
           MemtoReg <='0';
			  RedWrite <='0';
			  MemRead <='0';
           MemWrite <='1';
           Branch <='0';
           ALUOp0 <="00";
   elsif operation="000100" then
           	 
		    RegDst <='0';
           ALUSrc <='0';
           MemtoReg <='0';
			  RedWrite <='0';
			  MemRead <='0';
           MemWrite <='0';
           Branch <='1';
           ALUOp0 <="01";
  end if;			  
	
	end process;

end Behavioral;

