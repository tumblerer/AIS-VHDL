library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Pack.ALL;

entity LPR is
    Port (	clk : in std_logic;
				reset : in std_logic;
				activate: in std_logic;
				xState : in  STD_LOGIC_VECTOR (STATE_SIZE downto 0);
				Output : out  STD_LOGIC_VECTOR (STATE_SIZE downto 0);
				Beta_in : in  STD_LOGIC_VECTOR (63 DOWNTO 0)
	); 
		  
end LPR;

architecture Behavioral of LPR is

component Dual_Port_BRAM IS
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    clkb : IN STD_LOGIC;
    rstb : IN STD_LOGIC;
    addrb : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
  );
END component;
 
component rng_n2048_r64_t5_k32_sbfbaac is
  port(
    clk:in std_logic;
    ce:in std_logic;
    mode:in std_logic;
    s_in:in std_logic;
    s_out:out std_logic;
    rng:out std_logic_vector(63 downto 0)
  );
end component;

	-- States
	TYPE state_type is (idle, load_rng, running);

	signal seed:  std_logic_vector(2047 downto 0) :="11111001100110001001100001101110011000101001101010110011001110101110110000111110000000001101101100010101100100000100110000000111100100000010000000001100011110000011001110000100100111111001001100001111010001011001001000011010111000000101011000000011100110010110110110001110000011111011110000100011110011010110010100111010110100010101110001111001110101101011010001100111011110101010011111101111101100011001110000110101000001001101001011111011000010100100001010001010000001010011000011001110101100000111000111101011010111100110010101111011011000010101001000110101000000000111011110101111101111100101011110010111001001100001110111010000011101000010011111100100100001011010101011010011101100010110000001110110100111110111001111010111000001010100000101111010100111101001111001010101011111101101101011100001111011011011100001111011110101010000111011110011010011101001100001010000110101100011001110110111001001001001101100111101010111000100010111010101100011110111101011110110111100010100000100111000101000011111110010010101110110010110110000010010111101011010111010011010000010100011100111110100110001001111011101001101101010011000011010000010010110010100111001101101101001100010111010111011100010110011111010011100110000111010010000010011111101011111100001011001000010001001010100110001001000110001001001101101011101100110111111000011010011011111101000101011100110100101000101010111011011100001110111100011100010000011000110000111111011111000011100111110011110010010110101111101110111110010000001101101101000100011110101001000000000010010000110101111100100110001011001111001111101101101011101101001111000001000100011010010011111011000100100011101000000100010000010011011110100100111001001110000100010110000001010000001011011011111011010001100010101100000000010011101111001011110011000001000001000001001110100001100100111000100110010101010011100000001110010110011111010110110011111010000010100011110101010100011101001101011011111111110101110010001011100011000010000101100000101001010101110101011100010010101001011110101110001111000110100000110101100111101";

   --Inputs
    signal a : std_logic_vector(63 downto 0) := (others => '0');
    signal b : std_logic_vector(63 downto 0) := (others => '0');
	
	signal s_in_uni, s_in_norm, s_out_norm, s_out_uni : std_logic;
	
	signal Sub1Result, Sub1Result_reg : std_logic_vector(63 downto 0) := (others => '0');
	signal Add1Result : std_logic_vector(63 downto 0) := (others => '0');
	signal Mult1Result,Mult2Result : std_logic_vector(63 downto 0) := (others => '0');
	signal Div1Result : std_logic_vector(63 downto 0) := (others => '0');
	signal Exp1Result : std_logic_vector(63 downto 0) := (others => '0');
	signal CompResult: std_logic_vector (0 downto 0);
	signal Mult2Result_Ext, Exp1Result_Ext : std_logic_vector (65 downto 0);
	signal Shift_in, Shift_out : std_logic_vector(63 downto 0);
    signal  
    
 	--Outputs
    signal result : std_logic_vector(63 downto 0);
    signal rng_norm, rng_uni: std_logic_vector(63 downto 0);	
    
	-- Counters
	signal sample_counter : integer range 0 to 108 := 0;
	signal load_rng_counter : integer range 0 to 2048 :=0;
	signal LPR_old_counter : integer range 0 to 1024 := 0;
    --Control Signals
	
	signal  write_a : std_logic_vector(7 DOWNTO 0);
	signal data_in_a,data_out_b : std_logic_vector(63 downto 0);
	signal addr_a, addr_b : std_logic_vector (31 downto 0);
	signal rng_mode_uni, rng_ce_uni, rng_mode_norm, rng_ce_norm: std_logic;
	signal state,nstate : state_type;
	
