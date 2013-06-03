--------------------------------------------------------------------------------
--                               Compressor_2_2
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_2_2 is
   port ( X0 : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of Compressor_2_2 is
signal X :  std_logic_vector(1 downto 0);
begin
   X <=X0 ;
   with X select R <= 
      "00" when "00", 
      "01" when "01", 
      "01" when "10", 
      "10" when "11", 
      "--" when others;

end architecture;

--------------------------------------------------------------------------------
--                               Compressor_3_2
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_3_2 is
   port ( X0 : in  std_logic_vector(2 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of Compressor_3_2 is
signal X :  std_logic_vector(2 downto 0);
begin
   X <=X0 ;
   with X select R <= 
      "00" when "000", 
      "01" when "001", 
      "01" when "010", 
      "10" when "011", 
      "01" when "100", 
      "10" when "101", 
      "10" when "110", 
      "11" when "111", 
      "--" when others;

end architecture;

--------------------------------------------------------------------------------
--                               LZOC_23_5_uid3
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity LZOC_23_5_uid3 is
   port ( clk, rst : in std_logic;
          I : in  std_logic_vector(22 downto 0);
          OZB : in std_logic;
          O : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of LZOC_23_5_uid3 is
signal sozb, sozb_d1, sozb_d2 : std_logic;
signal level5 :  std_logic_vector(31 downto 0);
signal digit5, digit5_d1, digit5_d2 : std_logic;
signal level4, level4_d1 :  std_logic_vector(15 downto 0);
signal digit4, digit4_d1 : std_logic;
signal level3 :  std_logic_vector(7 downto 0);
signal digit3, digit3_d1 : std_logic;
signal level2, level2_d1 :  std_logic_vector(3 downto 0);
signal digit2 : std_logic;
signal level1 :  std_logic_vector(1 downto 0);
signal digit1 : std_logic;
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            sozb_d1 <=  sozb;
            sozb_d2 <=  sozb_d1;
            digit5_d1 <=  digit5;
            digit5_d2 <=  digit5_d1;
            level4_d1 <=  level4;
            digit4_d1 <=  digit4;
            digit3_d1 <=  digit3;
            level2_d1 <=  level2;
         end if;
      end process;
   sozb <= OZB;
   level5<= I& (8 downto 0 => not(sozb));
   digit5<= '1' when level5(31 downto 16) = (31 downto 16 => sozb) else '0';
   level4<= level5(15 downto 0) when digit5='1' else level5(31 downto 16);
   ----------------Synchro barrier, entering cycle 1----------------
   digit4<= '1' when level4_d1(15 downto 8) = (15 downto 8 => sozb_d1) else '0';
   level3<= level4_d1(7 downto 0) when digit4='1' else level4_d1(15 downto 8);
   digit3<= '1' when level3(7 downto 4) = (7 downto 4 => sozb_d1) else '0';
   level2<= level3(3 downto 0) when digit3='1' else level3(7 downto 4);
   ----------------Synchro barrier, entering cycle 2----------------
   digit2<= '1' when level2_d1(3 downto 2) = (3 downto 2 => sozb_d2) else '0';
   level1<= level2_d1(1 downto 0) when digit2='1' else level2_d1(3 downto 2);
   digit1<= '1' when level1(1 downto 1) = (1 downto 1 => sozb_d2) else '0';
   O <= digit5_d2 & digit4_d1 & digit3_d1 & digit2 & digit1;
end architecture;

--------------------------------------------------------------------------------
--                       LeftShifter_12_by_max_12_uid6
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2011)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity LeftShifter_12_by_max_12_uid6 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(11 downto 0);
          S : in  std_logic_vector(3 downto 0);
          R : out  std_logic_vector(23 downto 0)   );
end entity;

architecture arch of LeftShifter_12_by_max_12_uid6 is
signal level0, level0_d1 :  std_logic_vector(11 downto 0);
signal ps, ps_d1 :  std_logic_vector(3 downto 0);
signal level1 :  std_logic_vector(12 downto 0);
signal level2 :  std_logic_vector(14 downto 0);
signal level3 :  std_logic_vector(18 downto 0);
signal level4 :  std_logic_vector(26 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            level0_d1 <=  level0;
            ps_d1 <=  ps;
         end if;
      end process;
   level0<= X;
   ps<= S;
   ----------------Synchro barrier, entering cycle 1----------------
   level1<= level0_d1 & (0 downto 0 => '0') when ps_d1(0)= '1' else     (0 downto 0 => '0') & level0_d1;
   level2<= level1 & (1 downto 0 => '0') when ps_d1(1)= '1' else     (1 downto 0 => '0') & level1;
   level3<= level2 & (3 downto 0 => '0') when ps_d1(2)= '1' else     (3 downto 0 => '0') & level2;
   level4<= level3 & (7 downto 0 => '0') when ps_d1(3)= '1' else     (7 downto 0 => '0') & level3;
   R <= level4(23 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                              InvTable_0_9_10
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
entity InvTable_0_9_10 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(8 downto 0);
          Y : out  std_logic_vector(9 downto 0)   );
end entity;

architecture arch of InvTable_0_9_10 is
   -- Build a 2-D array type for the RoM
   subtype word_t is std_logic_vector(9 downto 0);
   type memory_t is array(0 to 511) of word_t;
   function init_rom
      return memory_t is 
      variable tmp : memory_t := (
   "1000000000",
   "1000000000",
   "0111111111",
   "0111111110",
   "0111111101",
   "0111111100",
   "0111111011",
   "0111111010",
   "0111111001",
   "0111111000",
   "0111110111",
   "0111110110",
   "0111110101",
   "0111110100",
   "0111110011",
   "0111110010",
   "0111110001",
   "0111110000",
   "0111101111",
   "0111101110",
   "0111101101",
   "0111101100",
   "0111101011",
   "0111101010",
   "0111101010",
   "0111101001",
   "0111101000",
   "0111100111",
   "0111100110",
   "0111100101",
   "0111100100",
   "0111100011",
   "0111100010",
   "0111100001",
   "0111100001",
   "0111100000",
   "0111011111",
   "0111011110",
   "0111011101",
   "0111011100",
   "0111011011",
   "0111011011",
   "0111011010",
   "0111011001",
   "0111011000",
   "0111010111",
   "0111010110",
   "0111010101",
   "0111010101",
   "0111010100",
   "0111010011",
   "0111010010",
   "0111010001",
   "0111010000",
   "0111010000",
   "0111001111",
   "0111001110",
   "0111001101",
   "0111001100",
   "0111001100",
   "0111001011",
   "0111001010",
   "0111001001",
   "0111001000",
   "0111001000",
   "0111000111",
   "0111000110",
   "0111000101",
   "0111000100",
   "0111000100",
   "0111000011",
   "0111000010",
   "0111000001",
   "0111000001",
   "0111000000",
   "0110111111",
   "0110111110",
   "0110111110",
   "0110111101",
   "0110111100",
   "0110111011",
   "0110111011",
   "0110111010",
   "0110111001",
   "0110111000",
   "0110111000",
   "0110110111",
   "0110110110",
   "0110110101",
   "0110110101",
   "0110110100",
   "0110110011",
   "0110110011",
   "0110110010",
   "0110110001",
   "0110110000",
   "0110110000",
   "0110101111",
   "0110101110",
   "0110101110",
   "0110101101",
   "0110101100",
   "0110101011",
   "0110101011",
   "0110101010",
   "0110101001",
   "0110101001",
   "0110101000",
   "0110100111",
   "0110100111",
   "0110100110",
   "0110100101",
   "0110100101",
   "0110100100",
   "0110100011",
   "0110100011",
   "0110100010",
   "0110100001",
   "0110100001",
   "0110100000",
   "0110011111",
   "0110011111",
   "0110011110",
   "0110011101",
   "0110011101",
   "0110011100",
   "0110011011",
   "0110011011",
   "0110011010",
   "0110011001",
   "0110011001",
   "0110011000",
   "0110011000",
   "0110010111",
   "0110010110",
   "0110010110",
   "0110010101",
   "0110010100",
   "0110010100",
   "0110010011",
   "0110010011",
   "0110010010",
   "0110010001",
   "0110010001",
   "0110010000",
   "0110010000",
   "0110001111",
   "0110001110",
   "0110001110",
   "0110001101",
   "0110001100",
   "0110001100",
   "0110001011",
   "0110001011",
   "0110001010",
   "0110001010",
   "0110001001",
   "0110001000",
   "0110001000",
   "0110000111",
   "0110000111",
   "0110000110",
   "0110000101",
   "0110000101",
   "0110000100",
   "0110000100",
   "0110000011",
   "0110000011",
   "0110000010",
   "0110000001",
   "0110000001",
   "0110000000",
   "0110000000",
   "0101111111",
   "0101111111",
   "0101111110",
   "0101111110",
   "0101111101",
   "0101111100",
   "0101111100",
   "0101111011",
   "0101111011",
   "0101111010",
   "0101111010",
   "0101111001",
   "0101111001",
   "0101111000",
   "0101111000",
   "0101110111",
   "0101110110",
   "0101110110",
   "0101110101",
   "0101110101",
   "0101110100",
   "0101110100",
   "0101110011",
   "0101110011",
   "0101110010",
   "0101110010",
   "0101110001",
   "0101110001",
   "0101110000",
   "0101110000",
   "0101101111",
   "0101101111",
   "0101101110",
   "0101101110",
   "0101101101",
   "0101101101",
   "0101101100",
   "0101101100",
   "0101101011",
   "0101101011",
   "0101101010",
   "0101101010",
   "0101101001",
   "0101101001",
   "0101101000",
   "0101101000",
   "0101100111",
   "0101100111",
   "0101100110",
   "0101100110",
   "0101100101",
   "0101100101",
   "0101100100",
   "0101100100",
   "0101100011",
   "0101100011",
   "0101100010",
   "0101100010",
   "0101100001",
   "0101100001",
   "0101100000",
   "0101100000",
   "0101011111",
   "0101011111",
   "0101011110",
   "0101011110",
   "0101011110",
   "0101011101",
   "0101011101",
   "0101011100",
   "0101011100",
   "0101011011",
   "0101011011",
   "0101011010",
   "0101011010",
   "0101011001",
   "0101011001",
   "0101011001",
   "0101011000",
   "0101011000",
   "0101010111",
   "0101010111",
   "0101010110",
   "1010101011",
   "1010101010",
   "1010101001",
   "1010101001",
   "1010101000",
   "1010100111",
   "1010100110",
   "1010100101",
   "1010100100",
   "1010100011",
   "1010100010",
   "1010100010",
   "1010100001",
   "1010100000",
   "1010011111",
   "1010011110",
   "1010011101",
   "1010011100",
   "1010011100",
   "1010011011",
   "1010011010",
   "1010011001",
   "1010011000",
   "1010010111",
   "1010010110",
   "1010010110",
   "1010010101",
   "1010010100",
   "1010010011",
   "1010010010",
   "1010010010",
   "1010010001",
   "1010010000",
   "1010001111",
   "1010001110",
   "1010001101",
   "1010001101",
   "1010001100",
   "1010001011",
   "1010001010",
   "1010001001",
   "1010001001",
   "1010001000",
   "1010000111",
   "1010000110",
   "1010000101",
   "1010000101",
   "1010000100",
   "1010000011",
   "1010000010",
   "1010000001",
   "1010000001",
   "1010000000",
   "1001111111",
   "1001111110",
   "1001111110",
   "1001111101",
   "1001111100",
   "1001111011",
   "1001111010",
   "1001111010",
   "1001111001",
   "1001111000",
   "1001110111",
   "1001110111",
   "1001110110",
   "1001110101",
   "1001110100",
   "1001110100",
   "1001110011",
   "1001110010",
   "1001110001",
   "1001110001",
   "1001110000",
   "1001101111",
   "1001101110",
   "1001101110",
   "1001101101",
   "1001101100",
   "1001101011",
   "1001101011",
   "1001101010",
   "1001101001",
   "1001101001",
   "1001101000",
   "1001100111",
   "1001100110",
   "1001100110",
   "1001100101",
   "1001100100",
   "1001100100",
   "1001100011",
   "1001100010",
   "1001100001",
   "1001100001",
   "1001100000",
   "1001011111",
   "1001011111",
   "1001011110",
   "1001011101",
   "1001011101",
   "1001011100",
   "1001011011",
   "1001011010",
   "1001011010",
   "1001011001",
   "1001011000",
   "1001011000",
   "1001010111",
   "1001010110",
   "1001010110",
   "1001010101",
   "1001010100",
   "1001010100",
   "1001010011",
   "1001010010",
   "1001010010",
   "1001010001",
   "1001010000",
   "1001010000",
   "1001001111",
   "1001001110",
   "1001001110",
   "1001001101",
   "1001001100",
   "1001001100",
   "1001001011",
   "1001001010",
   "1001001010",
   "1001001001",
   "1001001000",
   "1001001000",
   "1001000111",
   "1001000110",
   "1001000110",
   "1001000101",
   "1001000100",
   "1001000100",
   "1001000011",
   "1001000011",
   "1001000010",
   "1001000001",
   "1001000001",
   "1001000000",
   "1000111111",
   "1000111111",
   "1000111110",
   "1000111101",
   "1000111101",
   "1000111100",
   "1000111100",
   "1000111011",
   "1000111010",
   "1000111010",
   "1000111001",
   "1000111001",
   "1000111000",
   "1000110111",
   "1000110111",
   "1000110110",
   "1000110101",
   "1000110101",
   "1000110100",
   "1000110100",
   "1000110011",
   "1000110010",
   "1000110010",
   "1000110001",
   "1000110001",
   "1000110000",
   "1000101111",
   "1000101111",
   "1000101110",
   "1000101110",
   "1000101101",
   "1000101100",
   "1000101100",
   "1000101011",
   "1000101011",
   "1000101010",
   "1000101010",
   "1000101001",
   "1000101000",
   "1000101000",
   "1000100111",
   "1000100111",
   "1000100110",
   "1000100101",
   "1000100101",
   "1000100100",
   "1000100100",
   "1000100011",
   "1000100011",
   "1000100010",
   "1000100001",
   "1000100001",
   "1000100000",
   "1000100000",
   "1000011111",
   "1000011111",
   "1000011110",
   "1000011110",
   "1000011101",
   "1000011100",
   "1000011100",
   "1000011011",
   "1000011011",
   "1000011010",
   "1000011010",
   "1000011001",
   "1000011001",
   "1000011000",
   "1000010111",
   "1000010111",
   "1000010110",
   "1000010110",
   "1000010101",
   "1000010101",
   "1000010100",
   "1000010100",
   "1000010011",
   "1000010011",
   "1000010010",
   "1000010010",
   "1000010001",
   "1000010000",
   "1000010000",
   "1000001111",
   "1000001111",
   "1000001110",
   "1000001110",
   "1000001101",
   "1000001101",
   "1000001100",
   "1000001100",
   "1000001011",
   "1000001011",
   "1000001010",
   "1000001010",
   "1000001001",
   "1000001001",
   "1000001000",
   "1000001000",
   "1000000111",
   "1000000111",
   "1000000110",
   "1000000110",
   "1000000101",
   "1000000101",
   "1000000100",
   "1000000100",
   "1000000011",
   "1000000011",
   "1000000010",
   "1000000010",
   "1000000001",
      others => (others => '0'));
      	begin 
      return tmp;
      end init_rom;
	signal rom : memory_t := init_rom;
   signal Y0 :  std_logic_vector(9 downto 0);
begin
	process(clk)
   begin
   if(rising_edge(clk)) then
   	Y0 <= rom(  TO_INTEGER(unsigned(X))  );
   end if;
   end process;
    Y <= Y0;
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_36_f400_uid24
--                     (IntAdderClassical_36_f400_uid26)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_36_f400_uid24 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(35 downto 0);
          Y : in  std_logic_vector(35 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(35 downto 0)   );
end entity;

architecture arch of IntAdder_36_f400_uid24 is
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   --Classical
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--               IntMultiplier_UsingDSP_10_25_0_unsigned_uid11
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Kinga Illyes, Bogdan Popa, Bogdan Pasca, 2012
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntMultiplier_UsingDSP_10_25_0_unsigned_uid11 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(9 downto 0);
          Y : in  std_logic_vector(24 downto 0);
          R : out  std_logic_vector(34 downto 0)   );
end entity;

architecture arch of IntMultiplier_UsingDSP_10_25_0_unsigned_uid11 is
   component IntAdder_36_f400_uid24 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(35 downto 0);
             Y : in  std_logic_vector(35 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(35 downto 0)   );
   end component;

signal XX_m12 :  std_logic_vector(24 downto 0);
signal YY_m12 :  std_logic_vector(9 downto 0);
signal DSP_bh13_ch0_0 :  std_logic_vector(40 downto 0);
signal heap_bh13_w34_0, heap_bh13_w34_0_d1 : std_logic;
signal heap_bh13_w33_0, heap_bh13_w33_0_d1 : std_logic;
signal heap_bh13_w32_0, heap_bh13_w32_0_d1 : std_logic;
signal heap_bh13_w31_0, heap_bh13_w31_0_d1 : std_logic;
signal heap_bh13_w30_0, heap_bh13_w30_0_d1 : std_logic;
signal heap_bh13_w29_0, heap_bh13_w29_0_d1 : std_logic;
signal heap_bh13_w28_0, heap_bh13_w28_0_d1 : std_logic;
signal heap_bh13_w27_0, heap_bh13_w27_0_d1 : std_logic;
signal heap_bh13_w26_0, heap_bh13_w26_0_d1 : std_logic;
signal heap_bh13_w25_0, heap_bh13_w25_0_d1 : std_logic;
signal heap_bh13_w24_0, heap_bh13_w24_0_d1 : std_logic;
signal heap_bh13_w23_0, heap_bh13_w23_0_d1 : std_logic;
signal heap_bh13_w22_0, heap_bh13_w22_0_d1 : std_logic;
signal heap_bh13_w21_0, heap_bh13_w21_0_d1 : std_logic;
signal heap_bh13_w20_0, heap_bh13_w20_0_d1 : std_logic;
signal heap_bh13_w19_0, heap_bh13_w19_0_d1 : std_logic;
signal heap_bh13_w18_0, heap_bh13_w18_0_d1 : std_logic;
signal heap_bh13_w17_0, heap_bh13_w17_0_d1 : std_logic;
signal heap_bh13_w16_0, heap_bh13_w16_0_d1 : std_logic;
signal heap_bh13_w15_0, heap_bh13_w15_0_d1 : std_logic;
signal heap_bh13_w14_0, heap_bh13_w14_0_d1 : std_logic;
signal heap_bh13_w13_0, heap_bh13_w13_0_d1 : std_logic;
signal heap_bh13_w12_0, heap_bh13_w12_0_d1 : std_logic;
signal heap_bh13_w11_0, heap_bh13_w11_0_d1 : std_logic;
signal heap_bh13_w10_0, heap_bh13_w10_0_d1 : std_logic;
signal heap_bh13_w9_0, heap_bh13_w9_0_d1 : std_logic;
signal heap_bh13_w8_0, heap_bh13_w8_0_d1 : std_logic;
signal heap_bh13_w7_0, heap_bh13_w7_0_d1 : std_logic;
signal heap_bh13_w6_0, heap_bh13_w6_0_d1 : std_logic;
signal heap_bh13_w5_0, heap_bh13_w5_0_d1 : std_logic;
signal heap_bh13_w4_0, heap_bh13_w4_0_d1 : std_logic;
signal heap_bh13_w3_0, heap_bh13_w3_0_d1 : std_logic;
signal heap_bh13_w2_0, heap_bh13_w2_0_d1 : std_logic;
signal heap_bh13_w1_0, heap_bh13_w1_0_d1 : std_logic;
signal heap_bh13_w0_0, heap_bh13_w0_0_d1 : std_logic;
signal DSP_bh13_ch1_0 :  std_logic_vector(40 downto 0);
signal heap_bh13_w10_1, heap_bh13_w10_1_d1 : std_logic;
signal heap_bh13_w9_1, heap_bh13_w9_1_d1 : std_logic;
signal heap_bh13_w8_1, heap_bh13_w8_1_d1 : std_logic;
signal heap_bh13_w7_1, heap_bh13_w7_1_d1 : std_logic;
signal heap_bh13_w6_1, heap_bh13_w6_1_d1 : std_logic;
signal heap_bh13_w5_1, heap_bh13_w5_1_d1 : std_logic;
signal heap_bh13_w4_1, heap_bh13_w4_1_d1 : std_logic;
signal heap_bh13_w3_1, heap_bh13_w3_1_d1 : std_logic;
signal heap_bh13_w2_1, heap_bh13_w2_1_d1 : std_logic;
signal heap_bh13_w1_1, heap_bh13_w1_1_d1 : std_logic;
signal heap_bh13_w0_1, heap_bh13_w0_1_d1 : std_logic;
signal finalAdderIn0_bh13 :  std_logic_vector(35 downto 0);
signal finalAdderIn1_bh13 :  std_logic_vector(35 downto 0);
signal finalAdderCin_bh13 : std_logic;
signal finalAdderOut_bh13 :  std_logic_vector(35 downto 0);
signal CompressionResult13 :  std_logic_vector(35 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            heap_bh13_w34_0_d1 <=  heap_bh13_w34_0;
            heap_bh13_w33_0_d1 <=  heap_bh13_w33_0;
            heap_bh13_w32_0_d1 <=  heap_bh13_w32_0;
            heap_bh13_w31_0_d1 <=  heap_bh13_w31_0;
            heap_bh13_w30_0_d1 <=  heap_bh13_w30_0;
            heap_bh13_w29_0_d1 <=  heap_bh13_w29_0;
            heap_bh13_w28_0_d1 <=  heap_bh13_w28_0;
            heap_bh13_w27_0_d1 <=  heap_bh13_w27_0;
            heap_bh13_w26_0_d1 <=  heap_bh13_w26_0;
            heap_bh13_w25_0_d1 <=  heap_bh13_w25_0;
            heap_bh13_w24_0_d1 <=  heap_bh13_w24_0;
            heap_bh13_w23_0_d1 <=  heap_bh13_w23_0;
            heap_bh13_w22_0_d1 <=  heap_bh13_w22_0;
            heap_bh13_w21_0_d1 <=  heap_bh13_w21_0;
            heap_bh13_w20_0_d1 <=  heap_bh13_w20_0;
            heap_bh13_w19_0_d1 <=  heap_bh13_w19_0;
            heap_bh13_w18_0_d1 <=  heap_bh13_w18_0;
            heap_bh13_w17_0_d1 <=  heap_bh13_w17_0;
            heap_bh13_w16_0_d1 <=  heap_bh13_w16_0;
            heap_bh13_w15_0_d1 <=  heap_bh13_w15_0;
            heap_bh13_w14_0_d1 <=  heap_bh13_w14_0;
            heap_bh13_w13_0_d1 <=  heap_bh13_w13_0;
            heap_bh13_w12_0_d1 <=  heap_bh13_w12_0;
            heap_bh13_w11_0_d1 <=  heap_bh13_w11_0;
            heap_bh13_w10_0_d1 <=  heap_bh13_w10_0;
            heap_bh13_w9_0_d1 <=  heap_bh13_w9_0;
            heap_bh13_w8_0_d1 <=  heap_bh13_w8_0;
            heap_bh13_w7_0_d1 <=  heap_bh13_w7_0;
            heap_bh13_w6_0_d1 <=  heap_bh13_w6_0;
            heap_bh13_w5_0_d1 <=  heap_bh13_w5_0;
            heap_bh13_w4_0_d1 <=  heap_bh13_w4_0;
            heap_bh13_w3_0_d1 <=  heap_bh13_w3_0;
            heap_bh13_w2_0_d1 <=  heap_bh13_w2_0;
            heap_bh13_w1_0_d1 <=  heap_bh13_w1_0;
            heap_bh13_w0_0_d1 <=  heap_bh13_w0_0;
            heap_bh13_w10_1_d1 <=  heap_bh13_w10_1;
            heap_bh13_w9_1_d1 <=  heap_bh13_w9_1;
            heap_bh13_w8_1_d1 <=  heap_bh13_w8_1;
            heap_bh13_w7_1_d1 <=  heap_bh13_w7_1;
            heap_bh13_w6_1_d1 <=  heap_bh13_w6_1;
            heap_bh13_w5_1_d1 <=  heap_bh13_w5_1;
            heap_bh13_w4_1_d1 <=  heap_bh13_w4_1;
            heap_bh13_w3_1_d1 <=  heap_bh13_w3_1;
            heap_bh13_w2_1_d1 <=  heap_bh13_w2_1;
            heap_bh13_w1_1_d1 <=  heap_bh13_w1_1;
            heap_bh13_w0_1_d1 <=  heap_bh13_w0_1;
         end if;
      end process;
   XX_m12 <= Y ;
   YY_m12 <= X ;
   
   -- Beginning of code generated by BitHeap::generateCompressorVHDL
   -- code generated by BitHeap::generateSupertileVHDL()
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh13_ch0_0 <= ("" & XX_m12(24 downto 1) & "") * ("" & YY_m12(9 downto 0) & "0000000");
   heap_bh13_w34_0 <= DSP_bh13_ch0_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w33_0 <= DSP_bh13_ch0_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w32_0 <= DSP_bh13_ch0_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w31_0 <= DSP_bh13_ch0_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w30_0 <= DSP_bh13_ch0_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w29_0 <= DSP_bh13_ch0_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w28_0 <= DSP_bh13_ch0_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w27_0 <= DSP_bh13_ch0_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w26_0 <= DSP_bh13_ch0_0(32); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w25_0 <= DSP_bh13_ch0_0(31); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w24_0 <= DSP_bh13_ch0_0(30); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w23_0 <= DSP_bh13_ch0_0(29); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w22_0 <= DSP_bh13_ch0_0(28); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w21_0 <= DSP_bh13_ch0_0(27); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w20_0 <= DSP_bh13_ch0_0(26); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w19_0 <= DSP_bh13_ch0_0(25); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w18_0 <= DSP_bh13_ch0_0(24); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w17_0 <= DSP_bh13_ch0_0(23); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w16_0 <= DSP_bh13_ch0_0(22); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w15_0 <= DSP_bh13_ch0_0(21); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w14_0 <= DSP_bh13_ch0_0(20); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w13_0 <= DSP_bh13_ch0_0(19); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w12_0 <= DSP_bh13_ch0_0(18); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w11_0 <= DSP_bh13_ch0_0(17); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w10_0 <= DSP_bh13_ch0_0(16); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w9_0 <= DSP_bh13_ch0_0(15); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w8_0 <= DSP_bh13_ch0_0(14); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w7_0 <= DSP_bh13_ch0_0(13); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w6_0 <= DSP_bh13_ch0_0(12); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w5_0 <= DSP_bh13_ch0_0(11); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w4_0 <= DSP_bh13_ch0_0(10); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w3_0 <= DSP_bh13_ch0_0(9); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w2_0 <= DSP_bh13_ch0_0(8); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w1_0 <= DSP_bh13_ch0_0(7); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w0_0 <= DSP_bh13_ch0_0(6); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh13_ch1_0 <= ("" & XX_m12(0 downto 0) & "00000000000000000000000") * ("" & YY_m12(9 downto 0) & "0000000");
   heap_bh13_w10_1 <= DSP_bh13_ch1_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w9_1 <= DSP_bh13_ch1_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w8_1 <= DSP_bh13_ch1_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w7_1 <= DSP_bh13_ch1_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w6_1 <= DSP_bh13_ch1_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w5_1 <= DSP_bh13_ch1_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w4_1 <= DSP_bh13_ch1_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w3_1 <= DSP_bh13_ch1_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w2_1 <= DSP_bh13_ch1_0(32); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w1_1 <= DSP_bh13_ch1_0(31); -- cycle= 0 cp= 1.638e-09
   heap_bh13_w0_1 <= DSP_bh13_ch1_0(30); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------

   -- Adding the constant bits
   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   finalAdderIn0_bh13 <= "0" & heap_bh13_w34_0_d1 & heap_bh13_w33_0_d1 & heap_bh13_w32_0_d1 & heap_bh13_w31_0_d1 & heap_bh13_w30_0_d1 & heap_bh13_w29_0_d1 & heap_bh13_w28_0_d1 & heap_bh13_w27_0_d1 & heap_bh13_w26_0_d1 & heap_bh13_w25_0_d1 & heap_bh13_w24_0_d1 & heap_bh13_w23_0_d1 & heap_bh13_w22_0_d1 & heap_bh13_w21_0_d1 & heap_bh13_w20_0_d1 & heap_bh13_w19_0_d1 & heap_bh13_w18_0_d1 & heap_bh13_w17_0_d1 & heap_bh13_w16_0_d1 & heap_bh13_w15_0_d1 & heap_bh13_w14_0_d1 & heap_bh13_w13_0_d1 & heap_bh13_w12_0_d1 & heap_bh13_w11_0_d1 & heap_bh13_w10_1_d1 & heap_bh13_w9_1_d1 & heap_bh13_w8_1_d1 & heap_bh13_w7_1_d1 & heap_bh13_w6_1_d1 & heap_bh13_w5_1_d1 & heap_bh13_w4_1_d1 & heap_bh13_w3_1_d1 & heap_bh13_w2_1_d1 & heap_bh13_w1_1_d1 & heap_bh13_w0_1_d1;
   finalAdderIn1_bh13 <= "0" & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh13_w10_0_d1 & heap_bh13_w9_0_d1 & heap_bh13_w8_0_d1 & heap_bh13_w7_0_d1 & heap_bh13_w6_0_d1 & heap_bh13_w5_0_d1 & heap_bh13_w4_0_d1 & heap_bh13_w3_0_d1 & heap_bh13_w2_0_d1 & heap_bh13_w1_0_d1 & heap_bh13_w0_0_d1;
   finalAdderCin_bh13 <= '0';
   Adder_final13_0: IntAdder_36_f400_uid24  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => finalAdderCin_bh13,
                 R => finalAdderOut_bh13   ,
                 X => finalAdderIn0_bh13,
                 Y => finalAdderIn1_bh13);
   -- concatenate all the compressed chunks
   CompressionResult13 <= finalAdderOut_bh13;
   -- End of code generated by BitHeap::generateCompressorVHDL
   R <= CompressionResult13(34 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_34_f400_uid45
--                     (IntAdderClassical_34_f400_uid47)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_34_f400_uid45 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(33 downto 0);
          Y : in  std_logic_vector(33 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(33 downto 0)   );
end entity;

architecture arch of IntAdder_34_f400_uid45 is
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   --Classical
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--                IntMultiplier_UsingDSP_7_26_0_unsigned_uid32
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Kinga Illyes, Bogdan Popa, Bogdan Pasca, 2012
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntMultiplier_UsingDSP_7_26_0_unsigned_uid32 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(6 downto 0);
          Y : in  std_logic_vector(25 downto 0);
          R : out  std_logic_vector(32 downto 0)   );
end entity;

architecture arch of IntMultiplier_UsingDSP_7_26_0_unsigned_uid32 is
   component IntAdder_34_f400_uid45 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(33 downto 0);
             Y : in  std_logic_vector(33 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(33 downto 0)   );
   end component;

signal XX_m33 :  std_logic_vector(25 downto 0);
signal YY_m33 :  std_logic_vector(6 downto 0);
signal DSP_bh34_ch0_0 :  std_logic_vector(40 downto 0);
signal heap_bh34_w32_0, heap_bh34_w32_0_d1 : std_logic;
signal heap_bh34_w31_0, heap_bh34_w31_0_d1 : std_logic;
signal heap_bh34_w30_0, heap_bh34_w30_0_d1 : std_logic;
signal heap_bh34_w29_0, heap_bh34_w29_0_d1 : std_logic;
signal heap_bh34_w28_0, heap_bh34_w28_0_d1 : std_logic;
signal heap_bh34_w27_0, heap_bh34_w27_0_d1 : std_logic;
signal heap_bh34_w26_0, heap_bh34_w26_0_d1 : std_logic;
signal heap_bh34_w25_0, heap_bh34_w25_0_d1 : std_logic;
signal heap_bh34_w24_0, heap_bh34_w24_0_d1 : std_logic;
signal heap_bh34_w23_0, heap_bh34_w23_0_d1 : std_logic;
signal heap_bh34_w22_0, heap_bh34_w22_0_d1 : std_logic;
signal heap_bh34_w21_0, heap_bh34_w21_0_d1 : std_logic;
signal heap_bh34_w20_0, heap_bh34_w20_0_d1 : std_logic;
signal heap_bh34_w19_0, heap_bh34_w19_0_d1 : std_logic;
signal heap_bh34_w18_0, heap_bh34_w18_0_d1 : std_logic;
signal heap_bh34_w17_0, heap_bh34_w17_0_d1 : std_logic;
signal heap_bh34_w16_0, heap_bh34_w16_0_d1 : std_logic;
signal heap_bh34_w15_0, heap_bh34_w15_0_d1 : std_logic;
signal heap_bh34_w14_0, heap_bh34_w14_0_d1 : std_logic;
signal heap_bh34_w13_0, heap_bh34_w13_0_d1 : std_logic;
signal heap_bh34_w12_0, heap_bh34_w12_0_d1 : std_logic;
signal heap_bh34_w11_0, heap_bh34_w11_0_d1 : std_logic;
signal heap_bh34_w10_0, heap_bh34_w10_0_d1 : std_logic;
signal heap_bh34_w9_0, heap_bh34_w9_0_d1 : std_logic;
signal heap_bh34_w8_0, heap_bh34_w8_0_d1 : std_logic;
signal heap_bh34_w7_0, heap_bh34_w7_0_d1 : std_logic;
signal heap_bh34_w6_0, heap_bh34_w6_0_d1 : std_logic;
signal heap_bh34_w5_0, heap_bh34_w5_0_d1 : std_logic;
signal heap_bh34_w4_0, heap_bh34_w4_0_d1 : std_logic;
signal heap_bh34_w3_0, heap_bh34_w3_0_d1 : std_logic;
signal heap_bh34_w2_0, heap_bh34_w2_0_d1 : std_logic;
signal heap_bh34_w1_0, heap_bh34_w1_0_d1 : std_logic;
signal heap_bh34_w0_0, heap_bh34_w0_0_d1 : std_logic;
signal DSP_bh34_ch1_0 :  std_logic_vector(40 downto 0);
signal heap_bh34_w8_1, heap_bh34_w8_1_d1 : std_logic;
signal heap_bh34_w7_1, heap_bh34_w7_1_d1 : std_logic;
signal heap_bh34_w6_1, heap_bh34_w6_1_d1 : std_logic;
signal heap_bh34_w5_1, heap_bh34_w5_1_d1 : std_logic;
signal heap_bh34_w4_1, heap_bh34_w4_1_d1 : std_logic;
signal heap_bh34_w3_1, heap_bh34_w3_1_d1 : std_logic;
signal heap_bh34_w2_1, heap_bh34_w2_1_d1 : std_logic;
signal heap_bh34_w1_1, heap_bh34_w1_1_d1 : std_logic;
signal heap_bh34_w0_1, heap_bh34_w0_1_d1 : std_logic;
signal finalAdderIn0_bh34 :  std_logic_vector(33 downto 0);
signal finalAdderIn1_bh34 :  std_logic_vector(33 downto 0);
signal finalAdderCin_bh34 : std_logic;
signal finalAdderOut_bh34 :  std_logic_vector(33 downto 0);
signal CompressionResult34 :  std_logic_vector(33 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            heap_bh34_w32_0_d1 <=  heap_bh34_w32_0;
            heap_bh34_w31_0_d1 <=  heap_bh34_w31_0;
            heap_bh34_w30_0_d1 <=  heap_bh34_w30_0;
            heap_bh34_w29_0_d1 <=  heap_bh34_w29_0;
            heap_bh34_w28_0_d1 <=  heap_bh34_w28_0;
            heap_bh34_w27_0_d1 <=  heap_bh34_w27_0;
            heap_bh34_w26_0_d1 <=  heap_bh34_w26_0;
            heap_bh34_w25_0_d1 <=  heap_bh34_w25_0;
            heap_bh34_w24_0_d1 <=  heap_bh34_w24_0;
            heap_bh34_w23_0_d1 <=  heap_bh34_w23_0;
            heap_bh34_w22_0_d1 <=  heap_bh34_w22_0;
            heap_bh34_w21_0_d1 <=  heap_bh34_w21_0;
            heap_bh34_w20_0_d1 <=  heap_bh34_w20_0;
            heap_bh34_w19_0_d1 <=  heap_bh34_w19_0;
            heap_bh34_w18_0_d1 <=  heap_bh34_w18_0;
            heap_bh34_w17_0_d1 <=  heap_bh34_w17_0;
            heap_bh34_w16_0_d1 <=  heap_bh34_w16_0;
            heap_bh34_w15_0_d1 <=  heap_bh34_w15_0;
            heap_bh34_w14_0_d1 <=  heap_bh34_w14_0;
            heap_bh34_w13_0_d1 <=  heap_bh34_w13_0;
            heap_bh34_w12_0_d1 <=  heap_bh34_w12_0;
            heap_bh34_w11_0_d1 <=  heap_bh34_w11_0;
            heap_bh34_w10_0_d1 <=  heap_bh34_w10_0;
            heap_bh34_w9_0_d1 <=  heap_bh34_w9_0;
            heap_bh34_w8_0_d1 <=  heap_bh34_w8_0;
            heap_bh34_w7_0_d1 <=  heap_bh34_w7_0;
            heap_bh34_w6_0_d1 <=  heap_bh34_w6_0;
            heap_bh34_w5_0_d1 <=  heap_bh34_w5_0;
            heap_bh34_w4_0_d1 <=  heap_bh34_w4_0;
            heap_bh34_w3_0_d1 <=  heap_bh34_w3_0;
            heap_bh34_w2_0_d1 <=  heap_bh34_w2_0;
            heap_bh34_w1_0_d1 <=  heap_bh34_w1_0;
            heap_bh34_w0_0_d1 <=  heap_bh34_w0_0;
            heap_bh34_w8_1_d1 <=  heap_bh34_w8_1;
            heap_bh34_w7_1_d1 <=  heap_bh34_w7_1;
            heap_bh34_w6_1_d1 <=  heap_bh34_w6_1;
            heap_bh34_w5_1_d1 <=  heap_bh34_w5_1;
            heap_bh34_w4_1_d1 <=  heap_bh34_w4_1;
            heap_bh34_w3_1_d1 <=  heap_bh34_w3_1;
            heap_bh34_w2_1_d1 <=  heap_bh34_w2_1;
            heap_bh34_w1_1_d1 <=  heap_bh34_w1_1;
            heap_bh34_w0_1_d1 <=  heap_bh34_w0_1;
         end if;
      end process;
   XX_m33 <= Y ;
   YY_m33 <= X ;
   
   -- Beginning of code generated by BitHeap::generateCompressorVHDL
   -- code generated by BitHeap::generateSupertileVHDL()
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh34_ch0_0 <= ("" & XX_m33(25 downto 2) & "") * ("" & YY_m33(6 downto 0) & "0000000000");
   heap_bh34_w32_0 <= DSP_bh34_ch0_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w31_0 <= DSP_bh34_ch0_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w30_0 <= DSP_bh34_ch0_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w29_0 <= DSP_bh34_ch0_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w28_0 <= DSP_bh34_ch0_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w27_0 <= DSP_bh34_ch0_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w26_0 <= DSP_bh34_ch0_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w25_0 <= DSP_bh34_ch0_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w24_0 <= DSP_bh34_ch0_0(32); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w23_0 <= DSP_bh34_ch0_0(31); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w22_0 <= DSP_bh34_ch0_0(30); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w21_0 <= DSP_bh34_ch0_0(29); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w20_0 <= DSP_bh34_ch0_0(28); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w19_0 <= DSP_bh34_ch0_0(27); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w18_0 <= DSP_bh34_ch0_0(26); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w17_0 <= DSP_bh34_ch0_0(25); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w16_0 <= DSP_bh34_ch0_0(24); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w15_0 <= DSP_bh34_ch0_0(23); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w14_0 <= DSP_bh34_ch0_0(22); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w13_0 <= DSP_bh34_ch0_0(21); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w12_0 <= DSP_bh34_ch0_0(20); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w11_0 <= DSP_bh34_ch0_0(19); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w10_0 <= DSP_bh34_ch0_0(18); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w9_0 <= DSP_bh34_ch0_0(17); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w8_0 <= DSP_bh34_ch0_0(16); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w7_0 <= DSP_bh34_ch0_0(15); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w6_0 <= DSP_bh34_ch0_0(14); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w5_0 <= DSP_bh34_ch0_0(13); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w4_0 <= DSP_bh34_ch0_0(12); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w3_0 <= DSP_bh34_ch0_0(11); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w2_0 <= DSP_bh34_ch0_0(10); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w1_0 <= DSP_bh34_ch0_0(9); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w0_0 <= DSP_bh34_ch0_0(8); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh34_ch1_0 <= ("" & XX_m33(1 downto 0) & "0000000000000000000000") * ("" & YY_m33(6 downto 0) & "0000000000");
   heap_bh34_w8_1 <= DSP_bh34_ch1_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w7_1 <= DSP_bh34_ch1_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w6_1 <= DSP_bh34_ch1_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w5_1 <= DSP_bh34_ch1_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w4_1 <= DSP_bh34_ch1_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w3_1 <= DSP_bh34_ch1_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w2_1 <= DSP_bh34_ch1_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w1_1 <= DSP_bh34_ch1_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh34_w0_1 <= DSP_bh34_ch1_0(32); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------

   -- Adding the constant bits
   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   finalAdderIn0_bh34 <= "0" & heap_bh34_w32_0_d1 & heap_bh34_w31_0_d1 & heap_bh34_w30_0_d1 & heap_bh34_w29_0_d1 & heap_bh34_w28_0_d1 & heap_bh34_w27_0_d1 & heap_bh34_w26_0_d1 & heap_bh34_w25_0_d1 & heap_bh34_w24_0_d1 & heap_bh34_w23_0_d1 & heap_bh34_w22_0_d1 & heap_bh34_w21_0_d1 & heap_bh34_w20_0_d1 & heap_bh34_w19_0_d1 & heap_bh34_w18_0_d1 & heap_bh34_w17_0_d1 & heap_bh34_w16_0_d1 & heap_bh34_w15_0_d1 & heap_bh34_w14_0_d1 & heap_bh34_w13_0_d1 & heap_bh34_w12_0_d1 & heap_bh34_w11_0_d1 & heap_bh34_w10_0_d1 & heap_bh34_w9_0_d1 & heap_bh34_w8_1_d1 & heap_bh34_w7_1_d1 & heap_bh34_w6_1_d1 & heap_bh34_w5_1_d1 & heap_bh34_w4_1_d1 & heap_bh34_w3_1_d1 & heap_bh34_w2_1_d1 & heap_bh34_w1_1_d1 & heap_bh34_w0_1_d1;
   finalAdderIn1_bh34 <= "0" & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh34_w8_0_d1 & heap_bh34_w7_0_d1 & heap_bh34_w6_0_d1 & heap_bh34_w5_0_d1 & heap_bh34_w4_0_d1 & heap_bh34_w3_0_d1 & heap_bh34_w2_0_d1 & heap_bh34_w1_0_d1 & heap_bh34_w0_0_d1;
   finalAdderCin_bh34 <= '0';
   Adder_final34_0: IntAdder_34_f400_uid45  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => finalAdderCin_bh34,
                 R => finalAdderOut_bh34   ,
                 X => finalAdderIn0_bh34,
                 Y => finalAdderIn1_bh34);
   -- concatenate all the compressed chunks
   CompressionResult34 <= finalAdderOut_bh34;
   -- End of code generated by BitHeap::generateCompressorVHDL
   R <= CompressionResult34(32 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_27_f400_uid53
--                     (IntAdderClassical_27_f400_uid55)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_27_f400_uid53 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(26 downto 0);
          Y : in  std_logic_vector(26 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(26 downto 0)   );
end entity;

architecture arch of IntAdder_27_f400_uid53 is
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   --Classical
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_27_f400_uid60
--                     (IntAdderClassical_27_f400_uid62)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_27_f400_uid60 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(26 downto 0);
          Y : in  std_logic_vector(26 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(26 downto 0)   );
end entity;

architecture arch of IntAdder_27_f400_uid60 is
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   --Classical
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--                            IntSquarer_16_uid67
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2009)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library work;
entity IntSquarer_16_uid67 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(15 downto 0);
          R : out  std_logic_vector(31 downto 0)   );
end entity;

architecture arch of IntSquarer_16_uid67 is
signal sX, sX_d1 :  std_logic_vector(15 downto 0);
signal sY, sY_d1 :  std_logic_vector(15 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            sX_d1 <=  sX;
            sY_d1 <=  sY;
         end if;
      end process;
   sX <= X;
   sY <= X;
   ----------------Synchro barrier, entering cycle 1----------------
   R <= sX_d1 * sY_d1;
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_27_f400_uid70
--                    (IntAdderAlternative_27_f400_uid74)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_27_f400_uid70 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(26 downto 0);
          Y : in  std_logic_vector(26 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(26 downto 0)   );
end entity;

architecture arch of IntAdder_27_f400_uid70 is
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   --Alternative
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--                              LogTable_0_9_40
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
entity LogTable_0_9_40 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(8 downto 0);
          Y : out  std_logic_vector(39 downto 0)   );
end entity;

architecture arch of LogTable_0_9_40 is
   -- Build a 2-D array type for the RoM
   subtype word_t is std_logic_vector(39 downto 0);
   type memory_t is array(0 to 511) of word_t;
   function init_rom
      return memory_t is 
      variable tmp : memory_t := (
   "1111111111111100000000000000000000000000",
   "1111111111111100000000000000000000000000",
   "0000000001111100001000000000101010101111",
   "0000000011111100100000000101010110010110",
   "0000000101111101001000010010000101000110",
   "0000000111111110000000101010111010110001",
   "0000001001111111001001010011111100101101",
   "0000001100000000100010010001010001110001",
   "0000001110000010001011100111000010011001",
   "0000010000000100000101011001011000100101",
   "0000010010000110001111101100011111111011",
   "0000010100001000101010100100100101100110",
   "0000010110001011010110000101111000011010",
   "0000011000001110010010010100101000110010",
   "0000011010010001011111010101001000110001",
   "0000011100010100111101001011101100000101",
   "0000011110011000101011111100101000000101",
   "0000100000011100101011101100010011110100",
   "0000100010100000111100011111001000000000",
   "0000100100100101011110011001011111000111",
   "0000100110101010010001011111110101010001",
   "0000101000101111010101110110101000010111",
   "0000101010110100101011100010011000000010",
   "0000101100111010010010100111100101101010",
   "0000101100111010010010100111100101101010",
   "0000101111000000001011001010110100011011",
   "0000110001000110010101010000101001010000",
   "0000110011001100110000111101101010111010",
   "0000110101010011011110010110100001111110",
   "0000110111011010011101011111111000110100",
   "0000111001100001101110011110011011101111",
   "0000111011101001010001010110111000110100",
   "0000111101110001000110001110000000000011",
   "0000111111111001001101001000100011010110",
   "0000111111111001001101001000100011010110",
   "0001000010000001100110001011010110011110",
   "0001000100001010010001011011001111001011",
   "0001000110010011001110111101000101000110",
   "0001001000011100011110110101110001111000",
   "0001001010100110000001001010010001000111",
   "0001001100101111110101111111100000011000",
   "0001001100101111110101111111100000011000",
   "0001001110111001111101011010011111010010",
   "0001010001000100010111100000001111011100",
   "0001010011001111000100010101110100100000",
   "0001010101011010000100000000010100001110",
   "0001010111100101010110100100110110011000",
   "0001011001110000111100001000100100110110",
   "0001011001110000111100001000100100110110",
   "0001011011111100110100110000101011101011",
   "0001011110001001000000100010011000111110",
   "0001100000010101011111100010111101000001",
   "0001100010100010010001110111101010010010",
   "0001100100101111010111100101110101011001",
   "0001100100101111010111100101110101011001",
   "0001100110111100110000110010110101001101",
   "0001101001001010011101100100000010110010",
   "0001101011011000011101111110111001011011",
   "0001101101100110110010001000110110101101",
   "0001101101100110110010001000110110101101",
   "0001101111110101011010000111011010100000",
   "0001110010000100010110000000000110111100",
   "0001110100010011100101111000100000100010",
   "0001110110100011001001110110001110000100",
   "0001110110100011001001110110001110000100",
   "0001111000110011000001111110111000110000",
   "0001111011000011001110011000001100001010",
   "0001111101010011101111000111110110010000",
   "0001111111100100100100010011100111011100",
   "0001111111100100100100010011100111011100",
   "0010000001110101101110000001010010100100",
   "0010000100000111001100010110101100111100",
   "0010000110011000111111011001101110011010",
   "0010000110011000111111011001101110011010",
   "0010001000101011000111010000010001010000",
   "0010001010111101100100000000010010010110",
   "0010001101010000010101101111110001001000",
   "0010001101010000010101101111110001001000",
   "0010001111100011011100100100101111100101",
   "0010010001110110111000100101010010010100",
   "0010010100001010101001110111100000100011",
   "0010010100001010101001110111100000100011",
   "0010010110011110110000100001100100001101",
   "0010011000110011001100101001101001110100",
   "0010011011000111111110010110000000101011",
   "0010011011000111111110010110000000101011",
   "0010011101011101000101101100111010110000",
   "0010011111110010100010110100101100110010",
   "0010100010001000010101110011101110010100",
   "0010100010001000010101110011101110010100",
   "0010100100011110011110110000011001101000",
   "0010100110110100111101110001001011111000",
   "0010100110110100111101110001001011111000",
   "0010101001001011110010111100100101000100",
   "0010101011100010111110011001001000000011",
   "0010101101111010100000001101011010101000",
   "0010101101111010100000001101011010101000",
   "0010110000010010011000100000000101100001",
   "0010110010101010100111010111110100011000",
   "0010110010101010100111010111110100011000",
   "0010110101000011001100111011010101111000",
   "0010110111011100001001010001011011101011",
   "0010111001110101011100100000111010100000",
   "0010111001110101011100100000111010100000",
   "0010111100001111000110110000101010001000",
   "0010111110101001001000000111100101011111",
   "0010111110101001001000000111100101011111",
   "0011000001000011100000101100101010100011",
   "0011000011011110010000100110111010100010",
   "0011000011011110010000100110111010100010",
   "0011000101111001010111111101011001110010",
   "0011001000010100110110110111001111111010",
   "0011001000010100110110110111001111111010",
   "0011001010110000101101011011100111101110",
   "0011001101001100111011110001101111010111",
   "0011001101001100111011110001101111010111",
   "0011001111101001100010000000111000010001",
   "0011010010000110100000010000010111001101",
   "0011010010000110100000010000010111001101",
   "0011010100100011110110100111100100010110",
   "0011010111000001100101001101111011001110",
   "0011010111000001100101001101111011001110",
   "0011011001011111101100001010111010111000",
   "0011011011111110001011100110000101110000",
   "0011011011111110001011100110000101110000",
   "0011011110011101000011100111000001111000",
   "0011100000111100010100010101011000110000",
   "0011100000111100010100010101011000110000",
   "0011100011011011111101111000110111100000",
   "0011100101111100000000011001001110110110",
   "0011100101111100000000011001001110110110",
   "0011101000011100011011111110010011001011",
   "0011101000011100011011111110010011001011",
   "0011101010111101010000101111111100100000",
   "0011101101011110011110110110000110101001",
   "0011101101011110011110110110000110101001",
   "0011110000000000000110011000110001000111",
   "0011110010100010000111011111111111001110",
   "0011110010100010000111011111111111001110",
   "0011110101000100100010010011111000001001",
   "0011110101000100100010010011111000001001",
   "0011110111100111010110111100100110111010",
   "0011111010001010100101100010011010011100",
   "0011111010001010100101100010011010011100",
   "0011111100101110001110001101100101101000",
   "0011111100101110001110001101100101101000",
   "0011111111010010010001000110011111010100",
   "0100000001110110101110010101100010011011",
   "0100000001110110101110010101100010011011",
   "0100000100011011100110000011001101111010",
   "0100000111000000111000011000000100110110",
   "0100000111000000111000011000000100110110",
   "0100001001100110100101011100101110011011",
   "0100001001100110100101011100101110011011",
   "0100001100001100101101011001110110000110",
   "0100001100001100101101011001110110000110",
   "0100001110110011010000011000001011011110",
   "0100010001011010001110100000100010100000",
   "0100010001011010001110100000100010100000",
   "0100010100000001100111111011110011011010",
   "0100010100000001100111111011110011011010",
   "0100010110101001011100110010111010110100",
   "0100011001010001101101001110111001101111",
   "0100011001010001101101001110111001101111",
   "0100011011111010011001011000110101101010",
   "0100011011111010011001011000110101101010",
   "0100011110100011100001011001111000100010",
   "0100011110100011100001011001111000100010",
   "0100100001001101000101011011010000111011",
   "0100100011110111000101100110010001111011",
   "0100100011110111000101100110010001111011",
   "0100100110100001100010000100010011010100",
   "0100100110100001100010000100010011010100",
   "0100101001001100011010111110110001100010",
   "0100101001001100011010111110110001100010",
   "0100101011110111110000011111001101110010",
   "0100101011110111110000011111001101110010",
   "0100101110100011100010101111001110000100",
   "0100110001001111110001111000011101001110",
   "0100110001001111110001111000011101001110",
   "0100110011111100011110000100101010111011",
   "0100110011111100011110000100101010111011",
   "0100110110101001100111011101101011111000",
   "0100110110101001100111011101101011111000",
   "0100111001010111001110001101011001101111",
   "0100111001010111001110001101011001101111",
   "0100111100000101010010011101110011001101",
   "0100111100000101010010011101110011001101",
   "0100111110110011110100011000111100000110",
   "0101000001100010110100001000111101011000",
   "0101000001100010110100001000111101011000",
   "0101000100010010010001111000000101001110",
   "0101000100010010010001111000000101001110",
   "0101000111000010001101110000100111000111",
   "0101000111000010001101110000100111000111",
   "0101001001110010100111111100111011110011",
   "0101001001110010100111111100111011110011",
   "0101001100100011100000100111100001011100",
   "0101001100100011100000100111100001011100",
   "0101001111010100110111111010111011101010",
   "0101001111010100110111111010111011101010",
   "0101010010000110101110000001110011100010",
   "0101010010000110101110000001110011100010",
   "0101010100111001000011000110110111110000",
   "0101010100111001000011000110110111110000",
   "0101010111101011110111010100111100100100",
   "0101010111101011110111010100111100100100",
   "0101011010011111001010110110111011111100",
   "0101011010011111001010110110111011111100",
   "0101011101010010111101110111110101100110",
   "0101011101010010111101110111110101100110",
   "0101100000000111010000100010101111000010",
   "0101100000000111010000100010101111000010",
   "0101100010111100000011000010110011101010",
   "0101100010111100000011000010110011101010",
   "0101100101110001010101100011010100110100",
   "0101100101110001010101100011010100110100",
   "0101101000100111001000001111101001110010",
   "0101101000100111001000001111101001110010",
   "0101101011011101011011010011001111111110",
   "0101101011011101011011010011001111111110",
   "0101101110010100001110111001101010111100",
   "0101101110010100001110111001101010111100",
   "0101110001001011100011001110100100011010",
   "0101110001001011100011001110100100011010",
   "0101110100000011011000011101101100011010",
   "0101110100000011011000011101101100011010",
   "0101110110111011101110110010111001010010",
   "0101110110111011101110110010111001010010",
   "0101111001110100100110011010000111110100",
   "0101111001110100100110011010000111110100",
   "0101111100101101111111011111011011010010",
   "0101111100101101111111011111011011010010",
   "0101111111100111111010001110111101100000",
   "0101111111100111111010001110111101100000",
   "0110000010100010010110110100111110111110",
   "0110000010100010010110110100111110111110",
   "0110000101011101010101011101110110110111",
   "0110000101011101010101011101110110110111",
   "0110000101011101010101011101110110110111",
   "0110001000011000110110010110000011001010",
   "0110001000011000110110010110000011001010",
   "0110001011010100111001101010001000101100",
   "0110001011010100111001101010001000101100",
   "0110001110010001011111100110110011010010",
   "0110001110010001011111100110110011010010",
   "0110010001001110101000011000110101110000",
   "0110010001001110101000011000110101110000",
   "0110010100001100010100001101001010000001",
   "0110010100001100010100001101001010000001",
   "0110010100001100010100001101001010000001",
   "0110010111001010100011010000110001001110",
   "0110010111001010100011010000110001001110",
   "0110011010001001010101110000110011110000",
   "0110011010001001010101110000110011110000",
   "0110011101001000101011111010100001011000",
   "1011011000110110011110011011101100000010",
   "1011011010010110011111111011110010000010",
   "1011011011110110101010011101000000001100",
   "1011011011110110101010011101000000001100",
   "1011011101010110111110000001000011000010",
   "1011011110110111011010101001100111101000",
   "1011100000011000000000011000011011011110",
   "1011100001111000101111001111001100100100",
   "1011100011011001100111001111101001011010",
   "1011100100111010101000011011100000111110",
   "1011100110011011110010110100100010110000",
   "1011100110011011110010110100100010110000",
   "1011100111111101000110011100011110101100",
   "1011101001011110100011010101000101010010",
   "1011101011000000001001100000000111011110",
   "1011101100100001111000111111010110110010",
   "1011101110000011110001110100100101001010",
   "1011101111100101110100000001100101000111",
   "1011101111100101110100000001100101000111",
   "1011110001000111111111101000001001101010",
   "1011110010101010010100101010000110010101",
   "1011110100001100110011001001001111001100",
   "1011110101101111011011000111011000110010",
   "1011110111010010001100100110011000001110",
   "1011111000110101000111101000000011001010",
   "1011111000110101000111101000000011001010",
   "1011111010011000001100001110001111110000",
   "1011111011111011011010011010110100101100",
   "1011111101011110110010001111101001010000",
   "1011111111000010010011101110100101001010",
   "1011111111000010010011101110100101001010",
   "1100000000100101111110111001100000110100",
   "1100000010001001110011110010010101000100",
   "1100000011101101110010011010111011010101",
   "1100000101010001111010110101001101101001",
   "1100000110110110001101000011000110100010",
   "1100000110110110001101000011000110100010",
   "1100001000011010101001000110100001000111",
   "1100001001111111001111000001011001000101",
   "1100001011100011111110110101101010101011",
   "1100001101001000111000100101010010101111",
   "1100001101001000111000100101010010101111",
   "1100001110101101111100010010001110101010",
   "1100010000010011001001111110011100011100",
   "1100010001111000100001101011111010101000",
   "1100010011011110000011011100101000011010",
   "1100010011011110000011011100101000011010",
   "1100010101000011101111010010100101100000",
   "1100010110101001100101001111110010010010",
   "1100011000001111100101010110001111101100",
   "1100011001110101101111100111111111010001",
   "1100011001110101101111100111111111010001",
   "1100011011011100000100000111000011001011",
   "1100011101000010100010110101011110001010",
   "1100011110101001001011110101010011101000",
   "1100011110101001001011110101010011101000",
   "1100100000001111111111001000100111100100",
   "1100100001110110111100110001011110100101",
   "1100100011011110000100110001111101111100",
   "1100100101000101010111001100001011100000",
   "1100100101000101010111001100001011100000",
   "1100100110101100110100000010001101110100",
   "1100101000010100011011010110001011111110",
   "1100101001111100001101001010001101110100",
   "1100101001111100001101001010001101110100",
   "1100101011100100001001100000011011110000",
   "1100101101001100010000011010111110111000",
   "1100101110110100100001111100000000111010",
   "1100101110110100100001111100000000111010",
   "1100110000011100111110000101101100010011",
   "1100110010000101100100111010001100000100",
   "1100110011101110010110011011101011111101",
   "1100110011101110010110011011101011111101",
   "1100110101010111010010101100011000010111",
   "1100110111000000011001101110011110011000",
   "1100111000101001101011100100001011101111",
   "1100111000101001101011100100001011101111",
   "1100111010010011001000001111101110111001",
   "1100111011111100101111110011010110111110",
   "1100111101100110100010010001010011110011",
   "1100111101100110100010010001010011110011",
   "1100111111010000011111101011110101111001",
   "1101000000111010101000000101001110011110",
   "1101000000111010101000000101001110011110",
   "1101000010100100111011011111101111011110",
   "1101000100001111011001111101101011100010",
   "1101000101111010000011100001010110000000",
   "1101000101111010000011100001010110000000",
   "1101000111100100111000001101000010111101",
   "1101001001001111111000000011000111001100",
   "1101001001001111111000000011000111001100",
   "1101001010111011000011000101111000010001",
   "1101001100100110011001010111101100011011",
   "1101001110010001111010111010111010101011",
   "1101001110010001111010111010111010101011",
   "1101001111111101100111110001111010110001",
   "1101010001101001011111111111000101001101",
   "1101010001101001011111111111000101001101",
   "1101010011010101100011100100110011010000",
   "1101010101000001110010100101011110111010",
   "1101010101000001110010100101011110111010",
   "1101010110101110001101000011100010111100",
   "1101011000011010110011000001011010111100",
   "1101011010000111100100100001100011001011",
   "1101011010000111100100100001100011001011",
   "1101011011110100100001100110011000110010",
   "1101011101100001101010010010011001101001",
   "1101011101100001101010010010011001101001",
   "1101011111001110111110101000000100011011",
   "1101100000111100011110101001111000100110",
   "1101100000111100011110101001111000100110",
   "1101100010101010001010011010010110011101",
   "1101100100011000000001111011111111000011",
   "1101100100011000000001111011111111000011",
   "1101100110000110000101010001010100010010",
   "1101100111110100010100011100111000110111",
   "1101100111110100010100011100111000110111",
   "1101101001100010101111100001010000010100",
   "1101101011010001010110100000111111000000",
   "1101101011010001010110100000111111000000",
   "1101101101000000001001011110101010000111",
   "1101101110101111001000011100110111101011",
   "1101101110101111001000011100110111101011",
   "1101110000011110010011011110001110100100",
   "1101110010001101101010100101010110100001",
   "1101110010001101101010100101010110100001",
   "1101110011111101001101110100111000000111",
   "1101110101101100111101001111011100110010",
   "1101110101101100111101001111011100110010",
   "1101110111011100111000110111101110110110",
   "1101111001001101000000110000011001011111",
   "1101111001001101000000110000011001011111",
   "1101111010111101010100111100001000110010",
   "1101111100101101110101011101101001101011",
   "1101111100101101110101011101101001101011",
   "1101111110011110100010010111101010000010",
   "1110000000001111011011101100111000100100",
   "1110000000001111011011101100111000100100",
   "1110000010000000100001100000000100111100",
   "1110000010000000100001100000000100111100",
   "1110000011110001110011110011111111101111",
   "1110000101100011010010101011011010011001",
   "1110000101100011010010101011011010011001",
   "1110000111010100111110001001000111010101",
   "1110001001000110110110001111111001111000",
   "1110001001000110110110001111111001111000",
   "1110001010111000111011000010100110010011",
   "1110001100101011001100100100000001110100",
   "1110001100101011001100100100000001110100",
   "1110001110011101101010110111000010100100",
   "1110001110011101101010110111000010100100",
   "1110010000010000010101111110011111101100",
   "1110010010000011001101111101010001001111",
   "1110010010000011001101111101010001001111",
   "1110010011110110010010110110010000010010",
   "1110010011110110010010110110010000010010",
   "1110010101101001100100101100010110110101",
   "1110010111011101000011100010011111111010",
   "1110010111011101000011100010011111111010",
   "1110011001010000101111011011100111100000",
   "1110011011000100101000011010101010100111",
   "1110011011000100101000011010101010100111",
   "1110011100111000101110100010100111001110",
   "1110011100111000101110100010100111001110",
   "1110011110101101000001110110011100011000",
   "1110100000100001100010011001001010000101",
   "1110100000100001100010011001001010000101",
   "1110100010010110010000001101110001011001",
   "1110100010010110010000001101110001011001",
   "1110100100001011001011010111010100011011",
   "1110100110000000010011111000110110010001",
   "1110100110000000010011111000110110010001",
   "1110100111110101101001110101011011001001",
   "1110100111110101101001110101011011001001",
   "1110101001101011001101010000001000010000",
   "1110101011100000111110001100000011111010",
   "1110101011100000111110001100000011111010",
   "1110101101010110111100101100010101011110",
   "1110101101010110111100101100010101011110",
   "1110101111001101001000110100000101011010",
   "1110101111001101001000110100000101011010",
   "1110110001000011100010100110011101001110",
   "1110110010111010001010000110100111100100",
   "1110110010111010001010000110100111100100",
   "1110110100110000111111010111110000001010",
   "1110110100110000111111010111110000001010",
   "1110110110101000000010011101000011110110",
   "1110111000011111010011011001110000100101",
   "1110111000011111010011011001110000100101",
   "1110111010010110110010010001000101011100",
   "1110111010010110110010010001000101011100",
   "1110111100001110011111000110010010101011",
   "1110111100001110011111000110010010101011",
   "1110111110000110011001111100101001100111",
   "1110111111111110100010110111011100110010",
   "1110111111111110100010110111011100110010",
   "1111000001110110111001111001111111110111",
   "1111000001110110111001111001111111110111",
   "1111000011101111011111000111100111101100",
   "1111000011101111011111000111100111101100",
   "1111000101101000010010100011101010010010",
   "1111000101101000010010100011101010010010",
   "1111000111100001010100010001011110110111",
   "1111001001011010100100010100011101110011",
   "1111001001011010100100010100011101110011",
   "1111001011010100000010110000000000101110",
   "1111001011010100000010110000000000101110",
   "1111001101001101101111100111100010011100",
   "1111001101001101101111100111100010011100",
   "1111001111000111101010111110011110111110",
   "1111001111000111101010111110011110111110",
   "1111010001000001110100111000010011100111",
   "1111010010111100001101011000011110110110",
   "1111010010111100001101011000011110110110",
   "1111010100110110110100100010100000011100",
   "1111010100110110110100100010100000011100",
   "1111010110110001101010011001111001011001",
   "1111010110110001101010011001111001011001",
   "1111011000101100101111000010001100000001",
   "1111011000101100101111000010001100000001",
   "1111011010101000000010011110111011110110",
   "1111011010101000000010011110111011110110",
   "1111011100100011100100110011101101101110",
   "1111011100100011100100110011101101101110",
   "1111011110011111010110000100000111110011",
   "1111100000011011010110010011110001100010",
   "1111100000011011010110010011110001100010",
   "1111100010010111100101100110010011101011",
   "1111100010010111100101100110010011101011",
   "1111100100010100000011111111011000010100",
   "1111100100010100000011111111011000010100",
   "1111100110010000110001100010101010111001",
   "1111100110010000110001100010101010111001",
   "1111101000001101101110010011111000001011",
   "1111101000001101101110010011111000001011",
   "1111101010001010111010010110101110010010",
   "1111101010001010111010010110101110010010",
   "1111101100001000010101101110111100101110",
   "1111101100001000010101101110111100101110",
   "1111101110000110000000100000010100011000",
   "1111101110000110000000100000010100011000",
   "1111110000000011111010101110100111100000",
   "1111110000000011111010101110100111100000",
   "1111110010000010000100011101101001110001",
   "1111110010000010000100011101101001110001",
   "1111110100000000011101110001010000010000",
   "1111110100000000011101110001010000010000",
   "1111110101111111000110101101010001011011",
   "1111110101111111000110101101010001011011",
   "1111110111111101111111010101100101001111",
   "1111110111111101111111010101100101001111",
   "1111111001111101000111101110000101000010",
   "1111111001111101000111101110000101000010",
   "1111111011111100011111111010101011101010",
   "1111111011111100011111111010101011101010",
   "1111111101111100000111111111010101011001",
      others => (others => '0'));
      	begin 
      return tmp;
      end init_rom;
	signal rom : memory_t := init_rom;
   signal Y0 :  std_logic_vector(39 downto 0);
begin
	process(clk)
   begin
   if(rising_edge(clk)) then
   	Y0 <= rom(  TO_INTEGER(unsigned(X))  );
   end if;
   end process;
    Y <= Y0;
end architecture;

--------------------------------------------------------------------------------
--                              LogTable_1_7_33
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
entity LogTable_1_7_33 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(6 downto 0);
          Y : out  std_logic_vector(32 downto 0)   );
