LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Evaluator_tb IS
END Evaluator_tb;
 
ARCHITECTURE behavior OF Evaluator_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Evaluator
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         xState : IN  std_logic_vector(63 downto 0);
         Comp_In : IN  std_logic;
         Proposed_LPR : OUT  std_logic_vector(63 downto 0);
         x_out : OUT  std_logic_vector(63 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal xState : std_logic_vector(63 downto 0) := (others => '0');
   signal Comp_In : std_logic := '0';

 	--Outputs
   signal Proposed_LPR : std_logic_vector(63 downto 0);
   signal x_out : std_logic_vector(63 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Evaluator PORT MAP (
          clk => clk,
          reset => reset,
          xState => xState,
          Comp_In => Comp_In,
          Proposed_LPR => Proposed_LPR,
          x_out => x_out
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
		reset <= '0';
		xstate <= x"3fe0000000000000";
      wait for clk_period*2049;

      -- insert stimulus here 

      wait;
   end process;

END;
