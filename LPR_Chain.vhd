library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.Pack.all;
use work.beta_pack.all;
use IEEE.NUMERIC_STD.ALL;

entity LPR_Chain is
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
      doutb_x : out  std_logic_vector(PRECISION-1 downto 0)
   ) ;
end entity ; -- LPR_Chain

architecture behavorial of LPR_Chain is


component LPR_top is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Beta : in  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           activate_in : in  STD_LOGIC;
           activate_out : out  STD_LOGIC;
           X_in : in  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           X_out : out  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           Mem_Addr_B_In : out  STD_LOGIC_VECTOR (31 downto 0);
           Mem_Data_B_In : in  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           Mem_Addr_B_Out : in  STD_LOGIC_VECTOR (31 downto 0);
           Mem_Data_B_Out : out  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           seed : in std_logic
           );
end component;

component Generate_Sample is
    Port (  
        clk : in std_logic;
        reset : in std_logic;
        activate: in std_logic;
        seed : in std_logic;
        sample_output : out  STD_LOGIC_VECTOR (PRECISION-1 downto 0)
  ); 

end component;
 
 --Arrays
  type wire_array is array(BLOCKS downto 0) of std_logic_vector(PRECISION-1 downto 0);
  type buffer_wire_array is array(BLOCKS-1 downto 0) of std_logic_vector(PRECISION-1 downto 0);
  type single_wire_array is array(BLOCKS downto 0) of std_logic;
  type mem_addr_wire is array(BLOCKS+1 downto 0) of std_logic_vector(31 downto 0); 
  type mem_data_wire is array(BLOCKS+1 downto 0) of std_logic_vector(PRECISION-1 downto 0);
  --type beta_wire_array is array(BLOCKS downto 1) of std_logic_vector(PRECISION-1 downto 0);
  signal activate_wire : single_wire_array;
  signal X_wire : wire_array;
  signal Mem_Data_B : mem_data_wire;
	signal Mem_Addr_B :mem_addr_wire;
  signal beta_wire : wire_array;
  --signal X_delay : wire_array;

  --signal activate_in : std_logic;
	signal activate_gen: std_logic;
  --signal seed : std_logic_vector (127 downto 0);
  
  -- Pipeline
  -- Needs to be conditionally generated
  signal Loop_Back_Pipe : pipeline_type (1 to STEPS*RUNS-TOTAL_PIPE_INCR*BLOCKS);
  signal Loop_back_output : std_logic_vector(PRECISION-1 downto 0);
  -- Buffer between blocks to account for delay in loopback pipe
  signal X_buffer: wire_array;
  -- Gen
  signal sample_output : std_logic_vector(PRECISION-1 downto 0);
  
  -- BRAM
  signal addr_a_x : std_logic_vector(31 downto 0);
  signal wea_x : std_logic_vector(7 downto 0);
  signal dina_x : std_logic_vector(PRECISION-1 downto 0);

--Seed BRAM
  signal addrb_beta, addrb_seed : std_logic_vector(31 downto 0);
  signal doutb_beta : std_logic_vector(PRECISION-1 downto 0);
  signal doutb_seed : std_logic_vector(PRECISION-1 downto 0);

  --Counter
  signal counter: integer range 0 to 2100+STEPS*TOTAL_PIPE_INCR*BLOCKS+1;
  signal address_counter_X : integer range 0 to RUNS*STEPS*8;
  signal address_counter_beta :integer range 0 to 8*STEPS;
  signal address_counter_seed : integer range 0 to (BLOCKS+1)*8;
  signal beta_counter : integer range 0 to STEPS*TOTAL_PIPE_INCR*BLOCKS+1;
  signal block_counter : integer range 0 to BLOCKS;
  signal block_counter_delay : integer range 0 to TOTAL_PIPE_INCR+2;
  signal first_beta : integer range 0 to 2;

begin

  Gen:  entity work.Generate_Sample Port Map(
          clk => clk,
          reset => reset,
          activate => activate_gen,
          seed => doutb_seed(0), 
          sample_output => sample_output
        );

  -- BRAM for all the final X states found