end entity;

architecture arch of LogTable_1_7_33 is
   -- Build a 2-D array type for the RoM
   subtype word_t is std_logic_vector(32 downto 0);
   type memory_t is array(0 to 127) of word_t;
   function init_rom
      return memory_t is 
      variable tmp : memory_t := (
   "000000010000000000000001000000000",
   "000000110000000000000001000000000",
   "000001010000000000001001000000000",
   "000001110000000000011001000000001",
   "000010010000000000110001000000100",
   "000010110000000001010001000001000",
   "000011010000000001111001000001110",
   "000011110000000010101001000010111",
   "000100010000000011100001000100011",
   "000100110000000100100001000110011",
   "000101010000000101101001001001000",
   "000101110000000110111001001100000",
   "000110010000001000010001001111111",
   "000110110000001001110001010100011",
   "000111010000001011011001011001101",
   "000111110000001101001001011111110",
   "001000010000001111000001100110110",
   "001000110000010001000001101110111",
   "001001010000010011001001110111111",
   "001001110000010101011010000010000",
   "001010010000010111110010001101010",
   "001010110000011010010010011001110",
   "001011010000011100111010100111101",
   "001011110000011111101010110110110",
   "001100010000100010100011000111011",
   "001100110000100101100011011001011",
   "001101010000101000101011101101000",
   "001101110000101011111100000010001",
   "001110010000101111010100011000111",
   "001110110000110010110100110001100",
   "001111010000110110011101001011110",
   "001111110000111010001101101000000",
   "010000010000111110000110000110000",
   "010000110001000010000110100110001",
   "010001010001000110001111001000010",
   "010001110001001010011111101100100",
   "010010010001001110111000010010110",
   "010010110001010011011000111011011",
   "010011010001011000000001100110010",
   "010011110001011100110010010011100",
   "010100010001100001101011000011001",
   "010100110001100110101011110101010",
   "010101010001101011110100101010000",
   "010101110001110001000101100001010",
   "010110010001110110011110011011001",
   "010110110001111011111111010111110",
   "010111010010000001101000010111010",
   "010111110010000111011001011001100",
   "011000010010001101010010011110110",
   "011000110010010011010011100111000",
   "011001010010011001011100110010010",
   "011001110010011111101110000000101",
   "011010010010100110000111010010010",
   "011010110010101100101000100111000",
   "011011010010110011010001111111000",
   "011011110010111010000011011010100",
   "011100010011000000111100111001010",
   "011100110011000111111110011011101",
   "011101010011001111001000000001100",
   "011101110011010110011001101011000",
   "011110010011011101110011011000010",
   "011110110011100101010101001001001",
   "011111010011101100111110111101111",
   "011111110011110100110000110110100",
   "100000000011111000101100110100010",
   "100000100100000000101010110010110",
   "100001000100001000110000110101010",
   "100001100100010000111110111011111",
   "100010000100011001010101000110101",
   "100010100100100001110011010101101",
   "100011000100101010011001101000111",
   "100011100100110011001000000000011",
   "100100000100111011111110011100011",
   "100100100101000100111100111100111",
   "100101000101001110000011100001111",
   "100101100101010111010010001011011",
   "100110000101100000101000111001101",
   "100110100101101010000111101100101",
   "100111000101110011101110100100011",
   "100111100101111101011101100001000",
   "101000000110000111010100100010100",
   "101000100110010001010011101001000",
   "101001000110011011011010110100100",
   "101001100110100101101010000101000",
   "101010000110110000000001011010111",
   "101010100110111010100000110101111",
   "101011000111000101001000010110001",
   "101011100111001111110111111011110",
   "101100000111011010101111100110111",
   "101100100111100101101111010111011",
   "101101000111110000110111001101100",
   "101101100111111100000111001001001",
   "101110001000000111011111001010100",
   "101110101000010010111111010001101",
   "101111001000011110100111011110100",
   "101111101000101010010111110001011",
   "110000001000110110010000001010000",
   "110000101001000010010000101000110",
   "110001001001001110011001001101011",
   "110001101001011010101001111000010",
   "110010001001100111000010101001010",
   "110010101001110011100011100000101",
   "110011001010000000001100011110001",
   "110011101010001100111101100010001",
   "110100001010011001110110101100100",
   "110100101010100110110111111101011",
   "110101001010110100000001010100111",
   "110101101011000001010010110010111",
   "110110001011001110101100010111110",
   "110110101011011100001110000011010",
   "110111001011101001110111110101100",
   "110111101011110111101001101110110",
   "111000001100000101100011101111000",
   "111000101100010011100101110110001",
   "111001001100100001110000000100011",
   "111001101100110000000010011001110",
   "111010001100111110011100110110011",
   "111010101101001100111111011010001",
   "111011001101011011101010000101011",
   "111011101101101010011100110111111",
   "111100001101111001010111110001111",
   "111100101110001000011010110011100",
   "111101001110010111100101111100101",
   "111101101110100110111001001101011",
   "111110001110110110010100100101111",
   "111110101111000101111000000110001",
   "111111001111010101100011101110001",
   "111111101111100101010111011110001",
      others => (others => '0'));
      	begin 
      return tmp;
      end init_rom;
	signal rom : memory_t := init_rom;
   signal Y0 :  std_logic_vector(32 downto 0);
