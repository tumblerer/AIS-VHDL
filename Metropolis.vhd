
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Pack.ALL;

entity Metropolis is
    Port ( CLK : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           State : in  StateArray;
           Eta : in  std_logic_vector(7 downto 0;
           resultState : out  StateArray);
end Metropolis;

architecture Behavioral of Metropolis is

begin


end Behavioral;

