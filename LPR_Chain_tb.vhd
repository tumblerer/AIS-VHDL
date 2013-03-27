
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY LPR_Chain_tb IS 
END LPR_Chain_tb;
 
ARCHITECTURE behavior OF LPR_Chain_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LPR_Chain
    PORT(
        clk : IN  std_logic;
        reset : IN  std_logic;
  		  addra_seed : in std_logic_vector(31 downto 0);
  		  addra_beta : in std_logic_vector(31 downto 0);
  		  dina_seed : in std_logic_vector(63 downto 0);
  		  dina_beta : in std_logic_vector(63 downto 0);
  		  wea_seed : in std_logic_vector(7 downto 0);
  		  wea_beta : in std_logic_vector(7 downto 0)
   ) ;
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal wea_beta : std_logic_vector(7 downto 0) := x"FF";
   signal wea_seed : std_logic_vector(7 downto 0) := x"FF";
   signal dina_seed : std_logic_vector(63 downto 0);
   signal dina_beta : std_logic_vector(63 downto 0);
   signal addra_beta : std_logic_vector(31 downto 0);
   signal addra_seed : std_logic_vector(31 downto 0);
   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LPR_Chain PORT MAP (
          clk => clk,
          reset => reset,
          addra_seed => addra_seed,
          addra_beta => addra_beta,
          dina_beta => dina_beta,
          dina_seed => dina_seed,
          wea_beta => wea_beta,
          wea_seed => wea_seed
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      reset <= '1';
      wait for 100 ns;	
      
      wait for clk_period*10;
      -- Load memory
      -- 0.0
      addra_beta <= std_logic_vector(to_unsigned(0,addra_beta'length));
      addra_seed <= std_logic_vector(to_unsigned(0,addra_seed'length));
      wait for clk_period;
      dina_beta <= "0011111110100000000000000000000000000000000000000000000000000000";
      dina_seed <= "0011111110100000000000000000000000000000000000000000000000000000";
      wait for clk_period;
      
      -- 0.5
      addra_beta <= x"00000008";
      addra_seed <= x"00000008";
      wait for clk_period;
      dina_beta <= "0011111111000000000000000000000000000000000000000000000000000000";
      dina_seed <= "0011111111000000000000000000000000000000000000000000000000000011";

      wait for clk_period;
      addra_beta <= x"00000010";
      addra_seed <= x"00000010";
      dina_beta <=  "0011111111010000000000000000000000000000000000000000000000000000";
      -- 1.0
      wait for clk_period;
      addra_beta <= x"00000018";
      addra_seed <= x"00000018";
      wait for clk_period;
      dina_beta <= "0011111111100000000000000000000000000000000000000000000000000000";
      dina_seed <= "0011111111100000000000000000000000000000000000000000000000000011";
      -- insert stimulus here 
      wait for clk_period;

      seed_load : for i in 1 to 100 loop
         addra_seed <= std_logic_vector(to_unsigned(i*8*2,addra_seed'length));
         wait for clk_period;
         dina_seed <= "0011111111100000000000000000000000000000000000000000000000000011";
         addra_seed <= std_logic_vector(to_unsigned((i-1)*8*2,addra_seed'length));
         wait for clk_period;
         dina_seed <= "0011111111100000000000000000000000000000000000000000000000000000";
      end loop ; -- seed_load
      reset <= '0';
      wait for clk_period*100;
      wait;
   end process;

END;