begin
	process(clk)
   begin
   if(rising_edge(clk)) then
   	Y0 <= rom(  TO_INTEGER(unsigned(X))  );
   end if;
   end process;
    Y <= Y0;
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_40_f400_uid87
--                     (IntAdderClassical_40_f400_uid89)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_40_f400_uid87 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(39 downto 0);
          Y : in  std_logic_vector(39 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(39 downto 0)   );
end entity;

architecture arch of IntAdder_40_f400_uid87 is
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   --Classical
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_40_f400_uid94
--                     (IntAdderClassical_40_f400_uid96)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_40_f400_uid94 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(39 downto 0);
          Y : in  std_logic_vector(39 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(39 downto 0)   );
end entity;

architecture arch of IntAdder_40_f400_uid94 is
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   --Classical
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--                        KCMTable_6_93032640_unsigned
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
entity KCMTable_6_93032640_unsigned is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(5 downto 0);
          Y : out  std_logic_vector(32 downto 0)   );
end entity;

architecture arch of KCMTable_6_93032640_unsigned is
begin
  with X select  Y <= 
   "000000000000000000000000000000000" when "000000",
   "000000101100010111001000011000000" when "000001",
   "000001011000101110010000110000000" when "000010",
   "000010000101000101011001001000000" when "000011",
   "000010110001011100100001100000000" when "000100",
   "000011011101110011101001111000000" when "000101",
   "000100001010001010110010010000000" when "000110",
   "000100110110100001111010101000000" when "000111",
   "000101100010111001000011000000000" when "001000",
   "000110001111010000001011011000000" when "001001",
   "000110111011100111010011110000000" when "001010",
   "000111100111111110011100001000000" when "001011",
   "001000010100010101100100100000000" when "001100",
   "001001000000101100101100111000000" when "001101",
   "001001101101000011110101010000000" when "001110",
   "001010011001011010111101101000000" when "001111",
   "001011000101110010000110000000000" when "010000",
   "001011110010001001001110011000000" when "010001",
   "001100011110100000010110110000000" when "010010",
   "001101001010110111011111001000000" when "010011",
   "001101110111001110100111100000000" when "010100",
   "001110100011100101101111111000000" when "010101",
   "001111001111111100111000010000000" when "010110",
   "001111111100010100000000101000000" when "010111",
   "010000101000101011001001000000000" when "011000",
   "010001010101000010010001011000000" when "011001",
   "010010000001011001011001110000000" when "011010",
   "010010101101110000100010001000000" when "011011",
   "010011011010000111101010100000000" when "011100",
   "010100000110011110110010111000000" when "011101",
   "010100110010110101111011010000000" when "011110",
   "010101011111001101000011101000000" when "011111",
   "010110001011100100001100000000000" when "100000",
   "010110110111111011010100011000000" when "100001",
   "010111100100010010011100110000000" when "100010",
   "011000010000101001100101001000000" when "100011",
   "011000111101000000101101100000000" when "100100",
   "011001101001010111110101111000000" when "100101",
   "011010010101101110111110010000000" when "100110",
   "011011000010000110000110101000000" when "100111",
   "011011101110011101001111000000000" when "101000",
   "011100011010110100010111011000000" when "101001",
   "011101000111001011011111110000000" when "101010",
   "011101110011100010101000001000000" when "101011",
   "011110011111111001110000100000000" when "101100",
   "011111001100010000111000111000000" when "101101",
   "011111111000101000000001010000000" when "101110",
   "100000100100111111001001101000000" when "101111",
   "100001010001010110010010000000000" when "110000",
   "100001111101101101011010011000000" when "110001",
   "100010101010000100100010110000000" when "110010",
   "100011010110011011101011001000000" when "110011",
   "100100000010110010110011100000000" when "110100",
   "100100101111001001111011111000000" when "110101",
   "100101011011100001000100010000000" when "110110",
   "100110000111111000001100101000000" when "110111",
   "100110110100001111010101000000000" when "111000",
   "100111100000100110011101011000000" when "111001",
   "101000001100111101100101110000000" when "111010",
   "101000111001010100101110001000000" when "111011",
   "101001100101101011110110100000000" when "111100",
   "101010010010000010111110111000000" when "111101",
   "101010111110011010000111010000000" when "111110",
   "101011101010110001001111101000000" when "111111",
   "---------------------------------" when others;
