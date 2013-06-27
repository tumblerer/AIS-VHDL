LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.Pack.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY LPR_Sub_tb IS
END LPR_Sub_tb;
 
ARCHITECTURE behavior OF LPR_Sub_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LPR_Subtract
    PORT(
         a : IN  std_logic_vector(63 downto 0);
         b : IN  std_logic_vector(63 downto 0);
         clk : IN  std_logic;
         result : OUT  std_logic_vector(63 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a1 : std_logic_vector(63 downto 0) := (others => '0');
   signal b : std_logic_vector(63 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal result : std_logic_vector(63 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LPR_Subtract PORT MAP (
          a => a1,
          b => b,
          clk => clk,
          result => result
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
      a1(63 downto 54)<= "0100000000";
	--	b(63 downto 54)<= "0001000000";
		b <= MEAN;
		wait for clk_period;
		a1(63 downto 54)<= "0011111111";
--		b(63 downto 54)<= "0000100000";
      wait;
   end process;

END;
