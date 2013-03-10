
library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use work.Pack.ALL;
use IEEE.NUMERIC_STD.ALL;
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
           xState : in  STD_LOGIC_VECTOR (STATE_SIZE downto 0);
           Comp_In : in std_logic;
           Proposed_LPR : out  STD_LOGIC_VECTOR (STATE_SIZE downto 0);
           x_out : out std_logic_vector(STATE_SIZE downto 0)
    );
end Evaluator;



architecture Behavioral of Evaluator is
	-- States
	TYPE state_type is (idle, load_rng, running);
	signal state,nstate : state_type;

	signal seed:  std_logic_vector(2048 downto 0) :="111111001100110001001100001101110011000101001101010110011001110101110110000111110000000001101101100010101100100000100110000000111100100000010000000001100011110000011001110000100100111111001001100001111010001011001001000011010111000000101011000000011100110010110110110001110000011111011110000100011110011010110010100111010110100010101110001111001110101101011010001100111011110101010011111101111101100011001110000110101000001001101001011111011000010100100001010001010000001010011000011001110101100000111000111101011010111100110010101111011011000010101001000110101000000000111011110101111101111100101011110010111001001100001110111010000011101000010011111100100100001011010101011010011101100010110000001110110100111110111001111010111000001010100000101111010100111101001111001010101011111101101101011100001111011011011100001111011110101010000111011110011010011101001100001010000110101100011001110110111001001001001101100111101010111000100010111010101100011110111101011110110111100010100000100111000101000011111110010010101110110010110110000010010111101011010111010011010000010100011100111110100110001001111011101001101101010011000011010000010010110010100111001101101101001100010111010111011100010110011111010011100110000111010010000010011111101011111100001011001000010001001010100110001001000110001001001101101011101100110111111000011010011011111101000101011100110100101000101010111011011100001110111100011100010000011000110000111111011111000011100111110011110010010110101111101110111110010000001101101101000100011110101001000000000010010000110101111100100110001011001111001111101101101011101101001111000001000100011010010011111011000100100011101000000100010000010011011110100100111001001110000100010110000001010000001011011011111011010001100010101100000000010011101111001011110011000001000001000001001110100001100100111000100110010101010011100000001110010110011111010110110011111010000010100011110101010100011101001101011011111111110101110010001011100011000010000101100000101001010101110101011100010010101001011110101110001111000110100000110101100111101";
	
	signal Sub1Result : std_logic_vector(63 downto 0) := (others => '0');
	signal Add1Result : std_logic_vector(63 downto 0) := (others => '0');
	signal Mult1Result : std_logic_vector(63 downto 0) := (others => '0');

	--PipeLine
	constant TOTAL_PIPE : integer := 12+12+15+15+12+15+22+2; -- 105
	signal Proposed_Sample : pipeline_type(1 to TOTAL_PIPE-12);
	signal Old_Sample : pipeline_type(1 to TOTAL_PIPE);
	signal Proposed_sample_out, Old_Sample_out : std_logic_vector(63 downto 0):= (others => '0');

	-- Counters
	signal load_rng_counter : integer range 0 to 2049 :=0;

	-- RNG Signal
	signal rng_mode_norm, rng_ce_norm : std_logic;
	signal rng_norm : std_logic_vector(63 downto 0);	
	signal s_in_norm, s_out_norm : std_logic;
	signal rng_norm_out: std_logic_vector(16 downto 0);

begin
	-- RNG + Xi
	-- 12 cycles
    ADD1: ENTITY work.LPR_Add PORT MAP (
          a => xState,
			 -- 0.25
          b => x"0000000000000000",
			 --"0011111110100000000000000000000000000000000000000000000000000000",
			 --rng_norm,
          clk => clk,
          result => Add1Result
        );    
      
    -- Xi - Mean
	-- 12 cycles
    SUB1: ENTITY work.LPR_Subtract PORT MAP (
          a => Add1Result,
          b => MEAN,
          clk => clk,
          result => Sub1Result
        );
		  
	-- (Xi - Mean)^2
	-- 15 cycles 
	MULT1: ENTITY work.LPR_Mult PORT MAP(
          a => Sub1Result,
          b => Sub1Result,
          clk => clk,
          result => Mult1Result
        );

		  
	-- (Xi - Mean)^2 / 1/(Sigma^2)
	-- 15 cycles
	MULT2: ENTITY work.LPR_Mult PORT MAP(
          a => Mult1Result,
          b => Variance,
          clk => clk,
          result => Proposed_LPR
        );

 	RNG_NORMAL : ENTITY work.grng_pwclt8 PORT MAP(
		iClk => clk,
		iCE => rng_ce_norm,
		iLoadEn => rng_mode_norm,
		iLoadData => s_in_norm,
		oRes => rng_norm_out
	); 

	RNG_NORM_CONV: ENTITY work.RNG_Norm_FixedtoFloat PORT MAP (
	    a => rng_norm_out,
	    clk => clk,
	    result => rng_norm
	  );
  
	Control_sync: PROCESS
	begin
	WAIT UNTIL clk'EVENT AND clk='1';
		if  reset='1' then
			load_rng_counter <= 0;
		elsif load_rng_counter < 2048 then
			load_rng_counter <= load_rng_counter + 1;
		else --activate_in = 1
			-- Pipeline old sample incase its needed
			Old_Sample(1) <= xState;
			Old_Sample(2 to TOTAL_PIPE) <= Old_sample(1 to TOTAL_PIPE-1);
			Old_Sample_Out <= Old_sample(TOTAL_PIPE);
			-- Shifting of proposed value to end of pipeline
			Proposed_Sample_out <= Proposed_sample(TOTAL_PIPE-12);
			Proposed_sample(2 to TOTAL_PIPE-12) <= Proposed_sample(1 to TOTAL_PIPE-1-12);
			Proposed_sample(1) <= Add1Result;
		end if;
	end process;


	State_Machine_clk: PROCESS
	begin
	WAIT UNTIL clk'EVENT AND clk='1';
		if reset='1' then
			state<= idle;
		else
			state<= nstate;
		end if;
	end process State_Machine_clk;	
		

	State_machine: PROCESS(state, nstate, load_rng_counter, seed, Comp_In,Proposed_Sample_out, Old_Sample_Out)
	begin
		case (state) is
			when idle =>
				rng_ce_norm <= '0';
				rng_mode_norm <= '0';
				s_in_norm <= seed(load_rng_counter);
				nstate <= load_rng;
				x_out <= (others => '0');

			when load_rng =>
				nstate <= load_rng;
				rng_ce_norm <= '1';
				rng_mode_norm <= '1';
				if load_rng_counter = 1 then
					s_in_norm <= seed(0);
				elsif load_rng_counter >= 2048 then
					rng_mode_norm <= '0';
					nstate<= running;
					s_in_norm <= seed(load_rng_counter);
				else
					s_in_norm <= seed(load_rng_counter);
				end if;
				x_out <= (others => '0');
			
			when running =>
				rng_ce_norm <= '1';
				rng_mode_norm <= '0';
				s_in_norm <= seed(load_rng_counter);
				nstate <= running; 		
				if Comp_In = '1' then
					x_out <= Proposed_Sample_out;
				else
					x_out <= Old_Sample_Out;	
				end if;

		end case;
	end process;



end Behavioral;

