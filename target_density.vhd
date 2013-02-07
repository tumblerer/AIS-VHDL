library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity target_density is
    Port ( CLK : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Eta : in  STD_LOGIC_VECTOR (ETA_SIZE downto 0);
           Output : out  StateArray);
end target_density;

architecture Behavioral of target_density is

	SIGNAL LPROut					: std_logic_vector(LPR_SIZE downto 0);
	SIGNAL rngOut					: std_logic_vector(31 downto 0);
	SIGNAL ce,mode,s_in,s_out	: std_logic;
begin

LPR1 : ENTITY work.LPR
	PORT MAP(
		State => x,
		Eta 	=>	Eta,
		Output=> LPROut
);
RNG : ENTITY work.rng_n1024_r32_t5_k32_s1c48_SR
	GENERIC MAP (K => 32)
	PORT MAP(
		CLK => CLK,
		ce => ce,
		mode => mode,
		s_in => s_in,
		s_out => s_out,
		rng 	=> rngOut
);



end Behavioral;

