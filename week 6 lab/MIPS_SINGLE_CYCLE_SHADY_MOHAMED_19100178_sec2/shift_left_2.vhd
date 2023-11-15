----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:05:15 04/11/2022 
-- Design Name: 
-- Module Name:    ShiftLeft_ShadyTarek_19100178 - Behavioral 
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

entity ShiftLeft2_ShadyTarek_19100178 is
    Port ( inputt : in  STD_LOGIC_VECTOR (25 downto 0);
           outputt : out  STD_LOGIC_VECTOR (27 downto 0));
end ShiftLeft_ShadyTarek_19100178;

architecture Behavioral of ShiftLeft2_ShadyTarek_19100178 is

begin
outputt <= inputt (29 downto 0) &"00";

end Behavioral;

