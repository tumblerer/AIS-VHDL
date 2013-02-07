library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity target_density is
    Port ( CLK : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Eta : in  STD_LOGIC_VECTOR (31 downto 0);
           Output : out  StateArray);
end target_density;

architecture Behavioral of target_density is

begin


end Behavioral;

