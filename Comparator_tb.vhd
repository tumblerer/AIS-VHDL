LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY Comparator_tb IS
END Comparator_tb;
 
ARCHITECTURE behavior OF Comparator_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparator
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         activate_in : IN  std_logic;
         LPR_In : IN  std_logic_vector(63 downto 0);
         CompResult : OUT  std_logic_vector(0 downto 0);
         Mem_Addr_B_In : OUT  std_logic_vector(31 downto 0);
         Mem_Data_B_In : IN  std_logic_vector(63 downto 0);
         Mem_Addr_B_Out : IN  std_logic_vector(31 downto 0);
         Mem_Data_B_Out : OUT  std_logic_vector(63 downto 0);
         Beta : IN  std_logic_vector(63 downto 0);
         activate_out : OUT  std_logic;
         seed : IN  std_logic_vector(2048 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal activate_in : std_logic := '0';
   signal LPR_In : std_logic_vector(63 downto 0) := (others => '0');
   signal Mem_Data_B_In : std_logic_vector(63 downto 0) := (others => '0');
   signal Mem_Addr_B_Out : std_logic_vector(31 downto 0) := (others => '0');
   signal Beta : std_logic_vector(63 downto 0) := (others => '0');
   signal seed : std_logic_vector(2048 downto 0) := (others => '0');

 	--Outputs
   signal CompResult : std_logic_vector(0 downto 0);
   signal Mem_Addr_B_In, addra : std_logic_vector(31 downto 0);
   signal Mem_Data_B_Out : std_logic_vector(63 downto 0);
   signal activate_out : std_logic;

   --Memory
       signal wea : std_logic_vector(7 downto 0) := (others => '0');
        signal dina : std_logic_vector(63 downto 0) := (others => '0');


   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ENTITY work.Comparator PORT MAP (
          clk => clk,
          reset => reset,
          activate_in => activate_in,
          LPR_In => LPR_In,
          CompResult => CompResult,
          Mem_Addr_B_In => Mem_Addr_B_Out,
          Mem_Data_B_In => Mem_Data_B_Out,
          Mem_Addr_B_Out => Mem_Addr_B_In,
          Mem_Data_B_Out => Mem_Data_B_In,
          Beta => Beta,
          activate_out => activate_out,
          seed => seed
        );

         BRAM: ENTITY work.Dual_Port_BRAM PORT MAP (
          clka => clk,
          wea => wea,
          addra => addra,
          dina => dina,
          clkb => clk,
          rstb => reset,
          addrb => Mem_addr_b_out,
          doutb => Mem_Data_B_Out
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
      reset <='0';
      -- Set beta to 0.5
      Beta <= "0011111111000000000000000000000000000000000000000000000000000000";
      wea <= x"FF";
      wait for clk_period*10;
      addra(7 downto 0)<=  x"00";
      wait for clk_period;
      -- write 0.5 to mem location 0
      dina(63 downto 0) <= "0011111111000000000000000000000000000000000000000000000000000000";
      wait for clk_period;
      -- write 0.25 to mem location 8
      addra(31 downto 0)<=  std_logic_vector(to_unsigned(8,addra'length));
      wait for clk_period;
      dina(63 downto 0) <= "0011111110100000000000000000000000000000000000000000000000000000";

      wait for clk_period*2050.5;


      activate_in <= '1';
      wait for clk_period*54;
      LPR_In <= x"c029000000000000";
      wait for clk_period;
      LPR_In <= x"c044400000000000";

      wait;
   end process;

END;