end architecture;

--------------------------------------------------------------------------------
--                        KCMTable_2_93032640_unsigned
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
entity KCMTable_2_93032640_unsigned is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(1 downto 0);
          Y : out  std_logic_vector(28 downto 0)   );
end entity;

architecture arch of KCMTable_2_93032640_unsigned is
begin
  with X select  Y <= 
   "00000000000000000000000000000" when "00",
   "00101100010111001000011000000" when "01",
   "01011000101110010000110000000" when "10",
   "10000101000101011001001000000" when "11",
   "-----------------------------" when others;
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_29_f400_uid106
--                    (IntAdderAlternative_29_f400_uid110)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_29_f400_uid106 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(28 downto 0);
          Y : in  std_logic_vector(28 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(28 downto 0)   );
end entity;

architecture arch of IntAdder_29_f400_uid106 is
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   --Alternative
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--                       IntIntKCM_8_93032640_unsigned
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2009,2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntIntKCM_8_93032640_unsigned is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(7 downto 0);
          R : out  std_logic_vector(34 downto 0)   );
end entity;

architecture arch of IntIntKCM_8_93032640_unsigned is
   component IntAdder_29_f400_uid106 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(28 downto 0);
             Y : in  std_logic_vector(28 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(28 downto 0)   );
   end component;

   component KCMTable_2_93032640_unsigned is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(1 downto 0);
             Y : out  std_logic_vector(28 downto 0)   );
   end component;

   component KCMTable_6_93032640_unsigned is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(5 downto 0);
             Y : out  std_logic_vector(32 downto 0)   );
   end component;

