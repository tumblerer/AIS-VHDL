----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:53:42 03/10/2013 
-- Design Name: 
-- Module Name:    Evaluator - Behavioral 
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

entity Evaluator is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           xState : in  STD_LOGIC_VECTOR (63 downto 0);
           Proposed_x : out  STD_LOGIC_VECTOR (63 downto 0);
           Old_x : out  STD_LOGIC_VECTOR (63 downto 0));
end Evaluator;

architecture Behavioral of Evaluator is

begin


end Behavioral;

