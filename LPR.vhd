library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Pack.ALL;

entity LPR is
    Port (	clk : in std_logic;
				reset : in std_logic;
				activate: in std_logic;
				State : in  STD_LOGIC_VECTOR (STATE_SIZE downto 0);
				Output : out  STD_LOGIC_VECTOR (STATE_SIZE downto 0)
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

   --Inputs
   signal a : std_logic_vector(63 downto 0) := (others => '0');
   signal b : std_logic_vector(63 downto 0) := (others => '0');
	
	signal Sub1Result : std_logic_vector(63 downto 0) := (others => '0');
	signal Mult1Result : std_logic_vector(63 downto 0) := (others => '0');
	signal Div1Result : std_logic_vector(63 downto 0) := (others => '0');
 	--Outputs
   signal result : std_logic_vector(63 downto 0);
	
	--Control Signals
	signal  write_a : std_logic;
	signal data_in_a : std_logic_vector(63 downto 0);
	
begin
	-- Xi - Mean
   SUB1: ENTITY work.LPR_Subtract PORT MAP (
          a => a,
          b => b,
          clk => clk,
          result => Sub1Result
        );

	-- LprNew - LprOld	  
	SUB2: ENTITY work.LPR_Subtract PORT MAP (
          a => a,
          b => b,
          clk => clk,
          result => Sub1Result
        );
		  
	-- (Xi - Mean)^2	  
	MULT1: ENTITY work.LPR_Mult PORT MAP(
          a => Sub1Result,
          b => Sub1Result,
          clk => clk,
          result => Mult1Result
        );
		  
	-- Sigma^2(Possibly not needed)
	MULT2: ENTITY work.LPR_Mult PORT MAP(
          a => Sub1Result,
          b => Sub1Result,
          clk => clk,
          result => Sub1Result
        );
		  
	-- (Xi - Mean)^2 / Sigma^2	  
	DIV1: ENTITY work.LPR_Divide PORT MAP(
          a => Mult1Result,
          b => Variance,
          clk => clk,
          result => Div1Result
        );
		  
	--Dual Port BRAM
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

	Control: PROCESS(clk)
		begin
		WAIT UNTIL clk'EVENT AND clk='1';
			if activate ='0' OR reset='1' then
				-- Sort out counters
		
			elsif activate='1' then
				--Incr Counters
			end if;
			
		end process Control;
end Behavioral;