signal d0 :  std_logic_vector(5 downto 0);
signal pp0 :  std_logic_vector(32 downto 0);
signal d1 :  std_logic_vector(1 downto 0);
signal pp1 :  std_logic_vector(28 downto 0);
signal addOp0 :  std_logic_vector(28 downto 0);
signal addOp1 :  std_logic_vector(28 downto 0);
signal OutRes :  std_logic_vector(28 downto 0);
attribute rom_extract: string;
attribute rom_style: string;
attribute rom_extract of KCMTable_2_93032640_unsigned: component is "yes";
attribute rom_extract of KCMTable_6_93032640_unsigned: component is "yes";
attribute rom_style of KCMTable_2_93032640_unsigned: component is "distributed";
attribute rom_style of KCMTable_6_93032640_unsigned: component is "distributed";
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   d0 <= X(5 downto 0);
   KCMTable_0: KCMTable_6_93032640_unsigned  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => d0,
                 Y => pp0);
   d1 <= X(7 downto 6);
   KCMTable_1: KCMTable_2_93032640_unsigned  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => d1,
                 Y => pp1);
   addOp0 <= (28 downto 27 => '0') & pp0(32 downto 6) & "";
   addOp1 <= pp1(28 downto 0) & "";
   Result_Adder: IntAdder_29_f400_uid106  -- pipelineDepth=0 maxInDelay=1.1485e-09
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => '0',
                 R => OutRes,
                 X => addOp0,
                 Y => addOp1);
   R <= OutRes & pp0(5 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_48_f400_uid114
--                     (IntAdderClassical_48_f400_uid116)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_48_f400_uid114 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(47 downto 0);
          Y : in  std_logic_vector(47 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(47 downto 0)   );
end entity;

architecture arch of IntAdder_48_f400_uid114 is
signal X_d1 :  std_logic_vector(47 downto 0);
signal Y_d1 :  std_logic_vector(47 downto 0);
signal Cin_d1 : std_logic;
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            X_d1 <=  X;
            Y_d1 <=  Y;
            Cin_d1 <=  Cin;
         end if;
      end process;
   --Classical
   ----------------Synchro barrier, entering cycle 1----------------
    R <= X_d1 + Y_d1 + Cin_d1;
end architecture;

--------------------------------------------------------------------------------
--                   LZCShifter_48_to_40_counting_64_uid121
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2007)
--------------------------------------------------------------------------------
-- Pipeline depth: 3 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity LZCShifter_48_to_40_counting_64_uid121 is
   port ( clk, rst : in std_logic;
          I : in  std_logic_vector(47 downto 0);
          Count : out  std_logic_vector(5 downto 0);
          O : out  std_logic_vector(39 downto 0)   );