begin
	-- RNG + Xi
    ADD1: ENTITY work.LPR_Add PORT MAP (
          a => xState,
          b => rng_out_norm,
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

	-- LprNew - LprOld	  
	-- 12 cycles
	SUB2: ENTITY work.LPR_Subtract PORT MAP (
          a => DivResult1,
          b => data_out_b,
          clk => clk,
          result => Sub1Result
        );
		  
	-- (Xi - Mean)^2
	-- 9 cycles 
	MULT1: ENTITY work.LPR_Mult PORT MAP(
          a => Sub1Result,
          b => Sub1Result,
          clk => clk,
          result => Mult1Result
        );
		  
	-- (LPRNew-LPROld) * eta
	-- 9 cycles
	MULT2: ENTITY work.LPR_Mult PORT MAP(
          a => Sub1Result,
          b => Beta_in,
          clk => clk,
          result => Mult2Result
        );
		  
	-- (Xi - Mean)^2 / Sigma^2
	-- 37 cycles
	DIV1: ENTITY work.LPR_Divide PORT MAP(
          a => Mult1Result,
          b => Variance,
          clk => clk,
          result => Div1Result
        );
        
	-- Exp ((LprNew-LprOld)*eta)
	-- Flopoco MSB are error bits
	EXP1: ENTITY work.FPExp_11_52_400 PORT MAP(
		 clk => clk, 
		 rst => reset,
         X => mult2Result_ext,
         R  => Exp1Result_ext
	);
	
	-- exp(d) < rng
	COMP1 : ENTITY work.LPR_ALessThanB PORT MAP ( 
			clk => clk,
		    a => Exp1Result,
			b => rng,
			result => CompResult
   );

		  
	--Dual Port BRAM
	-- 2 cycle write, 2 cycle read
	BRAM1: ENTITY work.Dual_Port_BRAM PORT MAP(
			 clka => clk,
			 wea => write_a,
			 addra => addr_a,
			 dina => data_in_a,
			 clkb => clk,
			 rstb => reset,
			 addrb => addr_b,
			 doutb => data_out_b
  );
  
  -- 2048 cycles to load
 RNG_UNIFORM: ENTITY work.rng_n2048_r64_t5_k32_sbfbaac PORT MAP(
    clk => clk,
    ce => rng_ce_uni,
    mode => rng_mode_uni,
    s_in => s_in_uni,
    s_out => s_out_uni,
    rng => rng_uni
  );
  
   -- 2048 cycles to load
 RNG_NORMAL: ENTITY work.rng_n2048_r64_t5_k32_sbfbaac PORT MAP(
    clk => clk,
    ce => rng_ce_norm,
    mode => rng_mode_norm,
    s_in => s_in_norm,
    s_out => s_out_norm,
    rng => rng_norm
  );
  
	-- Total pipeline 108
	Control_sync: PROCESS
		begin
		WAIT UNTIL clk'EVENT AND clk='1';
			if activate ='0' OR reset='1' then
				sample_counter <= 0;
				load_rng_counter <= 0;
			elsif activate='1' then
                -- Place output in shift register for use later
				shift_in <= AddResult1;
                if state = load_rng then
					load_rng_counter <= load_rng_counter + 1 ;
				else
					if sample_counter < 108 then
						sample_counter <= sample_counter + 1;
					end if;
                    if sample_counter > X then
                        LPR_old_counter <= lpr_old_counter + 1;
                    end if;
                end if;
			end if;
			
		end process Control_sync;
		
		State_Machine_clk: PROCESS
		begin
		WAIT UNTIL clk'EVENT AND clk='1';
			if reset='1' or activate ='0' then
				state<= idle;
			else
				state<= nstate;
			end if;
		end process State_machine_clk;	
		
		
		State_machine: PROCESS(state,nstate)
		variable flag_first_run: integer range 0 to 1 := 1;
		
		begin
			mult2Result_ext <= "00" & mult2result;
			Exp1Result <= Exp1Result_ext(63 downto 0);
		
			case (state) is
				when idle =>
					nstate <= load_rng;
						if flag_first_run = 1 then
							nstate<= load_rng;
							flag_first_run := 0;
						end if;
				when load_rng =>
					nstate <= load_rng;
					if load_rng_counter = 1 then
					   rng_ce <= '1';
						rng_mode <= '1';
						s_in <= seed(0);
					elsif load_rng_counter = 2048 then
						rng_mode <= '0';
						nstate<= running;
					else
						s_in <= seed(load_rng_counter);
					end if;	
				when running =>
					nstate <= running;
                    if sample_counter > X then
                        if LPR_old_counter =  then --Must change one before value needed
                            addr_b <= x"00";
                        end if;
                    end if;    
                    --Store sub1Result for a cycle because of memory latency
                    Sub1Result_reg <= Sub1Result;
					if sample_counter = 108 then
						if CompResult = "1" then
						-- Save to address and forward to next LPR unit
                            write_a <= '1';
                            addr_a <= x"00000000";
                            -- Pipe needs to be one step longer to allow for address change
                            data_in_a <= Shift_out;
							Output <= Shift_out;
						end if;
					end if;
			end case;
		end process;
		
		
end Behavioral;

