library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.Pack.all;
use work.beta_pack.all;
use IEEE.NUMERIC_STD.ALL;

entity LPR_Chain is
  port (
	clk : in std_logic;
	reset : in std_logic
  ) ;
end entity ; -- LPR_Chain

architecture behavorial of LPR_Chain is


component LPR_top is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Beta : in  STD_LOGIC_VECTOR (63 downto 0);
           activate_in : in  STD_LOGIC;
           activate_out : out  STD_LOGIC;
           X_in : in  STD_LOGIC_VECTOR (63 downto 0);
           X_out : out  STD_LOGIC_VECTOR (63 downto 0);
           Mem_Addr_B_In : out  STD_LOGIC_VECTOR (31 downto 0);
           Mem_Data_B_In : in  STD_LOGIC_VECTOR (63 downto 0);
           Mem_Addr_B_Out : in  STD_LOGIC_VECTOR (31 downto 0);
           Mem_Data_B_Out : out  STD_LOGIC_VECTOR (63 downto 0));
end component;

component Generate_Sample is
    Port (  
        clk : in std_logic;
        reset : in std_logic;
        activate: in std_logic;
        seed : in std_logic_vector(127 downto 0);
        sample_output : out  STD_LOGIC_VECTOR (STATE_SIZE downto 0)
  ); 

end component;
 
 --Arrays
  type wire_array is array(BLOCKS downto 0) of std_logic_vector(STATE_SIZE downto 0);
  type single_wire_array is array(BLOCKS downto 0) of std_logic;
  type mem_addr_wire is array(BLOCKS+1 downto 0) of std_logic_vector(31 downto 0); 
  type mem_data_wire is array(BLOCKS+1 downto 0) of std_logic_vector(STATE_SIZE downto 0);
  signal activate_wire : single_wire_array;
  signal X_wire : wire_array;
  signal Mem_Data_B : mem_data_wire;
	signal Mem_Addr_B :mem_addr_wire;
  
  signal activate_in : std_logic;
	signal Beta_in : std_logic_vector(STATE_SIZE downto 0);
	signal activate_gen: std_logic;
  signal seed : std_logic_vector (127 downto 0);
  
  -- Pipeline
  -- Needs to be conditionally generated
  signal Loop_Back_Pipe : pipeline_type (1 to STEPS*RUNS-TOTAL_PIPE*BLOCKS);
  signal Loop_back_output : std_logic_vector(STATE_SIZE downto 0);

  -- Gen
  signal sample_output : std_logic_vector(STATE_SIZE downto 0);
  
  -- BRAM
  signal addr_a, addrb : std_logic_vector(31 downto 0);
  signal write_a : std_logic_vector(7 downto 0);
  signal doutb : std_logic_vector(63 downto 0);

  --Counter
  signal counter: integer range 0 to RUNS*STEPS+2100+TOTAL_PIPE*BLOCKS+1;
  signal address_counter : integer range 0 to RUNS*STEPS*8;
begin

  Gen:  entity work.Generate_Sample Port Map(
          clk => clk,
          reset => reset,
          activate => activate_gen,
          seed => seed, 
          sample_output => sample_output
        );

  -- BRAM for all the final X states found
BRAM_X: ENTITY work.Dual_Port_BRAM PORT MAP(
       clka => clk,
       wea => write_a,
       addra => addr_a,
       dina => X_wire(BLOCKS),
       clkb => clk,
       rstb => reset,
       addrb => addrb,
       doutb => doutb
  );

  Chain: for i in 1 to BLOCKS generate
  begin
      CHAIN1: if (i = BLOCKS) generate
        begin LPR_TOP0 : entity work.LPR_top Port Map (
           clk => clk,
           reset => reset,
           Beta => beta(i),
           activate_in => activate_wire(i-1),
           activate_out => activate_wire(i),
           X_In => X_wire(i-1),
           X_out => X_wire(i),
           Mem_Addr_B_In => Mem_Addr_B(i),
           Mem_Data_B_In =>  Mem_Data_B(i),
           Mem_Addr_B_Out => Mem_Addr_B(1),
           Mem_Data_B_Out =>  Mem_Data_B(1)
      ); end generate CHAIN1;

      CHAIN2 : if (i /= BLOCKS) generate
        begin LPR_TOP1 : entity work.LPR_top Port Map (
           clk => clk,
           reset => reset,
           Beta => beta(i),
           activate_in => activate_wire(i-1),
           activate_out => activate_wire(i),
           X_In => X_wire(i-1),
           X_out => X_wire(i),
           Mem_Addr_B_In => Mem_Addr_B(i),
           Mem_Data_B_In =>  Mem_Data_B(i),
           Mem_Addr_B_Out => Mem_Addr_B(i+1),
           Mem_Data_B_Out =>  Mem_Data_B(i+1)
      ); end generate CHAIN2;
  end generate;

  seed <= x"0123456789abcdef0123456789abcdef";
  Mem_Data_B(1) <= (Others => '0');
  
  Control : process
  begin
    wait until clk'EVENT AND clk='1';
      if reset = '1' then
        activate_gen <= '0';
        activate_wire(0) <= '0';
        counter <= 0;
        address_counter <= 0;
        addr_a <= std_logic_vector(to_unsigned(0,addr_a'length));
      else
        write_a <= x"FF";

        if TOTAL_PIPE*BLOCKS < RUNS then
          Loop_Back_Pipe(1) <= X_wire(BLOCKS);
          Loop_Back_Pipe(2 to RUNS-TOTAL_PIPE*BLOCKS) <= Loop_Back_Pipe(1 to RUNS-TOTAL_PIPE*BLOCKS-1);
          Loop_back_output <= Loop_Back_Pipe(RUNS-TOTAL_PIPE*BLOCKS);
        else
          Loop_back_output <= X_wire(BLOCKS);
        end if;

        if counter < 2100 then
          activate_wire(0) <='0';
        else 
         activate_wire(0) <= '1';
        end if;

        if counter > 200 then
          activate_gen <= '1';
        else
          activate_gen <= '0';
        end if;

        -- Produce a sample for each run
        if counter < RUNS+2100-1 then
          X_wire(0) <= sample_output;
        else
          if counter < RUNS+2100+TOTAL_PIPE*BLOCKS then
            X_wire(0) <= std_logic_vector(to_unsigned(0,X_wire(0)'length)); 
          else
            X_wire(0) <= Loop_back_output;   
          end if;       
        end if;

        if counter < 2100+STEPS*TOTAL_PIPE then
          counter <= counter + 1;
        else
          address_counter <= address_counter + 8;
          addr_a <= std_logic_vector(to_unsigned(address_counter,addr_a'length));
        end if;


      end if;

  end process ; -- Control

end architecture ; -- behavorial