end entity;

architecture arch of LZCShifter_48_to_40_counting_64_uid121 is
signal level6, level6_d1 :  std_logic_vector(47 downto 0);
signal count5, count5_d1, count5_d2, count5_d3 : std_logic;
signal level5 :  std_logic_vector(47 downto 0);
signal count4, count4_d1, count4_d2 : std_logic;
signal level4, level4_d1 :  std_logic_vector(47 downto 0);
signal count3, count3_d1, count3_d2 : std_logic;
signal level3 :  std_logic_vector(46 downto 0);
signal count2, count2_d1 : std_logic;
signal level2, level2_d1 :  std_logic_vector(42 downto 0);
signal count1, count1_d1 : std_logic;
signal level1 :  std_logic_vector(40 downto 0);
signal count0 : std_logic;
signal level0 :  std_logic_vector(39 downto 0);
signal sCount :  std_logic_vector(5 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            level6_d1 <=  level6;
            count5_d1 <=  count5;
            count5_d2 <=  count5_d1;
            count5_d3 <=  count5_d2;
            count4_d1 <=  count4;
            count4_d2 <=  count4_d1;
            level4_d1 <=  level4;
            count3_d1 <=  count3;
            count3_d2 <=  count3_d1;
            count2_d1 <=  count2;
            level2_d1 <=  level2;
            count1_d1 <=  count1;
         end if;
      end process;
   level6 <= I ;
   count5<= '1' when level6(47 downto 16) = (47 downto 16=>'0') else '0';
   ----------------Synchro barrier, entering cycle 1----------------
   level5<= level6_d1(47 downto 0) when count5_d1='0' else level6_d1(15 downto 0) & (31 downto 0 => '0');

   count4<= '1' when level5(47 downto 32) = (47 downto 32=>'0') else '0';
   level4<= level5(47 downto 0) when count4='0' else level5(31 downto 0) & (15 downto 0 => '0');

   count3<= '1' when level4(47 downto 40) = (47 downto 40=>'0') else '0';
   ----------------Synchro barrier, entering cycle 2----------------
   level3<= level4_d1(47 downto 1) when count3_d1='0' else level4_d1(39 downto 0) & (6 downto 0 => '0');

   count2<= '1' when level3(46 downto 43) = (46 downto 43=>'0') else '0';
   level2<= level3(46 downto 4) when count2='0' else level3(42 downto 0);

   count1<= '1' when level2(42 downto 41) = (42 downto 41=>'0') else '0';
   ----------------Synchro barrier, entering cycle 3----------------
   level1<= level2_d1(42 downto 2) when count1_d1='0' else level2_d1(40 downto 0);

   count0<= '1' when level1(40 downto 40) = (40 downto 40=>'0') else '0';
   level0<= level1(40 downto 1) when count0='0' else level1(39 downto 0);

   O <= level0;
   sCount <= count5_d3 & count4_d2 & count3_d2 & count2_d1 & count1_d1 & count0;
   Count <= sCount;
end architecture;

--------------------------------------------------------------------------------
--                      RightShifter_16_by_max_15_uid124
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2011)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity RightShifter_16_by_max_15_uid124 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(15 downto 0);
          S : in  std_logic_vector(3 downto 0);
          R : out  std_logic_vector(30 downto 0)   );
