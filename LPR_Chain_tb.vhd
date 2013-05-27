LIBRARY work;
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE std.textio.ALL;
use ieee.std_logic_textio.all;
use work.Pack.all;
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
  		  wea_beta : in std_logic_vector(7 downto 0);
        addrb_X : in std_logic_vector(31 downto 0);
        doutb_x : out  std_logic_vector(63 downto 0);
        x_complete: in std_logic;
        addrb_LPR : in std_logic_vector(31 downto 0);
        doutb_LPR: out std_logic_vector(PRECISION-1 downto 0);
        complete: out std_logic
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
   signal addrb_x : std_logic_vector(31 downto 0);
   signal doutb_x : std_logic_vector(63 downto 0);
   signal complete : std_logic;
   -- Clock period definitions
   constant clk_period : time := 10 ns;

   signal addr_count: integer :=0;
   signal x_complete: std_logic;

   signal addrb_LPR : std_logic_vector(31 downto 0);
   signal doutb_LPR:  std_logic_vector(PRECISION-1 downto 0);
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
          wea_seed => wea_seed,
          addrb_x => addrb_x,
          doutb_x => doutb_x,
          x_complete => x_complete,
          addrb_LPR => addrb_LPR,
          doutb_LPR => doutb_LPR,
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
   file beta_file : TEXT open READ_MODE is "beta";
   file my_output : TEXT open WRITE_MODE is "output.out";
   file seed_file : TEXT open READ_MODE is "seed";
   variable file_line: line;
   variable output_line: line;
   variable temp_beta, temp_seed: std_logic_vector(PRECISION-1 downto 0);
   variable temp_output: std_logic_vector(PRECISION-1 downto 0);


   begin		
      reset <= '1';
      wait for 100 ns;	
      
      wait for clk_period*10;
      addra_beta <= (OTHERS => '0');
      
      -- Read Beta values into BRAM_Beta
      addr_count <= 0;
      wea_beta <= x"FF";
      wait for clk_period;
      while not endfile(beta_file) loop
        readline(beta_file, file_line);
        hread(file_line, temp_beta);
        dina_beta <= temp_beta;
        addr_count <= addr_count + 8;
        addra_beta <= std_logic_vector(to_unsigned(addr_count,addra_beta'length));
        wait for clk_period;
      end loop;
      wait for clk_period;

      -- Read in seed values
      addr_count <= 0;
      wea_seed <= x"FF";
      while not endfile(seed_file) loop
        readline(seed_file, file_line);
        hread(file_line, temp_seed);
        dina_seed <= temp_seed;
        addr_count <= addr_count + 8;
        addra_seed <= std_logic_vector(to_unsigned(addr_count,addra_seed'length));
        wait for clk_period;
      end loop;
      wait for clk_period;
 
      reset <= '0';

      wait for clk_period*100;
      while complete = '0' loop
        wait for clk_period;
      end loop;

    -- If complete, write out contents of BRAM_X to file      
      FILEIO : for i in 0 to RUNS-1 loop
        addrb_x <= std_logic_vector(to_unsigned(i*8, addrb_x'length));
        wait for clk_period;
        hwrite(output_line, doutb_x);
        writeline(my_output, output_line);
      end loop ; -- FILEIO

      wait for clk_period;
      assert complete = '0'
        report "SUCCESS: Simulation stopped at completion"
        severity FAILURE;

   end process;

END;
