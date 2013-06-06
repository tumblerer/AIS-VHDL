library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Pack.ALL;
--library UNISIM;
--use UNISIM.VComponents.all;

-- Calculating intitial X values
-- Total time - 128 + 12 + 15 = 155
entity Generate_Sample is
    Port (	
      clk : in std_logic;
				reset : in std_logic;
				activate: in std_logic;
        seed : in std_logic;
				sample_output : out  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
        start_core : in std_logic;
        -- Run Parameters
        mean_gen : in std_logic_vector(PRECISION-1 downto 0);
        standarddev_Gen : in std_logic_vector(PRECISION-1 downto 0)
	); 

end Generate_Sample;

architecture Behavorial of Generate_Sample is
	TYPE state_type is (idle, load_rng, running);
	--state
	signal state,nstate : state_type;

	-- RNG Signal
	signal rng_mode_norm, rng_ce_norm, s_in_norm : std_logic;
	signal rng_norm: std_logic_vector(PRECISION-1 downto 0);	
	signal rng_norm_out: std_logic_vector(16 downto 0); 
	signal Sub1Result_Gen, Mult1Result_Gen : std_logic_vector(PRECISION-1 downto 0):=(OTHERS =>'0');
	

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
  CONV64: if PRECISION = 64 generate begin
  RNG_NORM_CONV: ENTITY work.RNG_Norm_FixedtoFloat PORT MAP (
	    a => rng_norm_out,
	    clk => clk,
	    result => rng_norm
	);
  end generate;

	-- X - Mean
	-- 12 cycles
  SUB64 : if PRECISION = 64 generate begin
  SUB1: ENTITY work.LPR_Subtract PORT MAP (
        a => rng_norm,
        b => MEAN_Gen,
        clk => clk,
        result => Sub1Result_Gen
    );
  end generate;
	--(X-Mean)/Sd
	-- 15 cycles
  MULT64 : if PRECISION = 64 generate begin
  	MULT1: ENTITY work.LPR_Mult PORT MAP (
        a => Sub1Result_Gen,
        b => StandardDev_Gen,
        clk => clk,
        result => sample_output
    );
    end generate;

    State_Machine_clk: PROCESS
    begin
    WAIT UNTIL clk'EVENT AND clk='1';
      if reset='1' then
        state<= idle;
      else
        state<= nstate;
      end if;
    end process State_Machine_clk;  

  	Control_sync: PROCESS
  	begin
  	WAIT UNTIL clk'EVENT AND clk='1';
  		if reset = '1' then
  			load_rng_counter <= 0;
  		elsif state = load_rng then
        if load_rng_counter < 128 then
  			  load_rng_counter <= load_rng_counter + 1;
  		  end if;
  	end if;
  	end process Control_sync;

  	State_machine: PROCESS (state, nstate, start_core, load_rng_counter,seed)
  	begin

  		case(state) is
  			when idle =>
          if start_core = '1' and load_rng_counter < 128 then
  				  nstate <= load_rng;
          elsif activate = '1' then
            nstate <= running;
          else 
            nstate <= idle;
          end if;
				  rng_mode_norm <= '0';
  				rng_ce_norm <= '0';
			   	s_in_norm <= seed;
  			when load_rng =>
  				nstate <= load_rng;
  				rng_mode_norm <= '1';
  				rng_ce_norm <= '1';
  				if load_rng_counter = 1 then
  					s_in_norm <= seed;
  				elsif load_rng_counter >= 127 then
  					rng_mode_norm <= '0';
  					nstate<= running;
				  	s_in_norm <= seed;
  				else
  					s_in_norm <= seed;
  				end if;
  			when running =>
  				s_in_norm <= seed;
  				rng_ce_norm <= '1';
  				rng_mode_norm <= '0';
  				nstate <= running;
  		end case;
  	end process State_machine;

end architecture ; -- Behavourial