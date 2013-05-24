LIBRARY work;
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE std.textio.ALL;
use ieee.std_logic_textio.all;
use work.Pack.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY LPR_Total_tb IS
END LPR_Total_tb;
 
ARCHITECTURE behavior OF LPR_Total_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LPR_Total
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         dina_beta : IN  std_logic_vector(63 downto 0);
         addra_beta : IN  std_logic_vector(31 downto 0);
         wea_beta : IN  std_logic_vector(7 downto 0);
         dina_seed : IN  std_logic_vector(63 downto 0);
         wea_seed : IN  std_logic_vector(7 downto 0);
         addra_seed : IN  std_logic_vector(31 downto 0);
         addrb_X : IN  std_logic_vector(31 downto 0);
         doutb_x : OUT  std_logic_vector(63 downto 0);
         complete : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal dina_beta : std_logic_vector(63 downto 0) := (others => '0');
   signal addra_beta : std_logic_vector(31 downto 0) := (others => '0');
   signal wea_beta : std_logic_vector(7 downto 0) := (others => '0');
   signal dina_seed : std_logic_vector(63 downto 0) := (others => '0');
   signal wea_seed : std_logic_vector(7 downto 0) := (others => '0');
   signal addra_seed : std_logic_vector(31 downto 0) := (others => '0');
   signal addrb_X : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal doutb_x : std_logic_vector(63 downto 0);
   signal complete : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LPR_Total PORT MAP (
          clk => clk,
          reset => reset,
          dina_beta => dina_beta,
          addra_beta => addra_beta,
          wea_beta => wea_beta,
          dina_seed => dina_seed,
          wea_seed => wea_seed,
          addra_seed => addra_seed,
          addrb_X => addrb_X,
          doutb_x => doutb_x,
          complete => complete
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

      -- insert stimulus here 

      wait;
   end process;

END;
