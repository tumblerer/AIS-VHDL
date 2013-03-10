----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:40:07 03/08/2013 
-- Design Name: 
-- Module Name:    Comparator - Behavioral 
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

entity Comparator is
    Port ( X_in : in  STD_LOGIC_VECTOR (63 downto 0);
           Output : out  STD_LOGIC_VECTOR (63 downto 0);
           Mem_Addr_B_In : out  STD_LOGIC_VECTOR (63 downto 0);
           Mem_Data_B_In : in  STD_LOGIC_VECTOR (63 downto 0);
           Mem_Addr_B_Out : in  STD_LOGIC_VECTOR (63 downto 0);
           Mem_Data_B_Out : out  STD_LOGIC_VECTOR (63 downto 0);
           Beta : in  STD_LOGIC_VECTOR (63 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           active : in  STD_LOGIC);
end Comparator;

architecture Behavioral of Comparator is

begin


end Behavioral;