end entity;

architecture arch of RightShifter_16_by_max_15_uid124 is
signal level0, level0_d1 :  std_logic_vector(15 downto 0);
signal ps, ps_d1 :  std_logic_vector(3 downto 0);
signal level1 :  std_logic_vector(16 downto 0);
signal level2 :  std_logic_vector(18 downto 0);
signal level3 :  std_logic_vector(22 downto 0);
signal level4 :  std_logic_vector(30 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            level0_d1 <=  level0;
            ps_d1 <=  ps;
         end if;
      end process;
   level0<= X;
   ps<= S;
   ----------------Synchro barrier, entering cycle 1----------------
   level1<=  (0 downto 0 => '0') & level0_d1 when ps_d1(0) = '1' else    level0_d1 & (0 downto 0 => '0');
   level2<=  (1 downto 0 => '0') & level1 when ps_d1(1) = '1' else    level1 & (1 downto 0 => '0');
   level3<=  (3 downto 0 => '0') & level2 when ps_d1(2) = '1' else    level2 & (3 downto 0 => '0');
   level4<=  (7 downto 0 => '0') & level3 when ps_d1(3) = '1' else    level3 & (7 downto 0 => '0');
   R <= level4(30 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_29_f400_uid127
--                     (IntAdderClassical_29_f400_uid129)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_29_f400_uid127 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(28 downto 0);
          Y : in  std_logic_vector(28 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(28 downto 0)   );
end entity;

architecture arch of IntAdder_29_f400_uid127 is
signal X_d1 :  std_logic_vector(28 downto 0);
signal Y_d1 :  std_logic_vector(28 downto 0);
signal Cin_d1 : std_logic;
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            X_d1 <=  X;
            Y_d1 <=  Y;
            Cin_d1 <=  Cin;
         end if;
      end process;
   --Classical
   ----------------Synchro barrier, entering cycle 1----------------
    R <= X_d1 + Y_d1 + Cin_d1;
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_31_f400_uid134
--                    (IntAdderAlternative_31_f400_uid138)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_31_f400_uid134 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(30 downto 0);
          Y : in  std_logic_vector(30 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(30 downto 0)   );
end entity;

architecture arch of IntAdder_31_f400_uid134 is
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   --Alternative
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--                                  LPR_Ln32
--                             (FPLog_8_23_0_400)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: F. de Dinechin, C. Klein  (2008-2011)
--------------------------------------------------------------------------------
-- Pipeline depth: 12 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity LPR_Ln32 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of LPR_Ln32 is
   component IntAdder_27_f400_uid53 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(26 downto 0);
             Y : in  std_logic_vector(26 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(26 downto 0)   );
   end component;

   component IntAdder_27_f400_uid60 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(26 downto 0);
             Y : in  std_logic_vector(26 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(26 downto 0)   );
   end component;

   component IntAdder_27_f400_uid70 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(26 downto 0);
             Y : in  std_logic_vector(26 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(26 downto 0)   );
   end component;

   component IntAdder_29_f400_uid127 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(28 downto 0);
             Y : in  std_logic_vector(28 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(28 downto 0)   );
   end component;

   component IntAdder_31_f400_uid134 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(30 downto 0);
             Y : in  std_logic_vector(30 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(30 downto 0)   );
   end component;

   component IntAdder_40_f400_uid87 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(39 downto 0);
             Y : in  std_logic_vector(39 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(39 downto 0)   );
   end component;

   component IntAdder_40_f400_uid94 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(39 downto 0);
             Y : in  std_logic_vector(39 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(39 downto 0)   );
   end component;

   component IntAdder_48_f400_uid114 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(47 downto 0);
             Y : in  std_logic_vector(47 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(47 downto 0)   );
   end component;

   component IntIntKCM_8_93032640_unsigned is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(7 downto 0);
             R : out  std_logic_vector(34 downto 0)   );
   end component;

   component IntMultiplier_UsingDSP_10_25_0_unsigned_uid11 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(9 downto 0);
             Y : in  std_logic_vector(24 downto 0);
             R : out  std_logic_vector(34 downto 0)   );
   end component;

   component IntMultiplier_UsingDSP_7_26_0_unsigned_uid32 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(6 downto 0);
             Y : in  std_logic_vector(25 downto 0);
             R : out  std_logic_vector(32 downto 0)   );
   end component;

   component IntSquarer_16_uid67 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(15 downto 0);
             R : out  std_logic_vector(31 downto 0)   );
   end component;

   component InvTable_0_9_10 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(8 downto 0);
             Y : out  std_logic_vector(9 downto 0)   );
   end component;

   component LZCShifter_48_to_40_counting_64_uid121 is
      port ( clk, rst : in std_logic;
             I : in  std_logic_vector(47 downto 0);
             Count : out  std_logic_vector(5 downto 0);
             O : out  std_logic_vector(39 downto 0)   );
   end component;

   component LZOC_23_5_uid3 is
      port ( clk, rst : in std_logic;
             I : in  std_logic_vector(22 downto 0);
             OZB : in std_logic;
             O : out  std_logic_vector(4 downto 0)   );
   end component;

   component LeftShifter_12_by_max_12_uid6 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(11 downto 0);
             S : in  std_logic_vector(3 downto 0);
             R : out  std_logic_vector(23 downto 0)   );
   end component;

   component LogTable_0_9_40 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(8 downto 0);
             Y : out  std_logic_vector(39 downto 0)   );
   end component;

   component LogTable_1_7_33 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(6 downto 0);
             Y : out  std_logic_vector(32 downto 0)   );
   end component;

   component RightShifter_16_by_max_15_uid124 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(15 downto 0);
             S : in  std_logic_vector(3 downto 0);
             R : out  std_logic_vector(30 downto 0)   );
   end component;

