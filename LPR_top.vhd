library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LPR_top is
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
end LPR_top;

architecture Behavioral of LPR_top is

component Evaluator is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           xState : in  STD_LOGIC_VECTOR (STATE_SIZE downto 0);
           Comp_In : in std_logic_vector(0 downto 0);
           Proposed_LPR : out  STD_LOGIC_VECTOR (STATE_SIZE downto 0);
           x_out : out std_logic_vector(STATE_SIZE downto 0)
    );
end component;

component Comparator is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           active : in  STD_LOGIC;
           LPR_In : in std_logic_vector(STATE_SIZE downto 0);
           CompResult : out  STD_LOGIC;
           Mem_Addr_B_In : out  STD_LOGIC_VECTOR (31 downto 0);
           Mem_Data_B_In : in  STD_LOGIC_VECTOR (63 downto 0);
           Mem_Addr_B_Out : in  STD_LOGIC_VECTOR (31 downto 0);
           Mem_Data_B_Out : out  STD_LOGIC_VECTOR (63 downto 0);
           Beta : in  STD_LOGIC_VECTOR (63 downto 0)
      );
end component;
  
  signal Proposed_LPR : std_logic_vector(STATE_SIZE downto 0);

begin
LPR: for i in 1 to VARS generate
  begin
    Evaluator: entity work.Evaluator Port Map (
          clk => clk,
          reset => reset,
          xState => X_in,   --(i*63 downto i*(VARS-1)),
          Comp_In => Comp_In,
          Proposed_LPR => Proposed_LPR,
          x_out => x_out 
      );

end generate; 

LPR2 : for i in x to y generate
      Comparator: entity work.Comparator Port Map (
         clk => clk,
         reset => reset,
         activate_in => activate_in,
         LPR_In => Proposed_LPR,
         CompResult => Comp_In,
         Mem_Addr_B_In => Mem_Addr_B_In,
         Mem_Data_B_In =>  Mem_Data_B_In,
         Mem_Addr_B_Out => Mem_Addr_B_Out,
         Mem_Data_B_Out =>  Mem_Data_B_Out,
         Beta => Beta,
         activate_out => activate_out
        );
end generate ; -- LPR2


end Behavioral;

