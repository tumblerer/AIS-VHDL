library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Pack.ALL;

ENTITY AIScore IS
    Port ( CLK : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Initial : in  StateArray;
           Eta : in  etas;
           Result : out  AisResult);
end AIScore;

architecture Behavioral OF AIScore IS
	SIGNAL currEta					: std_logic_vector(ETA_SIZE-1 downto 0);
	SIGNAL currState, preState	: StateArray;
	SIGNAL resultState			: StateArray;
	SIGNAL currLPR, prevLPR		: std_logic_vector(LPR_SIZE-1 downto 0);
begin

LPR1 : ENTITY work.LPR
	PORT MAP(
		State => currState,
		Eta 	=>	currEta,
		Output=> currLPR
);

LPR2 : ENTITY work.LPR
	PORT MAP (
		State => currState,
		Eta 	=>	currEta,
		Output=> prevLPR
	);

MET : ENTITY work.Metropolis
	PORT MAP(
		CLK  			=> CLK,
		reset			=> reset,
		State 		=> currState,
		Eta			=> currEta,
		resultState	=> resultState
	);
		

end Behavioral;

