library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.Pack.all;
--use work.Seed.all;
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
           Beta : in  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           activate_in : in  STD_LOGIC;
           activate_out : out  STD_LOGIC;
           X_in : in  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           X_out : out  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           Mem_Addr_B_In : out  STD_LOGIC_VECTOR (31 downto 0);
           Mem_Data_B_In : in  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           Mem_Addr_B_Out : in  STD_LOGIC_VECTOR (31 downto 0);
           Mem_Data_B_Out : out  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           seed : in std_logic;
           complete: out std_logic
           );
end LPR_top;

architecture Behavioral of LPR_top is

component Evaluator is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           xState : in  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           Comp_In : in std_logic_vector(0 downto 0);
           Proposed_LPR : out  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           x_out : out std_logic_vector(PRECISION-1 downto 0);
           seed: in std_logic
    );
end component;

component Comparator is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           active : in  STD_LOGIC;
           LPR_In : in std_logic_vector(PRECISION-1 downto 0);
           CompResult : out  STD_LOGIC;
           Mem_Addr_B_In : out  STD_LOGIC_VECTOR (31 downto 0);
           Mem_Data_B_In : in  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           Mem_Addr_B_Out : in  STD_LOGIC_VECTOR (31 downto 0);
           Mem_Data_B_Out : out  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           Beta : in  STD_LOGIC_VECTOR (PRECISION-1 downto 0);
           seed: in std_logic;
           complete: out std_logic
      );
end component;
  
  signal Proposed_LPR : std_logic_vector(PRECISION-1 downto 0);
--  signal seed_source:  std_logic_vector(2048 downto 0) :="111111001100110001001100001101110011000101001101010110011001110101110110000111110000000001101101100010101100100000100110000000111100100000010000000001100011110000011001110000100100111111001001100001111010001011001001000011010111000000101011000000011100110010110110110001110000011111011110000100011110011010110010100111010110100010101110001111001110101101011010001100111011110101010011111101111101100011001110000110101000001001101001011111011000010100100001010001010000001010011000011001110101100000111000111101011010111100110010101111011011000010101001000110101000000000111011110101111101111100101011110010111001001100001110111010000011101000010011111100100100001011010101011010011101100010110000001110110100111110111001111010111000001010100000101111010100111101001111001010101011111101101101011100001111011011011100001111011110101010000111011110011010011101001100001010000110101100011001110110111001001001001101100111101010111000100010111010101100011110111101011110110111100010100000100111000101000011111110010010101110110010110110000010010111101011010111010011010000010100011100111110100110001001111011101001101101010011000011010000010010110010100111001101101101001100010111010111011100010110011111010011100110000111010010000010011111101011111100001011001000010001001010100110001001000110001001001101101011101100110111111000011010011011111101000101011100110100101000101010111011011100001110111100011100010000011000110000111111011111000011100111110011110010010110101111101110111110010000001101101101000100011110101001000000000010010000110101111100100110001011001111001111101101101011101101001111000001000100011010010011111011000100100011101000000100010000010011011110100100111001001110000100010110000001010000001011011011111011010001100010101100000000010011101111001011110011000001000001000001001110100001100100111000100110010101010011100000001110010110011111010110110011111010000010100011110101010100011101001101011011111111110101110010001011100011000010000101100000101001010101110101011100010010101001011110101110001111000110100000110101100111101";
  signal Comp_In : std_logic_vector(0 downto 0);
begin
LPR1: for i in 1 to VARS generate
  begin
    Evaluator: entity work.Evaluator Port Map (
          clk => clk,
          reset => reset,
          xState => X_in,   --(i*PRECISION-1 downto i*(VARS-1)),
          Comp_In => Comp_In,
          Proposed_LPR => Proposed_LPR,
          x_out => x_out,
          seed => seed
      );

end generate; 

--LPR2 : for i in 1 to VARS generate
      Comparator1: entity work.Comparator Port Map (
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
         activate_out => activate_out,
         seed => seed,
         complete => complete
        );
--end generate ; -- LPR2

--  seed_source <="111111001100110001001100001101110011000101001101010110011001110101110110000111110000000001101101100010101100100000100110000000111100100000010000000001100011110000011001110000100100111111001001100001111010001011001001000011010111000000101011000000011100110010110110110001110000011111011110000100011110011010110010100111010110100010101110001111001110101101011010001100111011110101010011111101111101100011001110000110101000001001101001011111011000010100100001010001010000001010011000011001110101100000111000111101011010111100110010101111011011000010101001000110101000000000111011110101111101111100101011110010111001001100001110111010000011101000010011111100100100001011010101011010011101100010110000001110110100111110111001111010111000001010100000101111010100111101001111001010101011111101101101011100001111011011011100001111011110101010000111011110011010011101001100001010000110101100011001110110111001001001001101100111101010111000100010111010101100011110111101011110110111100010100000100111000101000011111110010010101110110010110110000010010111101011010111010011010000010100011100111110100110001001111011101001101101010011000011010000010010110010100111001101101101001100010111010111011100010110011111010011100110000111010010000010011111101011111100001011001000010001001010100110001001000110001001001101101011101100110111111000011010011011111101000101011100110100101000101010111011011100001110111100011100010000011000110000111111011111000011100111110011110010010110101111101110111110010000001101101101000100011110101001000000000010010000110101111100100110001011001111001111101101101011101101001111000001000100011010010011111011000100100011101000000100010000010011011110100100111001001110000100010110000001010000001011011011111011010001100010101100000000010011101111001011110011000001000001000001001110100001100100111000100110010101010011100000001110010110011111010110110011111010000010100011110101010100011101001101011011111111110101110010001011100011000010000101100000101001010101110101011100010010101001011110101110001111000110100000110101100111101";

end Behavioral;

