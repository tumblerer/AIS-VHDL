
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
           Comp_In : in std_logic_vector(0 downto 0);
           Proposed_LPR : out  STD_LOGIC_VECTOR (STATE_SIZE downto 0);
           x_out : out std_logic_vector(STATE_SIZE downto 0);
           seed : in  std_logic_vector(2048 downto 0)
    );
end Evaluator;



architecture Behavioral of Evaluator is
	-- States
	TYPE state_type is (idle, load_rng, running);
	signal state,nstate : state_type;

	signal Sub1Result : std_logic_vector(63 downto 0) := (others => '0');
	signal Add1Result : std_logic_vector(63 downto 0) := (others => '0');
	signal Mult1Result : std_logic_vector(63 downto 0) := (others => '0');
	signal Mult2Result : std_logic_vector(63 downto 0) := (others => '0');

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
          result => Mult2Result
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
			Proposed_sample(1) <= Add1Result;
			Proposed_sample(2 to TOTAL_PIPE-12) <= Proposed_sample(1 to TOTAL_PIPE-1-12);
			Proposed_Sample_out <= Proposed_sample(TOTAL_PIPE-12);
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
		

	State_machine: PROCESS(state, nstate, Mult2Result, load_rng_counter, seed, Comp_In,Proposed_Sample_out, Old_Sample_Out)
	begin
		-- Negate result of LPR
		Proposed_LPR(STATE_SIZE) <= not Mult2Result(STATE_SIZE);
		Proposed_LPR(STATE_SIZE-1 downto 0) <= Mult2Result(STATE_SIZE-1 downto 0);
		
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
				if Comp_In = "1" then
					x_out <= Proposed_Sample_out;
				else
					x_out <= Old_Sample_Out;	
				end if;

		end case;
	end process;



end Behavioral;

