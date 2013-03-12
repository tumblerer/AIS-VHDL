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
    signal seed:  std_logic_vector(2048 downto 0) :="111111001100110001001100001101110011000101001101010110011001110101110110000111110000000001101101100010101100100000100110000000111100100000010000000001100011110000011001110000100100111111001001100001111010001011001001000011010111000000101011000000011100110010110110110001110000011111011110000100011110011010110010100111010110100010101110001111001110101101011010001100111011110101010011111101111101100011001110000110101000001001101001011111011000010100100001010001010000001010011000011001110101100000111000111101011010111100110010101111011011000010101001000110101000000000111011110101111101111100101011110010111001001100001110111010000011101000010011111100100100001011010101011010011101100010110000001110110100111110111001111010111000001010100000101111010100111101001111001010101011111101101101011100001111011011011100001111011110101010000111011110011010011101001100001010000110101100011001110110111001001001001101100111101010111000100010111010101100011110111101011110110111100010100000100111000101000011111110010010101110110010110110000010010111101011010111010011010000010100011100111110100110001001111011101001101101010011000011010000010010110010100111001101101101001100010111010111011100010110011111010011100110000111010010000010011111101011111100001011001000010001001010100110001001000110001001001101101011101100110111111000011010011011111101000101011100110100101000101010111011011100001110111100011100010000011000110000111111011111000011100111110011110010010110101111101110111110010000001101101101000100011110101001000000000010010000110101111100100110001011001111001111101101101011101101001111000001000100011010010011111011000100100011101000000100010000010011011110100100111001001110000100010110000001010000001011011011111011010001100010101100000000010011101111001011110011000001000001000001001110100001100100111000100110010101010011100000001110010110011111010110110011111010000010100011110101010100011101001101011011111111110101110010001011100011000010000101100000101001010101110101011100010010101001011110101110001111000110100000110101100111101";


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
     
      wait for clk_period;
      -- write 0.9 to mem location 16
      addra(31 downto 0)<=  std_logic_vector(to_unsigned(16,addra'length));
      wait for clk_period;
      dina(63 downto 0) <= x"3feccccccccccccd";

      wait for clk_period*2050.5;


      activate_in <= '1';
      wait for clk_period*54;
      LPR_In <= x"c029000000000000";
      wait for clk_period;
      LPR_In <= x"c044400000000000";

      wait;
   end process;

END;
