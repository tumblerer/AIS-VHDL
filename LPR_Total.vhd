library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.Pack.all;
use IEEE.NUMERIC_STD.ALL;

entity LPR_Total is
	port (
		clk: in std_logic;
		reset : in std_logic;
    dina_beta : in std_logic_vector(PRECISION-1 downto 0);
    addra_beta : in std_logic_vector(31 downto 0);
    wea_beta : in std_logic_vector(7 downto 0);
    dina_seed : in std_logic_vector(PRECISION-1 downto 0);
    wea_seed : in std_logic_vector(7 downto 0);
    addra_seed : in std_logic_vector(31 downto 0);
    addrb_X : in std_logic_vector(31 downto 0);
    doutb_x : out  std_logic_vector(PRECISION-1 downto 0);
    x_complete : in std_logic;
    addrb_LPR : in std_logic_vector(31 downto 0);
    doutb_LPR: out std_logic_vector(PRECISION-1 downto 0);
    complete: out std_logic
	);

end entity LPR_Total;


architecture behavorial of LPR_Total is

component LPR_Chain is
  port (
      clk : in std_logic;
      reset : in std_logic;
      addra_seed : in std_logic_vector(31 downto 0);
      addra_beta : in std_logic_vector(31 downto 0);
      dina_seed : in std_logic_vector(PRECISION-1 downto 0);
      dina_beta : in std_logic_vector(PRECISION-1 downto 0);
      wea_seed : in std_logic_vector(7 downto 0);
      wea_beta : in std_logic_vector(7 downto 0);
      addrb_X : in std_logic_vector(31 downto 0);
      doutb_x : out  std_logic_vector(PRECISION-1 downto 0);
      x_complete : in std_logic;
      addrb_LPR : in std_logic_vector(31 downto 0);
      doutb_LPR: out std_logic_vector(PRECISION-1 downto 0);
      complete: out std_logic
   ) ;
end component ; -- LPR_Chain

  type address_array is array(CHAINS downto 1) of std_logic_vector(31 downto 0);
  type data_array is array(CHAINS downto 1) of std_logic_vector(PRECISION-1 downto 0);
  type single_wire_array is array(CHAINS downto 1) of std_logic;

  signal addra_seed_array , addrb_x_array: address_array;
  signal dina_seed_array , doutb_x_array: data_array;
  signal complete_array : single_wire_array;
  signal doutb_LPR_array : data_array;
  signal chain_counter_delay : integer range 1 to STEPS*RUNS := 1;
  signal chain_counter_lpr: integer range 1 to CHAINS := 1; 
  -- Counters
  signal seed_counter, x_counter : integer range 1 to RUNS*STEPS*8;
begin 

 Parallel_Chains: for i in 1 to CHAINS generate

  begin Chain: entity work.LPR_Chain PORT MAP (
          clk => clk,
          reset => reset,
          addra_seed => addra_seed_array(i),
          addra_beta => addra_beta,
          dina_beta => dina_beta,
          dina_seed => dina_seed_array(i),
          wea_beta => wea_beta,
          wea_seed => wea_seed,
          addrb_x => addrb_x,
          doutb_x => doutb_x_array(i),
          x_complete => x_complete,
          addrb_LPR => addrb_LPR,
          doutb_LPR => doutb_LPR_array(i),
          complete => complete_array(i)
        );
  end generate;

Load: Process
begin
  wait until clk'EVENT and clk='1';

      if wea_seed = x"FF" then
        if seed_counter < CHAINS then
          seed_counter <= seed_counter + 1;
        else
          seed_counter <= 1;
        end if;
      else
        seed_counter <= CHAINS;
      end if;

      if complete_array(CHAINS) = '1' then
        if x_counter < CHAINS then
          x_counter <= x_counter + 1;
        else
          x_counter <= 1;
        end if;
      else
        x_counter <= CHAINS;
      end if;
      
      if reset = '1' then
        chain_counter_lpr <= 1;
        chain_counter_delay<= 0;
      else
        if x_complete = '1' then
          if chain_counter_delay < STEPS*RUNS then
            chain_counter_delay <= chain_counter_delay + 1;
          else
            chain_counter_delay <= 0;
            chain_counter_lpr <= chain_counter_lpr + 1;
          end if;
        end if;
      end if;
    

    dina_seed_array(seed_counter) <= dina_seed;
    addra_seed_array(seed_counter) <= addra_seed;

  end process;

  Transfer: process(complete_array, addra_seed, addrb_x, doutb_x_array, dina_seed, seed_counter, x_counter)
  begin

    complete <= complete_array(CHAINS);

    doutb_x <= doutb_x_array(x_counter);

    doutb_LPR <= doutb_LPR_array(chain_counter_lpr);

  end process;

end architecture;
