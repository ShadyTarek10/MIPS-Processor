----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:00:01 03/07/2022 
-- Design Name: 
-- Module Name:    ALU_Shady_Mohamed - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_Shady_Mohamed is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           alures : out  STD_LOGIC_VECTOR (31 downto 0);
           zeroflag : out  STD_LOGIC);
end ALU_Shady_Mohamed;


architecture Behavioral of ALU_Shady_Mohamed is

begin

process(A,B, aluop)
begin
 if A=B then
    zeroflag <='1';
 else 
    zeroflag <='0';
 end if;
 
 if aluop="0000" then
   alures <= A and B;
 elsif aluop="0001" then
     alures <= A or B;
 elsif aluop="0010" then
     alures <= STD_LOGIC_VECTOR(unsigned(A)+ unsigned (B));    
 elsif aluop="0110" then
     alures <= STD_LOGIC_VECTOR(unsigned(A)- unsigned (B)); 
 elsif aluop="0111" then
     if unsigned(A) < unsigned (B) then
         alures<= x"00000001";
     else 
	      alures<= x"00000000";
     end if;
elsif aluop="1100" then
     alures <= A nor B;
   else 
     alures <=x"00000000";
end if;


end process;	  
end Behavioral;

