
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY BRAM_tb IS
END BRAM_tb;
 
ARCHITECTURE behavior OF BRAM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Dual_Port_BRAM
    PORT(
         clka : IN  std_logic;
         wea : IN  std_logic_vector(7 downto 0);
         addra : IN  std_logic_vector(31 downto 0);
         dina : IN  std_logic_vector(63 downto 0);
         clkb : IN  std_logic;
         rstb : IN  std_logic;
         addrb : IN  std_logic_vector(31 downto 0);
         doutb : OUT  std_logic_vector(63 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clka : std_logic := '0';
   signal wea : std_logic_vector(7 downto 0) := (others => '0');
   signal addra : std_logic_vector(31 downto 0) := (others => '0');
   signal dina : std_logic_vector(63 downto 0) := (others => '0');
   signal clkb : std_logic := '0';
   signal rstb : std_logic := '0';
   signal addrb : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal doutb : std_logic_vector(63 downto 0);
	signal output: std_logic_vector(63 downto 0);
   -- Clock period definitions
   constant clka_period : time := 10 ns;
   constant clkb_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Dual_Port_BRAM PORT MAP (
          clka => clka,
          wea => wea,
          addra => addra,
          dina => dina,
          clkb => clkb,
          rstb => rstb,
          addrb => addrb,
          doutb => doutb
        );

   -- Clock process definitions
   clka_process :process
   begin
		clka <= '0';
		wait for clka_period/2;
		clka <= '1';
		wait for clka_period/2;
   end process;
 
   clkb_process :process
   begin
		clkb <= '0';
		wait for clkb_period/2;
		clkb <= '1';
		wait for clkb_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clka_period*10;
		wea <= x"0F";
		wait for clka_period*10;
		addra(7 downto 0)<=  x"0F";
		wait for clka_period;
		dina(7 downto 0) <= x"FF";
		wait for clka_period;
		addra(7 downto 0) <= x"FF";
		wait for clka_period;
		dina(7 downto 0) <= x"AA";
		wait for clka_period*20;
		
		addrb(7 downto 0)<= x"0F";
		wait for clka_period*3;		
		output <= doutb;
		addrb(7 downto 0) <= x"FF";
		wait for clka_period*3;
		output <= doutb;	
      -- insert stimulus here 

      wait for clka_period*10;
   end process;

END;
