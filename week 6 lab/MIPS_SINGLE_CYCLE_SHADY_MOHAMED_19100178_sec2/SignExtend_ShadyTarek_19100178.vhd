----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:20:04 04/11/2022 
-- Design Name: 
-- Module Name:    SignExtend_ShadyTarek_19100178 - Behavioral 
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

entity SignExtend_ShadyTarek_19100178 is
    Port ( inputt : in  STD_LOGIC_VECTOR (15 downto 0);
           outputt : out  STD_LOGIC_VECTOR (31 downto 0));
end SignExtend_ShadyTarek_19100178;

architecture Behavioral of SignExtend_ShadyTarek_19100178 is

begin
process (inputt) begin
if inputt(15)= '0' then 
 outputt <= x"0000" & inputt;
elsif inputt(15)='1' then 
 outputt <= x"ffff" & inputt;
 end if;
end process;


end Behavioral;

