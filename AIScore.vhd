library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Pack.ALL;

entity AIScore is
    Port ( CLK : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Initial : in  StateArray;
           Eta : in  etas;
           Result : out  AisResult);
end AIScore;

architecture Behavioral of AIScore is

begin


end Behavioral;

