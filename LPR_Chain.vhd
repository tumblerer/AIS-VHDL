library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.Pack.all;


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
  type wire_array is array(STEPS downto 0) of std_logic_vector(STATE_SIZE downto 0);
  type single_wire_array is array(STEPS downto 0) of std_logic;
  type mem_addr_wire is array(STEPS downto 0) of std_logic_vector(31 downto 0); 
  signal activate_wire : single_wire_array;
  signal X_wire : wire_array;
  signal Mem_Data_B_In : wire_array;
	signal Mem_Addr_B_In :mem_addr_wire;
  signal activate_in : std_logic;
	--signal Beta : std_logic_vector(STATE_SIZE downto 0);
	signal activate_gen: std_logic;
  signal seed : std_logic_vector (127 downto 0);

  signal counter: integer range 0 to 2050;

begin

  Gen:  entity work.Generate_Sample Port Map(
          clk => clk,
          reset => reset,
          activate => activate_gen,
          seed => seed, 
          sample_output => X_wire(0)
        );

  Chain: for i in 1 to 2 generate
  begin
    LPR_TOP0: entity work.LPR_top Port Map (
         clk => clk,
         reset => reset,
         Beta => x"3f747ae147ae147b",
         activate_in => activate_wire(i-1),
         activate_out => activate_wire(i),
         X_In => X_wire(i-1),
         X_out => X_wire(i),
         Mem_Addr_B_In => Mem_Addr_B_In(i),
         Mem_Data_B_In =>  Mem_Data_B_In(i),
         Mem_Addr_B_Out => Mem_Addr_B_In(i+1),
         Mem_Data_B_Out =>  Mem_Data_B_In(i+1)
    );

  end generate;

  seed <= x"0123456789abcdef0123456789abcdef";
  Mem_Data_B_In(1) <= (Others => '0');
  Control : process
  begin
    wait until clk'EVENT AND clk='1';
      if reset = '1' then
        activate_gen <= '0';
        activate_wire(0) <= '0';
        counter <= 0;
      else
        if counter < 2100 then
          counter <= counter + 1;
          activate_wire(0) <='0';
        else 
         activate_wire(0) <= '1';
        end if;

        if counter > 200 then
          activate_gen <= '1';
        else
          activate_gen <= '0';
        end if;
         
      end if;


  end process ; -- Control

end architecture ; -- behavorial