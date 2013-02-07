
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Pack.ALL;

entity Metropolis is
    Port ( CLK : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           State : in  StateArray;
           Eta : in  std_logic_vector(ETA_SIZE downto 0);
           resultState : out  StateArray);
end Metropolis;

architecture Behavioral of Metropolis is
	SIGNAL	currState	: StateArray;
	SIGNAL 	currLPR		: std_logic_vector ( LPR_SIZE downto 0);
begin

LPR1 : ENTITY work.LPR
	PORT MAP(
		State => State,
		Eta 	=>	Eta,
		Output=> currLPR
);

end Behavioral;

