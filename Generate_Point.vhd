library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Pack.ALL;

-- Calculating intitial X values
-- Total time - 128 + 12 + 15 = 155
entity Generate is
    Port (	clk : in std_logic;
				reset : in std_logic;
				activate: in std_logic;
				Output : out  STD_LOGIC_VECTOR (STATE_SIZE downto 0)
	); 

end Generate;

architecture Behavourial of Generate_Point is

	-- Seed
	signal seed : std_logic_vector(63 downto 0):=x"0123456789abcdef";

	-- RNG Signal
	signal rng_mode_norm, rng_ce_norm, s_in_norm : std_logic;
	signal rng_norm: std_logic_vector(63 downto 0);	
	signal rng_norm_out: std_logic_vector(16 downto 0); 
	signal Sub1Result_Gen, Mult1Result_Gen : std_logic_vector(63 downto 0);


	--Counters
	signal load_rng_counter : integer range 0 to 128 :=0;

begin
	--X
	 RNG_NORMAL : ENTITY work.grng_pwclt8 PORT MAP (
	  iClk => clk,
	  iCE => rng_ce_norm,
	  iLoadEn => rng_mode_norm,
	  iLoadData => s_in_norm,
	  oRes => rng_norm_out
	); 

	--Float(X)
	RNG_NORM_CONV: ENTITY work.RNG_Norm_FixedtoFloat PORT MAP (
	    a => rng_norm_out,
	    clk => clk,
	    result => rng_norm
	);

	-- X - Mean
	-- 12 cycles
    SUB1: ENTITY work.LPR_Subtract PORT MAP (
        a => rng_norm,
        b => MEAN_Gen,
        clk => clk,
        result => Sub1Result_Gen
    );

	--(X-Mean)/Sd
	-- 15 cycles
  	MULT1: ENTITY work.LPR_Mult PORT MAP (
        a => Sub1Result_Gen,
        b => StandardDev_Gen,
        clk => clk,
        result => Output
    );

  	Control_sync: PROCESS
  	begin
  	WAIT UNTIL clk'EVENT AND clk='1';
  		if reset = '1' then
  			load_rng_counter <= 0;
  			state <= idle;
  		elsif reset ='0' AND activate='0' AND load_rng_counter < 128 then
  			load_rng_counter <= load_rng_counter + 1;
  			state <= nstate;
  		else 
  			state <= nstate;
  	end if;
  	end process Control_sync;

  	State_machine PROCESS (state, nstate, load_rng_counter)
  	begin

  		case(state) is
  			when idle =>
  				nstate <= load_rng;
  			when load_rng =>
  				nstate <= load_rng;
  				rng_mode_norm <= '1';
  				rng_ce_norm <= '1';
  				if load_rng_counter = 1 then
  					s_in_norm <= seed(0);
  				elsif load_rng_counter >= 128 then
  					rng_mode_norm < '0';
  					nstate<= running;
  				else
  					s_in_norm <= seed(load_rng_counter);
  				end if;
  			when running =>
  				nstate <= running;
  		end case;
  	end process State_machine;

end architecture ; -- Behavourial