signal XExnSgn, XExnSgn_d1, XExnSgn_d2, XExnSgn_d3, XExnSgn_d4, XExnSgn_d5, XExnSgn_d6, XExnSgn_d7, XExnSgn_d8, XExnSgn_d9, XExnSgn_d10, XExnSgn_d11, XExnSgn_d12 :  std_logic_vector(2 downto 0);
signal FirstBit : std_logic;
signal Y0, Y0_d1, Y0_d2 :  std_logic_vector(24 downto 0);
signal Y0h :  std_logic_vector(22 downto 0);
signal sR, sR_d1, sR_d2, sR_d3, sR_d4, sR_d5, sR_d6, sR_d7, sR_d8, sR_d9, sR_d10, sR_d11, sR_d12 : std_logic;
signal absZ0, absZ0_d1, absZ0_d2 :  std_logic_vector(11 downto 0);
signal E :  std_logic_vector(7 downto 0);
signal absE, absE_d1, absE_d2, absE_d3, absE_d4, absE_d5, absE_d6, absE_d7 :  std_logic_vector(7 downto 0);
signal EeqZero, EeqZero_d1, EeqZero_d2, EeqZero_d3 : std_logic;
signal lzo, lzo_d1, lzo_d2, lzo_d3, lzo_d4, lzo_d5, lzo_d6, lzo_d7, lzo_d8 :  std_logic_vector(4 downto 0);
signal pfinal_s :  std_logic_vector(4 downto 0);
signal shiftval :  std_logic_vector(5 downto 0);
signal shiftvalinL :  std_logic_vector(3 downto 0);
signal shiftvalinR, shiftvalinR_d1, shiftvalinR_d2, shiftvalinR_d3, shiftvalinR_d4, shiftvalinR_d5, shiftvalinR_d6 :  std_logic_vector(3 downto 0);
signal doRR, doRR_d1, doRR_d2 : std_logic;
signal small, small_d1, small_d2, small_d3, small_d4, small_d5, small_d6, small_d7, small_d8, small_d9 : std_logic;
signal small_absZ0_normd_full :  std_logic_vector(23 downto 0);
signal small_absZ0_normd, small_absZ0_normd_d1, small_absZ0_normd_d2, small_absZ0_normd_d3, small_absZ0_normd_d4, small_absZ0_normd_d5, small_absZ0_normd_d6 :  std_logic_vector(11 downto 0);
signal A0, A0_d1, A0_d2, A0_d3, A0_d4, A0_d5 :  std_logic_vector(8 downto 0);
signal InvA0 :  std_logic_vector(9 downto 0);
signal P0 :  std_logic_vector(34 downto 0);
signal Z1 :  std_logic_vector(25 downto 0);
signal A1, A1_d1, A1_d2 :  std_logic_vector(6 downto 0);
signal B1 :  std_logic_vector(18 downto 0);
signal ZM1 :  std_logic_vector(25 downto 0);
signal P1 :  std_logic_vector(32 downto 0);
signal Y1 :  std_logic_vector(33 downto 0);
signal EiY1 :  std_logic_vector(26 downto 0);
signal addXIter1 :  std_logic_vector(26 downto 0);
signal EiYPB1, EiYPB1_d1 :  std_logic_vector(26 downto 0);
signal Pp1 :  std_logic_vector(26 downto 0);
signal Z2 :  std_logic_vector(26 downto 0);
signal Zfinal, Zfinal_d1, Zfinal_d2 :  std_logic_vector(26 downto 0);
signal squarerIn :  std_logic_vector(15 downto 0);
signal Z2o2_full, Z2o2_full_d1 :  std_logic_vector(31 downto 0);
signal Z2o2_full_dummy, Z2o2_full_dummy_d1, Z2o2_full_dummy_d2 :  std_logic_vector(31 downto 0);
signal Z2o2_normal :  std_logic_vector(12 downto 0);
signal addFinalLog1pY :  std_logic_vector(26 downto 0);
signal Log1p_normal, Log1p_normal_d1 :  std_logic_vector(26 downto 0);
signal L0 :  std_logic_vector(39 downto 0);
signal S1 :  std_logic_vector(39 downto 0);
signal L1 :  std_logic_vector(32 downto 0);
signal sopX1 :  std_logic_vector(39 downto 0);
signal S2, S2_d1 :  std_logic_vector(39 downto 0);
signal almostLog :  std_logic_vector(39 downto 0);
signal adderLogF_normalY :  std_logic_vector(39 downto 0);
signal LogF_normal :  std_logic_vector(39 downto 0);
signal absELog2 :  std_logic_vector(34 downto 0);
signal absELog2_pad :  std_logic_vector(47 downto 0);
signal LogF_normal_pad :  std_logic_vector(47 downto 0);
signal lnaddX :  std_logic_vector(47 downto 0);
signal lnaddY :  std_logic_vector(47 downto 0);
signal Log_normal :  std_logic_vector(47 downto 0);
signal E_normal :  std_logic_vector(5 downto 0);
signal Log_normal_normd, Log_normal_normd_d1 :  std_logic_vector(39 downto 0);
signal Z2o2_small_bs :  std_logic_vector(15 downto 0);
signal Z2o2_small_s :  std_logic_vector(30 downto 0);
signal Z2o2_small :  std_logic_vector(28 downto 0);
signal Z_small :  std_logic_vector(28 downto 0);
signal Log_smallY :  std_logic_vector(28 downto 0);
signal nsRCin : std_logic;
signal Log_small :  std_logic_vector(28 downto 0);
signal E0_sub :  std_logic_vector(1 downto 0);
signal ufl, ufl_d1, ufl_d2 : std_logic;
signal E_small, E_small_d1 :  std_logic_vector(7 downto 0);
signal Log_small_normd, Log_small_normd_d1, Log_small_normd_d2 :  std_logic_vector(26 downto 0);
signal E0offset :  std_logic_vector(7 downto 0);
signal ER :  std_logic_vector(7 downto 0);
signal Log_g :  std_logic_vector(26 downto 0);
signal round : std_logic;
signal fraX :  std_logic_vector(30 downto 0);
signal fraY :  std_logic_vector(30 downto 0);
signal EFR, EFR_d1 :  std_logic_vector(30 downto 0);
constant g: positive := 4;
constant log2wF: positive := 5;
constant pfinal: positive := 13;
constant sfinal: positive := 27;
constant targetprec: positive := 40;
constant wE: positive := 8;
constant wF: positive := 23;
attribute rom_extract: string;
attribute rom_style: string;
attribute rom_extract of InvTable_0_9_10: component is "yes";
attribute rom_style of InvTable_0_9_10: component is "block";
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            XExnSgn_d1 <=  XExnSgn;
            XExnSgn_d2 <=  XExnSgn_d1;
            XExnSgn_d3 <=  XExnSgn_d2;
            XExnSgn_d4 <=  XExnSgn_d3;
            XExnSgn_d5 <=  XExnSgn_d4;
            XExnSgn_d6 <=  XExnSgn_d5;
            XExnSgn_d7 <=  XExnSgn_d6;
            XExnSgn_d8 <=  XExnSgn_d7;
            XExnSgn_d9 <=  XExnSgn_d8;
            XExnSgn_d10 <=  XExnSgn_d9;
            XExnSgn_d11 <=  XExnSgn_d10;
            XExnSgn_d12 <=  XExnSgn_d11;
            Y0_d1 <=  Y0;
            Y0_d2 <=  Y0_d1;
            sR_d1 <=  sR;
            sR_d2 <=  sR_d1;
            sR_d3 <=  sR_d2;
            sR_d4 <=  sR_d3;
            sR_d5 <=  sR_d4;
            sR_d6 <=  sR_d5;
            sR_d7 <=  sR_d6;
            sR_d8 <=  sR_d7;
            sR_d9 <=  sR_d8;
            sR_d10 <=  sR_d9;
            sR_d11 <=  sR_d10;
            sR_d12 <=  sR_d11;
            absZ0_d1 <=  absZ0;
            absZ0_d2 <=  absZ0_d1;
            absE_d1 <=  absE;
            absE_d2 <=  absE_d1;
            absE_d3 <=  absE_d2;
            absE_d4 <=  absE_d3;
            absE_d5 <=  absE_d4;
            absE_d6 <=  absE_d5;
            absE_d7 <=  absE_d6;
            EeqZero_d1 <=  EeqZero;
            EeqZero_d2 <=  EeqZero_d1;
            EeqZero_d3 <=  EeqZero_d2;
            lzo_d1 <=  lzo;
            lzo_d2 <=  lzo_d1;
            lzo_d3 <=  lzo_d2;
            lzo_d4 <=  lzo_d3;
            lzo_d5 <=  lzo_d4;
            lzo_d6 <=  lzo_d5;
            lzo_d7 <=  lzo_d6;
            lzo_d8 <=  lzo_d7;
            shiftvalinR_d1 <=  shiftvalinR;
            shiftvalinR_d2 <=  shiftvalinR_d1;
            shiftvalinR_d3 <=  shiftvalinR_d2;
            shiftvalinR_d4 <=  shiftvalinR_d3;
            shiftvalinR_d5 <=  shiftvalinR_d4;
            shiftvalinR_d6 <=  shiftvalinR_d5;
            doRR_d1 <=  doRR;
            doRR_d2 <=  doRR_d1;
            small_d1 <=  small;
            small_d2 <=  small_d1;
            small_d3 <=  small_d2;
            small_d4 <=  small_d3;
            small_d5 <=  small_d4;
            small_d6 <=  small_d5;
            small_d7 <=  small_d6;
            small_d8 <=  small_d7;
            small_d9 <=  small_d8;
            small_absZ0_normd_d1 <=  small_absZ0_normd;
            small_absZ0_normd_d2 <=  small_absZ0_normd_d1;
            small_absZ0_normd_d3 <=  small_absZ0_normd_d2;
            small_absZ0_normd_d4 <=  small_absZ0_normd_d3;
            small_absZ0_normd_d5 <=  small_absZ0_normd_d4;
            small_absZ0_normd_d6 <=  small_absZ0_normd_d5;
            A0_d1 <=  A0;
            A0_d2 <=  A0_d1;
            A0_d3 <=  A0_d2;
            A0_d4 <=  A0_d3;
            A0_d5 <=  A0_d4;
            A1_d1 <=  A1;
            A1_d2 <=  A1_d1;
            EiYPB1_d1 <=  EiYPB1;
            Zfinal_d1 <=  Zfinal;
            Zfinal_d2 <=  Zfinal_d1;
            Z2o2_full_d1 <=  Z2o2_full;
            Z2o2_full_dummy_d1 <=  Z2o2_full_dummy;
            Z2o2_full_dummy_d2 <=  Z2o2_full_dummy_d1;
            Log1p_normal_d1 <=  Log1p_normal;
            S2_d1 <=  S2;
            Log_normal_normd_d1 <=  Log_normal_normd;
            ufl_d1 <=  ufl;
            ufl_d2 <=  ufl_d1;
            E_small_d1 <=  E_small;
            Log_small_normd_d1 <=  Log_small_normd;
            Log_small_normd_d2 <=  Log_small_normd_d1;
            EFR_d1 <=  EFR;
         end if;
      end process;
   XExnSgn <=  X(wE+wF+2 downto wE+wF);
   FirstBit <=  X(wF-1);
   Y0 <= "1" & X(wF-1 downto 0) & "0" when FirstBit = '0' else "01" & X(wF-1 downto 0);
   Y0h <= Y0(wF downto 1);
   -- Sign of the result;
   sR <= '0'   when  (X(wE+wF-1 downto wF) = ('0' & (wE-2 downto 0 => '1')))  -- binade [1..2)
     else not X(wE+wF-1);                -- MSB of exponent
   absZ0 <=   Y0(wF-pfinal+1 downto 0)          when (sR='0') else
             ((wF-pfinal+1 downto 0 => '0') - Y0(wF-pfinal+1 downto 0));
   E <= (X(wE+wF-1 downto wF)) - ("0" & (wE-2 downto 1 => '1') & (not FirstBit));
   absE <= ((wE-1 downto 0 => '0') - E)   when sR = '1' else E;
   EeqZero <= '1' when E=(wE-1 downto 0 => '0') else '0';
   ---------------- cycle 0----------------
   lzoc1: LZOC_23_5_uid3  -- pipelineDepth=2 maxInDelay=3.7e-10
      port map ( clk  => clk,
                 rst  => rst,
                 I => Y0h,
                 O => lzo,
                 OZB => FirstBit);
   ---------------- cycle 2----------------
   pfinal_s <= "01101";
   shiftval <= ('0' & lzo) - ('0' & pfinal_s); 
   shiftvalinL <= shiftval(3 downto 0);
   shiftvalinR <= shiftval(3 downto 0);
   doRR <= shiftval(log2wF); -- sign of the result
   ----------------Synchro barrier, entering cycle 3----------------
   small <= EeqZero_d3 and not(doRR_d1);
   ---------------- cycle 2----------------
   -- The left shifter for the 'small' case
   small_lshift: LeftShifter_12_by_max_12_uid6  -- pipelineDepth=1 maxInDelay=2.00717e-09
      port map ( clk  => clk,
                 rst  => rst,
                 R => small_absZ0_normd_full,
                 S => shiftvalinL,
                 X => absZ0_d2);
   ----------------Synchro barrier, entering cycle 3----------------
   small_absZ0_normd <= small_absZ0_normd_full(11 downto 0); -- get rid of leading zeroes
   ----------------Synchro barrier, entering cycle 0----------------
   ---------------- The range reduction box ---------------
   A0 <= X(22 downto 14);
   ----------------Synchro barrier, entering cycle 1----------------
   -- First inv table
   itO: InvTable_0_9_10  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => A0_d1,
                 Y => InvA0);
   ----------------Synchro barrier, entering cycle 2----------------
   p0_mult: IntMultiplier_UsingDSP_10_25_0_unsigned_uid11  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => P0,
                 X => InvA0,
                 Y => Y0_d2);
   ----------------Synchro barrier, entering cycle 3----------------
   Z1 <= P0(25 downto 0);

   A1 <= Z1(25 downto 19);
   B1 <= Z1(18 downto 0);
   ZM1 <= Z1;
   p1_mult: IntMultiplier_UsingDSP_7_26_0_unsigned_uid32  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => P1,
                 X => A1,
                 Y => ZM1);

   ----------------Synchro barrier, entering cycle 4----------------
    -- delay at multiplier output is 0
   ---------------- cycle 3----------------
   Y1 <= "1" & (6 downto 0 => '0') & Z1;
   EiY1 <= Y1(33 downto 7)  when A1(6) = '1'
     else  "0" & Y1(33 downto 8);
   addXIter1 <= "0" & B1 & (6 downto 0 => '0');
   addIter1_1: IntAdder_27_f400_uid53  -- pipelineDepth=0 maxInDelay=5.3e-11
      port map ( clk  => clk,
                 rst  => rst,
                 Cin =>  '0',
                 R => EiYPB1,
                 X => addXIter1,
                 Y => EiY1);

   ----------------Synchro barrier, entering cycle 4----------------
   Pp1 <= (0 downto 0 => '1') & not(P1(32 downto 7));
   addIter2_1: IntAdder_27_f400_uid60  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin =>  '1',
                 R => Z2,
                 X => EiYPB1_d1,
                 Y => Pp1);

 -- the critical path at the adder output = 1.43865e-09
   Zfinal <= Z2;
   --  Synchro between RR box and case almost 1
   squarerIn <= Zfinal(sfinal-1 downto sfinal-16) when doRR_d2='1'
                    else (small_absZ0_normd_d1 & (3 downto 0 => '0'));  
   squarer: IntSquarer_16_uid67  -- pipelineDepth=1 maxInDelay=2.2563e-09
      port map ( clk  => clk,
                 rst  => rst,
                 R => Z2o2_full,
                 X => squarerIn);
   ----------------Synchro barrier, entering cycle 5----------------
   ----------------Synchro barrier, entering cycle 6----------------
   Z2o2_full_dummy <= Z2o2_full_d1;
   Z2o2_normal <= Z2o2_full_dummy (31  downto 19);
   addFinalLog1pY <= (pfinal downto 0  => '1') & not(Z2o2_normal);
   addFinalLog1p_normalAdder: IntAdder_27_f400_uid70  -- pipelineDepth=0 maxInDelay=7.6465e-10
      port map ( clk  => clk,
                 rst  => rst,
                 Cin =>  '1',
                 R => Log1p_normal,
                 X => Zfinal_d2,
                 Y => addFinalLog1pY);

   -- Now the log tables, as late as possible
   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 5----------------
   -- First log table
   ltO: LogTable_0_9_40  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => A0_d5,
                 Y => L0);
   ----------------Synchro barrier, entering cycle 6----------------
   S1 <= L0;
   ----------------Synchro barrier, entering cycle 5----------------
   lt1: LogTable_1_7_33  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => A1_d2,
                 Y => L1);
   ----------------Synchro barrier, entering cycle 6----------------
   sopX1 <= ((39 downto 33 => '0') & L1);
   adderS1: IntAdder_40_f400_uid87  -- pipelineDepth=0 maxInDelay=2.35e-10
      port map ( clk  => clk,
                 rst  => rst,
                 Cin =>  '0' ,
                 R => S2,
                 X => S1,
                 Y => sopX1);

   ----------------Synchro barrier, entering cycle 7----------------
   almostLog <= S2_d1;
   adderLogF_normalY <= ((targetprec-1 downto sfinal => '0') & Log1p_normal_d1);
   adderLogF_normal: IntAdder_40_f400_uid94  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => '0',
                 R => LogF_normal,
                 X => almostLog,
                 Y => adderLogF_normalY);
   ----------------Synchro barrier, entering cycle 7----------------
   Log2KCM: IntIntKCM_8_93032640_unsigned  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => absELog2,
                 X => absE_d7);
   ----------------Synchro barrier, entering cycle 7----------------
   absELog2_pad <=   absELog2 & (targetprec-wF-g-1 downto 0 => '0');       
   LogF_normal_pad <= (wE-1  downto 0 => LogF_normal(targetprec-1))  & LogF_normal;
   lnaddX <= absELog2_pad;
   lnaddY <= LogF_normal_pad when sR_d7='0' else not(LogF_normal_pad); 
   lnadder: IntAdder_48_f400_uid114  -- pipelineDepth=1 maxInDelay=2.0205e-09
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => sR_d7,
                 R => Log_normal,
                 X => lnaddX,
                 Y => lnaddY);

   ----------------Synchro barrier, entering cycle 8----------------
   final_norm: LZCShifter_48_to_40_counting_64_uid121  -- pipelineDepth=3 maxInDelay=1.48565e-09
      port map ( clk  => clk,
                 rst  => rst,
                 Count => E_normal,
                 I => Log_normal,
                 O => Log_normal_normd);
   Z2o2_small_bs <= Z2o2_full_dummy_d2(31 downto 16);
   ao_rshift: RightShifter_16_by_max_15_uid124  -- pipelineDepth=1 maxInDelay=1.37895e-09
      port map ( clk  => clk,
                 rst  => rst,
                 R => Z2o2_small_s,
                 S => shiftvalinR_d6,
                 X => Z2o2_small_bs);
   ---------------- cycle 9----------------
   -- output delay at shifter output is 1.24845e-09
     -- send the MSB to position pfinal
   Z2o2_small <=  (pfinal-1 downto 0  => '0') & Z2o2_small_s(30 downto 15);
   -- mantissa will be either Y0-z^2/2  or  -Y0+z^2/2,  depending on sR  
   Z_small <= small_absZ0_normd_d6 & (16 downto 0 => '0');
   Log_smallY <= Z2o2_small when sR_d9='1' else not(Z2o2_small);
   nsRCin <= not ( sR_d9 );
   log_small_adder: IntAdder_29_f400_uid127  -- pipelineDepth=1 maxInDelay=1.95875e-09
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => nsRCin,
                 R => Log_small,
                 X => Z_small,
                 Y => Log_smallY);

   ----------------Synchro barrier, entering cycle 10----------------
 -- critical path here is 8.72e-10
   -- Possibly subtract 1 or 2 to the exponent, depending on the LZC of Log_small
   E0_sub <=   "11" when Log_small(wF+g+1) = '1'
          else "10" when Log_small(wF+g+1 downto wF+g) = "01"
          else "01" ;
   -- The smallest log will be log(1+2^{-wF}) \approx 2^{-wF}  = 2^-23
   -- The smallest representable number is 2^{1-2^(wE-1)} = 2^-127
   -- No underflow possible
   ufl <= '0';
   E_small <=  ("0" & (wE-2 downto 2 => '1') & E0_sub)  -  ((wE-1 downto 5 => '0') & lzo_d8) ;
   Log_small_normd <= Log_small(wF+g+1 downto 2) when Log_small(wF+g+1)='1'
           else Log_small(wF+g downto 1)  when Log_small(wF+g)='1'  -- remove the first zero
           else Log_small(wF+g-1 downto 0)  ; -- remove two zeroes (extremely rare, 001000000 only)
   ----------------Synchro barrier, entering cycle 11----------------
   E0offset <= "10000110"; -- E0 + wE 
   ER <= E_small_d1(7 downto 0) when small_d8='1'
      else E0offset - ((7 downto 6 => '0') & E_normal);
   ---------------- cycle 11----------------
   Log_g <=  Log_small_normd_d1(wF+g-2 downto 0) & "0" when small_d8='1'           -- remove implicit 1
      else Log_normal_normd(targetprec-2 downto targetprec-wF-g-1 );  -- remove implicit 1
   round <= Log_g(g-1) ; -- sticky is always 1 for a transcendental function 
   -- if round leads to a change of binade, the carry propagation magically updates both mantissa and exponent
   fraX <= (ER & Log_g(wF+g-1 downto g)) ; 
   fraY <= ((wE+wF-1 downto 1 => '0') & round); 
   finalRoundAdder: IntAdder_31_f400_uid134  -- pipelineDepth=0 maxInDelay=1.43195e-09
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => '0',
                 R => EFR,
                 X => fraX,
                 Y => fraY);
   ----------------Synchro barrier, entering cycle 12----------------
   R(wE+wF+2 downto wE+wF) <= "110" when ((XExnSgn_d12(2) and (XExnSgn_d12(1) or XExnSgn_d12(0))) or (XExnSgn_d12(1) and XExnSgn_d12(0))) = '1' else
                              "101" when XExnSgn_d12(2 downto 1) = "00"  else
                              "100" when XExnSgn_d12(2 downto 1) = "10"  else
                              "00" & sR_d12 when (((Log_normal_normd_d1(targetprec-1)='0') and (small_d9='0')) or ( (Log_small_normd_d2 (wF+g-1)='0') and (small_d9='1'))) or (ufl_d2 = '1') else
                               "01" & sR_d12;
   R(wE+wF-1 downto 0) <=  EFR_d1;
end architecture;