BRAM_X: ENTITY work.Dual_Port_BRAM PORT MAP(
       clka => clk,
       wea => wea_x,
       addra => addr_a_x,
       dina => dina_x,
       clkb => clk,
       rstb => reset,
       addrb => addrb_x,
       doutb => doutb_x
  );

BRAM_BETA: ENTITY work.Dual_Port_BRAM PORT MAP(
       clka => clk,
       wea => wea_beta,
       addra => addra_beta,
       dina => dina_beta,
       clkb => clk,
       rstb => reset,
       addrb => addrb_beta,
       doutb => doutb_beta
  );

BRAM_SEED: ENTITY work.Dual_Port_BRAM PORT MAP(
       clka => clk,
       wea => wea_seed,
       addra => addra_seed,
       dina => dina_seed,
       clkb => clk,
       rstb => reset,
       addrb => addrb_seed,
       doutb => doutb_seed
  );

  Chain: for i in 1 to BLOCKS generate
  begin
    -- Connect last block to the first block (memory)
      CHAIN1: if (i = BLOCKS) generate
        begin LPR_TOP0 : entity work.LPR_top Port Map (
           clk => clk,
           reset => reset,
           Beta => beta_wire(i),
           activate_in => activate_wire(i-1),
           activate_out => activate_wire(i),
           X_In => X_wire(i-1),
           X_out => X_wire(i),
           Mem_Addr_B_In => Mem_Addr_B(i),
           Mem_Data_B_In =>  Mem_Data_B(i),
           Mem_Addr_B_Out => Mem_Addr_B(1),
           Mem_Data_B_Out =>  Mem_Data_B(1),
           seed => doutb_seed(i)
      ); end generate CHAIN1;

      CHAIN2 : if (i /= BLOCKS) generate
        begin LPR_TOP1 : entity work.LPR_top Port Map (
           clk => clk,
           reset => reset,
           Beta => beta_wire(i),
           activate_in => activate_wire(i-1),
           activate_out => activate_wire(i),
           X_In => X_wire(i-1),
           X_out => X_buffer(i-1),
           Mem_Addr_B_In => Mem_Addr_B(i),
           Mem_Data_B_In =>  Mem_Data_B(i),
           Mem_Addr_B_Out => Mem_Addr_B(i+1),
           Mem_Data_B_Out =>  Mem_Data_B(i+1),
           seed => doutb_seed(i)
      ); end generate CHAIN2;
  end generate;

  --seed <= x"0123456789abcdef0123456789abcdef";
  --Mem_Data_B(1) <= (Others => '0');


  -- Generate Loop_Back SR if needed
  Loop_Back: if (TOTAL_PIPE_INCR*BLOCKS < RUNS) generate
  begin
    Loop_Pipe: process
    begin
       wait until clk'EVENT AND clk='1';
          Loop_Back_Pipe(1) <= X_wire(BLOCKS);
          Loop_Back_Pipe(2 to RUNS-TOTAL_PIPE_INCR*BLOCKS) <= Loop_Back_Pipe(1 to RUNS-TOTAL_PIPE_INCR*BLOCKS-1);
          Loop_back_output <= Loop_Back_Pipe(RUNS-TOTAL_PIPE_INCR*BLOCKS);
    end process; 
  end generate;

  No_Loop_Back: if (TOTAL_PIPE_INCR*BLOCKS >= RUNS) generate
  begin
    No_Loop: process
    begin
       wait until clk'EVENT AND clk='1';
        Loop_back_output <= X_wire(BLOCKS);
    end process; 
  end generate;


  -- Generate X_buffers if needed
  Buffer_X: if BLOCKS /= 1 generate
  begin
    Buffer_Transfer: process
    begin
      wait until clk'EVENT AND clk='1';
       -- Transfer of buffer to X_wire input
        X_wire(BLOCKS-1 downto 1) <= X_buffer(BLOCKS-2 downto 0);
    end process;
  end generate;


  Control : process
  begin
    wait until clk'EVENT AND clk='1';
      if reset = '1' then
        activate_gen <= '0';
        activate_wire(0) <= '0';
        counter <= 0;
        address_counter_X <= 0;
        address_counter_seed <= 0;
        address_counter_beta <= 0;
        beta_counter <= 0;
        block_counter <= 1;
        block_counter_delay <= TOTAL_PIPE_INCR+2;
        first_beta <= 2;
        addr_a_x <= std_logic_vector(to_unsigned(0,addr_a_x'length));
        wea_x <= x"00";
      else
        wea_x <= x"FF";


        -- Activate first block
        if counter < 2100-1 then
          activate_wire(0) <='0';
        else 
         activate_wire(0) <= '1';
        end if;

        --Activate sample generator
        if counter > 200 then
          activate_gen <= '1';
        else
          activate_gen <= '0';
        end if;
        
        -- Stop signal
     --   if counter > 2100+STEPS*TOTAL_PIPE_INCR+RUNS then


        -- Address Final X memory
        if counter < 2100+STEPS*TOTAL_PIPE_INCR then
          counter <= counter + 1;
          wea_x <= x"00";
        else
          address_counter_X <= address_counter_X + 8;
          addr_a_x <= std_logic_vector(to_unsigned(address_counter_X,addr_a_x'length));
          wea_x <= x"FF";
          dina_x <= X_wire(BLOCKS);
        end if;

        -- Address seed memory
        if counter < 2100 then
          address_counter_seed <= address_counter_seed + 8;
          addrb_seed <= std_logic_vector(to_unsigned(address_counter_seed,addrb_seed'length));
        else
          address_counter_seed <= 0;
          addrb_seed <= std_logic_vector(to_unsigned(address_counter_seed,addrb_seed'length));
        end if;

        -- Address beta values
        -- Intitial Values
        if counter > 1500 AND counter < 1500+BLOCKS then
          address_counter_beta <= address_counter_beta + 8;

        end if;

        if counter > 1501 AND counter < 1501+BLOCKS then
          block_counter <= block_counter + 1;
        end if ;

        if counter < 2100 then
          beta_counter <= 0; 
        else 
          beta_counter <= beta_counter +1;
        end if;

        -- Increment beta value after a settime
        -- Changes first block after all particles have passed
        if beta_counter = (BETA_PIPE+RUNS-2) AND first_beta = 2 then
          block_counter_delay <= 0;
          first_beta <= 1;
          address_counter_beta <= address_counter_beta + 8;
        end if;

        if first_beta = 1 then
          if block_counter = BLOCKS then
            block_counter <= 1;
          else
            block_counter <= block_counter + 1;
          end if;
          first_beta <= 0;
        end if;

        if block_counter_delay < TOTAL_PIPE_INCR and first_beta = 0 then
          block_counter_delay <= block_counter_delay + 1;
        end if;

        if block_counter_delay = TOTAL_PIPE then
          address_counter_beta <= address_counter_beta + 8;
        end if;

        if block_counter_delay = TOTAL_PIPE_INCR then
          block_counter_delay <= 0;
          if block_counter = BLOCKS then
            block_counter <= 1;
          else
            block_counter <= block_counter + 1;
          end if;
        end if;

      end if;

  end process ; -- Control

  Data_Transfer : process( doutb_beta, address_counter_beta, block_counter, counter, Loop_back_output )
  begin

    beta_wire(block_counter) <= doutb_beta;
    addrb_beta <= std_logic_vector(to_unsigned(address_counter_beta,addrb_beta'length));

    -- Produce a sample for each run
    if counter >= 2100 AND counter < RUNS+2100 then
      X_wire(0) <= sample_output;
    else
      if counter < 2100+TOTAL_PIPE_INCR*BLOCKS then
        X_wire(0) <= std_logic_vector(to_unsigned(0,X_wire(0)'length)); 
      else
        X_wire(0) <= Loop_back_output;   
      end if;       
    end if;

  end process ; -- Data_Transfer
end architecture ; -- behavorial