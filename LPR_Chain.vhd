library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



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
    Port (	clk : in std_logic;
			reset : in std_logic;
			activate: in std_logic;
			sample_output : out  STD_LOGIC_VECTOR (STATE_SIZE downto 0)
	); 
end component;

	signal activate_in : std_logic;
	signal Beta : std_logic_vector(STATE_SIZE downto 0);


begin

end architecture ; -- behavorial