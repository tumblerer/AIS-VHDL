library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LPR is
    Port ( State : in  StateArray;
           Eta : in  STD_LOGIC_VECTOR (7 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end LPR;

architecture Behavioral of LPR is

begin


end Behavioral;

