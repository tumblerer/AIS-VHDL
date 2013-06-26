--------------------------------------------------------------------------------
--                          SmallMultTableP3x3r6XuYu
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
entity SmallMultTableP3x3r6XuYu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(5 downto 0);
          Y : out  std_logic_vector(5 downto 0)   );
end entity;

architecture arch of SmallMultTableP3x3r6XuYu is
begin
  with X select  Y <= 
   "000000" when "000000",
   "000000" when "000001",
   "000000" when "000010",
   "000000" when "000011",
   "000000" when "000100",
   "000000" when "000101",
   "000000" when "000110",
   "000000" when "000111",
   "000000" when "001000",
   "000001" when "001001",
   "000010" when "001010",
   "000011" when "001011",
   "000100" when "001100",
   "000101" when "001101",
   "000110" when "001110",
   "000111" when "001111",
   "000000" when "010000",
   "000010" when "010001",
   "000100" when "010010",
   "000110" when "010011",
   "001000" when "010100",
   "001010" when "010101",
   "001100" when "010110",
   "001110" when "010111",
   "000000" when "011000",
   "000011" when "011001",
   "000110" when "011010",
   "001001" when "011011",
   "001100" when "011100",
   "001111" when "011101",
   "010010" when "011110",
   "010101" when "011111",
   "000000" when "100000",
   "000100" when "100001",
   "001000" when "100010",
   "001100" when "100011",
   "010000" when "100100",
   "010100" when "100101",
   "011000" when "100110",
   "011100" when "100111",
   "000000" when "101000",
   "000101" when "101001",
   "001010" when "101010",
   "001111" when "101011",
   "010100" when "101100",
   "011001" when "101101",
   "011110" when "101110",
   "100011" when "101111",
   "000000" when "110000",
   "000110" when "110001",
   "001100" when "110010",
   "010010" when "110011",
   "011000" when "110100",
   "011110" when "110101",
   "100100" when "110110",
   "101010" when "110111",
   "000000" when "111000",
   "000111" when "111001",
   "001110" when "111010",
   "010101" when "111011",
   "011100" when "111100",
   "100011" when "111101",
   "101010" when "111110",
   "110001" when "111111",
   "------" when others;
end architecture;

--------------------------------------------------------------------------------
--                          SmallMultTableP3x3r6XsYu
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
entity SmallMultTableP3x3r6XsYu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(5 downto 0);
          Y : out  std_logic_vector(5 downto 0)   );
end entity;

architecture arch of SmallMultTableP3x3r6XsYu is
begin
  with X select  Y <= 
   "000000" when "000000",
   "000000" when "000001",
   "000000" when "000010",
   "000000" when "000011",
   "000000" when "000100",
   "000000" when "000101",
   "000000" when "000110",
   "000000" when "000111",
   "000000" when "001000",
   "000001" when "001001",
   "000010" when "001010",
   "000011" when "001011",
   "111100" when "001100",
   "111101" when "001101",
   "111110" when "001110",
   "111111" when "001111",
   "000000" when "010000",
   "000010" when "010001",
   "000100" when "010010",
   "000110" when "010011",
   "111000" when "010100",
   "111010" when "010101",
   "111100" when "010110",
   "111110" when "010111",
   "000000" when "011000",
   "000011" when "011001",
   "000110" when "011010",
   "001001" when "011011",
   "110100" when "011100",
   "110111" when "011101",
   "111010" when "011110",
   "111101" when "011111",
   "000000" when "100000",
   "000100" when "100001",
   "001000" when "100010",
   "001100" when "100011",
   "110000" when "100100",
   "110100" when "100101",
   "111000" when "100110",
   "111100" when "100111",
   "000000" when "101000",
   "000101" when "101001",
   "001010" when "101010",
   "001111" when "101011",
   "101100" when "101100",
   "110001" when "101101",
   "110110" when "101110",
   "111011" when "101111",
   "000000" when "110000",
   "000110" when "110001",
   "001100" when "110010",
   "010010" when "110011",
   "101000" when "110100",
   "101110" when "110101",
   "110100" when "110110",
   "111010" when "110111",
   "000000" when "111000",
   "000111" when "111001",
   "001110" when "111010",
   "010101" when "111011",
   "100100" when "111100",
   "101011" when "111101",
   "110010" when "111110",
   "111001" when "111111",
   "------" when others;
end architecture;

--------------------------------------------------------------------------------
--                          SmallMultTableP3x3r6XuYs
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
entity SmallMultTableP3x3r6XuYs is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(5 downto 0);
          Y : out  std_logic_vector(5 downto 0)   );
end entity;

architecture arch of SmallMultTableP3x3r6XuYs is
begin
  with X select  Y <= 
   "000000" when "000000",
   "000000" when "000001",
   "000000" when "000010",
   "000000" when "000011",
   "000000" when "000100",
   "000000" when "000101",
   "000000" when "000110",
   "000000" when "000111",
   "000000" when "001000",
   "000001" when "001001",
   "000010" when "001010",
   "000011" when "001011",
   "000100" when "001100",
   "000101" when "001101",
   "000110" when "001110",
   "000111" when "001111",
   "000000" when "010000",
   "000010" when "010001",
   "000100" when "010010",
   "000110" when "010011",
   "001000" when "010100",
   "001010" when "010101",
   "001100" when "010110",
   "001110" when "010111",
   "000000" when "011000",
   "000011" when "011001",
   "000110" when "011010",
   "001001" when "011011",
   "001100" when "011100",
   "001111" when "011101",
   "010010" when "011110",
   "010101" when "011111",
   "000000" when "100000",
   "111100" when "100001",
   "111000" when "100010",
   "110100" when "100011",
   "110000" when "100100",
   "101100" when "100101",
   "101000" when "100110",
   "100100" when "100111",
   "000000" when "101000",
   "111101" when "101001",
   "111010" when "101010",
   "110111" when "101011",
   "110100" when "101100",
   "110001" when "101101",
   "101110" when "101110",
   "101011" when "101111",
   "000000" when "110000",
   "111110" when "110001",
   "111100" when "110010",
   "111010" when "110011",
   "111000" when "110100",
   "110110" when "110101",
   "110100" when "110110",
   "110010" when "110111",
   "000000" when "111000",
   "111111" when "111001",
   "111110" when "111010",
   "111101" when "111011",
   "111100" when "111100",
   "111011" when "111101",
   "111010" when "111110",
   "111001" when "111111",
   "------" when others;
end architecture;

--------------------------------------------------------------------------------
--                          SmallMultTableP3x3r6XsYs
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
entity SmallMultTableP3x3r6XsYs is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(5 downto 0);
          Y : out  std_logic_vector(5 downto 0)   );
end entity;

architecture arch of SmallMultTableP3x3r6XsYs is
begin
  with X select  Y <= 
   "000000" when "000000",
   "000000" when "000001",
   "000000" when "000010",
   "000000" when "000011",
   "000000" when "000100",
   "000000" when "000101",
   "000000" when "000110",
   "000000" when "000111",
   "000000" when "001000",
   "000001" when "001001",
   "000010" when "001010",
   "000011" when "001011",
   "111100" when "001100",
   "111101" when "001101",
   "111110" when "001110",
   "111111" when "001111",
   "000000" when "010000",
   "000010" when "010001",
   "000100" when "010010",
   "000110" when "010011",
   "111000" when "010100",
   "111010" when "010101",
   "111100" when "010110",
   "111110" when "010111",
   "000000" when "011000",
   "000011" when "011001",
   "000110" when "011010",
   "001001" when "011011",
   "110100" when "011100",
   "110111" when "011101",
   "111010" when "011110",
   "111101" when "011111",
   "000000" when "100000",
   "111100" when "100001",
   "111000" when "100010",
   "110100" when "100011",
   "010000" when "100100",
   "001100" when "100101",
   "001000" when "100110",
   "000100" when "100111",
   "000000" when "101000",
   "111101" when "101001",
   "111010" when "101010",
   "110111" when "101011",
   "001100" when "101100",
   "001001" when "101101",
   "000110" when "101110",
   "000011" when "101111",
   "000000" when "110000",
   "111110" when "110001",
   "111100" when "110010",
   "111010" when "110011",
   "001000" when "110100",
   "000110" when "110101",
   "000100" when "110110",
   "000010" when "110111",
   "000000" when "111000",
   "111111" when "111001",
   "111110" when "111010",
   "111101" when "111011",
   "000100" when "111100",
   "000011" when "111101",
   "000010" when "111110",
   "000001" when "111111",
   "------" when others;
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
--                              Compressor_23_3
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

entity Compressor_23_3 is
   port ( X0 : in  std_logic_vector(2 downto 0);
          X1 : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_23_3 is
signal X :  std_logic_vector(4 downto 0);
begin
   X <=X1 & X0 ;
   with X select R <= 
      "000" when "00000", 
      "001" when "00001", 
      "001" when "00010", 
      "010" when "00011", 
      "001" when "00100", 
      "010" when "00101", 
      "010" when "00110", 
      "011" when "00111", 
      "010" when "01000", 
      "011" when "01001", 
      "011" when "01010", 
      "100" when "01011", 
      "011" when "01100", 
      "100" when "01101", 
      "100" when "01110", 
      "101" when "01111", 
      "010" when "10000", 
      "011" when "10001", 
      "011" when "10010", 
      "100" when "10011", 
      "011" when "10100", 
      "100" when "10101", 
      "100" when "10110", 
      "101" when "10111", 
      "100" when "11000", 
      "101" when "11001", 
      "101" when "11010", 
      "110" when "11011", 
      "101" when "11100", 
      "110" when "11101", 
      "110" when "11110", 
      "111" when "11111", 
      "---" when others;

end architecture;

--------------------------------------------------------------------------------
--                              Compressor_14_3
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

entity Compressor_14_3 is
   port ( X0 : in  std_logic_vector(3 downto 0);
          X1 : in  std_logic_vector(0 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_14_3 is
signal X :  std_logic_vector(4 downto 0);
begin
   X <=X1 & X0 ;
   with X select R <= 
      "000" when "00000", 
      "001" when "00001", 
      "001" when "00010", 
      "010" when "00011", 
      "001" when "00100", 
      "010" when "00101", 
      "010" when "00110", 
      "011" when "00111", 
      "001" when "01000", 
      "010" when "01001", 
      "010" when "01010", 
      "011" when "01011", 
      "010" when "01100", 
      "011" when "01101", 
      "011" when "01110", 
      "100" when "01111", 
      "010" when "10000", 
      "011" when "10001", 
      "011" when "10010", 
      "100" when "10011", 
      "011" when "10100", 
      "100" when "10101", 
      "100" when "10110", 
      "101" when "10111", 
      "011" when "11000", 
      "100" when "11001", 
      "100" when "11010", 
      "101" when "11011", 
      "100" when "11100", 
      "101" when "11101", 
      "101" when "11110", 
      "110" when "11111", 
      "---" when others;

end architecture;

--------------------------------------------------------------------------------
--                       LeftShifter_53_by_max_66_uid3
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2011)
--------------------------------------------------------------------------------
-- Pipeline depth: 3 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity LeftShifter_53_by_max_66_uid3 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(52 downto 0);
          S : in  std_logic_vector(6 downto 0);
          R : out  std_logic_vector(118 downto 0)   );
end entity;

architecture arch of LeftShifter_53_by_max_66_uid3 is
signal level0, level0_d1 :  std_logic_vector(52 downto 0);
signal ps, ps_d1, ps_d2, ps_d3 :  std_logic_vector(6 downto 0);
signal level1 :  std_logic_vector(53 downto 0);
signal level2 :  std_logic_vector(55 downto 0);
signal level3, level3_d1 :  std_logic_vector(59 downto 0);
signal level4 :  std_logic_vector(67 downto 0);
signal level5 :  std_logic_vector(83 downto 0);
signal level6, level6_d1 :  std_logic_vector(115 downto 0);
signal level7 :  std_logic_vector(179 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            level0_d1 <=  level0;
            ps_d1 <=  ps;
            ps_d2 <=  ps_d1;
            ps_d3 <=  ps_d2;
            level3_d1 <=  level3;
            level6_d1 <=  level6;
         end if;
      end process;
   level0<= X;
   ps<= S;
   ----------------Synchro barrier, entering cycle 1----------------
   level1<= level0_d1 & (0 downto 0 => '0') when ps_d1(0)= '1' else     (0 downto 0 => '0') & level0_d1;
   level2<= level1 & (1 downto 0 => '0') when ps_d1(1)= '1' else     (1 downto 0 => '0') & level1;
   level3<= level2 & (3 downto 0 => '0') when ps_d1(2)= '1' else     (3 downto 0 => '0') & level2;
   ----------------Synchro barrier, entering cycle 2----------------
   level4<= level3_d1 & (7 downto 0 => '0') when ps_d2(3)= '1' else     (7 downto 0 => '0') & level3_d1;
   level5<= level4 & (15 downto 0 => '0') when ps_d2(4)= '1' else     (15 downto 0 => '0') & level4;
   level6<= level5 & (31 downto 0 => '0') when ps_d2(5)= '1' else     (31 downto 0 => '0') & level5;
   ----------------Synchro barrier, entering cycle 3----------------
   level7<= level6_d1 & (63 downto 0 => '0') when ps_d3(6)= '1' else     (63 downto 0 => '0') & level6_d1;
   R <= level7(118 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                 FixRealKCM_M3_9_0_1_log_2_unsigned_Table_2
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
entity FixRealKCM_M3_9_0_1_log_2_unsigned_Table_2 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(1 downto 0);
          Y : out  std_logic_vector(15 downto 0)   );
end entity;

architecture arch of FixRealKCM_M3_9_0_1_log_2_unsigned_Table_2 is
begin
  with X select  Y <= 
   "0000000000010000" when "00",
   "0010111000111011" when "01",
   "0101110001100101" when "10",
   "1000101010010000" when "11",
   "----------------" when others;
end architecture;

--------------------------------------------------------------------------------
--                 FixRealKCM_M3_9_0_1_log_2_unsigned_Table_1
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
entity FixRealKCM_M3_9_0_1_log_2_unsigned_Table_1 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(13 downto 0)   );
end entity;

architecture arch of FixRealKCM_M3_9_0_1_log_2_unsigned_Table_1 is
begin
  with X select  Y <= 
   "00000000000000" when "00000",
   "00000101110001" when "00001",
   "00001011100011" when "00010",
   "00010001010100" when "00011",
   "00010111000101" when "00100",
   "00011100110111" when "00101",
   "00100010101000" when "00110",
   "00101000011001" when "00111",
   "00101110001011" when "01000",
   "00110011111100" when "01001",
   "00111001101101" when "01010",
   "00111111011111" when "01011",
   "01000101010000" when "01100",
   "01001011000001" when "01101",
   "01010000110011" when "01110",
   "01010110100100" when "01111",
   "01011100010101" when "10000",
   "01100010000111" when "10001",
   "01100111111000" when "10010",
   "01101101101001" when "10011",
   "01110011011011" when "10100",
   "01111001001100" when "10101",
   "01111110111101" when "10110",
   "10000100101111" when "10111",
   "10001010100000" when "11000",
   "10010000010001" when "11001",
   "10010110000011" when "11010",
   "10011011110100" when "11011",
   "10100001100101" when "11100",
   "10100111010111" when "11101",
   "10101101001000" when "11110",
   "10110010111001" when "11111",
   "--------------" when others;
end architecture;

--------------------------------------------------------------------------------
--                 FixRealKCM_M3_9_0_1_log_2_unsigned_Table_0
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
entity FixRealKCM_M3_9_0_1_log_2_unsigned_Table_0 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(5 downto 0);
          Y : out  std_logic_vector(8 downto 0)   );
end entity;

architecture arch of FixRealKCM_M3_9_0_1_log_2_unsigned_Table_0 is
begin
  with X select  Y <= 
   "000000000" when "000000",
   "000000110" when "000001",
   "000001100" when "000010",
   "000010001" when "000011",
   "000010111" when "000100",
   "000011101" when "000101",
   "000100011" when "000110",
   "000101000" when "000111",
   "000101110" when "001000",
   "000110100" when "001001",
   "000111010" when "001010",
   "000111111" when "001011",
   "001000101" when "001100",
   "001001011" when "001101",
   "001010001" when "001110",
   "001010111" when "001111",
   "001011100" when "010000",
   "001100010" when "010001",
   "001101000" when "010010",
   "001101110" when "010011",
   "001110011" when "010100",
   "001111001" when "010101",
   "001111111" when "010110",
   "010000101" when "010111",
   "010001010" when "011000",
   "010010000" when "011001",
   "010010110" when "011010",
   "010011100" when "011011",
   "010100010" when "011100",
   "010100111" when "011101",
   "010101101" when "011110",
   "010110011" when "011111",
   "010111001" when "100000",
   "010111110" when "100001",
   "011000100" when "100010",
   "011001010" when "100011",
   "011010000" when "100100",
   "011010110" when "100101",
   "011011011" when "100110",
   "011100001" when "100111",
   "011100111" when "101000",
   "011101101" when "101001",
   "011110010" when "101010",
   "011111000" when "101011",
   "011111110" when "101100",
   "100000100" when "101101",
   "100001001" when "101110",
   "100001111" when "101111",
   "100010101" when "110000",
   "100011011" when "110001",
   "100100001" when "110010",
   "100100110" when "110011",
   "100101100" when "110100",
   "100110010" when "110101",
   "100111000" when "110110",
   "100111101" when "110111",
   "101000011" when "111000",
   "101001001" when "111001",
   "101001111" when "111010",
   "101010100" when "111011",
   "101011010" when "111100",
   "101100000" when "111101",
   "101100110" when "111110",
   "101101100" when "111111",
   "---------" when others;
end architecture;

--------------------------------------------------------------------------------
--                     FixRealKCM_M3_9_0_1_log_2_unsigned
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity FixRealKCM_M3_9_0_1_log_2_unsigned is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(12 downto 0);
          R : out  std_logic_vector(10 downto 0)   );
end entity;

architecture arch of FixRealKCM_M3_9_0_1_log_2_unsigned is
   component FixRealKCM_M3_9_0_1_log_2_unsigned_Table_0 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(5 downto 0);
             Y : out  std_logic_vector(8 downto 0)   );
   end component;

   component FixRealKCM_M3_9_0_1_log_2_unsigned_Table_1 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(13 downto 0)   );
   end component;

   component FixRealKCM_M3_9_0_1_log_2_unsigned_Table_2 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(1 downto 0);
             Y : out  std_logic_vector(15 downto 0)   );
   end component;

signal d2, d2_d1 :  std_logic_vector(1 downto 0);
signal d1, d1_d1 :  std_logic_vector(4 downto 0);
signal d0 :  std_logic_vector(5 downto 0);
signal pp0 :  std_logic_vector(8 downto 0);
signal sum0, sum0_d1 :  std_logic_vector(8 downto 0);
signal pp1 :  std_logic_vector(13 downto 0);
signal sum1 :  std_logic_vector(13 downto 0);
signal pp2 :  std_logic_vector(15 downto 0);
signal sum2 :  std_logic_vector(15 downto 0);
signal OutRes :  std_logic_vector(15 downto 0);
attribute rom_extract: string;
attribute rom_style: string;
attribute rom_extract of FixRealKCM_M3_9_0_1_log_2_unsigned_Table_0: component is "yes";
attribute rom_extract of FixRealKCM_M3_9_0_1_log_2_unsigned_Table_1: component is "yes";
attribute rom_extract of FixRealKCM_M3_9_0_1_log_2_unsigned_Table_2: component is "yes";
attribute rom_style of FixRealKCM_M3_9_0_1_log_2_unsigned_Table_0: component is "distributed";
attribute rom_style of FixRealKCM_M3_9_0_1_log_2_unsigned_Table_1: component is "distributed";
attribute rom_style of FixRealKCM_M3_9_0_1_log_2_unsigned_Table_2: component is "distributed";
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            d2_d1 <=  d2;
            d1_d1 <=  d1;
            sum0_d1 <=  sum0;
         end if;
      end process;
   d2 <= X(12 downto 11);
   d1 <= X(10 downto 6);
   d0 <= X(5 downto 0);
   KCMTable_0: FixRealKCM_M3_9_0_1_log_2_unsigned_Table_0  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => d0,
                 Y => pp0);
   sum0 <= pp0;
   ----------------Synchro barrier, entering cycle 1----------------
   KCMTable_1: FixRealKCM_M3_9_0_1_log_2_unsigned_Table_1  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => d1_d1,
                 Y => pp1);
   sum1 <= pp1 + sum0_d1;
   KCMTable_2: FixRealKCM_M3_9_0_1_log_2_unsigned_Table_2  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => d2_d1,
                 Y => pp2);
   sum2 <= pp2 + sum1;
OutRes <= sum2;
   R <= OutRes(15 downto 5);
end architecture;

--------------------------------------------------------------------------------
--                 FixRealKCM_0_10_M56_log_2_unsigned_Table_1
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
entity FixRealKCM_0_10_M56_log_2_unsigned_Table_1 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(66 downto 0)   );
end entity;

architecture arch of FixRealKCM_0_10_M56_log_2_unsigned_Table_1 is
begin
  with X select  Y <= 
   "0000000000000000000000000000000000000000000000000000000000000000000" when "00000",
   "0000010110001011100100001011111110111110100011100111101111001101011" when "00001",
   "0000101100010111001000010111111101111101000111001111011110011010110" when "00010",
   "0001000010100010101100100011111100111011101010110111001101101000001" when "00011",
   "0001011000101110010000101111111011111010001110011110111100110101100" when "00100",
   "0001101110111001110100111011111010111000110010000110101100000010111" when "00101",
   "0010000101000101011001000111111001110111010101101110011011010000010" when "00110",
   "0010011011010000111101010011111000110101111001010110001010011101101" when "00111",
   "0010110001011100100001011111110111110100011100111101111001101011000" when "01000",
   "0011000111101000000101101011110110110011000000100101101000111000011" when "01001",
   "0011011101110011101001110111110101110001100100001101011000000101101" when "01010",
   "0011110011111111001110000011110100110000000111110101000111010011000" when "01011",
   "0100001010001010110010001111110011101110101011011100110110100000011" when "01100",
   "0100100000010110010110011011110010101101001111000100100101101101110" when "01101",
   "0100110110100001111010100111110001101011110010101100010100111011001" when "01110",
   "0101001100101101011110110011110000101010010110010100000100001000100" when "01111",
   "0101100010111001000010111111101111101000111001111011110011010101111" when "10000",
   "0101111001000100100111001011101110100111011101100011100010100011010" when "10001",
   "0110001111010000001011010111101101100110000001001011010001110000101" when "10010",
   "0110100101011011101111100011101100100100100100110011000000111110000" when "10011",
   "0110111011100111010011101111101011100011001000011010110000001011011" when "10100",
   "0111010001110010110111111011101010100001101100000010011111011000110" when "10101",
   "0111100111111110011100000111101001100000001111101010001110100110001" when "10110",
   "0111111110001010000000010011101000011110110011010001111101110011100" when "10111",
   "1000010100010101100100011111100111011101010110111001101101000000111" when "11000",
   "1000101010100001001000101011100110011011111010100001011100001110010" when "11001",
   "1001000000101100101100110111100101011010011110001001001011011011101" when "11010",
   "1001010110111000010001000011100100011001000001110000111010101001000" when "11011",
   "1001101101000011110101001111100011010111100101011000101001110110011" when "11100",
   "1010000011001111011001011011100010010110001001000000011001000011101" when "11101",
   "1010011001011010111101100111100001010100101100101000001000010001000" when "11110",
   "1010101111100110100001110011100000010011010000001111110111011110011" when "11111",
   "-------------------------------------------------------------------" when others;
end architecture;

--------------------------------------------------------------------------------
--                 FixRealKCM_0_10_M56_log_2_unsigned_Table_0
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
entity FixRealKCM_0_10_M56_log_2_unsigned_Table_0 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(5 downto 0);
          Y : out  std_logic_vector(61 downto 0)   );
end entity;

architecture arch of FixRealKCM_0_10_M56_log_2_unsigned_Table_0 is
begin
  with X select  Y <= 
   "00000000000000000000000000000000000000000000000000000000000000" when "000000",
   "00000010110001011100100001011111110111110100011100111101111010" when "000001",
   "00000101100010111001000010111111101111101000111001111011110011" when "000010",
   "00001000010100010101100100011111100111011101010110111001101101" when "000011",
   "00001011000101110010000101111111011111010001110011110111100111" when "000100",
   "00001101110111001110100111011111010111000110010000110101100000" when "000101",
   "00010000101000101011001000111111001110111010101101110011011010" when "000110",
   "00010011011010000111101010011111000110101111001010110001010100" when "000111",
   "00010110001011100100001011111110111110100011100111101111001101" when "001000",
   "00011000111101000000101101011110110110011000000100101101000111" when "001001",
   "00011011101110011101001110111110101110001100100001101011000001" when "001010",
   "00011110011111111001110000011110100110000000111110101000111010" when "001011",
   "00100001010001010110010001111110011101110101011011100110110100" when "001100",
   "00100100000010110010110011011110010101101001111000100100101110" when "001101",
   "00100110110100001111010100111110001101011110010101100010100111" when "001110",
   "00101001100101101011110110011110000101010010110010100000100001" when "001111",
   "00101100010111001000010111111101111101000111001111011110011011" when "010000",
   "00101111001000100100111001011101110100111011101100011100010100" when "010001",
   "00110001111010000001011010111101101100110000001001011010001110" when "010010",
   "00110100101011011101111100011101100100100100100110011000001000" when "010011",
   "00110111011100111010011101111101011100011001000011010110000001" when "010100",
   "00111010001110010110111111011101010100001101100000010011111011" when "010101",
   "00111100111111110011100000111101001100000001111101010001110101" when "010110",
   "00111111110001010000000010011101000011110110011010001111101110" when "010111",
   "01000010100010101100100011111100111011101010110111001101101000" when "011000",
   "01000101010100001001000101011100110011011111010100001011100010" when "011001",
   "01001000000101100101100110111100101011010011110001001001011011" when "011010",
   "01001010110111000010001000011100100011001000001110000111010101" when "011011",
   "01001101101000011110101001111100011010111100101011000101001111" when "011100",
   "01010000011001111011001011011100010010110001001000000011001000" when "011101",
   "01010011001011010111101100111100001010100101100101000001000010" when "011110",
   "01010101111100110100001110011100000010011010000001111110111100" when "011111",
   "01011000101110010000101111111011111010001110011110111100110101" when "100000",
   "01011011011111101101010001011011110010000010111011111010101111" when "100001",
   "01011110010001001001110010111011101001110111011000111000101001" when "100010",
   "01100001000010100110010100011011100001101011110101110110100010" when "100011",
   "01100011110100000010110101111011011001100000010010110100011100" when "100100",
   "01100110100101011111010111011011010001010100101111110010010110" when "100101",
   "01101001010110111011111000111011001001001001001100110000001111" when "100110",
   "01101100001000011000011010011011000000111101101001101110001001" when "100111",
   "01101110111001110100111011111010111000110010000110101100000011" when "101000",
   "01110001101011010001011101011010110000100110100011101001111101" when "101001",
   "01110100011100101101111110111010101000011011000000100111110110" when "101010",
   "01110111001110001010100000011010100000001111011101100101110000" when "101011",
   "01111001111111100111000001111010011000000011111010100011101010" when "101100",
   "01111100110001000011100011011010001111111000010111100001100011" when "101101",
   "01111111100010100000000100111010000111101100110100011111011101" when "101110",
   "10000010010011111100100110011001111111100001010001011101010111" when "101111",
   "10000101000101011001000111111001110111010101101110011011010000" when "110000",
   "10000111110110110101101001011001101111001010001011011001001010" when "110001",
   "10001010101000010010001010111001100110111110101000010111000100" when "110010",
   "10001101011001101110101100011001011110110011000101010100111101" when "110011",
   "10010000001011001011001101111001010110100111100010010010110111" when "110100",
   "10010010111100100111101111011001001110011011111111010000110001" when "110101",
   "10010101101110000100010000111001000110010000011100001110101010" when "110110",
   "10011000011111100000110010011000111110000100111001001100100100" when "110111",
   "10011011010000111101010011111000110101111001010110001010011110" when "111000",
   "10011110000010011001110101011000101101101101110011001000010111" when "111001",
   "10100000110011110110010110111000100101100010010000000110010001" when "111010",
   "10100011100101010010111000011000011101010110101101000100001011" when "111011",
   "10100110010110101111011001111000010101001011001010000010000100" when "111100",
   "10101001001000001011111011011000001100111111100110111111111110" when "111101",
   "10101011111001101000011100111000000100110100000011111101111000" when "111110",
   "10101110101011000100111110010111111100101000100000111011110001" when "111111",
   "--------------------------------------------------------------" when others;
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_67_f400_uid19
--                     (IntAdderClassical_67_f400_uid21)
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

entity IntAdder_67_f400_uid19 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(66 downto 0);
          Y : in  std_logic_vector(66 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(66 downto 0)   );
end entity;

architecture arch of IntAdder_67_f400_uid19 is
signal X_d1 :  std_logic_vector(66 downto 0);
signal Y_d1 :  std_logic_vector(66 downto 0);
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
   ----------------Synchro barrier, entering cycle 1----------------
   --Classical
    R <= X_d1 + Y_d1 + Cin_d1;
end architecture;

--------------------------------------------------------------------------------
--                     FixRealKCM_0_10_M56_log_2_unsigned
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity FixRealKCM_0_10_M56_log_2_unsigned is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(10 downto 0);
          R : out  std_logic_vector(66 downto 0)   );
end entity;

architecture arch of FixRealKCM_0_10_M56_log_2_unsigned is
   component FixRealKCM_0_10_M56_log_2_unsigned_Table_0 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(5 downto 0);
             Y : out  std_logic_vector(61 downto 0)   );
   end component;

   component FixRealKCM_0_10_M56_log_2_unsigned_Table_1 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(66 downto 0)   );
   end component;

   component IntAdder_67_f400_uid19 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(66 downto 0);
             Y : in  std_logic_vector(66 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(66 downto 0)   );
   end component;

signal d1 :  std_logic_vector(4 downto 0);
signal d0 :  std_logic_vector(5 downto 0);
signal pp0 :  std_logic_vector(61 downto 0);
signal pp1 :  std_logic_vector(66 downto 0);
signal addOp0 :  std_logic_vector(66 downto 0);
signal OutRes :  std_logic_vector(66 downto 0);
attribute rom_extract: string;
attribute rom_style: string;
attribute rom_extract of FixRealKCM_0_10_M56_log_2_unsigned_Table_0: component is "yes";
attribute rom_extract of FixRealKCM_0_10_M56_log_2_unsigned_Table_1: component is "yes";
attribute rom_style of FixRealKCM_0_10_M56_log_2_unsigned_Table_0: component is "distributed";
attribute rom_style of FixRealKCM_0_10_M56_log_2_unsigned_Table_1: component is "distributed";
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   d1 <= X(10 downto 6);
   d0 <= X(5 downto 0);
   KCMTable_0: FixRealKCM_0_10_M56_log_2_unsigned_Table_0  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => d0,
                 Y => pp0);
   KCMTable_1: FixRealKCM_0_10_M56_log_2_unsigned_Table_1  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => d1,
                 Y => pp1);
   addOp0 <= (66 downto 62 => '0') & pp0;
   Result_Adder: IntAdder_67_f400_uid19  -- pipelineDepth=1 maxInDelay=4.008e-09
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => '0',
                 R => OutRes,
                 X => addOp0,
                 Y => pp1);
   ----------------Synchro barrier, entering cycle 1----------------
   R <= OutRes(66 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_56_f441_uid27
--                    (IntAdderAlternative_56_f441_uid31)
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

entity IntAdder_56_f441_uid27 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(55 downto 0);
          Y : in  std_logic_vector(55 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(55 downto 0)   );
end entity;

architecture arch of IntAdder_56_f441_uid27 is
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
--                             firstExpTable_9_57
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
entity firstExpTable_9_57 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(8 downto 0);
          Y : out  std_logic_vector(56 downto 0)   );
end entity;

architecture arch of firstExpTable_9_57 is
   -- Build a 2-D array type for the RoM
   subtype word_t is std_logic_vector(56 downto 0);
   type memory_t is array(0 to 511) of word_t;
   function init_rom
      return memory_t is 
      variable tmp : memory_t := (
   "100000000000000000000000000000000000000000000000000000000",
   "100000000100000000010000000000101010101100000000000010001",
   "100000001000000001000000000101010101101010101011101111000",
   "100000001100000010010000010010000001101100001000000110111",
   "100000010000000100000000101010110000000000100010001011011",
   "100000010100000110010001010011100010011000010011000000010",
   "100000011000001001000010010000011011000100000011101101010",
   "100000011100001100010011100101011100110100110001100000110",
   "100000100000010000000101010110101010111011110001110010001",
   "100000100100010100010111101000001001001010110110000101001",
   "100000101000011001001010011101111011110100010000001101110",
   "100000101100011110011101111100000111101010110110010100001",
   "100000110000100100010010000110110010000010000110111010001",
   "100000110100101010100111000010000000101110001100111111111",
   "100000111000110001011100110001111010000100000100001001111",
   "100000111100111000110011011010100100111001011100100111011",
   "100001000001000000101011000000001000100100111111011001010",
   "100001000101001001000011100110101100111110010010011001000",
   "100001001001010001111101010010011010011101111100100001001",
   "100001001101011011011000000111011001111101101001110101010",
   "100001010001100101010100001001110100111000001111101011000",
   "100001010101101111110001011101110101001001110000110011011",
   "100001011001111010110000000111100101001111100001100100111",
   "100001011110000110010000001011010000001000001100000101111",
   "100001100010010010010001101101000001010011110100010111100",
   "100001100110011110110100110001000100110011111100100001011",
   "100001101010101011111001011011100111001011101000111101001",
   "100001101110111001011111110000110101011111100100100011111",
   "100001110011000111100111110100111101010110000100111010001",
   "100001110111010110010001101100001100110111001110011110100",
   "100001111011100101011101011010110010101100111000110110111",
   "100001111111110101001011000100111110000010110010111111101",
   "100010000100000101011010101110111110100110100111011011000",
   "100010001000010110001100011101000100101000000000100000000",
   "100010001100100111100000010011100000111000101100101011100",
   "100010010000111001010110010110100100101100100010110000100",
   "100010010101001011101110101010100001111001100110001001110",
   "100010011001011110101001010011101010111000001011001011001",
   "100010011101110010000110010110010010100010111011010100101",
   "100010100010000110000101110110101100010110111001100100110",
   "100010100110011010100111111001001100010011100110101100100",
   "100010101010101111101100100010000110111011000101100010110",
   "100010101111000101010011110101110001010001111111011001010",
   "100010110011011011011101111000100000111111101000010001100",
   "100010110111110010001010101110101100001110000011010010011",
   "100010111100001001011010011100101001101010000110111110010",
   "100011000000100001001101000110110000100011100001101010000",
   "100011000100111001100010110001011000101100111101110011101",
   "100011001001010010011011100000111010011100000110011010111",
   "100011001101101011110111011001101110101001101011011000101",
   "100011010010000101110110100000001110110001100101111000110",
   "100011010110100000011000111000110100110010111100110010111",
   "100011011010111011011110100111111011010000001001000100011",
   "100011011111010111000111110001111101001110111010001011100",
   "100011100011110011010100011011010110011000011010100001110",
   "100011101000010000000100101000100010111001010011111000000",
   "100011101100101101011000011101111111100001110011110010100",
   "100011110001001011010000000000001001100101110000000101101",
   "100011110101101001101011010011011110111100101011010011010",
   "100011111010001000101010011100011110000001111001001000110",
   "100011111110101000001101011111100101110100100010111100111",
   "100100000011001000010100100001010101110111101100001111100",
   "100100000111101000111111100110001110010010010111001000110",
   "100100001100001010001110110010101111101111101000111001001",
   "100100010000101100000010001011011011011110101110011010000",
   "100100010101001110011001110100110011010011000000101111011",
   "100100011001110001010101110011011001100100001001101001001",
   "100100011110010100110110001011110001001110001000000110000",
   "100100100010111000111011000010011101110001010100110101111",
   "100100100111011101100100011100000011010010100110111101101",
   "100100101100000010110010011101000110011011011000011011000",
   "100100110000101000100101001010001100011001101010101001110",
   "100100110101001110111100100111111011000000001011001000011",
   "100100111001110101111000111010111000100110010111111101110",
   "100100111110011101011010000111101100001000100100100000011",
   "100101000011000101100000010010111101000111111101111100001",
   "100101000111101110001011100001010011101010101111111010111",
   "100101001100010111011011110111011000011100001001001011111",
   "100101010001000001010001011001110100101100100000001100100",
   "100101010101101011101100001101010010010001010111110001111",
   "100101011010010110101100010110011011100101100011110010101",
   "100101011111000010010001111001111011101001001101110000110",
   "100101100011101110011100111100011110000001111001100101100",
   "100101101000011011001101100010101110111010101010001100000",
   "100101101101001000100011110001011011000100000110001110100",
   "100101110001110110011111101101001111110100011100110010000",
   "100101110110100101000001011010111011000111101010000100101",
   "100101111011010100001000111111001011011111011100001010110",
   "100110000000000011110110011110110000000011010111101110000",
   "100110000100110100001001111110011000100000111100101100011",
   "100110001001100101000011100010110101001011101011000111100",
   "100110001110010110100011010000110110111101000111110101101",
   "100110010011001000101001001101001111010101000001010010000",
   "100110010111111011010101011100110000011001010100001110010",
   "100110011100101110101000000100001100110110010000100101011",
   "100110100001100010100001001000010111111110011110001101001",
   "100110100110010111000000101110000101101011000001101010011",
   "100110101011001100000110111010001010011011100001000100100",
   "100110110000000001110011110001011011010110001000111010010",
   "100110110100111000000111011000101110000111110000110110000",
   "100110111001101111000001110100111001000100000000100100101",
   "100110111110100110100011001010110011000101010100101010111",
   "100111000011011110101011011111010011101101000011011100110",
   "100111001000010111011010110111010011000011100001110100111",
   "100111001101010000110001010111101001111000001000001100110",
   "100111010010001010101111000101010001100001010111010101001",
   "100111010111000101010100000101000011111100111101010000000",
   "100111011100000000100000011011111011101111111010001010000",
   "100111100000111100010100001110110100000110100101010101000",
   "100111100101111000101111100010101000110100110010000011111",
   "100111101010110101110010011100010110010101110100100101101",
   "100111101111110011011101000000111001101100100111000010001",
   "100111110100110001101111010101010000100011101110010111011",
   "100111111001110000101001011110011001001101011111010110101",
   "100111111110110000001011100001010010100100000011100011001",
   "101000000011110000010101100010111100001001011110010000111",
   "101000001000110001000111101000010110000111110001100100001",
   "101000001101110010100001110110100001010001000011010001101",
   "101000010010110100100100010010011110111111100001111111010",
   "101000010111110111001111000001010001010101101010000101101",
   "101000011100111010100010000111111010111110001010110001111",
   "101000100001111110011101101011011111001100001011001000101",
   "101000100111000011000001110001000001111011001111001001010",
   "101000101100001000001110011101100111101111011100110001010",
   "101000110001001110000011110110010101110101100001000001110",
   "101000110110010100100010000000010010000010110101000011111",
   "101000111011011011101001000000100010110101100011001111001",
   "101001000000100011011000111100001111010100101100001111100",
   "101001000101101011110001111000011111010000001100001100110",
   "101001001010110100110011111010011011000000111111110010011",
   "101001001111111110011111000111001011101001001001010111011",
   "101001010101001000110011100011111010110011110110000111111",
   "101001011010010011110001010101110010110101100011001110100",
   "101001011111011111011000100001111110101100000010111111001",
   "101001100100101011101001001101101001111110100010000000111",
   "101001101001111000100011011110000000111101101100011011000",
   "101001101111000110000111011000010000100011110011000000001",
   "101001110100010100010101000001100110010100110000011011101",
   "101001111001100011001100011111010000011110001110011111010",
   "101001111110110010101101110110011101110111101011010000111",
   "101010000100000010111001001100011110000010011110011001111",
   "101010001001010011101110100110100001001001111110010110101",
   "101010001110100101001110001001111000000011100101100110001",
   "101010010011110111010111111011110100001110110111111011011",
   "101010011001001010001100000001100111110101100111101110111",
   "101010011110011101101010100000100101101011111011010000011",
   "101010100011110001110011011110000001010000010001111010000",
   "101010101001000110100110111111001110101011101001100011110",
   "101010101110011100000101001001100010110001100011110111011",
   "101010110011110010001110000010010011000000001011100101100",
   "101010111001001001000001101110110101100000011001111010110",
   "101010111110100000100000010100100001000101111011110110010",
   "101011000011111000101001111000101101001111010111100000010",
   "101011001001010001011110100000110010000110010001100001101",
   "101011001110101010111110010010001000011111010010011011110",
   "101011010100000101001001010010001001111010001100000010001",
   "101011011001011111111111100110010000100001111110110010101",
   "101011011110111011100001010011110111001100111111010001001",
   "101011100100010111101110100000011001011100111011100001001",
   "101011101001110100100111010001010011011111000000100001111",
   "101011101111010010001011101100000010001011111111101010100",
   "101011110100110000011011110110000011001000010100000110110",
   "101011111010001111010111110100110100100100001000010100111",
   "101011111111101110111111101101110101011011011011100011101",
   "101100000101001111010011100110100101010110000111010000111",
   "101100001010110000010011100100100100101000000100101010010",
   "101100010000010001111111101101010100010001010010001100001",
   "101100010101110100011000000110010101111101111001000011111",
   "101100011011010111011100110101001100000110010010110000101",
   "101100100000111011001101111111011001101111001110100110000",
   "101100100110011111101011101010100010101001110111001111100",
   "101100101100000100110101111100001011010011111000010011101",
   "101100110001101010101100111001111000110111100011111000110",
   "101100110111010001010000101001010001001011111000001010010",
   "101100111100111000100001001111111010110100100100111110100",
   "101101000010100000011110110011011101000010010001011100111",
   "101101001000001001001001011001011111110010100001100101101",
   "101101001101110010100001000111101011101111111011111001101",
   "101101010011011100100110000011101010010010001111000011000",
   "101101011001000111011000010011000101011110010111011110010",
   "101101011110110010110111111011101000000110100101000101000",
   "101101100100011111000101000010111101101010100000111000001",
   "101101101010001011111111101110110010010111010010101011011",
   "101101101111111001101000000100110011000111100110110010001",
   "101101110101100111111110001010101101100011110011101011011",
   "101101111011010111000010000110010000000001111111110000010",
   "101110000001000110110011111101001001100110000111000001110",
   "101110000110110111010011110101001010000010000000111000000",
   "101110001100101000100001110100000001110101100101110010011",
   "101110010010011010011101111111100010001110110101000111001",
   "101110011000001101001000011101011101001001111010110101110",
   "101110011110000000100001010011100101010001010101010111111",
   "101110100011110100101000100111101101111101111011010100110",
   "101110101001101001011110011111101011010111000001010100000",
   "101110101111011111000011000001010010010010011111110010000",
   "101110110101010101010110010010011000010100111000110100111",
   "101110111011001100011000011000110011110001011110000001111",
   "101111000001000100001001011010011011101010010110010011101",
   "101111000110111100101001011101000111110000100011110001100",
   "101111001100110101111000100110110000100100001001100110110",
   "101111010010101111110110111101001111010100010001111011110",
   "101111011000101010100100100110011101111111010011101110110",
   "101111011110100110000001101000010111010010111000101110000",
   "101111100100100010001110001000110110101100000011010010010",
   "101111101010011111001010001101111000010111010100011010111",
   "101111110000011100110101111101011001010000110001101001000",
   "101111110110011011010001011101010111000100001010111101100",
   "101111111100011010011100110011110000001101000000110110000",
   "110000000010011010011000000110100011110110101010001011101",
   "110000001000011011000011011011110001111100011010010001111",
   "110000001110011100011110111001011011001001100110110111001",
   "110000010100011110101010100101100000111001101110000100011",
   "110000011010100001100110100110000101011000011100011111111",
   "110000100000100101010011000001001011100001110011001110010",
   "110000100110101001101111111100110111000010001101110101111",
   "110000101100101110111101011111001100010110101000100010110",
   "110000110010110100111011101110010000101100100110001010100",
   "110000111000111011101010110000001010000010010110010010000",
   "110000111111000011001010101010111111000110111011010011010",
   "110001000101001011011011100100110111011010010000100011111",
   "110001001011010100011101100011111011001101010000011100111",
   "110001010001011110010000101110010011100001111010100010110",
   "110001010111101000110101001010001010001011011001101110101",
   "110001011101110100001010111101101001101110001010011000001",
   "110001100100000000010010001110111101100000000000011111110",
   "110001101010001101001011000100010001101000001101111010001",
   "110001110000011010110101100011110010111111101000011100101",
   "110001110110101001010001110011101111010000110000001001110",
   "110001111100111000011111111010010100110111110101011110111",
   "110010000011001000011111111101110011000010111111100010111",
   "110010001001011001010010000100011001110010010010010101010",
   "110010001111101010110110010100011001110111110100111110010",
   "110010010101111101001100110100000100110111110111111111011",
   "110010011100010000010101101001101101001000111011100101010",
   "110010100010100100010000111011100101110011110101111001100",
   "110010101000111000111110110000000010110011111001010110100",
   "110010101111001110011111001101011000110110111010111011010",
   "110010110101100100110010011001111101011101011000011111010",
   "110010111011111011111000011100000110111010011111001001010",
   "110011000010010011110001011010001100010100010001100100011",
   "110011001000101100011101011010100101100011101110011000001",
   "110011001111000101111100100011101011010100110110011111111",
   "110011010101100000001110111011110111000110110011100011011",
   "110011011011111011010100101001100011001011111110010000110",
   "110011100010010111001101110011001010101010000100110110010",
   "110011101000110011111010011111001001011010010001011101101",
   "110011101111010001011010110011111100001001010000101000001",
   "110011110101101111101110111000000000010111010111101010111",
   "110011111100001110110110110001110100011000101011001100101",
   "110100000010101110110010100111110111010101000101100100000",
   "110100001001001111100010100000101001001000011101010110101",
   "110100001111110001000110100010101010100010101011111001000",
   "110100010110010011011110110100011101000111110011101111011",
   "110100011100110110101011011100100011010000000111001111001",
   "110100100011011010101100100001100000001000001111000001011",
   "110100101001111111100010001001110111110001010000100101111",
   "010011011010001011001011111100011011111001011000001010000",
   "010011011100100110100111000011011010111011111000001111011",
   "010011011111000010010101100111000000100111000011011101100",
   "010011100001011110010111101001101000101001011101100111001",
   "010011100011111010101101001101101111000101001001100001010",
   "010011100110010111010110010101110000001111101011011111010",
   "010011101000110100010011000100001000110010001011101111101",
   "010011101011010001100011011011010101101001011000110111110",
   "010011101101101111000111011101110100000101101010010001101",
   "010011110000001100111111001110000001101011000010101000110",
   "010011110010101011001010101110011100010001010010011000001",
   "010011110101001001101010000001100010000011111010000111010",
   "010011110111101000011101001001110001100010001101001001011",
   "010011111010000111100100001001101001011111010011111011000",
   "010011111100100110111111000011101001000010001110100001011",
   "010011111111000110101101111010001111100101110111001001011",
   "010100000001100110110000101111111100111001000100100110111",
   "010100000100000111000111100111010000111110101100110100101",
   "010100000110100111110010100010101100001101100111010011110",
   "010100001001001000110001100100101111010000101111101101010",
   "010100001011101010000100101111111011000111001000010001010",
   "010100001110001011101100000110110001000011111100011001010",
   "010100010000101101100111101011110010101110100011001000101",
   "010100010011001111110111100001100010000010100001101110101",
   "010100010101110010011011101010100001001111101110000111111",
   "010100011000010101010100001001010010111010010001100001010",
   "010100011010111000100001000000011001111010101010111010000",
   "010100011101011100000010010010011001011101110001100110110",
   "010100011111111111111000000001110101000100110111110100101",
   "010100100010100100000010010001010000100101101101001100111",
   "010100100101001000100001000011010000001010100001011000101",
   "010100100111101101010100011010011000010010000110100101011",
   "010100101010010010011100011001001101101111110100001000111",
   "010100101100110111111001000010010101101011101001000110010",
   "010100101111011101101010011000010101100010001110110011010",
   "010100110010000011110000011101110011000100111011011101110",
   "010100110100101010001011010101010100011001110100110000111",
   "010100110111010000111011000001011111111011110010011011111",
   "010100111001110111111111100100111100011010100000111000010",
   "010100111100011111011001000010010000111010100011110000100",
   "010100111111000111000111011100000100110101011000100110110",
   "010101000001101111001010110100111111111001011001011101010",
   "010101000100010111100011001111101010001001111111011100111",
   "010101000111000000010000101110101011111111100101011101111",
   "010101001001101001010011010100101110000111101010110000010",
   "010101001100010010101011000100011001100100110101100100010",
   "010101001110111100011000000000010111101110110101110011011",
   "010101010001100110011010001011010010010010100111101001111",
   "010101010100010000110001100111110011010010010110010000101",
   "010101010110111011011110011000100101000101011110010110101",
   "010101011001100110100000100000010010011000110000111100000",
   "010101011100010001111000000001100110001110010101111100011",
   "010101011110111101100100111111001011111101101110111001110",
   "010101100001101001100111011011101111010011111001101000010",
   "010101100100010101111111011001111100010011010010111001100",
   "010101100111000010101100111100011111010011111001001001000",
   "010101101001101111110000000110000101000011001111000111111",
   "010101101100011101001000111001011010100100011110101010100",
   "010101101111001010110111011001001101010000011011010100111",
   "010101110001111000111011101000001010110101100101001000000",
   "010101110100100111010101101001000001011000001011010000000",
   "010101110111010110000101011110011111010010001110110010001",
   "010101111010000101001011001011010011010011100101011010101",
   "010101111100110100100110110010001100100001111100001100001",
   "010101111111100100011000010101111010011000111010001110101",
   "010110000010010100011111111001001100101010000011011110101",
   "010110000101000100111101011110110011011100111011011100111",
   "010110000111110101110001001001011111001111000111111111000",
   "010110001010100110111010111100000000110100010011111111100",
   "010110001101011000011010111001001001010110010010001110110",
   "010110010000001010010001000011101010010101000000000100001",
   "010110010010111100011101011110010101100110101000001111010",
   "010110010101101111000000001011111101010111100101101010011",
   "010110011000100001111001001111010100001010100110001100001",
   "010110011011010101001000101011001100111000101101011010010",
   "010110011110001000101110100010011010110001010111011100010",
   "010110100000111100101010110111110001011010011011101111010",
   "010110100011110000111101101110000100110000001111111000100",
   "010110100110100101100111001000001001000101101010011010110",
   "010110101001011010100111001000110011000100000101101001001",
   "010110101100001111111101110010110111101011100010011100111",
   "010110101111000101101011001001001100010010101011001001101",
   "010110110001111011101111001110100110100110110110010011001",
   "010110110100110010001010000101111100101100001001100010111",
   "010110110111101000111011110010000100111101011100011110001",
   "010110111010100000000100010101110110001100011011011100011",
   "010110111101010111100011110100000111100001101010011110010",
   "010111000000001111011010001111110000011100101000000100010",
   "010111000011000111100111101011101000110011110000000110101",
   "010111000110000000001100001010101000110100011110101101001",
   "010111001000111001000111101111101001000011010011000111010",
   "010111001011110010011010011101100010011011110010100100011",
   "010111001110101100000100010111001110010000101011001101100",
   "010111010001100110000101011111100110001011110110111101111",
   "010111010100100000011101111001100100001110011110011101000",
   "010111010111011011001101101000000010110000111011111000011",
   "010111011010010110010100101101111100100010111101111110001",
   "010111011101010001110011001110001100101011101010110111100",
   "010111100000001101101001001011101110101001100011000100100",
   "010111100011001001110110101001011110010010100100010110101",
   "010111100110000110011011101010010111110100001100101101001",
   "010111101001000011011000010001010111110011011101010001011",
   "010111101100000000101100100001011011001100111101010011000",
   "010111101110111110011000011101011111010100111101000101010",
   "010111110001111100011100001000100001110111011000111100000",
   "010111110100111010110111100101100000110111111100001001101",
   "010111110111111001101010110111011010110010000011111101001",
   "010111111010111000110110000001001110011001000010100000001",
   "010111111101111000011001000101111010111000000001110110010",
   "011000000000111000010100001000011111110010000110111100000",
   "011000000011111000100111001011111101000010010100100110010",
   "011000000110111001010010010011010010111011101110100010010",
   "011000001001111010010101100001100010001001011100010101111",
   "011000001100111011110000111001101011101110101100100000101",
   "011000001111111101100100011110110001000110110111011100000",
   "011000010010111111110000010011110100000101100010011101101",
   "011000010110000010010100011011110110110110100010111000101",
   "011000011001000101010000111001111011111110000001000000001",
   "011000011100001000100101110001000110011000011011001001010",
   "011000011111001100010011000100011001011010101000101110111",
   "011000100010010000011000110110111000110001111101010100010",
   "011000100101010100110111001011101000100100001011101001001",
   "011000101000011001101110000101101101001111101000101101101",
   "011000101011011110111101101000001011101011001110110110110",
   "011000101110100100100101110110001001000110100000110011101",
   "011000110001101010100110110010101011001001101100110001111",
   "011000110100110001000000100000110111110101101111100100010",
   "011000110111110111110011000011110101100100010111100111110",
   "011000111010111110111110011110101011001000001000001010111",
   "011000111110000110100010110100011111101100011100010011110",
   "011001000001001110100000001000011010110101101010000111100",
   "011001000100010110110110011101100100100001000101110010000",
   "011001000111011111100101110111000101000101000100101101100",
   "011001001010101000101110011000000101010001000000101011100",
   "011001001101110010010000000011101110001101011010111100110",
   "011001010000111100001010111101001001011011111111011011000",
   "011001010100000110011111000111100000110111100111110010100",
   "011001010111010001001100100101111110110100011110101011011",
   "011001011010011100010011011011101110000000000010110100100",
   "011001011101100111110011101011111001100001001010001101111",
   "011001100000110011101101011001101100111000000101010100010",
   "011001100100000000000000101000010011111110100010001011110",
   "011001100111001100101101011010111011000111101111101100100",
   "011001101010011001110011110100101111000000100000101110111",
   "011001101101100111010011111000111100101111001111010111101",
   "011001110000110101001101101010110001110100000000000101111",
   "011001110100000011100001001101011100001000100100111111101",
   "011001110111010010001110100100001010000000100001000000011",
   "011001111010100001010101110010001010001001001011000111100",
   "011001111101110000110110111010101011101001110001100110001",
   "011010000001000000110010000000111110000011011101001111001",
   "011010000100010001000111001000010001010001010100100110010",
   "011010000111100001110110010011110101101000011111010000000",
   "011010001010110010111111100110111011111000001001000010011",
   "011010001110000100100011000100110101001001100101010100110",
   "011010010001010110100000110000110011000000010010010010000",
   "011010010100101000111000101110000111011001111100001001100",
   "011010010111111011101011000000000100101110100000100001001",
   "011010011011001110110111101001111101110000010001100111111",
   "011010011110100010011110101111000101101011111001101000010",
   "011010100001110110100000010010110000001000011101111011110",
   "011010100101001010111100011000010001000111100010011110101",
   "011010101000011111110011000010111101000101001101000011101",
   "011010101011110101000100010110001000111000001000101000010",
   "011010101111001010110000010101001001110001101000101010010",
   "011010110010100000110111000011010101011101101100011100010",
   "011010110101110111011000100100000010000011000010011011110",
   "011010111001001110010100111010100110000011001011100111010",
   "011010111100100101101100001010011000011010011110110100101",
   "011010111111111101011110010110110000100000001100001000010",
   "011011000011010101101011100011000110000110100000001100010",
   "011011000110101110010011110010110001011010100111101000001",
   "011011001010000111010111001001001011000100110010011001010",
   "011011001101100000110101101001101100001000010111001011011",
   "011011010000111010101111010111101110000011110110110001110",
   "011011010100010101000100010110101010110000111111100000011",
   "011011010111101111110100101001111100100100110000100110001",
   "011011011011001011000000010100111110001111011101100111010",
   "011011011110100110100111011011001010111100110001110111011",
   "011011100010000010101001111111111110010011110011110101110",
   "011011100101011111001000000110110100010111001000101000000",
   "011011101000111100000001110011001001100100110111010110101",
   "011011101100011001010111001000011010110110101100101001000",
   "011011101111110111001000001010000101100001111110000011001",
   "011011110011010101010100111011100111010111101101100010000",
   "011011110110110011111101100000011110100100101100111010000",
   "011011111010010011000001111100001001110001100001010101000",
   "011011111101110010100010010010001000000010100110110000101",
   "011100000001010010011110100101111000111000010011011101110",
   "011100000100110010110110111010111100001110111011100000001",
   "011100001000010011101011010100110010011110110100001101100",
   "011100001011110100111011110110111100011100010111101111001",
   "011100001111010110101000100100111011011000001000100001100",
   "011100010010111000110001100010010000111110110100110110100",
   "011100010110011011010110110010011111011001011010010110101",
   "011100011001111110011000011001001001001101001001100011000",
   "011100011101100001110110011001110001011011101001011000100",
   "011100100001000101110000110111111011100010111010110010010",
   "011100100100101010000111110111001011011101011100001101011",
   "011100101000001110111011011011000101100010001101001100110",
   "011100101011110100001011100111001110100100110001111101101",
   "011100101111011001111000011111001011110101010110111100000",
   "011100110011000000000010000110100011000000110100011000100",
   "011100110110100110101000100000111010010000110001111101010",
   "011100111010001101101011110001111000001011101010010100111",
   "011100111101110101001011111101000011110100101110110000011",
   "011101000001011101001001000110000100101100001010101110111",
   "011101000101000101100011010000100010101111000111100100100",
   "011101001000101110011010100000000110010111110000000010110",
   "011101001100010111101110111000011000011101010100000000011",
   "011101010000000001100000011101000010010100001100000011010",
   "011101010011101011101111010001101101101101111101001000100",
   "011101010111010110011011011010000100111001011100001111010",
   "011101011011000001100100111001110010100010110010000010000",
   "011101011110101101001011110100100001110011011110100010000",
   "011101100010011001010000001101111110010010011100110010011",
   "011101100110000101110010001001110100000100000110100011001",
   "011101101001110010110001101011101111101010010111111101110",
   "011101101101100000001110110111011110000100110011010001100",
   "011101110001001110001001110000101100110000100100100000110",
   "011101110100111100100010011011001001101000100101001110000",
   "011101111000101011011000111010100011000101100000001001111",
   "011101111100011010101101010010100111111101110101000001110",
   "011110000000001010011111100111000111100101111100001110100",
   "011110000011111010101111111011110001110000001010100011110",
   "011110000111101011011110010100010110101100110100111111110",
   "011110001011011100101010110100100111001010010100011011010",
   "011110001111001110010101100000010100010101001001011011000",
   "011110010011000000011110011011001111111000000000000000011",
   "011110010110110011000101101001001011111011110011011010111",
   "011110011010100110001011001101111011000111110001111011000",
   "011110011110011001101111001101010000100001100000100100000",
   "011110100010001101110001101010111111101100111110111111110",
   "011110100110000010010010101010111100101100101011010001101",
   "011110101001110111010010010000111100000001100101101011000",
   "011110101101101100110000100000110010101011010100011111110",
   "011110110001100010101101011110010110001000000111111011000",
   "011110110101011001001001001101011100010100111101110100100",
   "011110111001010000000011110001111011101101100101100111001",
   "011110111101000111011101001111101011001100100100000110110",
   "011111000000111111010101101010100010001011010111010111101",
   "011111000100110111101101000110011000100010011010100101001",
   "011111001000110000100011100111000110101001001001111010101",
   "011111001100101001111001010000100101010110000110011010110",
   "011111010000100011101110000110101101111110111001111001001",
   "011111010100011110000010001101011010011000011010110011000",
   "011111011000011000110101101000100100110110110000001001111",
   "011111011100010100001000011100001000001101010101011100111",
   "011111100000001111111010101011111111101110111110100100101",
   "011111100100001100001100011100000111001101111011101101010",
   "011111101000001000111101110000011010111011111101010011100",
   "011111101100000110001110101100110111101010011000000000001",
   "011111110000000011111111010101011010101010001000100101000",
   "011111110100000010001111101110000001101011110111111010001",
   "011111111000000000111111111010101010111111111110111011110",
   "011111111100000000001111111111010101010110101010101000100",
      others => (others => '0'));
      	begin 
      return tmp;
      end init_rom;
	signal rom : memory_t := init_rom;
   signal Y0 :  std_logic_vector(56 downto 0);
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
--                            PolyCoeffTable_9_101
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Mioara Joldes (2010)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
entity PolyCoeffTable_9_101 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(8 downto 0);
          Y : out  std_logic_vector(100 downto 0)   );
end entity;

architecture arch of PolyCoeffTable_9_101 is
   -- Build a 2-D array type for the RoM
   subtype word_t is std_logic_vector(100 downto 0);
   type memory_t is array(0 to 511) of word_t;
   function init_rom
      return memory_t is 
      variable tmp : memory_t := (
   "01000000000000000000011111111111111111111111111111111111101100000000000000000000000000000000000000100",
   "01000000000000000001100110000000000100000000000000000001011000000000000000000010000000000000000001010",
   "01000000000000000010100001000000001000000000000000000111100100000000000000001000000000000000000101111",
   "01000000000000000011011111000000001100000000000000010001101100000000000000010010000000000000010010100",
   "01000000000000000100100110000000010000000000000000011111011000000000000000100000000000000000101011010",
   "01000000000000000101100001000000010100000000000000110001100100000000000000110010000000000001010011111",
   "01000000000000000110011111000000011000000000000001000111101100000000000001001000000000000010010000100",
   "01000000000000000111100100000000011100000000000001100001011100000000000001100010000000000011100101010",
   "01000000000000001000100010000000100000000000000001111111100100000000000010000000000000000101010101111",
   "01000000000000001001011111000000100100000000000010100001101100000000000010100010000000000111100110100",
   "01000000000000001010100111000000101000000000000011000111011000000000000011001000000000001010011011010",
   "01000000000000001011100010000000101100000000000011110001100100000000000011110010000000001101110111111",
   "01000000000000001100011101000000110000000000000100011111110000000000000100100000000000010010000000100",
   "01000000000000001101100101000000110100000000000101010001011100000000000101010010000000010110111001010",
   "01000000000000001110011110000000111000000000000110000111101100000000000110001000000000011100100101111",
   "01000000000000001111011100000000111100000000000111000001110100000000000111000010000000100011001010100",
   "01000000000000010000100010000001000000000000000111111111100100000000001000000000000000101010101011010",
   "01000000000000010001011101000001000100000000001001000001110000000000001001000010000000110011001011111",
   "01000000000000010010100110000001001000000000001010000111011100000000001010001000000000111100110000101",
   "01000000000000010011011101000001001100000000001011010001110000000000001011010010000001000111011101010",
   "01000000000000010100100110000001010000000000001100011111011100000000001100100000000001010011010110000",
   "01000000000000010101011101000001010100000000001101110001110000000000001101110010000001100000011110101",
   "01000000000000010110100100000001011000000000001111000111100000000000001111001000000001101110111011011",
   "01000000000000010111011110000001011100000000010000100001110000000000010000100010000001111110110000000",
   "01000000000000011000100011000001100000000000010001111111100100000000010010000000000010010000000000110",
   "01000000000000011001011011000001100100000000010011100001111000000000010011100010000010100010110001011",
   "01000000000000011010011110000001101000000000010101000111110000000000010101001000000010110111000110001",
   "01000000000000011011100001000001101100000000010110110001101000000000010110110010000011001101000010111",
   "01000000000000011100100101000001110000000000011000011111100000000000011000100000000011100100101011101",
   "01000000000000011101011001000001110100000000011010010001111100000000011010010010000011111110000100010",
   "01000000000000011110011011000001111000000000011100000111111000000000011100001000000100011001010001000",
   "01000000000000011111011101000001111100000000011110000001110100000000011110000010000100110110010101110",
   "01000000000000100000011101000010000000000000011111111111110100000000100000000000000101010101010110100",
   "01000000000000100001011110000010000100000000100010000001110100000000100010000010000101110110010111010",
   "01000000000000100010011100000010001000000000100100000111111000000000100100001000000110011001011100000",
   "01000000000000100011011001000010001100000000100110010010000000000000100110010010000110111110101000110",
   "01000000000000100100100011000010010000000000101000011111101000000000101000100000000111100110000001101",
   "01000000000000100101011110000010010100000000101010110001110100000000101010110010001000001111101010011",
   "01000000000000100110011010000010011000000000101101001000000000000000101101001000001000111011100111001",
   "01000000000000100111100001000010011100000000101111100001110000000000101111100010001001101001111100000",
   "01000000000000101000100110000010100000000000110001111111100100000000110010000000001010011010101100111",
   "01000000000000101001011100000010100100000000110100100001111100000000110100100010001011001101111101101",
   "01000000000000101010100000000010101000000000110111000111110100000000110111001000001100000011110010100",
   "01000000000000101011100000000010101100000000111001110001110100000000111001110010001100111100001111011",
   "01000000000000101100100001000010110000000000111100011111110100000000111100100000001101110111011000010",
   "01000000000000101101100000000010110100000000111111010001111000000000111111010010001110110101010001001",
   "01000000000000101110011101000010111000000001000010001000000000000001000010001000001111110101111110000",
   "01000000000000101111100110000010111100000001000101000001101100000001000101000010010000111001100011000",
   "01000000000000110000011110000011000000000001001000000000000000000001001000000000010010000000000011111",
   "01000000000000110001100001000011000100000001001011000001111000000001001011000010010011001001100100111",
   "01000000000000110010100101000011001000000001001110000111110000000001001110001000010100010110001001111",
   "01000000000000110011100110000011001100000001010001010001110000000001010001010010010101100101110110111",
   "01000000000000110100100101000011010000000001010100011111110100000001010100100000010110111000101111111",
   "01000000000000110101100000000011010100000001010111110010000000000001010111110010011000001110111000111",
   "01000000000000110110011101000011011000000001011011001000001100000001011011001000011001101000010101111",
   "01000000000000110111100000000011011100000001011110100010000100000001011110100010011011000101001011000",
   "01000000000000111000100010000011100000000001100010000000000000000001100010000000011100100101011100001",
   "01000000000000111001100011000011100100000001100101100010000000000001100101100010011110001001001101010",
   "01000000000000111010011110000011101000000001101001001000001100000001101001001000011111110000100010011",
   "01000000000000111011011011000011101100000001101100110010011000000001101100110010100001011011011111100",
   "01000000000000111100011110000011110000000001110000100000010000000001110000100000100011001010001000110",
   "01000000000000111101100011000011110100000001110100010010001000000001110100010010100100111100100010000",
   "01000000000000111110100000000011111000000001111000001000010000000001111000001000100110110010101111010",
   "01000000000000111111011110000011111100000001111100000010011000000001111100000010101000101100110100100",
   "01000000000001000000100001000100000000000010000000000000010000000010000000000000101010101010110101111",
   "01000000000001000001100110000100000100000010000100000010001000000010000100000010101100101100110111010",
   "01000000000001000010100101000100001000000010001000001000001100000010001000001000101110110010111100101",
   "01000000000001000011100001000100001100000010001100010010011000000010001100010010110000111101001010000",
   "01000000000001000100100111000100010000000010010000100000001100000010010000100000110011001011100011100",
   "01000000000001000101011011000100010100000010010100110010101100000010010100110010110101011110001100111",
   "01000000000001000110100101000100011000000010011001001000010100000010011001001000110111110101001010100",
   "01000000000001000111100000000100011100000010011101100010100100000010011101100010111010010000100000000",
   "01000000000001001000100011000100100000000010100010000000100000000010100010000000111100110000010001101",
   "01000000000001001001100000000100100100000010100110100010101000000010100110100010111111010100100011010",
   "01000000000001001010011101000100101000000010101011001000110100000010101011001001000001111101011000111",
   "01000000000001001011011111000100101100000010101111110010110000000010101111110011000100101010110110101",
   "01000000000001001100011101000100110000000010110100100000111000000010110100100001000111011101000000011",
   "01000000000001001101100111000100110100000010111001010010100100000010111001010011001010010011111010010",
   "01000000000001001110011011000100111000000010111110001001000100000010111110001001001101001111101000000",
   "01000000000001001111100110000100111100000011000011000010101100000011000011000011010000010000001110000",
   "01000000000001010000011111000101000000000011001000000001000000000011001000000001010011010101101111111",
   "01000000000001010001011110000101000100000011001101000011000100000011001101000011010110100000010001111",
   "01000000000001010010011011000101001000000011010010001001010000000011010010001001011001101111110111111",
   "01000000000001010011011110000101001100000011010111010011001100000011010111010011011101000100100110000",
   "01000000000001010100011010000101010000000011011100100001011000000011011100100001100000011110100000001",
   "01000000000001010101100001000101010100000011100001110011001100000011100001110011100011111101101010011",
   "01000000000001010110100001000101011000000011100111001001010000000011100111001001100111100010001000101",
   "01000000000001010111100101000101011100000011101100100011001000000011101100100011101011001011111111000",
   "01000000000001011000100111000101100000000011110010000001001000000011110010000001101110111011010001011",
   "01000000000001011001100000000101100100000011110111100011011100000011110111100011110010110000000011110",
   "01000000000001011010100010000101101000000011111101001001011100000011111101001001110110101010011010010",
   "01000000000001011011011101000101101100000100000010110011101100000100000010110011111010101010011000110",
   "01000000000001011100011101000101110000000100001000100001110000000100001000100001111110110000000011011",
   "01000000000001011101100011000101110100000100001110010011100100000100001110010100000010111011011110001",
   "01000000000001011110100110000101111000000100010100001001100100000100010100001010000111001100101100111",
   "01000000000001011111011111000101111100000100011010000011111000000100011010000100001011100011110011101",
   "01000000000001100000100000000110000000000100100000000001111100000100100000000010010000000000110110100",
   "01000000000001100001100011000110000100000100100110000011111000000100100110000100010100100011111001100",
   "01000000000001100010100010000110001000000100101100001010000000000100101100001010011001001101000000100",
   "01000000000001100011100011000110001100000100110010010100000000000100110010010100011101111100001111101",
   "01000000000001100100011111000110010000000100111000100010010000000100111000100010100010110001101010110",
   "01000000000001100101100000000110010100000100111110110100010100000100111110110100100111101101010110000",
   "01000000000001100110100101000110011000000101000101001010001100000101000101001010101100101111010101011",
   "01000000000001100111100000000110011100000101001011100100011100000101001011100100110001110111101100110",
   "01000000000001101000100011000110100000000101010010000010011100000101010010000010110111000110100000010",
   "01000000000001101001011011000110100100000101011000100100110100000101011000100100111100011011110011110",
   "01000000000001101010100101000110101000000101011111001010100000000101011111001011000001110111101011100",
   "01000000000001101011101000000110101100000101100101110100100000000101100101110101000111011010001011010",
   "01000000000001101100011111000110110000000101101100100010111100000101101100100011001101000011010111000",
   "01000000000001101101100111000110110100000101110011010100101100000101110011010101010010110011010011000",
   "01000000000001101110100110000110111000000101111010001010110100000101111010001011011000101010000011000",
   "01000000000001101111011100000110111100000110000001000101010100000110000001000101011110100111101011000",
   "01000000000001110000100100000111000000000110001000000011001000000110001000000011100100101100001111010",
   "01000000000001110001100000000111000100000110001111000101011000000110001111000101101010110111110011100",
   "01000000000001110010011101000111001000000110010110001011100100000110010110001011110001001010011011111",
   "01000000000001110011100000000111001100000110011101010101100100000110011101010101110111100100001100011",
   "01000000000001110100100010000111010000000110100100100011100100000110100100100011111110000101001001000",
   "01000000000001110101011101000111010100000110101011110101111000000110101011110110000100101101010101101",
   "01000000000001110110100100000111011000000110110011001011101100000110110011001100001011011100110110100",
   "01000000000001110111100101000111011100000110111010100101110100000110111010100110010010010011101111011",
   "01000000000001111000100010000111100000000111000010000100000000000111000010000100011001010010000100011",
   "01000000000001111001100100000111100100000111001001100110000100000111001001100110100000010111111001100",
   "01000000000001111010100111000111101000000111010001001100000100000111010001001100100111100101010010110",
   "01000000000001111011011101000111101100000111011000110110100100000111011000110110101110111010010100000",
   "01000000000001111100011111000111110000000111100000100100100100000111100000100100110110010111000001100",
   "01000000000001111101100110000111110100000111101000010110011100000111101000010110111101111011011111001",
   "01000000000001111110100000000111111000000111110000001100110100000111110000001101000101100111110000110",
   "01000000000001111111100100000111111100000111111000000110110000000111111000000111001101011011111010101",
   "01000000000010000000100000001000000000001000000000000101000100001000000000000101010101011000000000100",
   "01000000000010000001100100001000000100001000001000000111000000001000001000000111011101011100000110101",
   "01000000000010000010011110001000001000001000010000001101011000001000010000001101100101101000010000110",
   "01000000000010000011100101001000001100001000011000010111010000001000011000010111101101111100100011001",
   "01000000000010000100011101001000010000001000100000100101101100001000100000100101110110011001000001100",
   "01000000000010000101100000001000010100001000101000110111101100001000101000110111111110111101110000001",
   "01000000000010000110100100001000011000001000110001001101101100001000110001001110000111101010110010111",
   "01000000000010000111100110001000011100001000111001100111110000001000111001101000010000100000001101110",
   "01000000000010001000100110001000100000001001000010000101111000001001000010000110011001011110000100110",
   "01000000000010001001100101001000100100001001001010101000000100001001001010101000100010100100011011111",
   "01000000000010001010100010001000101000001001010011001110010100001001010011001110101011110011010111001",
   "01000000000010001011011100001000101100001001011011111000101100001001011011111000110101001010111010100",
   "01000000000010001100100100001000110000001001100100100110100100001001100100100110111110101011001010001",
   "01000000000010001101100110001000110100001001101101011000101000001001101101011001001000010100001001111",
   "01000000000010001110100111001000111000001001110110001110110000001001110110001111010010000101111101110",
   "01000000000010001111100010001000111100001001111111001001000100001001111111001001011100000000101001110",
   "01000000000010010000011101001001000000001010001000000111011100001010001000000111100110000100010001111",
   "01000000000010010001100001001001000100001010010001001001011100001010010001001001110000010000111010010",
   "01000000000010010010100000001001001000001010011010001111101000001010011010001111111010100110100110110",
   "01000000000010010011011101001001001100001010100011011001111100001010100011011010000101000101011011011",
   "01000000000010010100100011001001010000001010101100100111111000001010101100101000001111101101011100010",
   "01000000000010010101100010001001010100001010110101111010000100001010110101111010011010011110101101010",
   "01000000000010010110011111001001011000001010111111010000011000001010111111010000100101011001010010011",
   "01000000000010010111100001001001011100001011001000101010011100001011001000101010110000011101001111110",
   "01000000000010011000100001001001100000001011010010001000101000001011010010001000111011101010101001010",
   "01000000000010011001100111001001100100001011011011101010100100001011011011101011000111000001100011000",
   "01000000000010011010101001001001101000001011100101010000101100001011100101010001010010100010000000111",
   "01000000000010011011100100001001101100001011101110111011000100001011101110111011011110001100000110111",
   "01000000000010011100100101001001110000001011111000101001001100001011111000101001101001111111111001001",
   "01000000000010011101100000001001110100001100000010011011100100001100000010011011110101111101011011100",
   "01000000000010011110100100001001111000001100001100010001101000001100001100010010000010000100110010001",
   "01000000000010011111011101001001111100001100010110001100000100001100010110001100001110010110000000111",
   "01000000000010100000011111001010000000001100100000001010001100001100100000001010011010110001001011111",
   "01000000000010100001101000001010000100001100101010001100000100001100101010001100100111010110010111001",
   "01000000000010100010100110001010001000001100110100010010010100001100110100010010110100000101100110100",
   "01000000000010100011011111001010001100001100111110011100110100001100111110011101000000111110111110000",
   "01000000000010100100100111001010010000001101001000101010101100001101001000101011001110000010100001111",
   "01000000000010100101101010001010010100001101010010111100110100001101010010111101011011010000010101111",
   "01000000000010100110100000001010011000001101011101010011011000001101011101010011101000101000011110000",
   "01000000000010100111011110001010011100001101100111101101101100001101100111101101110110001010111110011",
   "01000000000010101000011111001010100000001101110010001011111000001101110010001100000011110111111011000",
   "01000000000010101001100011001010100100001101111100101101111100001101111100101110010001101111010111111",
   "01000000000010101010011101001010101000001110000111010100011000001110000111010100011111110001011000111",
   "01000000000010101011101010001010101100001110010001111110001000001110010001111110101101111110000010010",
   "01000000000010101100101001001010110000001110011100101100011000001110011100101100111100010101010111110",
   "01000000000010101101011100001010110100001110100111011111000100001110100111011111001010110111011101011",
   "01000000000010101110100101001010111000001110110010010101000000001110110010010101011001100100010111011",
   "01000000000010101111011110001010111100001110111101001111100000001110111101001111101000011100001001100",
   "01000000000010110000100111001011000000001111001000001101011000001111001000001101110111011110111000000",
   "01000000000010110001100011001011000100001111010011001111110000001111010011010000000110101100100110101",
   "01000000000010110010100001001011001000001111011110010110000100001111011110010110010110000101011001100",
   "01000000000010110011100010001011001100001111101001100000010100001111101001100000100101101001010100101",
   "01000000000010110100011111001011010000001111110100101110101000001111110100101110110101011000011100000",
   "01000000000010110101011111001011010100010000000000000000111000010000000000000001000101010010110011101",
   "01000000000010110110100010001011011000010000001011010111000100010000001011010111010101011000011111100",
   "01000000000010110111100010001011011100010000010110110001010100010000010110110001100101101001100011101",
   "01000000000010111000100000001011100000010000100010001111101000010000100010001111110110000110000100000",
   "01000000000010111001011101001011100100010000101101110010000000010000101101110010000110101110000100101",
   "01000000000010111010101001001011101000010000111001010111110100010000111001011000010111100001101001101",
   "01000000000010111011100101001011101100010001000101000010010000010001000101000010101000100000110110110",
   "01000000000010111100011111001011110000010001010000110000110000010001010000110000111001101011110000001",
   "01000000000010111101100010001011110100010001011100100010111000010001011100100011001011000010011001111",
   "01000000000010111110100100001011111000010001101000011001000100010001101000011001011100100100110111111",
   "01000000000010111111100101001011111100010001110100010011010100010001110100010011101110010011001110001",
   "01000000000011000000100001001100000000010010000000010001110000010010000000010010000000001101100000101",
   "01000000000011000001101001001100000100010010001100010011110000010010001100010100010010010011110011100",
   "01000000000011000010011110001100001000010010011000011010011100010010011000011010100100100110001010100",
   "01000000000011000011011110001100001100010010100100100100110000010010100100100100110111000100101001111",
   "01000000000011000100100101001100010000010010110000110010110000010010110000110011001001101111010101101",
   "01000000000011000101101010001100010100010010111101000100111000010010111101000101011100100110010001101",
   "01000000000011000110101010001100011000010011001001011011001100010011001001011011101111101001100001111",
   "01000000000011000111100011001100011100010011010101110101110000010011010101110110000010111001001010011",
   "01000000000011001000100010001100100000010011100010010100000100010011100010010100010110010101001111010",
   "01000000000011001001011111001100100100010011101110110110100000010011101110110110101001111101110100011",
   "01000000000011001010100011001100101000010011111011011100101100010011111011011100111101110010111101111",
   "01000000000011001011101011001100101100010100001000000110101100010100001000000111010001110100101111110",
   "01000000000011001100011111001100110000010100010100110101011100010100010100110101100110000011001101110",
   "01000000000011001101101010001100110100010100100001100111011000010100100001100111111010011110011100010",
   "01000000000011001110101010001100111000010100101110011101101100010100101110011110001111000110011111000",
   "01000000000011001111100010001100111100010100111011011000010100010100111011011000100011111011011010000",
   "01000000000011010000100001001101000000010101001000010110101100010101001000010110111000111101010001011",
   "01000000000011010001100101001101000100010101010101011000111000010101010101011001001110001100001001001",
   "01000000000011010010101100001101001000010101100010011110111100010101100010011111100011101000000101010",
   "01000000000011010011101001001101001100010101101111101001011000010101101111101001111001010001001001101",
   "01000000000011010100101100001101010000010101111100110111101000010101111100111000001111000111011010011",
   "01000000000011010101100101001101010100010110001010001010010000010110001010001010100101001010111011011",
   "01000000000011010110101100001101011000010110010111100000010100010110010111100000111011011011110000111",
   "01000000000011010111101010001101011100010110100100111010110000010110100100111011010001111001111110101",
   "01000000000011011000101001001101100000010110110010011001001000010110110010011001101000100101101000110",
   "01000000000011011001101100001101100100010110111111111011011000010110111111111011111111011110110011010",
   "01000000000011011010100100001101101000010111001101100010000100010111001101100010010110100101100010000",
   "01000000000011011011101000001101101100010111011011001100010000010111011011001100101101111001111001010",
   "01000000000011011100100010001101110000010111101000111010111000010111101000111011000101011011111100110",
   "01000000000011011101101000001101110100010111110110101101000000010111110110101101011101001011110000110",
   "01000000000011011110100010001101111000011000000100100011101000011000000100100011110101001001011001000",
   "01000000000011011111101000001101111100011000010010011101110000011000010010011110001101010100111001110",
   "01000000000011100000100010001110000000011000100000011100011000011000100000011100100101101110010110110",
   "01000000000011100001100111001110000100011000101110011110100100011000101110011110111110010101110100010",
   "01000000000011100010101101001110001000011000111100100100110000011000111100100101010111001011010110001",
   "01000000000011100011100010001110001100011001001010101111100100011001001010101111110000001111000000010",
   "01000000000011100100100010001110010000011001011000111101111100011001011000111110001001100000110110111",
   "01000000000011100101011111001110010100011001100111010000011100011001100111010000100011000000111101111",
   "01000000000011100110101000001110011000011001110101100110100000011001110101100110111100101111011001011",
   "01000000000011100111100011001110011100011010000100000001001000011010000100000001010110101100001101001",
   "01000000000011101000100011001110100000011010010010011111100000011010010010011111110000110111011101011",
   "01000000000011101001100011001110100100011010100001000001111100011010100001000010001011010001001110000",
   "01000000000011101010101010001110101000011010101111101000000100011010101111101000100101111001100011001",
   "01000000000011101011100010001110101100011010111110010010110100011010111110010011000000110000100000100",
   "01000000000011101100100000001110110000011011001101000001010100011011001101000001011011110110001010011",
   "01000000000011101101100110001110110100011011011011110011100000011011011011110011110111001010100100110",
   "01000000000011101110101000001110111000011011101010101001111000011011101010101010010010101101110011100",
   "01000000000011101111100001001110111100011011111001100100100100011011111001100100101110011111111010101",
   "01000000000011110000100011001111000000011100001000100010111100011100001000100011001010100000111110010",
   "01000000000011110001101011001111000100011100010111100101000100011100010111100101100110110001000010011",
   "01000000000011110010101110001111001000011100100110101011011100011100100110101100000011010000001010111",
   "01000000000011110011100110001111001100011100110101110110001100011100110101110110011111111110011011110",
   "01000000000011110100100101001111010000011101000101000100101100011101000101000100111100111011111001001",
   "01000000000011110101100111001111010100011101010100010111000100011101010100010111011010001000100111000",
   "01000000000011110110101110001111011000011101100011101101010000011101100011101101110111100100101001011",
   "01000000000011110111101101001111011100011101110011000111110000011101110011001000010101010000000100001",
   "01000000000011111000100011001111100000011110000010100110101000011110000010100110110011001010111011010",
   "01000000000011111001100111001111100100011110010010001000111100011110010010001001010001010101010011000",
   "01000000000011111010101110001111101000011110100001101111001000011110100001101111101111101111001111010",
   "01000000000011111011101100001111101100011110110001011001101100011110110001011010001110011000110011111",
   "01000000000011111100101100001111110000011111000001001000001100011111000001001000101101010010000101000",
   "01000000000011111101101011001111110100011111010000111010101100011111010000111011001100011011000110101",
   "01000000000011111110101100001111111000011111100000110001001000011111100000110001101011110011111100110",
   "01000000000011111111100101001111111100011111110000101011111100011111110000101100001011011100101011010",
   "01000000000100000000100110010000000000100000000000101010011000100000000000101010101011010101010110011",
   "01000000000100000001101001010000000100100000010000101100110000100000010000101101001011011110000010000",
   "01000000000100000010101101010000001000100000100000110011001000100000100000110011101011110110110010001",
   "01000000000100000011100010010000001100100000110000111110000100100000110000111110001100011111101010101",
   "01000000000100000100100010010000010000100001000001001100100100100001000001001100101101011000101111110",
   "01000000000100000101101110010000010100100001010001011110101000100001010001011111001110100010000101100",
   "01000000000100000110101100010000011000100001100001110101010000100001100001110101101111111011101111101",
   "01000000000100000111100110010000011100100001110010010000000000100001110010010000010001100101110010010",
   "01000000000100001000101100010000100000100010000010101110010100100010000010101110110011100000010001100",
   "01000000000100001001101101010000100100100010010011010000110100100010010011010001010101101011010001010",
   "01000000000100001010101000010000101000100010100011110111100000100010100011110111111000000110110101100",
   "01000000000100001011100100010000101100100010110100100010010000100010110100100010011010110011000010010",
   "01000000000100001100100101010000110000100011000101010000110000100011000101010000111101101111111011101",
   "01000000000100001101101110010000110100100011010110000010111100100011010110000011100000111101100101101",
   "01000000000100001110100110010000111000100011100110111001110100100011100110111010000100011100000100000",
   "01000000000100001111100100010000111100100011110111110100011100100011110111110100101000001011011011000",
   "01000000000100010000101001010001000000100100001000110010110100100100001000110011001100001011101110101",
   "01000000000100010001101010010001000100100100011001110101011000100100011001110101110000011101000010110",
   "01000000000100010010101101010001001000100100101010111011110100100100101010111100010100111111011011100",
   "01000000000100010011101010010001001100100100111100000110100000100100111100000110111001110010111100110",
   "01000000000100010100101010010001010000100101001101010101000100100101001101010101011110110111101010101",
   "01000000000100010101100101010001010100100101011110100111111000100101011110101000000100001101101001000",
   "01000000000100010110101111010001011000100101101111111110000100100101101111111110101001110100111100001",
   "01000000000100010111110000010001011100100110000001011000101000100110000001011001001111101101100111110",
   "01000000000100011000100111010001100000100110010010110111100100100110010010110111110101110111101111111",
   "01000000000100011001101111010001100100100110100100011001111000100110100100011010011100010011011000110",
   "01000000000100011010101011010001101000100110110110000000101000100110110110000001000011000000100110001",
   "01000000000100011011101001010001101100100111000111101011010100100111000111101011101001111111011100001",
   "01000000000100011100101001010001110000100111011001011001111100100111011001011010010001001111111110110",
   "01000000000100011101101001010001110100100111101011001100100100100111101011001100111000110010010010000",
   "01000000000100011110101010010001111000100111111101000011001000100111111101000011100000100110011001111",
   "01000000000100011111101010010001111100101000001110111101110000101000001110111110001000101100011010011",
   "01000000000100100000101100010010000000101000100000111100010100101000100000111100110001000100010111100",
   "01000000000100100001101101010010000100101000110010111110111100101000110010111111011001101110010101010",
   "01000000000100100010101100010010001000101001000101000101101000101001000101000110000010101010010111101",
   "01000000000100100011100111010010001100101001010111010000011100101001010111010000101011111000100010101",
   "01000000000100100100110000010010010000101001101001011110110000101001101001011111010101011000111010011",
   "01000000000100100101100111010010010100101001111011110001110000101001111011110001111111001011100010101",
   "01000000000100100110101001010010011000101010001110001000010100101010001110001000101001010000011111101",
   "01000000000100100111100111010010011100101010100000100011000100101010100000100011010011100111110101010",
   "01000000000100101000101111010010100000101010110011000001011100101010110011000001111110010001100111101",
   "01000000000100101001100101010010100100101011000101100100100000101011000101100100101001001101111010100",
   "01000000000100101010110000010010101000101011011000001010110000101011011000001011010100011100110010010",
   "01000000000100101011101000010010101100101011101010110101110000101011101010110101111111111110010010100",
   "01000000000100101100100110010010110000101011111101100100100000101011111101100100101011110010011111100",
   "01000000000100101101101101010010110100101100010000010110111100101100010000010111010111111001011101010",
   "01000000000100101110101011010010111000101100100011001101101100101100100011001110000100010011001111101",
   "01000000000100101111110001010010111100101100110110001000001100101100110110001000110000111111111010110",
   "01000000000100110000101100010011000000101101001001000111000100101101001001000111011101111111100010100",
   "01000000000100110001101100010011000100101101011100001001110000101101011100001010001011010010001011000",
   "01000000000100110010100101010011001000101101101111010000110000101101101111010000111000110111111000001",
   "01000000000100110011110000010011001100101110000010011011000100101110000010011011100110110000101110001",
   "01000000000100110100101101010011010000101110010101101001111000101110010101101010010100111100110000110",
   "01000000000100110101110000010011010100101110101000111100100000101110101000111101000011011100000100001",
   "01000000000100110110101000010011011000101110111100010011100100101110111100010011110010001110101100001",
   "01000000000100110111101110010011011100101111001111101110000100101111001111101110100001010100101101000",
   "01000000000100111000100111010011100000101111100011001101000100101111100011001101010000101110001010100",
   "01000000000100111001101111010011100100101111110110101111100000101111110110110000000000011011001000111",
   "01000000000100111010101011010011101000110000001010010110011100110000001010010110110000011011101011111",
   "01000000000100111011110011010011101100110000011110000000111000110000011110000001100000101111110111110",
   "01000000000100111100101101010011110000110000110001101111111000110000110001110000010001010111110000010",
   "01000000000100111101110010010011110100110001000101100010011100110001000101100011000010010011011001101",
   "01000000000100111110101001010011111000110001011001011001100100110001011001011001110011100010110111101",
   "01000000000100111111101011010011111100110001101101010100010000110001101101010100100101000110001110100",
   "01000000000101000000101011010100000000110010000001010011000100110010000001010011010110111101100010001",
   "01000000000101000001110100010100000100110010010101010101100000110010010101010110001001001000110110101",
   "01000000000101000010101011010100001000110010101001011100101000110010101001011100111011101000001111110",
   "01000000000101000011101010010100001100110010111101100111011100110010111101100111101110011011110001110",
   "01000000000101000100100111010100010000110011010001110110011000110011010001110110100001100011100000100",
   "01000000000101000101101010010100010100110011100110001001000100110011100110001001010100111111100000001",
   "01000000000101000110101001010100011000110011111010011111111100110011111010100000001000101111110100100",
   "01000000000101000111101110010100011100110100001110111010100100110100001110111010111100110100100001110",
   "01000000000101001000101011010100100000110100100011011001100000110100100011011001110001001101101011110",
   "01000000000101001001101100010100100100110100110111111100010000110100110111111100100101111011010110101",
   "01000000000101001010101000010100101000110101001100100011010000110101001100100011011010111101100110010",
   "01000000000101001011100111010100101100110101100001001110001000110101100001001110010000010100011110110",
   "01000000000101001100101011010100110000110101110101111100110100110101110101111101000110000000000100001",
   "01000000000101001101110010010100110100110110001010101111011000110110001010101111111100000000011010011",
   "01000000000101001110101110010100111000110110011111100110011000110110011111100110110010010101100101011",
   "01000000000101001111110000010100111100110110110100100001001100110110110100100001101000111111101001010",
   "01000000000101010000110001010101000000110111001001100000000000110111001001100000011111111110101010000",
   "01000000000101010001110010010101000100110111011110100010110100110111011110100011010111010010101011101",
   "01000000000101010010101010010101001000110111110011101010000000110111110011101010001110111011110010000",
   "01000000000101010011101101010101001100111000001000110100110000111000001000110101000110111010000001011",
   "01000000000101010100110011010101010000111000011110000011011100111000011110000011111111001101011101101",
   "01000000000101010101101010010101010100111000110011010110101100111000110011010110110111110110001010101",
   "01000000000101010110101010010101011000111001001000101101100100111001001000101101110000110100001100101",
   "01000000000101010111101011010101011100111001011110001000011100111001011110001000101010000111100111100",
   "01000000000101011000110101010101100000111001110011100110111100111001110011100111100011110000011111011",
   "01000000000101011001101101010101100100111010001001001010001000111010001001001010011101101110111000000",
   "01000000000101011010110100010101101000111010011110110000110100111010011110110001011000000010110101101",
   "01000000000101011011110011010101101100111010110100011011110000111010110100011100010010101100011100001",
   "01000000000101011100110000010101110000111011001010001010110100111011001010001011001101101011101111100",
   "01000000000101011101110011010101110100111011011111111101101000111011011111111110001001000000110011111",
   "01000000000101011110101111010101111000111011110101110100101100111011110101110101000100101011101101001",
   "01000000000101011111110100010101111100111100001011101111011100111100001011110000000000101100011111011",
   "01000000000101100000110001010110000000111100100001101110100000111100100001101110111101000011001110100",
   "01000000000101100001110101010110000100111100110111110001010100111100110111110001111001101111111110101",
   "01000000000101100010101110010110001000111101001101111000100000111101001101111000110110110010110011101",
   "01000000000101100011101111010110001100111101100100000011011100111101100100000011110100001011110001101",
   "01000000000101100100110011010110010000111101111010010010010000111101111010010010110001111010111100101",
   "01000000000101100101101110010110010100111110010000100101011100111110010000100101110000000000011000100",
   "01000000000101100110101100010110011000111110100110111100100000111110100110111100101110011100001001011",
   "01000000000101100111101100010110011100111110111101010111100000111110111101010111101101001110010011010",
   "01000000000101101000101011010110100000111111010011110110100000111111010011110110101100010110111010001",
   "01000000000101101001101100010110100100111111101010011001011100111111101010011001101011110110000010000",
   "01000000000101101010110010010110101001000000000001000000010001000000000001000000101011101011101110111",
   "01000000000101101011110011010110101101000000010111101011001101000000010111101011101011111000000100110",
   "01000000000101101100110101010110110001000000101110011010001001000000101110011010101100011011000111101",
   "01000000000101101101111000010110110101000001000101001101000101000001000101001101101101010100111011100",
   "01000000000101101110110100010110111001000001011100000100001101000001011100000100101110100101100100011",
   "01000000000101101111110010010110111101000001110010111111010101000001110010111111110000001101000110010",
   "01000000000101110000101101010111000001000010001001111110100101000010001001111110110010001011100101001",
   "01000000000101110001101111010111000101000010100001000001100001000010100001000001110100100001000101001",
   "01000000000101110010101111010111001001000010111000001000100101000010111000001000110111001101101010001",
   "01000000000101110011110111010111001101000011001111010011010101000011001111010011111010010001011000010",
   "01000000000101110100101011010111010001000011100110100010110101000011100110100010111101101100010011010",
   "01000000000101110101110101010111010101000011111101110101100001000011111101110110000001011110011111100",
   "01000000000101110110101001010111011001000100010101001101000001000100010101001101000101101000000000101",
   "01000000000101110111110110010111011101000100101100100111101001000100101100101000001010001000111011000",
   "01000000000101111000110110010111100001000101000100000110101101000101000100000111001111000001010010011",
   "01000000000101111001101110010111100101000101011011101010000101000101011011101010010100010001001010110",
   "01000000000101111010101100010111101001000101110011010001010001000101110011010001011001111000101000010",
   "01000000000101111011101101010111101101000110001010111100010101000110001010111100011111110111101110111",
   "01000000000101111100110001010111110001000110100010101011010001000110100010101011100110001110100010101",
   "01000000000101111101110111010111110101000110111010011110001001000110111010011110101100111101000111100",
   "01000000000101111110110010010111111001000111010010010101011101000111010010010101110100000011100001011",
   "01000000000101111111101111010111111101000111101010010000101101000111101010010000111011100001110100011",
   "01000000000110000000110110011000000001001000000010001111100001001000000010010000000011011000000100101",
   "01000000000110000001110011011000000101001000011010010010110001001000011010010011001011100110010101111",
   "01000000000110000010110001011000001001001000110010011010000001001000110010011010010100001100101100010",
   "01000000000110000011111010011000001101001001001010100100110101001001001010100101011101001011001011111",
   "01000000000110000100110000011000010001001001100010110100010101001001100010110100100110100001111000100",
   "01000000000110000101110100011000010101001001111011000111010101001001111011000111110000010000110110011",
   "01000000000110000110110011011000011001001010010011011110100001001010010011011110111010011000001001011",
   "01000000000110000111110010011000011101001010101011111001110001001010101011111010000100110111110101100",
   "01000000000110001000110110011000100001001011000100011000110001001011000100011001001111101111111110111",
   "01000000000110001001110110011000100101001011011100111011111101001011011100111100011011000000101001011",
   "01000000000110001010110001011000101001001011110101100011010101001011110101100011100110101001111001000",
   "01000000000110001011110001011000101101001100001110001110100001001100001110001110110010101011110001111",
   "01000000000110001100110111011000110001001100100110111101011101001100100110111101111111000110011000000",
   "01000000000110001101111000011000110101001100111111110000101001001100111111110001001011111001101111010",
   "01000000000110001110110001011000111001001101011000101000001001001101011000101000011001000101111011101",
   "01000000000110001111111001011000111101001101110001100011000001001101110001100011100110101011000001011",
   "01000000000110010000111011011001000001001110001010100010001101001110001010100010110100101001000100010",
   "01000000000110010001101110011001000101001110100011100101111001001110100011100110000011000000001000010",
   "01000000000110010010110101011001001001001110111100101100111001001110111100101101010001110000010001101",
   "01000000000110010011111011011001001101001111010101110111111001001111010101111000100000111001100100010",
   "01000000000110010100110110011001010001001111101111000111010101001111101111000111110000011100000100000",
   "01000000000110010101101111011001010101010000001000011010110101010000001000011011000000010111110101000",
   "01000000000110010110111010011001011001010000100001110001101101010000100001110010010000101100111011011",
   "01000000000110010111110001011001011101010000111011001101010001010000111011001101100001011011011010111",
   "01000000000110011000111001011001100001010001010100101100010001010001010100101100110010100011010111110",
   "01000000000110011001101110011001100101010001101110001111111101010001101110010000000100000100110101110",
   "01000000000110011010101111011001101001010010000111110111001101010010000111110111010101111111111001001",
   "01000000000110011011111010011001101101010010100001100010000101010010100001100010101000010100100101111",
   "01000000000110011100110011011001110001010010111011010001101001010010111011010001111011000010111111110",
   "01000000000110011101110010011001110101010011010101000100111101010011010101000101001110001011001011000",
   "01000000000110011110101111011001111001010011101110111100011001010011101110111100100001101101001011100",
   "01000000000110011111110011011001111101010100001000110111100101010100001000110111110101101001000101011",
   "01000000000110100000111101011010000001010100100010110110100001010100100010110111001001111110111100101",
   "01000000000110100001110000011010000101010100111100111010010101010100111100111010011110101110110101000",
   "01000000000110100010110111011010001001010101010111000001011001010101010111000001110011111000110010111",
   "01000000000110100011110100011010001101010101110001001100110101010101110001001101001001011100111010000",
   "01000000000110100100110111011010010001010110001011011100000101010110001011011100011111011011001110100",
   "01000000000110100101111011011010010101010110100101101111010001010110100101101111110101110011110100011",
   "01000000000110100110110100011010011001010111000000000110111001010111000000000111001100100110101111100",
   "01000000000110100111101111011010011101010111011010100010011101010111011010100010100011110100000100000",
   "01000000000110101000111011011010100001010111110101000001011001010111110101000001111011011011110110000",
   "01000000000110101001111000011010100101011000001111100100111001011000001111100101010011011110001001010",
   "01000000000110101010110011011010101001011000101010001100011101011000101010001100101011111011000001111",
   "01000000000110101011111100011010101101011001000100110111100001011001000100111000000100110010100100000",
   "01000000000110101100110100011010110001011001011111100111001101011001011111100111011110000100110011011",
   "01000000000110101101111000011010110101011001111010011010011101011001111010011010110111110001110100010",
   "01000000000110101110111001011010111001011010010101010001110101011010010101010010010001111001101010100",
   "01000000000110101111110111011010111101011010110000001101010101011010110000001101101100011100011010001",
   "01000000000110110000111011011011000001011011001011001100100101011011001011001101000111011010000111010",
   "01000000000110110001111101011011000101011011100110001111111101011011100110010000100010110010110101110",
   "01000000000110110010111000011011001001011100000001010111100101011100000001010111111110100110101001101",
   "01000000000110110011111000011011001101011100011100100011000001011100011100100011011010110101100111000",
   "01000000000110110100110010011011010001011100110111110010101101011100110111110010110111011111110001110",
   "01000000000110110101110001011011010101011101010011000110001101011101010011000110010100100101001110000",
   "01000000000110110110110101011011011001011101101110011101100001011101101110011101110010000101111111110",
   "01000000000110110111111100011011011101011110001001111000101101011110001001111001010000000010001011000",
   "01000000000110111000111000011011100001011110100101011000010101011110100101011000101110011001110011101",
   "01000000000110111001111000011011100101011111000000111011110101011111000000111100001101001100111101110",
   "01000000000110111010111010011011101001011111011100100011010001011111011100100011101100011011101101011",
   "01000000000110111011111011011011101101011111111000001110101101011111111000001111001100000110000110100",
   "01000000000110111100111111011011110001100000010011111110000101100000010011111110101100001100001101001",
   "01000000000110111101110010011011110101100000101111110010000101100000101111110010001100101110000101001",
   "01000000000110111110110101011011111001100001001011101001100001100001001011101001101101101011110010110",
   "01000000000110111111111111011011111101100001100111100100101001100001100111100101001111000101011010000",
   "01000000000111000000111011011100000001100010000011100100010101100010000011100100110000111010111110101",
   "01000000000111000001110100011100000101100010011111101000001001100010011111101000010011001100100100110",
   "01000000000111000010110101011100001001100010111011101111101001100010111011101111110101111010010000100",
   "01000000000111000011111110011100001101100011010111111010110101100011010111111011011001000100000101111",
   "01000000000111000100110100011100010001100011110100001010110001100011110100001010111100101010001000101",
   "01000000000111000101110011011100010101100100010000011110011001100100010000011110100000101100011101000",
   "01000000000111000110110110011100011001100100101100110101110101100100101100110110000101001011000111000",
   "01000000000111000111110100011100011101100101001001010001100001100101001001010001101010000110001010100",
   "01000000000111001000110100011100100001100101100101110001000101100101100101110001001111011101101011101",
   "01000000000111001001111000011100100101100110000010010100100001100110000010010100110101010001101110011",
   "01000000000111001010110101011100101001100110011110111100010001100110011110111100011011100010010110101",
   "01000000000111001100000000011100101101100110111011100111011101100110111011101000000010001111101000101",
   "01000000000111001100111101011100110001100111011000010111001001100111011000010111101001011001101000001",
   "01000000000111001101111111011100110101100111110101001010101101100111110101001011010001000000011001010",
   "01000000000111001110111111011100111001101000010010000010010101101000010010000010111001000100000000000",
   "01000000000111010000000000011100111101101000101110111101111101101000101110111110100001100100100000011",
   "01000000000111010000111110011101000001101001001011111101101001101001001011111110001010100001111110011",
   "01000000000111010001111100011101000101101001101001000001011001101001101001000001110011111100011110000",
   "01000000000111010010110111011101001001101010000110001001010001101010000110001001011101110100000011010",
   "01000000000111010011111011011101001101101010100011010100110001101010100011010101001000001000110010010",
   "01000000000111010100111010011101010001101011000000100100011101101011000000100100110010111010101110111",
   "01000000000111010101110101011101010101101011011101111000010101101011011101111000011110001001111101001",
   "01000000000111010110111001011101011001101011111011001111111001101011111011010000001001110110100001001",
   "01000000000111011000000001011101011101101100011000101011010001101100011000101011110110000000011110111",
   "01000000000111011000110110011101100001101100110110001011011001101100110110001011100010100111111010001",
   "01000000000111011001111101011101100101101101010011101110110101101101010011101111001111101100110111010",
   "01000000000111011010111010011101101001101101110001010110101001101101110001010110111101001111011010000",
   "01000000000111011011111101011101101101101110001111000010010001101110001111000010101011001111100110100",
   "01000000000111011101000001011101110001101110101100110001110101101110101100110010011001101101100000110",
   "01000000000111011101111010011101110101101111001010100101110101101111001010100110001000101001001100101",
   "01000000000111011110110101011101111001101111101000011101110001101111101000011101111000000010101110010",
   "01000000000111011111111111011101111101110000000110011001001001110000000110011001100111111010001001110",
   "01000000000111100000111101011110000001110000100100011001000001110000100100011001011000001111100010111",
   "01000000000111100001110110011110000101110001000010011101000001110001000010011101001001000010111101110",
   "01000000000111100010111110011110001001110001100000100100100001110001100000100100111010010100011110100",
   "01000000000111100100000000011110001101110001111110110000001101110001111110110000101100000100001001000",
   "01000000000111100101000001011110010001110010011100111111111101110010011101000000011110010010000001010",
   "01000000000111100101111011011110010101110010111011010011111101110010111011010100010000111110001011010",
   "01000000000111100111000010011110011001110011011001101011100001110011011001101100000100001000101011001",
   "01000000000111101000000000011110011101110011111000000111011001110011111000000111110111110001100100110",
   "01000000000111101000111010011110100001110100010110100111011101110100010110100111101011111000111100001",
   "01000000000111101001111001011110100101110100110101001011010101110100110101001011100000011110110101011",
   "01000000000111101010111100011110101001110101010011110011000001110101010011110011010101100011010100100",
   "01000000000111101011111001011110101101110101110010011111000001110101110010011111001011000110011101011",
   "01000000000111101101000101011110110001110110010001001110011001110110010001001111000001001000010100010",
   "01000000000111101101111001011110110101110110110000000010101101110110110000000010110111101000111100110",
   "01000000000111101110111100011110111001110111001110111010011101110111001110111010101110101000011011010",
   "01000000000111110000000000011110111101110111101101110110001001110111101101110110100110000110110011101",
   "01000000000111110000111000011111000001111000001100110110010101111000001100110110011110000100001001110",
   "01000000000111110001111101011111000101111000101011111010000001111000101011111010010110100000100001111",
   "01000000000111110011000011011111001001111001001011000001101101111001001011000010001111011011111111111",
   "01000000000111110100000011011111001101111001101010001101100101111001101010001110001000110110100111110",
   "01000000000111110101000101011111010001111010001001011101011101111010001001011110000010110000011101100",
   "01000000000111110110000001011111010101111010101000110001100001111010101000110001111101001001100101001",
   "01000000000111110111000011011111011001111011001000001001010101111011001000001001111000000010000010110",
   "01000000000111111000000011011111011101111011100111100101010001111011100111100101110011011001111010010",
   "01000000000111111000111101011111100001111100000111000101011101111100000111000101101111010001001111101",
   "01000000000111111001111101011111100101111100100110101001011001111100100110101001101011101000000111000",
   "01000000000111111011000101011111101001111101000110010001000101111101000110010001101000011110100100011",
   "01000000000111111100000000011111101101111101100101111101001101111101100101111101100101110100101011101",
   "01000000000111111101000011011111110001111110000101101101000101111110000101101101100011101010100000111",
   "01000000000111111110000101011111110101111110100101100000111101111110100101100001100010000000001000001",
   "01000000000111111110111110011111111001111111000101011001001101111111000101011001100000110101100101010",
   "01000000000111111111111001011111111101111111100101010101011001111111100101010101100000001010111100011",
      others => (others => '0'));
      	begin 
      return tmp;
      end init_rom;
	signal rom : memory_t := init_rom;
   signal Y0 :  std_logic_vector(100 downto 0);
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
--                           IntAdder_32_f400_uid79
--                     (IntAdderClassical_32_f400_uid81)
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

entity IntAdder_32_f400_uid79 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(31 downto 0);
          Y : in  std_logic_vector(31 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(31 downto 0)   );
end entity;

architecture arch of IntAdder_32_f400_uid79 is
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
--                IntMultiplier_UsingDSP_25_26_26_signed_uid41
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Kinga Illyes, Bogdan Popa, Bogdan Pasca, 2012
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;
library std;
use std.textio.all;
library work;

entity IntMultiplier_UsingDSP_25_26_26_signed_uid41 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(24 downto 0);
          Y : in  std_logic_vector(25 downto 0);
          R : out  std_logic_vector(25 downto 0)   );
end entity;

architecture arch of IntMultiplier_UsingDSP_25_26_26_signed_uid41 is
   component Compressor_3_2 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntAdder_32_f400_uid79 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(31 downto 0);
             Y : in  std_logic_vector(31 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(31 downto 0)   );
   end component;

   component SmallMultTableP3x3r6XuYs is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(5 downto 0);
             Y : out  std_logic_vector(5 downto 0)   );
   end component;

   component SmallMultTableP3x3r6XuYu is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(5 downto 0);
             Y : out  std_logic_vector(5 downto 0)   );
   end component;

signal XX_m42 :  std_logic_vector(25 downto 0);
signal YY_m42 :  std_logic_vector(24 downto 0);
signal Xp_m42b44 :  std_logic_vector(2 downto 0);
signal Yp_m42b44 :  std_logic_vector(8 downto 0);
signal x_m42b44_0 :  std_logic_vector(2 downto 0);
signal y_m42b44_0 :  std_logic_vector(2 downto 0);
signal y_m42b44_1 :  std_logic_vector(2 downto 0);
signal y_m42b44_2 :  std_logic_vector(2 downto 0);
signal Y0X0_44_m42 :  std_logic_vector(5 downto 0);
signal PP44X0Y0_m42 :  std_logic_vector(5 downto 0);
signal heap_bh43_w0_0 : std_logic;
signal heap_bh43_w1_0 : std_logic;
signal Y1X0_44_m42 :  std_logic_vector(5 downto 0);
signal PP44X0Y1_m42 :  std_logic_vector(5 downto 0);
signal heap_bh43_w0_1 : std_logic;
signal heap_bh43_w1_1 : std_logic;
signal heap_bh43_w2_0 : std_logic;
signal heap_bh43_w3_0 : std_logic;
signal heap_bh43_w4_0 : std_logic;
signal Y2X0_44_m42 :  std_logic_vector(5 downto 0);
signal PP44X0Y2_m42 :  std_logic_vector(5 downto 0);
signal heap_bh43_w3_1 : std_logic;
signal heap_bh43_w4_1 : std_logic;
signal heap_bh43_w5_0 : std_logic;
signal heap_bh43_w6_0 : std_logic;
signal heap_bh43_w7_0 : std_logic;
signal DSP_bh43_ch0_0 :  std_logic_vector(42 downto 0);
signal heap_bh43_w31_0, heap_bh43_w31_0_d1 : std_logic;
signal heap_bh43_w30_0, heap_bh43_w30_0_d1 : std_logic;
signal heap_bh43_w29_0, heap_bh43_w29_0_d1 : std_logic;
signal heap_bh43_w28_0, heap_bh43_w28_0_d1 : std_logic;
signal heap_bh43_w27_0, heap_bh43_w27_0_d1 : std_logic;
signal heap_bh43_w26_0, heap_bh43_w26_0_d1 : std_logic;
signal heap_bh43_w25_0, heap_bh43_w25_0_d1 : std_logic;
signal heap_bh43_w24_0, heap_bh43_w24_0_d1 : std_logic;
signal heap_bh43_w23_0, heap_bh43_w23_0_d1 : std_logic;
signal heap_bh43_w22_0, heap_bh43_w22_0_d1 : std_logic;
signal heap_bh43_w21_0, heap_bh43_w21_0_d1 : std_logic;
signal heap_bh43_w20_0, heap_bh43_w20_0_d1 : std_logic;
signal heap_bh43_w19_0, heap_bh43_w19_0_d1 : std_logic;
signal heap_bh43_w18_0, heap_bh43_w18_0_d1 : std_logic;
signal heap_bh43_w17_0, heap_bh43_w17_0_d1 : std_logic;
signal heap_bh43_w16_0, heap_bh43_w16_0_d1 : std_logic;
signal heap_bh43_w15_0, heap_bh43_w15_0_d1 : std_logic;
signal heap_bh43_w14_0, heap_bh43_w14_0_d1 : std_logic;
signal heap_bh43_w13_0, heap_bh43_w13_0_d1 : std_logic;
signal heap_bh43_w12_0, heap_bh43_w12_0_d1 : std_logic;
signal heap_bh43_w11_0, heap_bh43_w11_0_d1 : std_logic;
signal heap_bh43_w10_0, heap_bh43_w10_0_d1 : std_logic;
signal heap_bh43_w9_0, heap_bh43_w9_0_d1 : std_logic;
signal heap_bh43_w8_0, heap_bh43_w8_0_d1 : std_logic;
signal heap_bh43_w7_1, heap_bh43_w7_1_d1 : std_logic;
signal heap_bh43_w6_1, heap_bh43_w6_1_d1 : std_logic;
signal heap_bh43_w5_1, heap_bh43_w5_1_d1 : std_logic;
signal heap_bh43_w4_2, heap_bh43_w4_2_d1 : std_logic;
signal heap_bh43_w3_2, heap_bh43_w3_2_d1 : std_logic;
signal heap_bh43_w2_1, heap_bh43_w2_1_d1 : std_logic;
signal heap_bh43_w1_2, heap_bh43_w1_2_d1 : std_logic;
signal heap_bh43_w0_2, heap_bh43_w0_2_d1 : std_logic;
signal DSP_bh43_ch1_0 :  std_logic_vector(42 downto 0);
signal heap_bh43_w17_1, heap_bh43_w17_1_d1 : std_logic;
signal heap_bh43_w16_1, heap_bh43_w16_1_d1 : std_logic;
signal heap_bh43_w15_1, heap_bh43_w15_1_d1 : std_logic;
signal heap_bh43_w14_1, heap_bh43_w14_1_d1 : std_logic;
signal heap_bh43_w13_1, heap_bh43_w13_1_d1 : std_logic;
signal heap_bh43_w12_1, heap_bh43_w12_1_d1 : std_logic;
signal heap_bh43_w11_1, heap_bh43_w11_1_d1 : std_logic;
signal heap_bh43_w10_1, heap_bh43_w10_1_d1 : std_logic;
signal heap_bh43_w9_1, heap_bh43_w9_1_d1 : std_logic;
signal heap_bh43_w8_1, heap_bh43_w8_1_d1 : std_logic;
signal heap_bh43_w7_2, heap_bh43_w7_2_d1 : std_logic;
signal heap_bh43_w6_2, heap_bh43_w6_2_d1 : std_logic;
signal heap_bh43_w5_2, heap_bh43_w5_2_d1 : std_logic;
signal heap_bh43_w4_3, heap_bh43_w4_3_d1 : std_logic;
signal heap_bh43_w3_3, heap_bh43_w3_3_d1 : std_logic;
signal heap_bh43_w2_2, heap_bh43_w2_2_d1 : std_logic;
signal heap_bh43_w1_3, heap_bh43_w1_3_d1 : std_logic;
signal heap_bh43_w0_3, heap_bh43_w0_3_d1 : std_logic;
signal heap_bh43_w5_3 : std_logic;
signal heap_bh43_w7_3 : std_logic;
signal heap_bh43_w8_2 : std_logic;
signal heap_bh43_w9_2 : std_logic;
signal heap_bh43_w10_2 : std_logic;
signal heap_bh43_w11_2 : std_logic;
signal heap_bh43_w12_2 : std_logic;
signal heap_bh43_w13_2 : std_logic;
signal heap_bh43_w14_2 : std_logic;
signal heap_bh43_w15_2 : std_logic;
signal heap_bh43_w16_2 : std_logic;
signal heap_bh43_w18_1, heap_bh43_w18_1_d1 : std_logic;
signal heap_bh43_w19_1, heap_bh43_w19_1_d1 : std_logic;
signal heap_bh43_w20_1, heap_bh43_w20_1_d1 : std_logic;
signal heap_bh43_w21_1, heap_bh43_w21_1_d1 : std_logic;
signal heap_bh43_w22_1, heap_bh43_w22_1_d1 : std_logic;
signal heap_bh43_w23_1, heap_bh43_w23_1_d1 : std_logic;
signal heap_bh43_w24_1, heap_bh43_w24_1_d1 : std_logic;
signal heap_bh43_w25_1, heap_bh43_w25_1_d1 : std_logic;
signal heap_bh43_w26_1, heap_bh43_w26_1_d1 : std_logic;
signal heap_bh43_w27_1, heap_bh43_w27_1_d1 : std_logic;
signal heap_bh43_w28_1, heap_bh43_w28_1_d1 : std_logic;
signal heap_bh43_w29_1, heap_bh43_w29_1_d1 : std_logic;
signal heap_bh43_w30_1, heap_bh43_w30_1_d1 : std_logic;
signal heap_bh43_w31_1, heap_bh43_w31_1_d1 : std_logic;
signal inAdder0_bh43_0, inAdder0_bh43_0_d1 :  std_logic_vector(17 downto 0);
signal inAdder1_bh43_0, inAdder1_bh43_0_d1 :  std_logic_vector(17 downto 0);
signal cin_bh43_0, cin_bh43_0_d1 : std_logic;
signal outAdder_bh43_0 :  std_logic_vector(17 downto 0);
signal heap_bh43_w0_4 : std_logic;
signal heap_bh43_w1_4 : std_logic;
signal heap_bh43_w2_3 : std_logic;
signal heap_bh43_w3_4 : std_logic;
signal heap_bh43_w4_4 : std_logic;
signal heap_bh43_w5_4 : std_logic;
signal heap_bh43_w6_3 : std_logic;
signal heap_bh43_w7_4 : std_logic;
signal heap_bh43_w8_3 : std_logic;
signal heap_bh43_w9_3 : std_logic;
signal heap_bh43_w10_3 : std_logic;
signal heap_bh43_w11_3 : std_logic;
signal heap_bh43_w12_3 : std_logic;
signal heap_bh43_w13_3 : std_logic;
signal heap_bh43_w14_3 : std_logic;
signal heap_bh43_w15_3 : std_logic;
signal heap_bh43_w16_3 : std_logic;
signal heap_bh43_w17_2 : std_logic;
signal CompressorIn_bh43_0_0 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh43_0_0 :  std_logic_vector(1 downto 0);
signal heap_bh43_w0_5 : std_logic;
signal heap_bh43_w1_5, heap_bh43_w1_5_d1 : std_logic;
signal CompressorIn_bh43_1_1 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh43_1_1 :  std_logic_vector(1 downto 0);
signal heap_bh43_w1_6, heap_bh43_w1_6_d1 : std_logic;
signal heap_bh43_w2_4, heap_bh43_w2_4_d1 : std_logic;
signal CompressorIn_bh43_2_2 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh43_2_2 :  std_logic_vector(1 downto 0);
signal heap_bh43_w2_5, heap_bh43_w2_5_d1 : std_logic;
signal heap_bh43_w3_5, heap_bh43_w3_5_d1 : std_logic;
signal CompressorIn_bh43_3_3 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh43_3_3 :  std_logic_vector(1 downto 0);
signal heap_bh43_w3_6, heap_bh43_w3_6_d1 : std_logic;
signal heap_bh43_w4_5, heap_bh43_w4_5_d1 : std_logic;
signal CompressorIn_bh43_4_4 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh43_4_4 :  std_logic_vector(1 downto 0);
signal heap_bh43_w4_6, heap_bh43_w4_6_d1 : std_logic;
signal heap_bh43_w5_5, heap_bh43_w5_5_d1 : std_logic;
signal CompressorIn_bh43_5_5 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh43_5_5 :  std_logic_vector(1 downto 0);
signal heap_bh43_w5_6, heap_bh43_w5_6_d1 : std_logic;
signal heap_bh43_w6_4, heap_bh43_w6_4_d1 : std_logic;
signal CompressorIn_bh43_6_6 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh43_6_6 :  std_logic_vector(1 downto 0);
signal heap_bh43_w6_5, heap_bh43_w6_5_d1 : std_logic;
signal heap_bh43_w7_5, heap_bh43_w7_5_d1 : std_logic;
signal CompressorIn_bh43_7_7 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh43_7_7 :  std_logic_vector(1 downto 0);
signal heap_bh43_w7_6, heap_bh43_w7_6_d1 : std_logic;
signal heap_bh43_w8_4, heap_bh43_w8_4_d1 : std_logic;
signal CompressorIn_bh43_8_8 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh43_8_8 :  std_logic_vector(1 downto 0);
signal heap_bh43_w8_5, heap_bh43_w8_5_d1 : std_logic;
signal heap_bh43_w9_4, heap_bh43_w9_4_d1 : std_logic;
signal CompressorIn_bh43_9_9 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh43_9_9 :  std_logic_vector(1 downto 0);
signal heap_bh43_w9_5, heap_bh43_w9_5_d1 : std_logic;
signal heap_bh43_w10_4, heap_bh43_w10_4_d1 : std_logic;
signal CompressorIn_bh43_10_10 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh43_10_10 :  std_logic_vector(1 downto 0);
signal heap_bh43_w10_5, heap_bh43_w10_5_d1 : std_logic;
signal heap_bh43_w11_4, heap_bh43_w11_4_d1 : std_logic;
signal CompressorIn_bh43_11_11 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh43_11_11 :  std_logic_vector(1 downto 0);
signal heap_bh43_w11_5, heap_bh43_w11_5_d1 : std_logic;
signal heap_bh43_w12_4, heap_bh43_w12_4_d1 : std_logic;
signal CompressorIn_bh43_12_12 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh43_12_12 :  std_logic_vector(1 downto 0);
signal heap_bh43_w12_5, heap_bh43_w12_5_d1 : std_logic;
signal heap_bh43_w13_4, heap_bh43_w13_4_d1 : std_logic;
signal CompressorIn_bh43_13_13 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh43_13_13 :  std_logic_vector(1 downto 0);
signal heap_bh43_w13_5, heap_bh43_w13_5_d1 : std_logic;
signal heap_bh43_w14_4, heap_bh43_w14_4_d1 : std_logic;
signal CompressorIn_bh43_14_14 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh43_14_14 :  std_logic_vector(1 downto 0);
signal heap_bh43_w14_5, heap_bh43_w14_5_d1 : std_logic;
signal heap_bh43_w15_4, heap_bh43_w15_4_d1 : std_logic;
signal CompressorIn_bh43_15_15 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh43_15_15 :  std_logic_vector(1 downto 0);
signal heap_bh43_w15_5, heap_bh43_w15_5_d1 : std_logic;
signal heap_bh43_w16_4, heap_bh43_w16_4_d1 : std_logic;
signal CompressorIn_bh43_16_16 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh43_16_16 :  std_logic_vector(1 downto 0);
signal heap_bh43_w16_5, heap_bh43_w16_5_d1 : std_logic;
signal heap_bh43_w17_3, heap_bh43_w17_3_d1 : std_logic;
signal inAdder0_bh43_1 :  std_logic_vector(15 downto 0);
signal inAdder1_bh43_1 :  std_logic_vector(15 downto 0);
signal cin_bh43_1 : std_logic;
signal outAdder_bh43_1 :  std_logic_vector(15 downto 0);
signal heap_bh43_w17_4, heap_bh43_w17_4_d1 : std_logic;
signal heap_bh43_w18_2, heap_bh43_w18_2_d1 : std_logic;
signal heap_bh43_w19_2, heap_bh43_w19_2_d1 : std_logic;
signal heap_bh43_w20_2, heap_bh43_w20_2_d1 : std_logic;
signal heap_bh43_w21_2, heap_bh43_w21_2_d1 : std_logic;
signal heap_bh43_w22_2, heap_bh43_w22_2_d1 : std_logic;
signal heap_bh43_w23_2, heap_bh43_w23_2_d1 : std_logic;
signal heap_bh43_w24_2, heap_bh43_w24_2_d1 : std_logic;
signal heap_bh43_w25_2, heap_bh43_w25_2_d1 : std_logic;
signal heap_bh43_w26_2, heap_bh43_w26_2_d1 : std_logic;
signal heap_bh43_w27_2, heap_bh43_w27_2_d1 : std_logic;
signal heap_bh43_w28_2, heap_bh43_w28_2_d1 : std_logic;
signal heap_bh43_w29_2, heap_bh43_w29_2_d1 : std_logic;
signal heap_bh43_w30_2, heap_bh43_w30_2_d1 : std_logic;
signal heap_bh43_w31_2, heap_bh43_w31_2_d1 : std_logic;
signal tempR_bh43_0, tempR_bh43_0_d1 : std_logic;
signal finalAdderIn0_bh43 :  std_logic_vector(31 downto 0);
signal finalAdderIn1_bh43 :  std_logic_vector(31 downto 0);
signal finalAdderCin_bh43 : std_logic;
signal finalAdderOut_bh43 :  std_logic_vector(31 downto 0);
signal CompressionResult43 :  std_logic_vector(32 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            heap_bh43_w31_0_d1 <=  heap_bh43_w31_0;
            heap_bh43_w30_0_d1 <=  heap_bh43_w30_0;
            heap_bh43_w29_0_d1 <=  heap_bh43_w29_0;
            heap_bh43_w28_0_d1 <=  heap_bh43_w28_0;
            heap_bh43_w27_0_d1 <=  heap_bh43_w27_0;
            heap_bh43_w26_0_d1 <=  heap_bh43_w26_0;
            heap_bh43_w25_0_d1 <=  heap_bh43_w25_0;
            heap_bh43_w24_0_d1 <=  heap_bh43_w24_0;
            heap_bh43_w23_0_d1 <=  heap_bh43_w23_0;
            heap_bh43_w22_0_d1 <=  heap_bh43_w22_0;
            heap_bh43_w21_0_d1 <=  heap_bh43_w21_0;
            heap_bh43_w20_0_d1 <=  heap_bh43_w20_0;
            heap_bh43_w19_0_d1 <=  heap_bh43_w19_0;
            heap_bh43_w18_0_d1 <=  heap_bh43_w18_0;
            heap_bh43_w17_0_d1 <=  heap_bh43_w17_0;
            heap_bh43_w16_0_d1 <=  heap_bh43_w16_0;
            heap_bh43_w15_0_d1 <=  heap_bh43_w15_0;
            heap_bh43_w14_0_d1 <=  heap_bh43_w14_0;
            heap_bh43_w13_0_d1 <=  heap_bh43_w13_0;
            heap_bh43_w12_0_d1 <=  heap_bh43_w12_0;
            heap_bh43_w11_0_d1 <=  heap_bh43_w11_0;
            heap_bh43_w10_0_d1 <=  heap_bh43_w10_0;
            heap_bh43_w9_0_d1 <=  heap_bh43_w9_0;
            heap_bh43_w8_0_d1 <=  heap_bh43_w8_0;
            heap_bh43_w7_1_d1 <=  heap_bh43_w7_1;
            heap_bh43_w6_1_d1 <=  heap_bh43_w6_1;
            heap_bh43_w5_1_d1 <=  heap_bh43_w5_1;
            heap_bh43_w4_2_d1 <=  heap_bh43_w4_2;
            heap_bh43_w3_2_d1 <=  heap_bh43_w3_2;
            heap_bh43_w2_1_d1 <=  heap_bh43_w2_1;
            heap_bh43_w1_2_d1 <=  heap_bh43_w1_2;
            heap_bh43_w0_2_d1 <=  heap_bh43_w0_2;
            heap_bh43_w17_1_d1 <=  heap_bh43_w17_1;
            heap_bh43_w16_1_d1 <=  heap_bh43_w16_1;
            heap_bh43_w15_1_d1 <=  heap_bh43_w15_1;
            heap_bh43_w14_1_d1 <=  heap_bh43_w14_1;
            heap_bh43_w13_1_d1 <=  heap_bh43_w13_1;
            heap_bh43_w12_1_d1 <=  heap_bh43_w12_1;
            heap_bh43_w11_1_d1 <=  heap_bh43_w11_1;
            heap_bh43_w10_1_d1 <=  heap_bh43_w10_1;
            heap_bh43_w9_1_d1 <=  heap_bh43_w9_1;
            heap_bh43_w8_1_d1 <=  heap_bh43_w8_1;
            heap_bh43_w7_2_d1 <=  heap_bh43_w7_2;
            heap_bh43_w6_2_d1 <=  heap_bh43_w6_2;
            heap_bh43_w5_2_d1 <=  heap_bh43_w5_2;
            heap_bh43_w4_3_d1 <=  heap_bh43_w4_3;
            heap_bh43_w3_3_d1 <=  heap_bh43_w3_3;
            heap_bh43_w2_2_d1 <=  heap_bh43_w2_2;
            heap_bh43_w1_3_d1 <=  heap_bh43_w1_3;
            heap_bh43_w0_3_d1 <=  heap_bh43_w0_3;
            heap_bh43_w18_1_d1 <=  heap_bh43_w18_1;
            heap_bh43_w19_1_d1 <=  heap_bh43_w19_1;
            heap_bh43_w20_1_d1 <=  heap_bh43_w20_1;
            heap_bh43_w21_1_d1 <=  heap_bh43_w21_1;
            heap_bh43_w22_1_d1 <=  heap_bh43_w22_1;
            heap_bh43_w23_1_d1 <=  heap_bh43_w23_1;
            heap_bh43_w24_1_d1 <=  heap_bh43_w24_1;
            heap_bh43_w25_1_d1 <=  heap_bh43_w25_1;
            heap_bh43_w26_1_d1 <=  heap_bh43_w26_1;
            heap_bh43_w27_1_d1 <=  heap_bh43_w27_1;
            heap_bh43_w28_1_d1 <=  heap_bh43_w28_1;
            heap_bh43_w29_1_d1 <=  heap_bh43_w29_1;
            heap_bh43_w30_1_d1 <=  heap_bh43_w30_1;
            heap_bh43_w31_1_d1 <=  heap_bh43_w31_1;
            inAdder0_bh43_0_d1 <=  inAdder0_bh43_0;
            inAdder1_bh43_0_d1 <=  inAdder1_bh43_0;
            cin_bh43_0_d1 <=  cin_bh43_0;
            heap_bh43_w1_5_d1 <=  heap_bh43_w1_5;
            heap_bh43_w1_6_d1 <=  heap_bh43_w1_6;
            heap_bh43_w2_4_d1 <=  heap_bh43_w2_4;
            heap_bh43_w2_5_d1 <=  heap_bh43_w2_5;
            heap_bh43_w3_5_d1 <=  heap_bh43_w3_5;
            heap_bh43_w3_6_d1 <=  heap_bh43_w3_6;
            heap_bh43_w4_5_d1 <=  heap_bh43_w4_5;
            heap_bh43_w4_6_d1 <=  heap_bh43_w4_6;
            heap_bh43_w5_5_d1 <=  heap_bh43_w5_5;
            heap_bh43_w5_6_d1 <=  heap_bh43_w5_6;
            heap_bh43_w6_4_d1 <=  heap_bh43_w6_4;
            heap_bh43_w6_5_d1 <=  heap_bh43_w6_5;
            heap_bh43_w7_5_d1 <=  heap_bh43_w7_5;
            heap_bh43_w7_6_d1 <=  heap_bh43_w7_6;
            heap_bh43_w8_4_d1 <=  heap_bh43_w8_4;
            heap_bh43_w8_5_d1 <=  heap_bh43_w8_5;
            heap_bh43_w9_4_d1 <=  heap_bh43_w9_4;
            heap_bh43_w9_5_d1 <=  heap_bh43_w9_5;
            heap_bh43_w10_4_d1 <=  heap_bh43_w10_4;
            heap_bh43_w10_5_d1 <=  heap_bh43_w10_5;
            heap_bh43_w11_4_d1 <=  heap_bh43_w11_4;
            heap_bh43_w11_5_d1 <=  heap_bh43_w11_5;
            heap_bh43_w12_4_d1 <=  heap_bh43_w12_4;
            heap_bh43_w12_5_d1 <=  heap_bh43_w12_5;
            heap_bh43_w13_4_d1 <=  heap_bh43_w13_4;
            heap_bh43_w13_5_d1 <=  heap_bh43_w13_5;
            heap_bh43_w14_4_d1 <=  heap_bh43_w14_4;
            heap_bh43_w14_5_d1 <=  heap_bh43_w14_5;
            heap_bh43_w15_4_d1 <=  heap_bh43_w15_4;
            heap_bh43_w15_5_d1 <=  heap_bh43_w15_5;
            heap_bh43_w16_4_d1 <=  heap_bh43_w16_4;
            heap_bh43_w16_5_d1 <=  heap_bh43_w16_5;
            heap_bh43_w17_3_d1 <=  heap_bh43_w17_3;
            heap_bh43_w17_4_d1 <=  heap_bh43_w17_4;
            heap_bh43_w18_2_d1 <=  heap_bh43_w18_2;
            heap_bh43_w19_2_d1 <=  heap_bh43_w19_2;
            heap_bh43_w20_2_d1 <=  heap_bh43_w20_2;
            heap_bh43_w21_2_d1 <=  heap_bh43_w21_2;
            heap_bh43_w22_2_d1 <=  heap_bh43_w22_2;
            heap_bh43_w23_2_d1 <=  heap_bh43_w23_2;
            heap_bh43_w24_2_d1 <=  heap_bh43_w24_2;
            heap_bh43_w25_2_d1 <=  heap_bh43_w25_2;
            heap_bh43_w26_2_d1 <=  heap_bh43_w26_2;
            heap_bh43_w27_2_d1 <=  heap_bh43_w27_2;
            heap_bh43_w28_2_d1 <=  heap_bh43_w28_2;
            heap_bh43_w29_2_d1 <=  heap_bh43_w29_2;
            heap_bh43_w30_2_d1 <=  heap_bh43_w30_2;
            heap_bh43_w31_2_d1 <=  heap_bh43_w31_2;
            tempR_bh43_0_d1 <=  tempR_bh43_0;
         end if;
      end process;
   XX_m42 <= Y ;
   YY_m42 <= X ;
   -- code generated by IntMultiplier::buildHeapLogicOnly()
   -- buildheaplogiconly called for topX=0 topY=17 botX=2 botY=25
   Xp_m42b44 <= XX_m42(1 downto 0) & "0";
   Yp_m42b44 <= YY_m42(24 downto 17) & "0";
   x_m42b44_0 <= Xp_m42b44(2 downto 0);
   y_m42b44_0 <= Yp_m42b44(2 downto 0);
   y_m42b44_1 <= Yp_m42b44(5 downto 3);
   y_m42b44_2 <= Yp_m42b44(8 downto 6);
   ----------------Synchro barrier, entering cycle 0----------------
   -- Partial product row number 0
   Y0X0_44_m42 <= y_m42b44_0 & x_m42b44_0;
   PP_m42_44X0Y0_Tbl: SmallMultTableP3x3r6XuYu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X0_44_m42,
                 Y => PP44X0Y0_m42);
   -- Adding the relevant bits to the heap of bits
   heap_bh43_w0_0 <= PP44X0Y0_m42(4); -- cycle= 0 cp= 3.8165e-10
   heap_bh43_w1_0 <= PP44X0Y0_m42(5); -- cycle= 0 cp= 3.8165e-10

   -- Partial product row number 1
   Y1X0_44_m42 <= y_m42b44_1 & x_m42b44_0;
   PP_m42_44X0Y1_Tbl: SmallMultTableP3x3r6XuYu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X0_44_m42,
                 Y => PP44X0Y1_m42);
   -- Adding the relevant bits to the heap of bits
   heap_bh43_w0_1 <= PP44X0Y1_m42(1); -- cycle= 0 cp= 3.8165e-10
   heap_bh43_w1_1 <= PP44X0Y1_m42(2); -- cycle= 0 cp= 3.8165e-10
   heap_bh43_w2_0 <= PP44X0Y1_m42(3); -- cycle= 0 cp= 3.8165e-10
   heap_bh43_w3_0 <= PP44X0Y1_m42(4); -- cycle= 0 cp= 3.8165e-10
   heap_bh43_w4_0 <= PP44X0Y1_m42(5); -- cycle= 0 cp= 3.8165e-10

   -- Partial product row number 2
   Y2X0_44_m42 <= y_m42b44_2 & x_m42b44_0;
   PP_m42_44X0Y2_Tbl: SmallMultTableP3x3r6XuYs  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y2X0_44_m42,
                 Y => PP44X0Y2_m42);
   -- Adding the relevant bits to the heap of bits
   heap_bh43_w3_1 <= PP44X0Y2_m42(1); -- cycle= 0 cp= 3.8165e-10
   heap_bh43_w4_1 <= PP44X0Y2_m42(2); -- cycle= 0 cp= 3.8165e-10
   heap_bh43_w5_0 <= PP44X0Y2_m42(3); -- cycle= 0 cp= 3.8165e-10
   heap_bh43_w6_0 <= PP44X0Y2_m42(4); -- cycle= 0 cp= 3.8165e-10
   heap_bh43_w7_0 <= not PP44X0Y2_m42(5); -- cycle= 0 cp= 3.8165e-10

   
   -- Beginning of code generated by BitHeap::generateCompressorVHDL
   -- code generated by BitHeap::generateSupertileVHDL()
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh43_ch0_0 <= ("0" & XX_m42(25 downto 2) & "") * ("0" & YY_m42(24 downto 8) & "");
   heap_bh43_w31_0 <= DSP_bh43_ch0_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w30_0 <= DSP_bh43_ch0_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w29_0 <= DSP_bh43_ch0_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w28_0 <= DSP_bh43_ch0_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w27_0 <= DSP_bh43_ch0_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w26_0 <= DSP_bh43_ch0_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w25_0 <= DSP_bh43_ch0_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w24_0 <= DSP_bh43_ch0_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w23_0 <= DSP_bh43_ch0_0(32); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w22_0 <= DSP_bh43_ch0_0(31); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w21_0 <= DSP_bh43_ch0_0(30); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w20_0 <= DSP_bh43_ch0_0(29); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w19_0 <= DSP_bh43_ch0_0(28); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w18_0 <= DSP_bh43_ch0_0(27); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w17_0 <= DSP_bh43_ch0_0(26); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w16_0 <= DSP_bh43_ch0_0(25); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w15_0 <= DSP_bh43_ch0_0(24); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w14_0 <= DSP_bh43_ch0_0(23); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w13_0 <= DSP_bh43_ch0_0(22); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w12_0 <= DSP_bh43_ch0_0(21); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w11_0 <= DSP_bh43_ch0_0(20); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w10_0 <= DSP_bh43_ch0_0(19); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w9_0 <= DSP_bh43_ch0_0(18); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w8_0 <= DSP_bh43_ch0_0(17); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w7_1 <= DSP_bh43_ch0_0(16); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w6_1 <= DSP_bh43_ch0_0(15); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w5_1 <= DSP_bh43_ch0_0(14); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w4_2 <= DSP_bh43_ch0_0(13); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w3_2 <= DSP_bh43_ch0_0(12); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w2_1 <= DSP_bh43_ch0_0(11); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w1_2 <= DSP_bh43_ch0_0(10); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w0_2 <= DSP_bh43_ch0_0(9); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh43_ch1_0 <= ("0" & XX_m42(25 downto 2) & "") * ("00" & YY_m42(7 downto 0) & "00000000");
   heap_bh43_w17_1 <= not( DSP_bh43_ch1_0(42) ); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w16_1 <= DSP_bh43_ch1_0(41); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w15_1 <= DSP_bh43_ch1_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w14_1 <= DSP_bh43_ch1_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w13_1 <= DSP_bh43_ch1_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w12_1 <= DSP_bh43_ch1_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w11_1 <= DSP_bh43_ch1_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w10_1 <= DSP_bh43_ch1_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w9_1 <= DSP_bh43_ch1_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w8_1 <= DSP_bh43_ch1_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w7_2 <= DSP_bh43_ch1_0(32); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w6_2 <= DSP_bh43_ch1_0(31); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w5_2 <= DSP_bh43_ch1_0(30); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w4_3 <= DSP_bh43_ch1_0(29); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w3_3 <= DSP_bh43_ch1_0(28); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w2_2 <= DSP_bh43_ch1_0(27); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w1_3 <= DSP_bh43_ch1_0(26); -- cycle= 0 cp= 1.638e-09
   heap_bh43_w0_3 <= DSP_bh43_ch1_0(25); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------

   -- Adding the constant bits
   heap_bh43_w5_3 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w7_3 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w8_2 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w9_2 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w10_2 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w11_2 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w12_2 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w13_2 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w14_2 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w15_2 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w16_2 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w18_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w19_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w20_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w21_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w22_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w23_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w24_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w25_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w26_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w27_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w28_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w29_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w30_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh43_w31_1 <= '1'; -- cycle= 0 cp= 0
   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 0----------------
   inAdder0_bh43_0 <= '0' & heap_bh43_w16_2 & heap_bh43_w15_2 & heap_bh43_w14_2 & heap_bh43_w13_2 & heap_bh43_w12_2 & heap_bh43_w11_2 & heap_bh43_w10_2 & heap_bh43_w9_2 & heap_bh43_w8_2 & heap_bh43_w7_3 & heap_bh43_w6_0 & heap_bh43_w5_3 & heap_bh43_w4_1 & heap_bh43_w3_1 & heap_bh43_w2_0 & heap_bh43_w1_1 & heap_bh43_w0_1;
   inAdder1_bh43_0 <= '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh43_w7_0 & '0' & heap_bh43_w5_0 & heap_bh43_w4_0 & heap_bh43_w3_0 & '0' & heap_bh43_w1_0 & heap_bh43_w0_0;
   cin_bh43_0 <= '0';
   ----------------Synchro barrier, entering cycle 1----------------
   outAdder_bh43_0 <= inAdder0_bh43_0_d1 + inAdder1_bh43_0_d1 + cin_bh43_0_d1;
   heap_bh43_w0_4 <= outAdder_bh43_0(0); -- cycle= 1 cp= 1.03565e-09
   heap_bh43_w1_4 <= outAdder_bh43_0(1); -- cycle= 1 cp= 1.03565e-09
   heap_bh43_w2_3 <= outAdder_bh43_0(2); -- cycle= 1 cp= 1.03565e-09
   heap_bh43_w3_4 <= outAdder_bh43_0(3); -- cycle= 1 cp= 1.03565e-09
   heap_bh43_w4_4 <= outAdder_bh43_0(4); -- cycle= 1 cp= 1.03565e-09
   heap_bh43_w5_4 <= outAdder_bh43_0(5); -- cycle= 1 cp= 1.03565e-09
   heap_bh43_w6_3 <= outAdder_bh43_0(6); -- cycle= 1 cp= 1.03565e-09
   heap_bh43_w7_4 <= outAdder_bh43_0(7); -- cycle= 1 cp= 1.03565e-09
   heap_bh43_w8_3 <= outAdder_bh43_0(8); -- cycle= 1 cp= 1.03565e-09
   heap_bh43_w9_3 <= outAdder_bh43_0(9); -- cycle= 1 cp= 1.03565e-09
   heap_bh43_w10_3 <= outAdder_bh43_0(10); -- cycle= 1 cp= 1.03565e-09
   heap_bh43_w11_3 <= outAdder_bh43_0(11); -- cycle= 1 cp= 1.03565e-09
   heap_bh43_w12_3 <= outAdder_bh43_0(12); -- cycle= 1 cp= 1.03565e-09
   heap_bh43_w13_3 <= outAdder_bh43_0(13); -- cycle= 1 cp= 1.03565e-09
   heap_bh43_w14_3 <= outAdder_bh43_0(14); -- cycle= 1 cp= 1.03565e-09
   heap_bh43_w15_3 <= outAdder_bh43_0(15); -- cycle= 1 cp= 1.03565e-09
   heap_bh43_w16_3 <= outAdder_bh43_0(16); -- cycle= 1 cp= 1.03565e-09
   heap_bh43_w17_2 <= outAdder_bh43_0(17); -- cycle= 1 cp= 1.03565e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh43_0_0 <= heap_bh43_w0_3_d1 & heap_bh43_w0_2_d1 & heap_bh43_w0_4;
   Compressor_bh43_0: Compressor_3_2
      port map ( R => CompressorOut_bh43_0_0   ,
                 X0 => CompressorIn_bh43_0_0);
   heap_bh43_w0_5 <= CompressorOut_bh43_0_0(0); -- cycle= 1 cp= 1.4173e-09
   heap_bh43_w1_5 <= CompressorOut_bh43_0_0(1); -- cycle= 1 cp= 1.4173e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh43_1_1 <= heap_bh43_w1_3_d1 & heap_bh43_w1_2_d1 & heap_bh43_w1_4;
   Compressor_bh43_1: Compressor_3_2
      port map ( R => CompressorOut_bh43_1_1   ,
                 X0 => CompressorIn_bh43_1_1);
   heap_bh43_w1_6 <= CompressorOut_bh43_1_1(0); -- cycle= 1 cp= 1.4173e-09
   heap_bh43_w2_4 <= CompressorOut_bh43_1_1(1); -- cycle= 1 cp= 1.4173e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh43_2_2 <= heap_bh43_w2_2_d1 & heap_bh43_w2_1_d1 & heap_bh43_w2_3;
   Compressor_bh43_2: Compressor_3_2
      port map ( R => CompressorOut_bh43_2_2   ,
                 X0 => CompressorIn_bh43_2_2);
   heap_bh43_w2_5 <= CompressorOut_bh43_2_2(0); -- cycle= 1 cp= 1.4173e-09
   heap_bh43_w3_5 <= CompressorOut_bh43_2_2(1); -- cycle= 1 cp= 1.4173e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh43_3_3 <= heap_bh43_w3_3_d1 & heap_bh43_w3_2_d1 & heap_bh43_w3_4;
   Compressor_bh43_3: Compressor_3_2
      port map ( R => CompressorOut_bh43_3_3   ,
                 X0 => CompressorIn_bh43_3_3);
   heap_bh43_w3_6 <= CompressorOut_bh43_3_3(0); -- cycle= 1 cp= 1.4173e-09
   heap_bh43_w4_5 <= CompressorOut_bh43_3_3(1); -- cycle= 1 cp= 1.4173e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh43_4_4 <= heap_bh43_w4_3_d1 & heap_bh43_w4_2_d1 & heap_bh43_w4_4;
   Compressor_bh43_4: Compressor_3_2
      port map ( R => CompressorOut_bh43_4_4   ,
                 X0 => CompressorIn_bh43_4_4);
   heap_bh43_w4_6 <= CompressorOut_bh43_4_4(0); -- cycle= 1 cp= 1.4173e-09
   heap_bh43_w5_5 <= CompressorOut_bh43_4_4(1); -- cycle= 1 cp= 1.4173e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh43_5_5 <= heap_bh43_w5_2_d1 & heap_bh43_w5_1_d1 & heap_bh43_w5_4;
   Compressor_bh43_5: Compressor_3_2
      port map ( R => CompressorOut_bh43_5_5   ,
                 X0 => CompressorIn_bh43_5_5);
   heap_bh43_w5_6 <= CompressorOut_bh43_5_5(0); -- cycle= 1 cp= 1.4173e-09
   heap_bh43_w6_4 <= CompressorOut_bh43_5_5(1); -- cycle= 1 cp= 1.4173e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh43_6_6 <= heap_bh43_w6_2_d1 & heap_bh43_w6_1_d1 & heap_bh43_w6_3;
   Compressor_bh43_6: Compressor_3_2
      port map ( R => CompressorOut_bh43_6_6   ,
                 X0 => CompressorIn_bh43_6_6);
   heap_bh43_w6_5 <= CompressorOut_bh43_6_6(0); -- cycle= 1 cp= 1.4173e-09
   heap_bh43_w7_5 <= CompressorOut_bh43_6_6(1); -- cycle= 1 cp= 1.4173e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh43_7_7 <= heap_bh43_w7_2_d1 & heap_bh43_w7_1_d1 & heap_bh43_w7_4;
   Compressor_bh43_7: Compressor_3_2
      port map ( R => CompressorOut_bh43_7_7   ,
                 X0 => CompressorIn_bh43_7_7);
   heap_bh43_w7_6 <= CompressorOut_bh43_7_7(0); -- cycle= 1 cp= 1.4173e-09
   heap_bh43_w8_4 <= CompressorOut_bh43_7_7(1); -- cycle= 1 cp= 1.4173e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh43_8_8 <= heap_bh43_w8_1_d1 & heap_bh43_w8_0_d1 & heap_bh43_w8_3;
   Compressor_bh43_8: Compressor_3_2
      port map ( R => CompressorOut_bh43_8_8   ,
                 X0 => CompressorIn_bh43_8_8);
   heap_bh43_w8_5 <= CompressorOut_bh43_8_8(0); -- cycle= 1 cp= 1.4173e-09
   heap_bh43_w9_4 <= CompressorOut_bh43_8_8(1); -- cycle= 1 cp= 1.4173e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh43_9_9 <= heap_bh43_w9_1_d1 & heap_bh43_w9_0_d1 & heap_bh43_w9_3;
   Compressor_bh43_9: Compressor_3_2
      port map ( R => CompressorOut_bh43_9_9   ,
                 X0 => CompressorIn_bh43_9_9);
   heap_bh43_w9_5 <= CompressorOut_bh43_9_9(0); -- cycle= 1 cp= 1.4173e-09
   heap_bh43_w10_4 <= CompressorOut_bh43_9_9(1); -- cycle= 1 cp= 1.4173e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh43_10_10 <= heap_bh43_w10_1_d1 & heap_bh43_w10_0_d1 & heap_bh43_w10_3;
   Compressor_bh43_10: Compressor_3_2
      port map ( R => CompressorOut_bh43_10_10   ,
                 X0 => CompressorIn_bh43_10_10);
   heap_bh43_w10_5 <= CompressorOut_bh43_10_10(0); -- cycle= 1 cp= 1.4173e-09
   heap_bh43_w11_4 <= CompressorOut_bh43_10_10(1); -- cycle= 1 cp= 1.4173e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh43_11_11 <= heap_bh43_w11_1_d1 & heap_bh43_w11_0_d1 & heap_bh43_w11_3;
   Compressor_bh43_11: Compressor_3_2
      port map ( R => CompressorOut_bh43_11_11   ,
                 X0 => CompressorIn_bh43_11_11);
   heap_bh43_w11_5 <= CompressorOut_bh43_11_11(0); -- cycle= 1 cp= 1.4173e-09
   heap_bh43_w12_4 <= CompressorOut_bh43_11_11(1); -- cycle= 1 cp= 1.4173e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh43_12_12 <= heap_bh43_w12_1_d1 & heap_bh43_w12_0_d1 & heap_bh43_w12_3;
   Compressor_bh43_12: Compressor_3_2
      port map ( R => CompressorOut_bh43_12_12   ,
                 X0 => CompressorIn_bh43_12_12);
   heap_bh43_w12_5 <= CompressorOut_bh43_12_12(0); -- cycle= 1 cp= 1.4173e-09
   heap_bh43_w13_4 <= CompressorOut_bh43_12_12(1); -- cycle= 1 cp= 1.4173e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh43_13_13 <= heap_bh43_w13_1_d1 & heap_bh43_w13_0_d1 & heap_bh43_w13_3;
   Compressor_bh43_13: Compressor_3_2
      port map ( R => CompressorOut_bh43_13_13   ,
                 X0 => CompressorIn_bh43_13_13);
   heap_bh43_w13_5 <= CompressorOut_bh43_13_13(0); -- cycle= 1 cp= 1.4173e-09
   heap_bh43_w14_4 <= CompressorOut_bh43_13_13(1); -- cycle= 1 cp= 1.4173e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh43_14_14 <= heap_bh43_w14_1_d1 & heap_bh43_w14_0_d1 & heap_bh43_w14_3;
   Compressor_bh43_14: Compressor_3_2
      port map ( R => CompressorOut_bh43_14_14   ,
                 X0 => CompressorIn_bh43_14_14);
   heap_bh43_w14_5 <= CompressorOut_bh43_14_14(0); -- cycle= 1 cp= 1.4173e-09
   heap_bh43_w15_4 <= CompressorOut_bh43_14_14(1); -- cycle= 1 cp= 1.4173e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh43_15_15 <= heap_bh43_w15_1_d1 & heap_bh43_w15_0_d1 & heap_bh43_w15_3;
   Compressor_bh43_15: Compressor_3_2
      port map ( R => CompressorOut_bh43_15_15   ,
                 X0 => CompressorIn_bh43_15_15);
   heap_bh43_w15_5 <= CompressorOut_bh43_15_15(0); -- cycle= 1 cp= 1.4173e-09
   heap_bh43_w16_4 <= CompressorOut_bh43_15_15(1); -- cycle= 1 cp= 1.4173e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh43_16_16 <= heap_bh43_w16_1_d1 & heap_bh43_w16_0_d1 & heap_bh43_w16_3;
   Compressor_bh43_16: Compressor_3_2
      port map ( R => CompressorOut_bh43_16_16   ,
                 X0 => CompressorIn_bh43_16_16);
   heap_bh43_w16_5 <= CompressorOut_bh43_16_16(0); -- cycle= 1 cp= 1.4173e-09
   heap_bh43_w17_3 <= CompressorOut_bh43_16_16(1); -- cycle= 1 cp= 1.4173e-09
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 2----------------
   ----------------Synchro barrier, entering cycle 1----------------
   inAdder0_bh43_1 <= '0' & heap_bh43_w31_1_d1 & heap_bh43_w30_1_d1 & heap_bh43_w29_1_d1 & heap_bh43_w28_1_d1 & heap_bh43_w27_1_d1 & heap_bh43_w26_1_d1 & heap_bh43_w25_1_d1 & heap_bh43_w24_1_d1 & heap_bh43_w23_1_d1 & heap_bh43_w22_1_d1 & heap_bh43_w21_1_d1 & heap_bh43_w20_1_d1 & heap_bh43_w19_1_d1 & heap_bh43_w18_1_d1 & heap_bh43_w17_1_d1;
   inAdder1_bh43_1 <= '0' & heap_bh43_w31_0_d1 & heap_bh43_w30_0_d1 & heap_bh43_w29_0_d1 & heap_bh43_w28_0_d1 & heap_bh43_w27_0_d1 & heap_bh43_w26_0_d1 & heap_bh43_w25_0_d1 & heap_bh43_w24_0_d1 & heap_bh43_w23_0_d1 & heap_bh43_w22_0_d1 & heap_bh43_w21_0_d1 & heap_bh43_w20_0_d1 & heap_bh43_w19_0_d1 & heap_bh43_w18_0_d1 & heap_bh43_w17_0_d1;
   cin_bh43_1 <= heap_bh43_w17_2;
   outAdder_bh43_1 <= inAdder0_bh43_1 + inAdder1_bh43_1 + cin_bh43_1;
   heap_bh43_w17_4 <= outAdder_bh43_1(0); -- cycle= 1 cp= 2.0413e-09
   heap_bh43_w18_2 <= outAdder_bh43_1(1); -- cycle= 1 cp= 2.0413e-09
   heap_bh43_w19_2 <= outAdder_bh43_1(2); -- cycle= 1 cp= 2.0413e-09
   heap_bh43_w20_2 <= outAdder_bh43_1(3); -- cycle= 1 cp= 2.0413e-09
   heap_bh43_w21_2 <= outAdder_bh43_1(4); -- cycle= 1 cp= 2.0413e-09
   heap_bh43_w22_2 <= outAdder_bh43_1(5); -- cycle= 1 cp= 2.0413e-09
   heap_bh43_w23_2 <= outAdder_bh43_1(6); -- cycle= 1 cp= 2.0413e-09
   heap_bh43_w24_2 <= outAdder_bh43_1(7); -- cycle= 1 cp= 2.0413e-09
   heap_bh43_w25_2 <= outAdder_bh43_1(8); -- cycle= 1 cp= 2.0413e-09
   heap_bh43_w26_2 <= outAdder_bh43_1(9); -- cycle= 1 cp= 2.0413e-09
   heap_bh43_w27_2 <= outAdder_bh43_1(10); -- cycle= 1 cp= 2.0413e-09
   heap_bh43_w28_2 <= outAdder_bh43_1(11); -- cycle= 1 cp= 2.0413e-09
   heap_bh43_w29_2 <= outAdder_bh43_1(12); -- cycle= 1 cp= 2.0413e-09
   heap_bh43_w30_2 <= outAdder_bh43_1(13); -- cycle= 1 cp= 2.0413e-09
   heap_bh43_w31_2 <= outAdder_bh43_1(14); -- cycle= 1 cp= 2.0413e-09
   ----------------Synchro barrier, entering cycle 1----------------
   tempR_bh43_0 <= heap_bh43_w0_5; -- already compressed
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 2----------------
   finalAdderIn0_bh43 <= "0" & heap_bh43_w31_2_d1 & heap_bh43_w30_2_d1 & heap_bh43_w29_2_d1 & heap_bh43_w28_2_d1 & heap_bh43_w27_2_d1 & heap_bh43_w26_2_d1 & heap_bh43_w25_2_d1 & heap_bh43_w24_2_d1 & heap_bh43_w23_2_d1 & heap_bh43_w22_2_d1 & heap_bh43_w21_2_d1 & heap_bh43_w20_2_d1 & heap_bh43_w19_2_d1 & heap_bh43_w18_2_d1 & heap_bh43_w17_3_d1 & heap_bh43_w16_5_d1 & heap_bh43_w15_5_d1 & heap_bh43_w14_5_d1 & heap_bh43_w13_5_d1 & heap_bh43_w12_5_d1 & heap_bh43_w11_5_d1 & heap_bh43_w10_5_d1 & heap_bh43_w9_5_d1 & heap_bh43_w8_5_d1 & heap_bh43_w7_6_d1 & heap_bh43_w6_5_d1 & heap_bh43_w5_6_d1 & heap_bh43_w4_6_d1 & heap_bh43_w3_6_d1 & heap_bh43_w2_5_d1 & heap_bh43_w1_6_d1;
   finalAdderIn1_bh43 <= "0" & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh43_w17_4_d1 & heap_bh43_w16_4_d1 & heap_bh43_w15_4_d1 & heap_bh43_w14_4_d1 & heap_bh43_w13_4_d1 & heap_bh43_w12_4_d1 & heap_bh43_w11_4_d1 & heap_bh43_w10_4_d1 & heap_bh43_w9_4_d1 & heap_bh43_w8_4_d1 & heap_bh43_w7_5_d1 & heap_bh43_w6_4_d1 & heap_bh43_w5_5_d1 & heap_bh43_w4_5_d1 & heap_bh43_w3_5_d1 & heap_bh43_w2_4_d1 & heap_bh43_w1_5_d1;
   finalAdderCin_bh43 <= '0';
   Adder_final43_2: IntAdder_32_f400_uid79  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => finalAdderCin_bh43,
                 R => finalAdderOut_bh43   ,
                 X => finalAdderIn0_bh43,
                 Y => finalAdderIn1_bh43);
   -- concatenate all the compressed chunks
   CompressionResult43 <= finalAdderOut_bh43 & tempR_bh43_0_d1;
   -- End of code generated by BitHeap::generateCompressorVHDL
   R <= CompressionResult43(31 downto 6);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_35_f400_uid87
--                     (IntAdderClassical_35_f400_uid89)
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

entity IntAdder_35_f400_uid87 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(34 downto 0);
          Y : in  std_logic_vector(34 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(34 downto 0)   );
end entity;

architecture arch of IntAdder_35_f400_uid87 is
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
--                          IntAdder_37_f400_uid120
--                     (IntAdderClassical_37_f400_uid122)
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

entity IntAdder_37_f400_uid120 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(36 downto 0);
          Y : in  std_logic_vector(36 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(36 downto 0)   );
end entity;

architecture arch of IntAdder_37_f400_uid120 is
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
--                IntMultiplier_UsingDSP_30_35_35_signed_uid94
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Kinga Illyes, Bogdan Popa, Bogdan Pasca, 2012
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;
library std;
use std.textio.all;
library work;

entity IntMultiplier_UsingDSP_30_35_35_signed_uid94 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(29 downto 0);
          Y : in  std_logic_vector(34 downto 0);
          R : out  std_logic_vector(34 downto 0)   );
end entity;

architecture arch of IntMultiplier_UsingDSP_30_35_35_signed_uid94 is
   component Compressor_23_3 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             X1 : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component IntAdder_37_f400_uid120 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(36 downto 0);
             Y : in  std_logic_vector(36 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(36 downto 0)   );
   end component;

signal XX_m95 :  std_logic_vector(34 downto 0);
signal YY_m95 :  std_logic_vector(29 downto 0);
signal DSP_bh96_ch0_0 :  std_logic_vector(42 downto 0);
signal heap_bh96_w40_0 : std_logic;
signal heap_bh96_w39_0 : std_logic;
signal heap_bh96_w38_0 : std_logic;
signal heap_bh96_w37_0 : std_logic;
signal heap_bh96_w36_0 : std_logic;
signal heap_bh96_w35_0 : std_logic;
signal heap_bh96_w34_0 : std_logic;
signal heap_bh96_w33_0 : std_logic;
signal heap_bh96_w32_0 : std_logic;
signal heap_bh96_w31_0 : std_logic;
signal heap_bh96_w30_0 : std_logic;
signal heap_bh96_w29_0 : std_logic;
signal heap_bh96_w28_0 : std_logic;
signal heap_bh96_w27_0 : std_logic;
signal heap_bh96_w26_0 : std_logic;
signal heap_bh96_w25_0 : std_logic;
signal heap_bh96_w24_0 : std_logic;
signal heap_bh96_w23_0 : std_logic;
signal heap_bh96_w22_0 : std_logic;
signal heap_bh96_w21_0 : std_logic;
signal heap_bh96_w20_0 : std_logic;
signal heap_bh96_w19_0 : std_logic;
signal heap_bh96_w18_0 : std_logic;
signal heap_bh96_w17_0 : std_logic;
signal heap_bh96_w16_0 : std_logic;
signal heap_bh96_w15_0 : std_logic;
signal heap_bh96_w14_0 : std_logic;
signal heap_bh96_w13_0 : std_logic;
signal heap_bh96_w12_0 : std_logic;
signal heap_bh96_w11_0 : std_logic;
signal heap_bh96_w10_0 : std_logic;
signal heap_bh96_w9_0 : std_logic;
signal heap_bh96_w8_0 : std_logic;
signal heap_bh96_w7_0 : std_logic;
signal heap_bh96_w6_0 : std_logic;
signal heap_bh96_w5_0 : std_logic;
signal heap_bh96_w4_0 : std_logic;
signal heap_bh96_w3_0 : std_logic;
signal heap_bh96_w2_0 : std_logic;
signal heap_bh96_w1_0 : std_logic;
signal heap_bh96_w0_0 : std_logic;
signal DSP_bh96_ch1_0 :  std_logic_vector(42 downto 0);
signal heap_bh96_w19_1 : std_logic;
signal heap_bh96_w18_1 : std_logic;
signal heap_bh96_w17_1 : std_logic;
signal heap_bh96_w16_1 : std_logic;
signal heap_bh96_w15_1 : std_logic;
signal heap_bh96_w14_1 : std_logic;
signal heap_bh96_w13_1 : std_logic;
signal heap_bh96_w12_1 : std_logic;
signal heap_bh96_w11_1 : std_logic;
signal heap_bh96_w10_1 : std_logic;
signal heap_bh96_w9_1 : std_logic;
signal heap_bh96_w8_1 : std_logic;
signal heap_bh96_w7_1 : std_logic;
signal heap_bh96_w6_1 : std_logic;
signal heap_bh96_w5_1 : std_logic;
signal heap_bh96_w4_1 : std_logic;
signal heap_bh96_w3_1 : std_logic;
signal heap_bh96_w2_1 : std_logic;
signal heap_bh96_w1_1 : std_logic;
signal heap_bh96_w0_1 : std_logic;
signal DSP_bh96_ch2_0 :  std_logic_vector(42 downto 0);
signal heap_bh96_w26_1 : std_logic;
signal heap_bh96_w25_1 : std_logic;
signal heap_bh96_w24_1 : std_logic;
signal heap_bh96_w23_1 : std_logic;
signal heap_bh96_w22_1 : std_logic;
signal heap_bh96_w21_1 : std_logic;
signal heap_bh96_w20_1 : std_logic;
signal heap_bh96_w19_2 : std_logic;
signal heap_bh96_w18_2 : std_logic;
signal heap_bh96_w17_2 : std_logic;
signal heap_bh96_w16_2 : std_logic;
signal heap_bh96_w15_2 : std_logic;
signal heap_bh96_w14_2 : std_logic;
signal heap_bh96_w13_2 : std_logic;
signal heap_bh96_w12_2 : std_logic;
signal heap_bh96_w11_2 : std_logic;
signal heap_bh96_w10_2 : std_logic;
signal heap_bh96_w9_2 : std_logic;
signal heap_bh96_w8_2 : std_logic;
signal heap_bh96_w7_2 : std_logic;
signal heap_bh96_w6_2 : std_logic;
signal heap_bh96_w5_2 : std_logic;
signal heap_bh96_w4_2 : std_logic;
signal heap_bh96_w3_2 : std_logic;
signal heap_bh96_w2_2 : std_logic;
signal heap_bh96_w1_2 : std_logic;
signal heap_bh96_w0_2 : std_logic;
signal heap_bh96_w5_3 : std_logic;
signal heap_bh96_w19_3 : std_logic;
signal heap_bh96_w20_2 : std_logic;
signal heap_bh96_w21_2 : std_logic;
signal heap_bh96_w22_2 : std_logic;
signal heap_bh96_w23_2 : std_logic;
signal heap_bh96_w24_2 : std_logic;
signal heap_bh96_w25_2 : std_logic;
signal heap_bh96_w27_1 : std_logic;
signal heap_bh96_w28_1 : std_logic;
signal heap_bh96_w29_1 : std_logic;
signal heap_bh96_w30_1 : std_logic;
signal heap_bh96_w31_1 : std_logic;
signal heap_bh96_w32_1 : std_logic;
signal heap_bh96_w33_1 : std_logic;
signal heap_bh96_w34_1 : std_logic;
signal heap_bh96_w35_1 : std_logic;
signal heap_bh96_w36_1 : std_logic;
signal heap_bh96_w37_1 : std_logic;
signal heap_bh96_w38_1 : std_logic;
signal heap_bh96_w39_1 : std_logic;
signal heap_bh96_w40_1 : std_logic;
signal CompressorIn_bh96_0_0 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh96_0_1 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh96_0_0 :  std_logic_vector(2 downto 0);
signal heap_bh96_w0_3 : std_logic;
signal heap_bh96_w1_3 : std_logic;
signal heap_bh96_w2_3 : std_logic;
signal CompressorIn_bh96_1_2 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh96_1_3 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh96_1_1 :  std_logic_vector(2 downto 0);
signal heap_bh96_w2_4 : std_logic;
signal heap_bh96_w3_3 : std_logic;
signal heap_bh96_w4_3 : std_logic;
signal CompressorIn_bh96_2_4 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh96_2_5 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh96_2_2 :  std_logic_vector(2 downto 0);
signal heap_bh96_w4_4 : std_logic;
signal heap_bh96_w5_4 : std_logic;
signal heap_bh96_w6_3 : std_logic;
signal CompressorIn_bh96_3_6 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh96_3_7 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh96_3_3 :  std_logic_vector(2 downto 0);
signal heap_bh96_w6_4 : std_logic;
signal heap_bh96_w7_3 : std_logic;
signal heap_bh96_w8_3 : std_logic;
signal CompressorIn_bh96_4_8 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh96_4_9 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh96_4_4 :  std_logic_vector(2 downto 0);
signal heap_bh96_w8_4 : std_logic;
signal heap_bh96_w9_3 : std_logic;
signal heap_bh96_w10_3 : std_logic;
signal CompressorIn_bh96_5_10 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh96_5_11 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh96_5_5 :  std_logic_vector(2 downto 0);
signal heap_bh96_w10_4 : std_logic;
signal heap_bh96_w11_3 : std_logic;
signal heap_bh96_w12_3 : std_logic;
signal CompressorIn_bh96_6_12 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh96_6_13 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh96_6_6 :  std_logic_vector(2 downto 0);
signal heap_bh96_w12_4 : std_logic;
signal heap_bh96_w13_3 : std_logic;
signal heap_bh96_w14_3 : std_logic;
signal CompressorIn_bh96_7_14 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh96_7_15 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh96_7_7 :  std_logic_vector(2 downto 0);
signal heap_bh96_w14_4 : std_logic;
signal heap_bh96_w15_3 : std_logic;
signal heap_bh96_w16_3 : std_logic;
signal CompressorIn_bh96_8_16 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh96_8_17 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh96_8_8 :  std_logic_vector(2 downto 0);
signal heap_bh96_w16_4 : std_logic;
signal heap_bh96_w17_3 : std_logic;
signal heap_bh96_w18_3 : std_logic;
signal CompressorIn_bh96_9_18 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh96_9_19 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh96_9_9 :  std_logic_vector(2 downto 0);
signal heap_bh96_w18_4 : std_logic;
signal heap_bh96_w19_4 : std_logic;
signal heap_bh96_w20_3 : std_logic;
signal CompressorIn_bh96_10_20 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh96_10_21 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh96_10_10 :  std_logic_vector(2 downto 0);
signal heap_bh96_w20_4 : std_logic;
signal heap_bh96_w21_3 : std_logic;
signal heap_bh96_w22_3 : std_logic;
signal CompressorIn_bh96_11_22 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh96_11_23 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh96_11_11 :  std_logic_vector(2 downto 0);
signal heap_bh96_w22_4 : std_logic;
signal heap_bh96_w23_3 : std_logic;
signal heap_bh96_w24_3 : std_logic;
signal CompressorIn_bh96_12_24 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh96_12_25 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh96_12_12 :  std_logic_vector(2 downto 0);
signal heap_bh96_w24_4 : std_logic;
signal heap_bh96_w25_3 : std_logic;
signal heap_bh96_w26_2 : std_logic;
signal inAdder0_bh96_0, inAdder0_bh96_0_d1 :  std_logic_vector(5 downto 0);
signal inAdder1_bh96_0, inAdder1_bh96_0_d1 :  std_logic_vector(5 downto 0);
signal cin_bh96_0, cin_bh96_0_d1 : std_logic;
signal outAdder_bh96_0 :  std_logic_vector(5 downto 0);
signal heap_bh96_w0_4 : std_logic;
signal heap_bh96_w1_4 : std_logic;
signal heap_bh96_w2_5 : std_logic;
signal heap_bh96_w3_4 : std_logic;
signal heap_bh96_w4_5 : std_logic;
signal heap_bh96_w5_5, heap_bh96_w5_5_d1 : std_logic;
signal tempR_bh96_0, tempR_bh96_0_d1 :  std_logic_vector(4 downto 0);
signal inAdder0_bh96_1, inAdder0_bh96_1_d1 :  std_logic_vector(14 downto 0);
signal inAdder1_bh96_1, inAdder1_bh96_1_d1 :  std_logic_vector(14 downto 0);
signal cin_bh96_1, cin_bh96_1_d1 : std_logic;
signal outAdder_bh96_1 :  std_logic_vector(14 downto 0);
signal heap_bh96_w5_6, heap_bh96_w5_6_d1 : std_logic;
signal heap_bh96_w6_5, heap_bh96_w6_5_d1 : std_logic;
signal heap_bh96_w7_4, heap_bh96_w7_4_d1 : std_logic;
signal heap_bh96_w8_5, heap_bh96_w8_5_d1 : std_logic;
signal heap_bh96_w9_4, heap_bh96_w9_4_d1 : std_logic;
signal heap_bh96_w10_5, heap_bh96_w10_5_d1 : std_logic;
signal heap_bh96_w11_4, heap_bh96_w11_4_d1 : std_logic;
signal heap_bh96_w12_5, heap_bh96_w12_5_d1 : std_logic;
signal heap_bh96_w13_4, heap_bh96_w13_4_d1 : std_logic;
signal heap_bh96_w14_5, heap_bh96_w14_5_d1 : std_logic;
signal heap_bh96_w15_4, heap_bh96_w15_4_d1 : std_logic;
signal heap_bh96_w16_5, heap_bh96_w16_5_d1 : std_logic;
signal heap_bh96_w17_4, heap_bh96_w17_4_d1 : std_logic;
signal heap_bh96_w18_5, heap_bh96_w18_5_d1 : std_logic;
signal heap_bh96_w19_5, heap_bh96_w19_5_d1 : std_logic;
signal inAdder0_bh96_2, inAdder0_bh96_2_d1 :  std_logic_vector(7 downto 0);
signal inAdder1_bh96_2, inAdder1_bh96_2_d1 :  std_logic_vector(7 downto 0);
signal cin_bh96_2, cin_bh96_2_d1 : std_logic;
signal outAdder_bh96_2 :  std_logic_vector(7 downto 0);
signal heap_bh96_w19_6, heap_bh96_w19_6_d1 : std_logic;
signal heap_bh96_w20_5, heap_bh96_w20_5_d1 : std_logic;
signal heap_bh96_w21_4, heap_bh96_w21_4_d1 : std_logic;
signal heap_bh96_w22_5, heap_bh96_w22_5_d1 : std_logic;
signal heap_bh96_w23_4, heap_bh96_w23_4_d1 : std_logic;
signal heap_bh96_w24_5, heap_bh96_w24_5_d1 : std_logic;
signal heap_bh96_w25_4, heap_bh96_w25_4_d1 : std_logic;
signal heap_bh96_w26_3, heap_bh96_w26_3_d1 : std_logic;
signal inAdder0_bh96_3, inAdder0_bh96_3_d1 :  std_logic_vector(15 downto 0);
signal inAdder1_bh96_3, inAdder1_bh96_3_d1 :  std_logic_vector(15 downto 0);
signal cin_bh96_3, cin_bh96_3_d1 : std_logic;
signal outAdder_bh96_3 :  std_logic_vector(15 downto 0);
signal heap_bh96_w26_4, heap_bh96_w26_4_d1 : std_logic;
signal heap_bh96_w27_2, heap_bh96_w27_2_d1 : std_logic;
signal heap_bh96_w28_2, heap_bh96_w28_2_d1 : std_logic;
signal heap_bh96_w29_2, heap_bh96_w29_2_d1 : std_logic;
signal heap_bh96_w30_2, heap_bh96_w30_2_d1 : std_logic;
signal heap_bh96_w31_2, heap_bh96_w31_2_d1 : std_logic;
signal heap_bh96_w32_2, heap_bh96_w32_2_d1 : std_logic;
signal heap_bh96_w33_2, heap_bh96_w33_2_d1 : std_logic;
signal heap_bh96_w34_2, heap_bh96_w34_2_d1 : std_logic;
signal heap_bh96_w35_2, heap_bh96_w35_2_d1 : std_logic;
signal heap_bh96_w36_2, heap_bh96_w36_2_d1 : std_logic;
signal heap_bh96_w37_2, heap_bh96_w37_2_d1 : std_logic;
signal heap_bh96_w38_2, heap_bh96_w38_2_d1 : std_logic;
signal heap_bh96_w39_2, heap_bh96_w39_2_d1 : std_logic;
signal heap_bh96_w40_2, heap_bh96_w40_2_d1 : std_logic;
signal finalAdderIn0_bh96 :  std_logic_vector(36 downto 0);
signal finalAdderIn1_bh96 :  std_logic_vector(36 downto 0);
signal finalAdderCin_bh96 : std_logic;
signal finalAdderOut_bh96 :  std_logic_vector(36 downto 0);
signal CompressionResult96 :  std_logic_vector(41 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            inAdder0_bh96_0_d1 <=  inAdder0_bh96_0;
            inAdder1_bh96_0_d1 <=  inAdder1_bh96_0;
            cin_bh96_0_d1 <=  cin_bh96_0;
            heap_bh96_w5_5_d1 <=  heap_bh96_w5_5;
            tempR_bh96_0_d1 <=  tempR_bh96_0;
            inAdder0_bh96_1_d1 <=  inAdder0_bh96_1;
            inAdder1_bh96_1_d1 <=  inAdder1_bh96_1;
            cin_bh96_1_d1 <=  cin_bh96_1;
            heap_bh96_w5_6_d1 <=  heap_bh96_w5_6;
            heap_bh96_w6_5_d1 <=  heap_bh96_w6_5;
            heap_bh96_w7_4_d1 <=  heap_bh96_w7_4;
            heap_bh96_w8_5_d1 <=  heap_bh96_w8_5;
            heap_bh96_w9_4_d1 <=  heap_bh96_w9_4;
            heap_bh96_w10_5_d1 <=  heap_bh96_w10_5;
            heap_bh96_w11_4_d1 <=  heap_bh96_w11_4;
            heap_bh96_w12_5_d1 <=  heap_bh96_w12_5;
            heap_bh96_w13_4_d1 <=  heap_bh96_w13_4;
            heap_bh96_w14_5_d1 <=  heap_bh96_w14_5;
            heap_bh96_w15_4_d1 <=  heap_bh96_w15_4;
            heap_bh96_w16_5_d1 <=  heap_bh96_w16_5;
            heap_bh96_w17_4_d1 <=  heap_bh96_w17_4;
            heap_bh96_w18_5_d1 <=  heap_bh96_w18_5;
            heap_bh96_w19_5_d1 <=  heap_bh96_w19_5;
            inAdder0_bh96_2_d1 <=  inAdder0_bh96_2;
            inAdder1_bh96_2_d1 <=  inAdder1_bh96_2;
            cin_bh96_2_d1 <=  cin_bh96_2;
            heap_bh96_w19_6_d1 <=  heap_bh96_w19_6;
            heap_bh96_w20_5_d1 <=  heap_bh96_w20_5;
            heap_bh96_w21_4_d1 <=  heap_bh96_w21_4;
            heap_bh96_w22_5_d1 <=  heap_bh96_w22_5;
            heap_bh96_w23_4_d1 <=  heap_bh96_w23_4;
            heap_bh96_w24_5_d1 <=  heap_bh96_w24_5;
            heap_bh96_w25_4_d1 <=  heap_bh96_w25_4;
            heap_bh96_w26_3_d1 <=  heap_bh96_w26_3;
            inAdder0_bh96_3_d1 <=  inAdder0_bh96_3;
            inAdder1_bh96_3_d1 <=  inAdder1_bh96_3;
            cin_bh96_3_d1 <=  cin_bh96_3;
            heap_bh96_w26_4_d1 <=  heap_bh96_w26_4;
            heap_bh96_w27_2_d1 <=  heap_bh96_w27_2;
            heap_bh96_w28_2_d1 <=  heap_bh96_w28_2;
            heap_bh96_w29_2_d1 <=  heap_bh96_w29_2;
            heap_bh96_w30_2_d1 <=  heap_bh96_w30_2;
            heap_bh96_w31_2_d1 <=  heap_bh96_w31_2;
            heap_bh96_w32_2_d1 <=  heap_bh96_w32_2;
            heap_bh96_w33_2_d1 <=  heap_bh96_w33_2;
            heap_bh96_w34_2_d1 <=  heap_bh96_w34_2;
            heap_bh96_w35_2_d1 <=  heap_bh96_w35_2;
            heap_bh96_w36_2_d1 <=  heap_bh96_w36_2;
            heap_bh96_w37_2_d1 <=  heap_bh96_w37_2;
            heap_bh96_w38_2_d1 <=  heap_bh96_w38_2;
            heap_bh96_w39_2_d1 <=  heap_bh96_w39_2;
            heap_bh96_w40_2_d1 <=  heap_bh96_w40_2;
         end if;
      end process;
   XX_m95 <= Y ;
   YY_m95 <= X ;
   
   -- Beginning of code generated by BitHeap::generateCompressorVHDL
   -- code generated by BitHeap::generateSupertileVHDL()
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh96_ch0_0 <= ("0" & XX_m95(34 downto 11) & "") * ("0" & YY_m95(29 downto 13) & "");
   heap_bh96_w40_0 <= DSP_bh96_ch0_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w39_0 <= DSP_bh96_ch0_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w38_0 <= DSP_bh96_ch0_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w37_0 <= DSP_bh96_ch0_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w36_0 <= DSP_bh96_ch0_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w35_0 <= DSP_bh96_ch0_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w34_0 <= DSP_bh96_ch0_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w33_0 <= DSP_bh96_ch0_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w32_0 <= DSP_bh96_ch0_0(32); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w31_0 <= DSP_bh96_ch0_0(31); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w30_0 <= DSP_bh96_ch0_0(30); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w29_0 <= DSP_bh96_ch0_0(29); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w28_0 <= DSP_bh96_ch0_0(28); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w27_0 <= DSP_bh96_ch0_0(27); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w26_0 <= DSP_bh96_ch0_0(26); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w25_0 <= DSP_bh96_ch0_0(25); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w24_0 <= DSP_bh96_ch0_0(24); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w23_0 <= DSP_bh96_ch0_0(23); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w22_0 <= DSP_bh96_ch0_0(22); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w21_0 <= DSP_bh96_ch0_0(21); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w20_0 <= DSP_bh96_ch0_0(20); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w19_0 <= DSP_bh96_ch0_0(19); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w18_0 <= DSP_bh96_ch0_0(18); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w17_0 <= DSP_bh96_ch0_0(17); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w16_0 <= DSP_bh96_ch0_0(16); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w15_0 <= DSP_bh96_ch0_0(15); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w14_0 <= DSP_bh96_ch0_0(14); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w13_0 <= DSP_bh96_ch0_0(13); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w12_0 <= DSP_bh96_ch0_0(12); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w11_0 <= DSP_bh96_ch0_0(11); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w10_0 <= DSP_bh96_ch0_0(10); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w9_0 <= DSP_bh96_ch0_0(9); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w8_0 <= DSP_bh96_ch0_0(8); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w7_0 <= DSP_bh96_ch0_0(7); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w6_0 <= DSP_bh96_ch0_0(6); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w5_0 <= DSP_bh96_ch0_0(5); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w4_0 <= DSP_bh96_ch0_0(4); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w3_0 <= DSP_bh96_ch0_0(3); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w2_0 <= DSP_bh96_ch0_0(2); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w1_0 <= DSP_bh96_ch0_0(1); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w0_0 <= DSP_bh96_ch0_0(0); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh96_ch1_0 <= ("00" & XX_m95(10 downto 0) & "000000000000") * ("0" & YY_m95(29 downto 13) & "");
   heap_bh96_w19_1 <= not( DSP_bh96_ch1_0(42) ); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w18_1 <= DSP_bh96_ch1_0(41); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w17_1 <= DSP_bh96_ch1_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w16_1 <= DSP_bh96_ch1_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w15_1 <= DSP_bh96_ch1_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w14_1 <= DSP_bh96_ch1_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w13_1 <= DSP_bh96_ch1_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w12_1 <= DSP_bh96_ch1_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w11_1 <= DSP_bh96_ch1_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w10_1 <= DSP_bh96_ch1_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w9_1 <= DSP_bh96_ch1_0(32); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w8_1 <= DSP_bh96_ch1_0(31); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w7_1 <= DSP_bh96_ch1_0(30); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w6_1 <= DSP_bh96_ch1_0(29); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w5_1 <= DSP_bh96_ch1_0(28); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w4_1 <= DSP_bh96_ch1_0(27); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w3_1 <= DSP_bh96_ch1_0(26); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w2_1 <= DSP_bh96_ch1_0(25); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w1_1 <= DSP_bh96_ch1_0(24); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w0_1 <= DSP_bh96_ch1_0(23); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh96_ch2_0 <= ("0" & XX_m95(34 downto 11) & "") * ("00" & YY_m95(12 downto 0) & "000");
   heap_bh96_w26_1 <= not( DSP_bh96_ch2_0(42) ); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w25_1 <= DSP_bh96_ch2_0(41); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w24_1 <= DSP_bh96_ch2_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w23_1 <= DSP_bh96_ch2_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w22_1 <= DSP_bh96_ch2_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w21_1 <= DSP_bh96_ch2_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w20_1 <= DSP_bh96_ch2_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w19_2 <= DSP_bh96_ch2_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w18_2 <= DSP_bh96_ch2_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w17_2 <= DSP_bh96_ch2_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w16_2 <= DSP_bh96_ch2_0(32); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w15_2 <= DSP_bh96_ch2_0(31); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w14_2 <= DSP_bh96_ch2_0(30); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w13_2 <= DSP_bh96_ch2_0(29); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w12_2 <= DSP_bh96_ch2_0(28); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w11_2 <= DSP_bh96_ch2_0(27); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w10_2 <= DSP_bh96_ch2_0(26); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w9_2 <= DSP_bh96_ch2_0(25); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w8_2 <= DSP_bh96_ch2_0(24); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w7_2 <= DSP_bh96_ch2_0(23); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w6_2 <= DSP_bh96_ch2_0(22); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w5_2 <= DSP_bh96_ch2_0(21); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w4_2 <= DSP_bh96_ch2_0(20); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w3_2 <= DSP_bh96_ch2_0(19); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w2_2 <= DSP_bh96_ch2_0(18); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w1_2 <= DSP_bh96_ch2_0(17); -- cycle= 0 cp= 1.638e-09
   heap_bh96_w0_2 <= DSP_bh96_ch2_0(16); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------

   -- Adding the constant bits
   heap_bh96_w5_3 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w19_3 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w20_2 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w21_2 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w22_2 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w23_2 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w24_2 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w25_2 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w27_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w28_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w29_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w30_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w31_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w32_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w33_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w34_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w35_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w36_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w37_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w38_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w39_1 <= '1'; -- cycle= 0 cp= 0
   heap_bh96_w40_1 <= '1'; -- cycle= 0 cp= 0
   ----------------Synchro barrier, entering cycle 0----------------

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh96_0_0 <= heap_bh96_w0_2 & heap_bh96_w0_1 & heap_bh96_w0_0;
   CompressorIn_bh96_0_1 <= heap_bh96_w1_2 & heap_bh96_w1_1;
   Compressor_bh96_0: Compressor_23_3
      port map ( R => CompressorOut_bh96_0_0   ,
                 X0 => CompressorIn_bh96_0_0,
                 X1 => CompressorIn_bh96_0_1);
   heap_bh96_w0_3 <= CompressorOut_bh96_0_0(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w1_3 <= CompressorOut_bh96_0_0(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w2_3 <= CompressorOut_bh96_0_0(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh96_1_2 <= heap_bh96_w2_2 & heap_bh96_w2_1 & heap_bh96_w2_0;
   CompressorIn_bh96_1_3 <= heap_bh96_w3_2 & heap_bh96_w3_1;
   Compressor_bh96_1: Compressor_23_3
      port map ( R => CompressorOut_bh96_1_1   ,
                 X0 => CompressorIn_bh96_1_2,
                 X1 => CompressorIn_bh96_1_3);
   heap_bh96_w2_4 <= CompressorOut_bh96_1_1(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w3_3 <= CompressorOut_bh96_1_1(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w4_3 <= CompressorOut_bh96_1_1(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh96_2_4 <= heap_bh96_w4_2 & heap_bh96_w4_1 & heap_bh96_w4_0;
   CompressorIn_bh96_2_5 <= heap_bh96_w5_3 & heap_bh96_w5_2;
   Compressor_bh96_2: Compressor_23_3
      port map ( R => CompressorOut_bh96_2_2   ,
                 X0 => CompressorIn_bh96_2_4,
                 X1 => CompressorIn_bh96_2_5);
   heap_bh96_w4_4 <= CompressorOut_bh96_2_2(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w5_4 <= CompressorOut_bh96_2_2(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w6_3 <= CompressorOut_bh96_2_2(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh96_3_6 <= heap_bh96_w6_2 & heap_bh96_w6_1 & heap_bh96_w6_0;
   CompressorIn_bh96_3_7 <= heap_bh96_w7_2 & heap_bh96_w7_1;
   Compressor_bh96_3: Compressor_23_3
      port map ( R => CompressorOut_bh96_3_3   ,
                 X0 => CompressorIn_bh96_3_6,
                 X1 => CompressorIn_bh96_3_7);
   heap_bh96_w6_4 <= CompressorOut_bh96_3_3(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w7_3 <= CompressorOut_bh96_3_3(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w8_3 <= CompressorOut_bh96_3_3(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh96_4_8 <= heap_bh96_w8_2 & heap_bh96_w8_1 & heap_bh96_w8_0;
   CompressorIn_bh96_4_9 <= heap_bh96_w9_2 & heap_bh96_w9_1;
   Compressor_bh96_4: Compressor_23_3
      port map ( R => CompressorOut_bh96_4_4   ,
                 X0 => CompressorIn_bh96_4_8,
                 X1 => CompressorIn_bh96_4_9);
   heap_bh96_w8_4 <= CompressorOut_bh96_4_4(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w9_3 <= CompressorOut_bh96_4_4(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w10_3 <= CompressorOut_bh96_4_4(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh96_5_10 <= heap_bh96_w10_2 & heap_bh96_w10_1 & heap_bh96_w10_0;
   CompressorIn_bh96_5_11 <= heap_bh96_w11_2 & heap_bh96_w11_1;
   Compressor_bh96_5: Compressor_23_3
      port map ( R => CompressorOut_bh96_5_5   ,
                 X0 => CompressorIn_bh96_5_10,
                 X1 => CompressorIn_bh96_5_11);
   heap_bh96_w10_4 <= CompressorOut_bh96_5_5(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w11_3 <= CompressorOut_bh96_5_5(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w12_3 <= CompressorOut_bh96_5_5(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh96_6_12 <= heap_bh96_w12_2 & heap_bh96_w12_1 & heap_bh96_w12_0;
   CompressorIn_bh96_6_13 <= heap_bh96_w13_2 & heap_bh96_w13_1;
   Compressor_bh96_6: Compressor_23_3
      port map ( R => CompressorOut_bh96_6_6   ,
                 X0 => CompressorIn_bh96_6_12,
                 X1 => CompressorIn_bh96_6_13);
   heap_bh96_w12_4 <= CompressorOut_bh96_6_6(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w13_3 <= CompressorOut_bh96_6_6(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w14_3 <= CompressorOut_bh96_6_6(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh96_7_14 <= heap_bh96_w14_2 & heap_bh96_w14_1 & heap_bh96_w14_0;
   CompressorIn_bh96_7_15 <= heap_bh96_w15_2 & heap_bh96_w15_1;
   Compressor_bh96_7: Compressor_23_3
      port map ( R => CompressorOut_bh96_7_7   ,
                 X0 => CompressorIn_bh96_7_14,
                 X1 => CompressorIn_bh96_7_15);
   heap_bh96_w14_4 <= CompressorOut_bh96_7_7(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w15_3 <= CompressorOut_bh96_7_7(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w16_3 <= CompressorOut_bh96_7_7(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh96_8_16 <= heap_bh96_w16_2 & heap_bh96_w16_1 & heap_bh96_w16_0;
   CompressorIn_bh96_8_17 <= heap_bh96_w17_2 & heap_bh96_w17_1;
   Compressor_bh96_8: Compressor_23_3
      port map ( R => CompressorOut_bh96_8_8   ,
                 X0 => CompressorIn_bh96_8_16,
                 X1 => CompressorIn_bh96_8_17);
   heap_bh96_w16_4 <= CompressorOut_bh96_8_8(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w17_3 <= CompressorOut_bh96_8_8(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w18_3 <= CompressorOut_bh96_8_8(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh96_9_18 <= heap_bh96_w18_2 & heap_bh96_w18_1 & heap_bh96_w18_0;
   CompressorIn_bh96_9_19 <= heap_bh96_w19_3 & heap_bh96_w19_2;
   Compressor_bh96_9: Compressor_23_3
      port map ( R => CompressorOut_bh96_9_9   ,
                 X0 => CompressorIn_bh96_9_18,
                 X1 => CompressorIn_bh96_9_19);
   heap_bh96_w18_4 <= CompressorOut_bh96_9_9(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w19_4 <= CompressorOut_bh96_9_9(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w20_3 <= CompressorOut_bh96_9_9(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh96_10_20 <= heap_bh96_w20_2 & heap_bh96_w20_1 & heap_bh96_w20_0;
   CompressorIn_bh96_10_21 <= heap_bh96_w21_2 & heap_bh96_w21_1;
   Compressor_bh96_10: Compressor_23_3
      port map ( R => CompressorOut_bh96_10_10   ,
                 X0 => CompressorIn_bh96_10_20,
                 X1 => CompressorIn_bh96_10_21);
   heap_bh96_w20_4 <= CompressorOut_bh96_10_10(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w21_3 <= CompressorOut_bh96_10_10(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w22_3 <= CompressorOut_bh96_10_10(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh96_11_22 <= heap_bh96_w22_2 & heap_bh96_w22_1 & heap_bh96_w22_0;
   CompressorIn_bh96_11_23 <= heap_bh96_w23_2 & heap_bh96_w23_1;
   Compressor_bh96_11: Compressor_23_3
      port map ( R => CompressorOut_bh96_11_11   ,
                 X0 => CompressorIn_bh96_11_22,
                 X1 => CompressorIn_bh96_11_23);
   heap_bh96_w22_4 <= CompressorOut_bh96_11_11(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w23_3 <= CompressorOut_bh96_11_11(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w24_3 <= CompressorOut_bh96_11_11(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh96_12_24 <= heap_bh96_w24_2 & heap_bh96_w24_1 & heap_bh96_w24_0;
   CompressorIn_bh96_12_25 <= heap_bh96_w25_2 & heap_bh96_w25_1;
   Compressor_bh96_12: Compressor_23_3
      port map ( R => CompressorOut_bh96_12_12   ,
                 X0 => CompressorIn_bh96_12_24,
                 X1 => CompressorIn_bh96_12_25);
   heap_bh96_w24_4 <= CompressorOut_bh96_12_12(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w25_3 <= CompressorOut_bh96_12_12(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh96_w26_2 <= CompressorOut_bh96_12_12(2); -- cycle= 0 cp= 2.01965e-09
   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 0----------------
   inAdder0_bh96_0 <= '0' & heap_bh96_w4_4 & heap_bh96_w3_0 & heap_bh96_w2_4 & heap_bh96_w1_0 & heap_bh96_w0_3;
   inAdder1_bh96_0 <= '0' & heap_bh96_w4_3 & heap_bh96_w3_3 & heap_bh96_w2_3 & heap_bh96_w1_3 & '0';
   cin_bh96_0 <= '0';
   ----------------Synchro barrier, entering cycle 1----------------
   outAdder_bh96_0 <= inAdder0_bh96_0_d1 + inAdder1_bh96_0_d1 + cin_bh96_0_d1;
   heap_bh96_w0_4 <= outAdder_bh96_0(0); -- cycle= 1 cp= 8.5565e-10
   heap_bh96_w1_4 <= outAdder_bh96_0(1); -- cycle= 1 cp= 8.5565e-10
   heap_bh96_w2_5 <= outAdder_bh96_0(2); -- cycle= 1 cp= 8.5565e-10
   heap_bh96_w3_4 <= outAdder_bh96_0(3); -- cycle= 1 cp= 8.5565e-10
   heap_bh96_w4_5 <= outAdder_bh96_0(4); -- cycle= 1 cp= 8.5565e-10
   heap_bh96_w5_5 <= outAdder_bh96_0(5); -- cycle= 1 cp= 8.5565e-10
   ----------------Synchro barrier, entering cycle 1----------------
   tempR_bh96_0 <= heap_bh96_w4_5 & heap_bh96_w3_4 & heap_bh96_w2_5 & heap_bh96_w1_4 & heap_bh96_w0_4; -- already compressed
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 0----------------
   inAdder0_bh96_1 <= '0' & heap_bh96_w18_4 & heap_bh96_w17_0 & heap_bh96_w16_4 & heap_bh96_w15_0 & heap_bh96_w14_4 & heap_bh96_w13_0 & heap_bh96_w12_4 & heap_bh96_w11_0 & heap_bh96_w10_4 & heap_bh96_w9_0 & heap_bh96_w8_4 & heap_bh96_w7_0 & heap_bh96_w6_4 & heap_bh96_w5_1;
   inAdder1_bh96_1 <= '0' & heap_bh96_w18_3 & heap_bh96_w17_3 & heap_bh96_w16_3 & heap_bh96_w15_3 & heap_bh96_w14_3 & heap_bh96_w13_3 & heap_bh96_w12_3 & heap_bh96_w11_3 & heap_bh96_w10_3 & heap_bh96_w9_3 & heap_bh96_w8_3 & heap_bh96_w7_3 & heap_bh96_w6_3 & heap_bh96_w5_0;
   cin_bh96_1 <= heap_bh96_w5_4;
   ----------------Synchro barrier, entering cycle 1----------------
   outAdder_bh96_1 <= inAdder0_bh96_1_d1 + inAdder1_bh96_1_d1 + cin_bh96_1_d1;
   heap_bh96_w5_6 <= outAdder_bh96_1(0); -- cycle= 1 cp= 9.9065e-10
   heap_bh96_w6_5 <= outAdder_bh96_1(1); -- cycle= 1 cp= 9.9065e-10
   heap_bh96_w7_4 <= outAdder_bh96_1(2); -- cycle= 1 cp= 9.9065e-10
   heap_bh96_w8_5 <= outAdder_bh96_1(3); -- cycle= 1 cp= 9.9065e-10
   heap_bh96_w9_4 <= outAdder_bh96_1(4); -- cycle= 1 cp= 9.9065e-10
   heap_bh96_w10_5 <= outAdder_bh96_1(5); -- cycle= 1 cp= 9.9065e-10
   heap_bh96_w11_4 <= outAdder_bh96_1(6); -- cycle= 1 cp= 9.9065e-10
   heap_bh96_w12_5 <= outAdder_bh96_1(7); -- cycle= 1 cp= 9.9065e-10
   heap_bh96_w13_4 <= outAdder_bh96_1(8); -- cycle= 1 cp= 9.9065e-10
   heap_bh96_w14_5 <= outAdder_bh96_1(9); -- cycle= 1 cp= 9.9065e-10
   heap_bh96_w15_4 <= outAdder_bh96_1(10); -- cycle= 1 cp= 9.9065e-10
   heap_bh96_w16_5 <= outAdder_bh96_1(11); -- cycle= 1 cp= 9.9065e-10
   heap_bh96_w17_4 <= outAdder_bh96_1(12); -- cycle= 1 cp= 9.9065e-10
   heap_bh96_w18_5 <= outAdder_bh96_1(13); -- cycle= 1 cp= 9.9065e-10
   heap_bh96_w19_5 <= outAdder_bh96_1(14); -- cycle= 1 cp= 9.9065e-10
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 0----------------
   inAdder0_bh96_2 <= '0' & heap_bh96_w25_0 & heap_bh96_w24_4 & heap_bh96_w23_0 & heap_bh96_w22_4 & heap_bh96_w21_0 & heap_bh96_w20_4 & heap_bh96_w19_1;
   inAdder1_bh96_2 <= '0' & heap_bh96_w25_3 & heap_bh96_w24_3 & heap_bh96_w23_3 & heap_bh96_w22_3 & heap_bh96_w21_3 & heap_bh96_w20_3 & heap_bh96_w19_0;
   cin_bh96_2 <= heap_bh96_w19_4;
   ----------------Synchro barrier, entering cycle 1----------------
   outAdder_bh96_2 <= inAdder0_bh96_2_d1 + inAdder1_bh96_2_d1 + cin_bh96_2_d1;
   heap_bh96_w19_6 <= outAdder_bh96_2(0); -- cycle= 1 cp= 8.8565e-10
   heap_bh96_w20_5 <= outAdder_bh96_2(1); -- cycle= 1 cp= 8.8565e-10
   heap_bh96_w21_4 <= outAdder_bh96_2(2); -- cycle= 1 cp= 8.8565e-10
   heap_bh96_w22_5 <= outAdder_bh96_2(3); -- cycle= 1 cp= 8.8565e-10
   heap_bh96_w23_4 <= outAdder_bh96_2(4); -- cycle= 1 cp= 8.8565e-10
   heap_bh96_w24_5 <= outAdder_bh96_2(5); -- cycle= 1 cp= 8.8565e-10
   heap_bh96_w25_4 <= outAdder_bh96_2(6); -- cycle= 1 cp= 8.8565e-10
   heap_bh96_w26_3 <= outAdder_bh96_2(7); -- cycle= 1 cp= 8.8565e-10
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 0----------------
   inAdder0_bh96_3 <= '0' & heap_bh96_w40_1 & heap_bh96_w39_1 & heap_bh96_w38_1 & heap_bh96_w37_1 & heap_bh96_w36_1 & heap_bh96_w35_1 & heap_bh96_w34_1 & heap_bh96_w33_1 & heap_bh96_w32_1 & heap_bh96_w31_1 & heap_bh96_w30_1 & heap_bh96_w29_1 & heap_bh96_w28_1 & heap_bh96_w27_1 & heap_bh96_w26_1;
   inAdder1_bh96_3 <= '0' & heap_bh96_w40_0 & heap_bh96_w39_0 & heap_bh96_w38_0 & heap_bh96_w37_0 & heap_bh96_w36_0 & heap_bh96_w35_0 & heap_bh96_w34_0 & heap_bh96_w33_0 & heap_bh96_w32_0 & heap_bh96_w31_0 & heap_bh96_w30_0 & heap_bh96_w29_0 & heap_bh96_w28_0 & heap_bh96_w27_0 & heap_bh96_w26_0;
   cin_bh96_3 <= heap_bh96_w26_2;
   ----------------Synchro barrier, entering cycle 1----------------
   outAdder_bh96_3 <= inAdder0_bh96_3_d1 + inAdder1_bh96_3_d1 + cin_bh96_3_d1;
   heap_bh96_w26_4 <= outAdder_bh96_3(0); -- cycle= 1 cp= 1.00565e-09
   heap_bh96_w27_2 <= outAdder_bh96_3(1); -- cycle= 1 cp= 1.00565e-09
   heap_bh96_w28_2 <= outAdder_bh96_3(2); -- cycle= 1 cp= 1.00565e-09
   heap_bh96_w29_2 <= outAdder_bh96_3(3); -- cycle= 1 cp= 1.00565e-09
   heap_bh96_w30_2 <= outAdder_bh96_3(4); -- cycle= 1 cp= 1.00565e-09
   heap_bh96_w31_2 <= outAdder_bh96_3(5); -- cycle= 1 cp= 1.00565e-09
   heap_bh96_w32_2 <= outAdder_bh96_3(6); -- cycle= 1 cp= 1.00565e-09
   heap_bh96_w33_2 <= outAdder_bh96_3(7); -- cycle= 1 cp= 1.00565e-09
   heap_bh96_w34_2 <= outAdder_bh96_3(8); -- cycle= 1 cp= 1.00565e-09
   heap_bh96_w35_2 <= outAdder_bh96_3(9); -- cycle= 1 cp= 1.00565e-09
   heap_bh96_w36_2 <= outAdder_bh96_3(10); -- cycle= 1 cp= 1.00565e-09
   heap_bh96_w37_2 <= outAdder_bh96_3(11); -- cycle= 1 cp= 1.00565e-09
   heap_bh96_w38_2 <= outAdder_bh96_3(12); -- cycle= 1 cp= 1.00565e-09
   heap_bh96_w39_2 <= outAdder_bh96_3(13); -- cycle= 1 cp= 1.00565e-09
   heap_bh96_w40_2 <= outAdder_bh96_3(14); -- cycle= 1 cp= 1.00565e-09
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 2----------------
   finalAdderIn0_bh96 <= "0" & heap_bh96_w40_2_d1 & heap_bh96_w39_2_d1 & heap_bh96_w38_2_d1 & heap_bh96_w37_2_d1 & heap_bh96_w36_2_d1 & heap_bh96_w35_2_d1 & heap_bh96_w34_2_d1 & heap_bh96_w33_2_d1 & heap_bh96_w32_2_d1 & heap_bh96_w31_2_d1 & heap_bh96_w30_2_d1 & heap_bh96_w29_2_d1 & heap_bh96_w28_2_d1 & heap_bh96_w27_2_d1 & heap_bh96_w26_3_d1 & heap_bh96_w25_4_d1 & heap_bh96_w24_5_d1 & heap_bh96_w23_4_d1 & heap_bh96_w22_5_d1 & heap_bh96_w21_4_d1 & heap_bh96_w20_5_d1 & heap_bh96_w19_6_d1 & heap_bh96_w18_5_d1 & heap_bh96_w17_4_d1 & heap_bh96_w16_5_d1 & heap_bh96_w15_4_d1 & heap_bh96_w14_5_d1 & heap_bh96_w13_4_d1 & heap_bh96_w12_5_d1 & heap_bh96_w11_4_d1 & heap_bh96_w10_5_d1 & heap_bh96_w9_4_d1 & heap_bh96_w8_5_d1 & heap_bh96_w7_4_d1 & heap_bh96_w6_5_d1 & heap_bh96_w5_5_d1;
   finalAdderIn1_bh96 <= "0" & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh96_w26_4_d1 & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh96_w19_5_d1 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh96_w5_6_d1;
   finalAdderCin_bh96 <= '0';
   Adder_final96_4: IntAdder_37_f400_uid120  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => finalAdderCin_bh96,
                 R => finalAdderOut_bh96   ,
                 X => finalAdderIn0_bh96,
                 Y => finalAdderIn1_bh96);
   -- concatenate all the compressed chunks
   CompressionResult96 <= finalAdderOut_bh96 & tempR_bh96_0_d1;
   -- End of code generated by BitHeap::generateCompressorVHDL
   R <= CompressionResult96(40 downto 6);
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_42_f400_uid128
--                     (IntAdderClassical_42_f400_uid130)
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

entity IntAdder_42_f400_uid128 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(41 downto 0);
          Y : in  std_logic_vector(41 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(41 downto 0)   );
end entity;

architecture arch of IntAdder_42_f400_uid128 is
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
--                     PolynomialEvaluator_degree2_uid39
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2010-2012)
--------------------------------------------------------------------------------
-- Pipeline depth: 5 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity PolynomialEvaluator_degree2_uid39 is
   port ( clk, rst : in std_logic;
          Y : in  std_logic_vector(28 downto 0);
          a0 : in  std_logic_vector(40 downto 0);
          a1 : in  std_logic_vector(33 downto 0);
          a2 : in  std_logic_vector(25 downto 0);
          R : out  std_logic_vector(41 downto 0)   );
end entity;

architecture arch of PolynomialEvaluator_degree2_uid39 is
   component IntAdder_35_f400_uid87 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(34 downto 0);
             Y : in  std_logic_vector(34 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(34 downto 0)   );
   end component;

   component IntAdder_42_f400_uid128 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(41 downto 0);
             Y : in  std_logic_vector(41 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(41 downto 0)   );
   end component;

   component IntMultiplier_UsingDSP_25_26_26_signed_uid41 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(24 downto 0);
             Y : in  std_logic_vector(25 downto 0);
             R : out  std_logic_vector(25 downto 0)   );
   end component;

   component IntMultiplier_UsingDSP_30_35_35_signed_uid94 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(29 downto 0);
             Y : in  std_logic_vector(34 downto 0);
             R : out  std_logic_vector(34 downto 0)   );
   end component;

signal sigmaP0, sigmaP0_d1 :  std_logic_vector(25 downto 0);
signal yT1, yT1_d1 :  std_logic_vector(24 downto 0);
signal piPT1 :  std_logic_vector(25 downto 0);
signal op1_1 :  std_logic_vector(34 downto 0);
signal op2_1 :  std_logic_vector(34 downto 0);
signal sigmaP1 :  std_logic_vector(34 downto 0);
signal yT2 :  std_logic_vector(29 downto 0);
signal piP2 :  std_logic_vector(34 downto 0);
signal op1_2 :  std_logic_vector(41 downto 0);
signal op2_2 :  std_logic_vector(41 downto 0);
signal sigmaP2 :  std_logic_vector(41 downto 0);
signal Y_d1, Y_d2, Y_d3 :  std_logic_vector(28 downto 0);
signal a0_d1, a0_d2, a0_d3, a0_d4, a0_d5 :  std_logic_vector(40 downto 0);
signal a1_d1, a1_d2, a1_d3 :  std_logic_vector(33 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            sigmaP0_d1 <=  sigmaP0;
            yT1_d1 <=  yT1;
            Y_d1 <=  Y;
            Y_d2 <=  Y_d1;
            Y_d3 <=  Y_d2;
            a0_d1 <=  a0;
            a0_d2 <=  a0_d1;
            a0_d3 <=  a0_d2;
            a0_d4 <=  a0_d3;
            a0_d5 <=  a0_d4;
            a1_d1 <=  a1;
            a1_d2 <=  a1_d1;
            a1_d3 <=  a1_d2;
         end if;
      end process;
   -- LSB weight of sigmaP0 is=0 size=26
   sigmaP0 <= a2;
   -- LSB weight of yT1 is=-9 size=25
   yT1 <= "0" & Y(28 downto 5);
   -- LSB weight of piP1 is=-9 size=51
   ----------------Synchro barrier, entering cycle 1----------------
   Product_1: IntMultiplier_UsingDSP_25_26_26_signed_uid41  -- pipelineDepth=2 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => piPT1,
                 X => yT1_d1,
                 Y => sigmaP0_d1);
   ----------------Synchro barrier, entering cycle 3----------------
   op1_1 <= ((0 downto 0 => a1_d3(33)) & a1_d3 & "");
   op2_1 <= ((9 downto 0 => piPT1(24)) & piPT1(24 downto 0) & "");
   Sum1: IntAdder_35_f400_uid87  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => '1',
                 R => sigmaP1,
                 X => op1_1,
                 Y => op2_1);
   -- weight of yT2 is=-9 size=30
   yT2 <= "0" & Y_d3(28 downto 0);
   -- weight of piP2 is=-8 size=65
   Product_2: IntMultiplier_UsingDSP_30_35_35_signed_uid94  -- pipelineDepth=2 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => piP2,
                 X => yT2,
                 Y => sigmaP1);
   ----------------Synchro barrier, entering cycle 5----------------
   -- the delay at the output of the multiplier is : 0
   op1_2 <= (7 downto 0 => piP2(34)) & piP2(33 downto 0);
   op2_2 <= (0 downto 0 => a0_d5(40)) & a0_d5;
   Sum2: IntAdder_42_f400_uid128  -- pipelineDepth=0 maxInDelay=3.2865e-10
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => '1',
                 R => sigmaP2,
                 X => op1_2,
                 Y => op2_2);
   R <= sigmaP2(41 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                            FunctionEvaluator_36
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Mioara Joldes, Florent de Dinechin (2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 7 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity FunctionEvaluator_36 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(37 downto 0);
          R : out  std_logic_vector(38 downto 0)   );
end entity;

architecture arch of FunctionEvaluator_36 is
   component PolyCoeffTable_9_101 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(8 downto 0);
             Y : out  std_logic_vector(100 downto 0)   );
   end component;

   component PolynomialEvaluator_degree2_uid39 is
      port ( clk, rst : in std_logic;
             Y : in  std_logic_vector(28 downto 0);
             a0 : in  std_logic_vector(40 downto 0);
             a1 : in  std_logic_vector(33 downto 0);
             a2 : in  std_logic_vector(25 downto 0);
             R : out  std_logic_vector(41 downto 0)   );
   end component;

signal addr :  std_logic_vector(8 downto 0);
signal Coef, Coef_d1 :  std_logic_vector(100 downto 0);
signal y :  std_logic_vector(28 downto 0);
signal a0 :  std_logic_vector(40 downto 0);
signal a1 :  std_logic_vector(33 downto 0);
signal a2 :  std_logic_vector(25 downto 0);
signal Rpe :  std_logic_vector(41 downto 0);
signal X_d1, X_d2 :  std_logic_vector(37 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            Coef_d1 <=  Coef;
            X_d1 <=  X;
            X_d2 <=  X_d1;
         end if;
      end process;
   addr <= X(37 downto 29);
   GeneratedTable: PolyCoeffTable_9_101  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => addr,
                 Y => Coef);
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 2----------------
   y <= X_d2(28 downto 0);
   a0<= Coef_d1(40 downto 0);
   a1<= Coef_d1(74 downto 41);
   a2<= Coef_d1(100 downto 75);
   PolynomialEvaluator: PolynomialEvaluator_degree2_uid39  -- pipelineDepth=5 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => Rpe,
                 Y => y,
                 a0 => a0,
                 a1 => a1,
                 a2 => a2);
   ----------------Synchro barrier, entering cycle 7----------------
   -- weight of poly result is : 1
    R <= Rpe(41 downto 3);
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_48_f400_uid138
--                    (IntAdderAlternative_48_f400_uid142)
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

entity IntAdder_48_f400_uid138 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(47 downto 0);
          Y : in  std_logic_vector(47 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(47 downto 0)   );
end entity;

architecture arch of IntAdder_48_f400_uid138 is
signal s_sum_l0_idx0 :  std_logic_vector(44 downto 0);
signal s_sum_l0_idx1, s_sum_l0_idx1_d1 :  std_logic_vector(4 downto 0);
signal sum_l0_idx0, sum_l0_idx0_d1 :  std_logic_vector(43 downto 0);
signal c_l0_idx0, c_l0_idx0_d1 :  std_logic_vector(0 downto 0);
signal sum_l0_idx1 :  std_logic_vector(3 downto 0);
signal c_l0_idx1 :  std_logic_vector(0 downto 0);
signal s_sum_l1_idx1 :  std_logic_vector(4 downto 0);
signal sum_l1_idx1 :  std_logic_vector(3 downto 0);
signal c_l1_idx1 :  std_logic_vector(0 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            s_sum_l0_idx1_d1 <=  s_sum_l0_idx1;
            sum_l0_idx0_d1 <=  sum_l0_idx0;
            c_l0_idx0_d1 <=  c_l0_idx0;
         end if;
      end process;
   --Alternative
   s_sum_l0_idx0 <= ( "0" & X(43 downto 0)) + ( "0" & Y(43 downto 0)) + Cin;
   s_sum_l0_idx1 <= ( "0" & X(47 downto 44)) + ( "0" & Y(47 downto 44));
   sum_l0_idx0 <= s_sum_l0_idx0(43 downto 0);
   c_l0_idx0 <= s_sum_l0_idx0(44 downto 44);
   sum_l0_idx1 <= s_sum_l0_idx1(3 downto 0);
   c_l0_idx1 <= s_sum_l0_idx1(4 downto 4);
   ----------------Synchro barrier, entering cycle 1----------------
   s_sum_l1_idx1 <=  s_sum_l0_idx1_d1 + c_l0_idx0_d1(0 downto 0);
   sum_l1_idx1 <= s_sum_l1_idx1(3 downto 0);
   c_l1_idx1 <= s_sum_l1_idx1(4 downto 4);
   R <= sum_l1_idx1(3 downto 0) & sum_l0_idx0_d1(43 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_48_f400_uid145
--                     (IntAdderClassical_48_f400_uid147)
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

entity IntAdder_48_f400_uid145 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(47 downto 0);
          Y : in  std_logic_vector(47 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(47 downto 0)   );
end entity;

architecture arch of IntAdder_48_f400_uid145 is
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
--                          IntAdder_62_f400_uid217
--                     (IntAdderClassical_62_f400_uid219)
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

entity IntAdder_62_f400_uid217 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(61 downto 0);
          Y : in  std_logic_vector(61 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(61 downto 0)   );
end entity;

architecture arch of IntAdder_62_f400_uid217 is
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
--               IntMultiplier_UsingDSP_47_48_0_unsigned_uid152
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Kinga Illyes, Bogdan Popa, Bogdan Pasca, 2012
--------------------------------------------------------------------------------
-- Pipeline depth: 3 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntMultiplier_UsingDSP_47_48_0_unsigned_uid152 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(46 downto 0);
          Y : in  std_logic_vector(47 downto 0);
          R : out  std_logic_vector(94 downto 0)   );
end entity;

architecture arch of IntMultiplier_UsingDSP_47_48_0_unsigned_uid152 is
   component Compressor_14_3 is
      port ( X0 : in  std_logic_vector(3 downto 0);
             X1 : in  std_logic_vector(0 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_23_3 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             X1 : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_3_2 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntAdder_62_f400_uid217 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(61 downto 0);
             Y : in  std_logic_vector(61 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(61 downto 0)   );
   end component;

signal XX_m153 :  std_logic_vector(47 downto 0);
signal YY_m153 :  std_logic_vector(46 downto 0);
signal DSP_bh154_ch0_0 :  std_logic_vector(40 downto 0);
signal heap_bh154_w94_0, heap_bh154_w94_0_d1, heap_bh154_w94_0_d2, heap_bh154_w94_0_d3 : std_logic;
signal heap_bh154_w93_0, heap_bh154_w93_0_d1, heap_bh154_w93_0_d2, heap_bh154_w93_0_d3 : std_logic;
signal heap_bh154_w92_0, heap_bh154_w92_0_d1, heap_bh154_w92_0_d2, heap_bh154_w92_0_d3 : std_logic;
signal heap_bh154_w91_0, heap_bh154_w91_0_d1, heap_bh154_w91_0_d2, heap_bh154_w91_0_d3 : std_logic;
signal heap_bh154_w90_0, heap_bh154_w90_0_d1, heap_bh154_w90_0_d2, heap_bh154_w90_0_d3 : std_logic;
signal heap_bh154_w89_0, heap_bh154_w89_0_d1, heap_bh154_w89_0_d2, heap_bh154_w89_0_d3 : std_logic;
signal heap_bh154_w88_0, heap_bh154_w88_0_d1, heap_bh154_w88_0_d2, heap_bh154_w88_0_d3 : std_logic;
signal heap_bh154_w87_0, heap_bh154_w87_0_d1, heap_bh154_w87_0_d2, heap_bh154_w87_0_d3 : std_logic;
signal heap_bh154_w86_0, heap_bh154_w86_0_d1, heap_bh154_w86_0_d2, heap_bh154_w86_0_d3 : std_logic;
signal heap_bh154_w85_0, heap_bh154_w85_0_d1, heap_bh154_w85_0_d2, heap_bh154_w85_0_d3 : std_logic;
signal heap_bh154_w84_0, heap_bh154_w84_0_d1, heap_bh154_w84_0_d2, heap_bh154_w84_0_d3 : std_logic;
signal heap_bh154_w83_0, heap_bh154_w83_0_d1, heap_bh154_w83_0_d2, heap_bh154_w83_0_d3 : std_logic;
signal heap_bh154_w82_0, heap_bh154_w82_0_d1, heap_bh154_w82_0_d2, heap_bh154_w82_0_d3 : std_logic;
signal heap_bh154_w81_0, heap_bh154_w81_0_d1, heap_bh154_w81_0_d2, heap_bh154_w81_0_d3 : std_logic;
signal heap_bh154_w80_0, heap_bh154_w80_0_d1, heap_bh154_w80_0_d2, heap_bh154_w80_0_d3 : std_logic;
signal heap_bh154_w79_0, heap_bh154_w79_0_d1, heap_bh154_w79_0_d2, heap_bh154_w79_0_d3 : std_logic;
signal heap_bh154_w78_0, heap_bh154_w78_0_d1, heap_bh154_w78_0_d2, heap_bh154_w78_0_d3 : std_logic;
signal heap_bh154_w77_0, heap_bh154_w77_0_d1 : std_logic;
signal heap_bh154_w76_0, heap_bh154_w76_0_d1 : std_logic;
signal heap_bh154_w75_0, heap_bh154_w75_0_d1 : std_logic;
signal heap_bh154_w74_0, heap_bh154_w74_0_d1 : std_logic;
signal heap_bh154_w73_0, heap_bh154_w73_0_d1 : std_logic;
signal heap_bh154_w72_0, heap_bh154_w72_0_d1 : std_logic;
signal heap_bh154_w71_0 : std_logic;
signal heap_bh154_w70_0 : std_logic;
signal heap_bh154_w69_0, heap_bh154_w69_0_d1 : std_logic;
signal heap_bh154_w68_0 : std_logic;
signal heap_bh154_w67_0, heap_bh154_w67_0_d1 : std_logic;
signal heap_bh154_w66_0 : std_logic;
signal heap_bh154_w65_0, heap_bh154_w65_0_d1 : std_logic;
signal heap_bh154_w64_0 : std_logic;
signal heap_bh154_w63_0, heap_bh154_w63_0_d1 : std_logic;
signal heap_bh154_w62_0 : std_logic;
signal heap_bh154_w61_0, heap_bh154_w61_0_d1 : std_logic;
signal heap_bh154_w60_0 : std_logic;
signal heap_bh154_w59_0, heap_bh154_w59_0_d1 : std_logic;
signal heap_bh154_w58_0 : std_logic;
signal heap_bh154_w57_0 : std_logic;
signal heap_bh154_w56_0, heap_bh154_w56_0_d1 : std_logic;
signal heap_bh154_w55_0 : std_logic;
signal heap_bh154_w54_0 : std_logic;
signal DSP_bh154_ch1_0 :  std_logic_vector(40 downto 0);
signal heap_bh154_w70_1 : std_logic;
signal heap_bh154_w69_1 : std_logic;
signal heap_bh154_w68_1 : std_logic;
signal heap_bh154_w67_1 : std_logic;
signal heap_bh154_w66_1 : std_logic;
signal heap_bh154_w65_1 : std_logic;
signal heap_bh154_w64_1 : std_logic;
signal heap_bh154_w63_1 : std_logic;
signal heap_bh154_w62_1 : std_logic;
signal heap_bh154_w61_1, heap_bh154_w61_1_d1 : std_logic;
signal heap_bh154_w60_1 : std_logic;
signal heap_bh154_w59_1, heap_bh154_w59_1_d1 : std_logic;
signal heap_bh154_w58_1 : std_logic;
signal heap_bh154_w57_1 : std_logic;
signal heap_bh154_w56_1, heap_bh154_w56_1_d1 : std_logic;
signal heap_bh154_w55_1 : std_logic;
signal heap_bh154_w54_1 : std_logic;
signal heap_bh154_w53_0, heap_bh154_w53_0_d1 : std_logic;
signal heap_bh154_w52_0 : std_logic;
signal heap_bh154_w51_0 : std_logic;
signal heap_bh154_w50_0, heap_bh154_w50_0_d1 : std_logic;
signal heap_bh154_w49_0 : std_logic;
signal heap_bh154_w48_0 : std_logic;
signal heap_bh154_w47_0, heap_bh154_w47_0_d1 : std_logic;
signal heap_bh154_w46_0 : std_logic;
signal heap_bh154_w45_0 : std_logic;
signal heap_bh154_w44_0, heap_bh154_w44_0_d1 : std_logic;
signal heap_bh154_w43_0 : std_logic;
signal heap_bh154_w42_0 : std_logic;
signal heap_bh154_w41_0, heap_bh154_w41_0_d1 : std_logic;
signal heap_bh154_w40_0 : std_logic;
signal heap_bh154_w39_0 : std_logic;
signal heap_bh154_w38_0, heap_bh154_w38_0_d1 : std_logic;
signal heap_bh154_w37_0 : std_logic;
signal heap_bh154_w36_0 : std_logic;
signal heap_bh154_w35_0, heap_bh154_w35_0_d1 : std_logic;
signal heap_bh154_w34_0 : std_logic;
signal heap_bh154_w33_0 : std_logic;
signal heap_bh154_w32_0, heap_bh154_w32_0_d1 : std_logic;
signal heap_bh154_w31_0 : std_logic;
signal heap_bh154_w30_0 : std_logic;
signal DSP_bh154_ch2_0 :  std_logic_vector(40 downto 0);
signal heap_bh154_w77_1, heap_bh154_w77_1_d1 : std_logic;
signal heap_bh154_w76_1, heap_bh154_w76_1_d1 : std_logic;
signal heap_bh154_w75_1, heap_bh154_w75_1_d1 : std_logic;
signal heap_bh154_w74_1, heap_bh154_w74_1_d1 : std_logic;
signal heap_bh154_w73_1, heap_bh154_w73_1_d1 : std_logic;
signal heap_bh154_w72_1, heap_bh154_w72_1_d1 : std_logic;
signal heap_bh154_w71_1 : std_logic;
signal heap_bh154_w70_2 : std_logic;
signal heap_bh154_w69_2 : std_logic;
signal heap_bh154_w68_2 : std_logic;
signal heap_bh154_w67_2 : std_logic;
signal heap_bh154_w66_2 : std_logic;
signal heap_bh154_w65_2 : std_logic;
signal heap_bh154_w64_2 : std_logic;
signal heap_bh154_w63_2 : std_logic;
signal heap_bh154_w62_2 : std_logic;
signal heap_bh154_w61_2 : std_logic;
signal heap_bh154_w60_2 : std_logic;
signal heap_bh154_w59_2 : std_logic;
signal heap_bh154_w58_2 : std_logic;
signal heap_bh154_w57_2 : std_logic;
signal heap_bh154_w56_2 : std_logic;
signal heap_bh154_w55_2 : std_logic;
signal heap_bh154_w54_2 : std_logic;
signal heap_bh154_w53_1, heap_bh154_w53_1_d1 : std_logic;
signal heap_bh154_w52_1 : std_logic;
signal heap_bh154_w51_1 : std_logic;
signal heap_bh154_w50_1, heap_bh154_w50_1_d1 : std_logic;
signal heap_bh154_w49_1 : std_logic;
signal heap_bh154_w48_1 : std_logic;
signal heap_bh154_w47_1, heap_bh154_w47_1_d1 : std_logic;
signal heap_bh154_w46_1 : std_logic;
signal heap_bh154_w45_1 : std_logic;
signal heap_bh154_w44_1, heap_bh154_w44_1_d1 : std_logic;
signal heap_bh154_w43_1 : std_logic;
signal heap_bh154_w42_1 : std_logic;
signal heap_bh154_w41_1, heap_bh154_w41_1_d1 : std_logic;
signal heap_bh154_w40_1 : std_logic;
signal heap_bh154_w39_1 : std_logic;
signal heap_bh154_w38_1, heap_bh154_w38_1_d1 : std_logic;
signal heap_bh154_w37_1 : std_logic;
signal DSP_bh154_ch3_0 :  std_logic_vector(40 downto 0);
signal heap_bh154_w53_2 : std_logic;
signal heap_bh154_w52_2 : std_logic;
signal heap_bh154_w51_2 : std_logic;
signal heap_bh154_w50_2 : std_logic;
signal heap_bh154_w49_2 : std_logic;
signal heap_bh154_w48_2 : std_logic;
signal heap_bh154_w47_2 : std_logic;
signal heap_bh154_w46_2 : std_logic;
signal heap_bh154_w45_2 : std_logic;
signal heap_bh154_w44_2 : std_logic;
signal heap_bh154_w43_2 : std_logic;
signal heap_bh154_w42_2 : std_logic;
signal heap_bh154_w41_2 : std_logic;
signal heap_bh154_w40_2 : std_logic;
signal heap_bh154_w39_2 : std_logic;
signal heap_bh154_w38_2 : std_logic;
signal heap_bh154_w37_2 : std_logic;
signal heap_bh154_w36_1 : std_logic;
signal heap_bh154_w35_1, heap_bh154_w35_1_d1 : std_logic;
signal heap_bh154_w34_1 : std_logic;
signal heap_bh154_w33_1 : std_logic;
signal heap_bh154_w32_1, heap_bh154_w32_1_d1 : std_logic;
signal heap_bh154_w31_1 : std_logic;
signal heap_bh154_w30_1 : std_logic;
signal heap_bh154_w29_0, heap_bh154_w29_0_d1 : std_logic;
signal heap_bh154_w28_0 : std_logic;
signal heap_bh154_w27_0, heap_bh154_w27_0_d1 : std_logic;
signal heap_bh154_w26_0 : std_logic;
signal heap_bh154_w25_0, heap_bh154_w25_0_d1 : std_logic;
signal heap_bh154_w24_0 : std_logic;
signal heap_bh154_w23_0, heap_bh154_w23_0_d1 : std_logic;
signal heap_bh154_w22_0 : std_logic;
signal heap_bh154_w21_0, heap_bh154_w21_0_d1 : std_logic;
signal heap_bh154_w20_0 : std_logic;
signal heap_bh154_w19_0 : std_logic;
signal heap_bh154_w18_0 : std_logic;
signal heap_bh154_w17_0 : std_logic;
signal heap_bh154_w16_0 : std_logic;
signal heap_bh154_w15_0 : std_logic;
signal heap_bh154_w14_0 : std_logic;
signal heap_bh154_w13_0 : std_logic;
signal DSP_bh154_ch4_0 :  std_logic_vector(40 downto 0);
signal heap_bh154_w60_3 : std_logic;
signal heap_bh154_w59_3 : std_logic;
signal heap_bh154_w58_3 : std_logic;
signal heap_bh154_w57_3 : std_logic;
signal heap_bh154_w56_3 : std_logic;
signal heap_bh154_w55_3 : std_logic;
signal heap_bh154_w54_3 : std_logic;
signal heap_bh154_w53_3 : std_logic;
signal heap_bh154_w52_3 : std_logic;
signal heap_bh154_w51_3 : std_logic;
signal heap_bh154_w50_3 : std_logic;
signal heap_bh154_w49_3 : std_logic;
signal heap_bh154_w48_3 : std_logic;
signal heap_bh154_w47_3 : std_logic;
signal heap_bh154_w46_3 : std_logic;
signal heap_bh154_w45_3 : std_logic;
signal heap_bh154_w44_3 : std_logic;
signal heap_bh154_w43_3 : std_logic;
signal heap_bh154_w42_3 : std_logic;
signal heap_bh154_w41_3 : std_logic;
signal heap_bh154_w40_3 : std_logic;
signal heap_bh154_w39_3 : std_logic;
signal heap_bh154_w38_3 : std_logic;
signal heap_bh154_w37_3 : std_logic;
signal heap_bh154_w36_2 : std_logic;
signal heap_bh154_w35_2 : std_logic;
signal heap_bh154_w34_2 : std_logic;
signal heap_bh154_w33_2 : std_logic;
signal heap_bh154_w32_2 : std_logic;
signal heap_bh154_w31_2 : std_logic;
signal heap_bh154_w30_2 : std_logic;
signal heap_bh154_w29_1 : std_logic;
signal heap_bh154_w28_1 : std_logic;
signal heap_bh154_w27_1 : std_logic;
signal heap_bh154_w26_1 : std_logic;
signal heap_bh154_w25_1 : std_logic;
signal heap_bh154_w24_1 : std_logic;
signal heap_bh154_w23_1 : std_logic;
signal heap_bh154_w22_1 : std_logic;
signal heap_bh154_w21_1 : std_logic;
signal heap_bh154_w20_1 : std_logic;
signal DSP_bh154_ch5_0 :  std_logic_vector(40 downto 0);
signal heap_bh154_w36_3 : std_logic;
signal heap_bh154_w35_3 : std_logic;
signal heap_bh154_w34_3 : std_logic;
signal heap_bh154_w33_3 : std_logic;
signal heap_bh154_w32_3 : std_logic;
signal heap_bh154_w31_3 : std_logic;
signal heap_bh154_w30_3 : std_logic;
signal heap_bh154_w29_2 : std_logic;
signal heap_bh154_w28_2 : std_logic;
signal heap_bh154_w27_2 : std_logic;
signal heap_bh154_w26_2 : std_logic;
signal heap_bh154_w25_2 : std_logic;
signal heap_bh154_w24_2 : std_logic;
signal heap_bh154_w23_2 : std_logic;
signal heap_bh154_w22_2 : std_logic;
signal heap_bh154_w21_2 : std_logic;
signal heap_bh154_w20_2 : std_logic;
signal heap_bh154_w19_1 : std_logic;
signal heap_bh154_w18_1 : std_logic;
signal heap_bh154_w17_1 : std_logic;
signal heap_bh154_w16_1 : std_logic;
signal heap_bh154_w15_1 : std_logic;
signal heap_bh154_w14_1 : std_logic;
signal heap_bh154_w13_1 : std_logic;
signal heap_bh154_w12_0 : std_logic;
signal heap_bh154_w11_0 : std_logic;
signal heap_bh154_w10_0 : std_logic;
signal heap_bh154_w9_0 : std_logic;
signal heap_bh154_w8_0 : std_logic;
signal heap_bh154_w7_0 : std_logic;
signal heap_bh154_w6_0 : std_logic;
signal heap_bh154_w5_0 : std_logic;
signal heap_bh154_w4_0 : std_logic;
signal heap_bh154_w3_0 : std_logic;
signal heap_bh154_w2_0 : std_logic;
signal heap_bh154_w1_0 : std_logic;
signal heap_bh154_w0_0 : std_logic;
signal tempR_bh154_0, tempR_bh154_0_d1, tempR_bh154_0_d2, tempR_bh154_0_d3 :  std_logic_vector(12 downto 0);
signal inAdder0_bh154_0, inAdder0_bh154_0_d1 :  std_logic_vector(7 downto 0);
signal inAdder1_bh154_0, inAdder1_bh154_0_d1 :  std_logic_vector(7 downto 0);
signal cin_bh154_0, cin_bh154_0_d1 : std_logic;
signal outAdder_bh154_0 :  std_logic_vector(7 downto 0);
signal heap_bh154_w13_2 : std_logic;
signal heap_bh154_w14_2 : std_logic;
signal heap_bh154_w15_2 : std_logic;
signal heap_bh154_w16_2 : std_logic;
signal heap_bh154_w17_2 : std_logic;
signal heap_bh154_w18_2 : std_logic;
signal heap_bh154_w19_2 : std_logic;
signal heap_bh154_w20_3 : std_logic;
signal CompressorIn_bh154_0_0 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_0_1 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_0_0 :  std_logic_vector(2 downto 0);
signal heap_bh154_w20_4, heap_bh154_w20_4_d1 : std_logic;
signal heap_bh154_w21_3, heap_bh154_w21_3_d1 : std_logic;
signal heap_bh154_w22_3, heap_bh154_w22_3_d1 : std_logic;
signal CompressorIn_bh154_1_2 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_1_3 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_1_1 :  std_logic_vector(2 downto 0);
signal heap_bh154_w22_4, heap_bh154_w22_4_d1 : std_logic;
signal heap_bh154_w23_3, heap_bh154_w23_3_d1 : std_logic;
signal heap_bh154_w24_3, heap_bh154_w24_3_d1 : std_logic;
signal CompressorIn_bh154_2_4 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_2_5 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_2_2 :  std_logic_vector(2 downto 0);
signal heap_bh154_w24_4, heap_bh154_w24_4_d1 : std_logic;
signal heap_bh154_w25_3, heap_bh154_w25_3_d1 : std_logic;
signal heap_bh154_w26_3, heap_bh154_w26_3_d1 : std_logic;
signal CompressorIn_bh154_3_6 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_3_7 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_3_3 :  std_logic_vector(2 downto 0);
signal heap_bh154_w26_4, heap_bh154_w26_4_d1 : std_logic;
signal heap_bh154_w27_3, heap_bh154_w27_3_d1 : std_logic;
signal heap_bh154_w28_3, heap_bh154_w28_3_d1 : std_logic;
signal CompressorIn_bh154_4_8 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_4_9 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_4_4 :  std_logic_vector(2 downto 0);
signal heap_bh154_w28_4, heap_bh154_w28_4_d1 : std_logic;
signal heap_bh154_w29_3, heap_bh154_w29_3_d1 : std_logic;
signal heap_bh154_w30_4, heap_bh154_w30_4_d1 : std_logic;
signal CompressorIn_bh154_5_10 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_5_11 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_5_5 :  std_logic_vector(2 downto 0);
signal heap_bh154_w30_5, heap_bh154_w30_5_d1 : std_logic;
signal heap_bh154_w31_4, heap_bh154_w31_4_d1 : std_logic;
signal heap_bh154_w32_4, heap_bh154_w32_4_d1 : std_logic;
signal CompressorIn_bh154_6_12 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_6_13 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_6_6 :  std_logic_vector(2 downto 0);
signal heap_bh154_w31_5, heap_bh154_w31_5_d1 : std_logic;
signal heap_bh154_w32_5, heap_bh154_w32_5_d1 : std_logic;
signal heap_bh154_w33_4, heap_bh154_w33_4_d1 : std_logic;
signal CompressorIn_bh154_7_14 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_7_15 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_7_7 :  std_logic_vector(2 downto 0);
signal heap_bh154_w33_5, heap_bh154_w33_5_d1 : std_logic;
signal heap_bh154_w34_4, heap_bh154_w34_4_d1 : std_logic;
signal heap_bh154_w35_4, heap_bh154_w35_4_d1 : std_logic;
signal CompressorIn_bh154_8_16 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_8_17 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_8_8 :  std_logic_vector(2 downto 0);
signal heap_bh154_w34_5, heap_bh154_w34_5_d1 : std_logic;
signal heap_bh154_w35_5, heap_bh154_w35_5_d1 : std_logic;
signal heap_bh154_w36_4, heap_bh154_w36_4_d1, heap_bh154_w36_4_d2, heap_bh154_w36_4_d3 : std_logic;
signal CompressorIn_bh154_9_18 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_9_19 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_9_9 :  std_logic_vector(2 downto 0);
signal heap_bh154_w36_5, heap_bh154_w36_5_d1 : std_logic;
signal heap_bh154_w37_4, heap_bh154_w37_4_d1 : std_logic;
signal heap_bh154_w38_4, heap_bh154_w38_4_d1 : std_logic;
signal CompressorIn_bh154_10_20 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_10_21 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_10_10 :  std_logic_vector(2 downto 0);
signal heap_bh154_w37_5, heap_bh154_w37_5_d1 : std_logic;
signal heap_bh154_w38_5, heap_bh154_w38_5_d1 : std_logic;
signal heap_bh154_w39_4, heap_bh154_w39_4_d1, heap_bh154_w39_4_d2, heap_bh154_w39_4_d3 : std_logic;
signal CompressorIn_bh154_11_22 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_11_23 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_11_11 :  std_logic_vector(2 downto 0);
signal heap_bh154_w39_5, heap_bh154_w39_5_d1 : std_logic;
signal heap_bh154_w40_4, heap_bh154_w40_4_d1 : std_logic;
signal heap_bh154_w41_4, heap_bh154_w41_4_d1 : std_logic;
signal CompressorIn_bh154_12_24 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_12_25 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_12_12 :  std_logic_vector(2 downto 0);
signal heap_bh154_w40_5, heap_bh154_w40_5_d1 : std_logic;
signal heap_bh154_w41_5, heap_bh154_w41_5_d1 : std_logic;
signal heap_bh154_w42_4, heap_bh154_w42_4_d1, heap_bh154_w42_4_d2, heap_bh154_w42_4_d3 : std_logic;
signal CompressorIn_bh154_13_26 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_13_27 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_13_13 :  std_logic_vector(2 downto 0);
signal heap_bh154_w42_5, heap_bh154_w42_5_d1 : std_logic;
signal heap_bh154_w43_4, heap_bh154_w43_4_d1 : std_logic;
signal heap_bh154_w44_4, heap_bh154_w44_4_d1 : std_logic;
signal CompressorIn_bh154_14_28 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_14_29 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_14_14 :  std_logic_vector(2 downto 0);
signal heap_bh154_w43_5, heap_bh154_w43_5_d1 : std_logic;
signal heap_bh154_w44_5, heap_bh154_w44_5_d1 : std_logic;
signal heap_bh154_w45_4, heap_bh154_w45_4_d1, heap_bh154_w45_4_d2, heap_bh154_w45_4_d3 : std_logic;
signal CompressorIn_bh154_15_30 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_15_31 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_15_15 :  std_logic_vector(2 downto 0);
signal heap_bh154_w45_5, heap_bh154_w45_5_d1 : std_logic;
signal heap_bh154_w46_4, heap_bh154_w46_4_d1 : std_logic;
signal heap_bh154_w47_4, heap_bh154_w47_4_d1 : std_logic;
signal CompressorIn_bh154_16_32 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_16_33 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_16_16 :  std_logic_vector(2 downto 0);
signal heap_bh154_w46_5, heap_bh154_w46_5_d1 : std_logic;
signal heap_bh154_w47_5, heap_bh154_w47_5_d1 : std_logic;
signal heap_bh154_w48_4, heap_bh154_w48_4_d1, heap_bh154_w48_4_d2, heap_bh154_w48_4_d3 : std_logic;
signal CompressorIn_bh154_17_34 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_17_35 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_17_17 :  std_logic_vector(2 downto 0);
signal heap_bh154_w48_5, heap_bh154_w48_5_d1 : std_logic;
signal heap_bh154_w49_4, heap_bh154_w49_4_d1 : std_logic;
signal heap_bh154_w50_4, heap_bh154_w50_4_d1 : std_logic;
signal CompressorIn_bh154_18_36 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_18_37 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_18_18 :  std_logic_vector(2 downto 0);
signal heap_bh154_w49_5, heap_bh154_w49_5_d1 : std_logic;
signal heap_bh154_w50_5, heap_bh154_w50_5_d1 : std_logic;
signal heap_bh154_w51_4, heap_bh154_w51_4_d1, heap_bh154_w51_4_d2, heap_bh154_w51_4_d3 : std_logic;
signal CompressorIn_bh154_19_38 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_19_39 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_19_19 :  std_logic_vector(2 downto 0);
signal heap_bh154_w51_5, heap_bh154_w51_5_d1 : std_logic;
signal heap_bh154_w52_4, heap_bh154_w52_4_d1 : std_logic;
signal heap_bh154_w53_4, heap_bh154_w53_4_d1 : std_logic;
signal CompressorIn_bh154_20_40 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_20_41 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_20_20 :  std_logic_vector(2 downto 0);
signal heap_bh154_w52_5, heap_bh154_w52_5_d1 : std_logic;
signal heap_bh154_w53_5, heap_bh154_w53_5_d1 : std_logic;
signal heap_bh154_w54_4, heap_bh154_w54_4_d1, heap_bh154_w54_4_d2, heap_bh154_w54_4_d3 : std_logic;
signal CompressorIn_bh154_21_42 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_21_43 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_21_21 :  std_logic_vector(2 downto 0);
signal heap_bh154_w54_5, heap_bh154_w54_5_d1 : std_logic;
signal heap_bh154_w55_4, heap_bh154_w55_4_d1 : std_logic;
signal heap_bh154_w56_4, heap_bh154_w56_4_d1 : std_logic;
signal CompressorIn_bh154_22_44 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_22_45 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_22_22 :  std_logic_vector(2 downto 0);
signal heap_bh154_w55_5, heap_bh154_w55_5_d1 : std_logic;
signal heap_bh154_w56_5, heap_bh154_w56_5_d1 : std_logic;
signal heap_bh154_w57_4, heap_bh154_w57_4_d1, heap_bh154_w57_4_d2, heap_bh154_w57_4_d3 : std_logic;
signal CompressorIn_bh154_23_46 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_23_47 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_23_23 :  std_logic_vector(2 downto 0);
signal heap_bh154_w57_5, heap_bh154_w57_5_d1 : std_logic;
signal heap_bh154_w58_4, heap_bh154_w58_4_d1 : std_logic;
signal heap_bh154_w59_4, heap_bh154_w59_4_d1 : std_logic;
signal CompressorIn_bh154_24_48 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_24_49 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_24_24 :  std_logic_vector(2 downto 0);
signal heap_bh154_w58_5, heap_bh154_w58_5_d1 : std_logic;
signal heap_bh154_w59_5, heap_bh154_w59_5_d1 : std_logic;
signal heap_bh154_w60_4, heap_bh154_w60_4_d1, heap_bh154_w60_4_d2, heap_bh154_w60_4_d3 : std_logic;
signal CompressorIn_bh154_25_50 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_25_51 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_25_25 :  std_logic_vector(2 downto 0);
signal heap_bh154_w60_5, heap_bh154_w60_5_d1 : std_logic;
signal heap_bh154_w61_3, heap_bh154_w61_3_d1 : std_logic;
signal heap_bh154_w62_3, heap_bh154_w62_3_d1 : std_logic;
signal CompressorIn_bh154_26_52 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_26_53 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_26_26 :  std_logic_vector(2 downto 0);
signal heap_bh154_w62_4, heap_bh154_w62_4_d1 : std_logic;
signal heap_bh154_w63_3, heap_bh154_w63_3_d1 : std_logic;
signal heap_bh154_w64_3, heap_bh154_w64_3_d1 : std_logic;
signal CompressorIn_bh154_27_54 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_27_55 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_27_27 :  std_logic_vector(2 downto 0);
signal heap_bh154_w64_4, heap_bh154_w64_4_d1 : std_logic;
signal heap_bh154_w65_3, heap_bh154_w65_3_d1 : std_logic;
signal heap_bh154_w66_3, heap_bh154_w66_3_d1 : std_logic;
signal CompressorIn_bh154_28_56 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_28_57 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_28_28 :  std_logic_vector(2 downto 0);
signal heap_bh154_w66_4, heap_bh154_w66_4_d1 : std_logic;
signal heap_bh154_w67_3, heap_bh154_w67_3_d1 : std_logic;
signal heap_bh154_w68_3, heap_bh154_w68_3_d1 : std_logic;
signal CompressorIn_bh154_29_58 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_29_59 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_29_29 :  std_logic_vector(2 downto 0);
signal heap_bh154_w68_4, heap_bh154_w68_4_d1 : std_logic;
signal heap_bh154_w69_3, heap_bh154_w69_3_d1 : std_logic;
signal heap_bh154_w70_3, heap_bh154_w70_3_d1 : std_logic;
signal CompressorIn_bh154_30_60 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_30_61 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_30_30 :  std_logic_vector(2 downto 0);
signal heap_bh154_w70_4, heap_bh154_w70_4_d1 : std_logic;
signal heap_bh154_w71_2, heap_bh154_w71_2_d1, heap_bh154_w71_2_d2, heap_bh154_w71_2_d3 : std_logic;
signal heap_bh154_w72_2, heap_bh154_w72_2_d1 : std_logic;
signal tempR_bh154_1, tempR_bh154_1_d1, tempR_bh154_1_d2 :  std_logic_vector(6 downto 0);
signal inAdder0_bh154_1 :  std_logic_vector(12 downto 0);
signal inAdder1_bh154_1 :  std_logic_vector(12 downto 0);
signal cin_bh154_1 : std_logic;
signal outAdder_bh154_1 :  std_logic_vector(12 downto 0);
signal heap_bh154_w20_5 : std_logic;
signal heap_bh154_w21_4 : std_logic;
signal heap_bh154_w22_5 : std_logic;
signal heap_bh154_w23_4 : std_logic;
signal heap_bh154_w24_5 : std_logic;
signal heap_bh154_w25_4 : std_logic;
signal heap_bh154_w26_5 : std_logic;
signal heap_bh154_w27_4 : std_logic;
signal heap_bh154_w28_5 : std_logic;
signal heap_bh154_w29_4 : std_logic;
signal heap_bh154_w30_6 : std_logic;
signal heap_bh154_w31_6 : std_logic;
signal heap_bh154_w32_6 : std_logic;
signal CompressorIn_bh154_31_62 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_31_63 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_31_31 :  std_logic_vector(2 downto 0);
signal heap_bh154_w32_7 : std_logic;
signal heap_bh154_w33_6 : std_logic;
signal heap_bh154_w34_6 : std_logic;
signal CompressorIn_bh154_32_64 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_32_65 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_32_32 :  std_logic_vector(2 downto 0);
signal heap_bh154_w35_6, heap_bh154_w35_6_d1, heap_bh154_w35_6_d2 : std_logic;
signal heap_bh154_w36_6, heap_bh154_w36_6_d1, heap_bh154_w36_6_d2 : std_logic;
signal heap_bh154_w37_6 : std_logic;
signal CompressorIn_bh154_33_66 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_33_67 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_33_33 :  std_logic_vector(2 downto 0);
signal heap_bh154_w38_6, heap_bh154_w38_6_d1, heap_bh154_w38_6_d2 : std_logic;
signal heap_bh154_w39_6, heap_bh154_w39_6_d1, heap_bh154_w39_6_d2 : std_logic;
signal heap_bh154_w40_6 : std_logic;
signal CompressorIn_bh154_34_68 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_34_69 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_34_34 :  std_logic_vector(2 downto 0);
signal heap_bh154_w41_6, heap_bh154_w41_6_d1, heap_bh154_w41_6_d2 : std_logic;
signal heap_bh154_w42_6, heap_bh154_w42_6_d1, heap_bh154_w42_6_d2 : std_logic;
signal heap_bh154_w43_6 : std_logic;
signal CompressorIn_bh154_35_70 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_35_71 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_35_35 :  std_logic_vector(2 downto 0);
signal heap_bh154_w44_6, heap_bh154_w44_6_d1, heap_bh154_w44_6_d2 : std_logic;
signal heap_bh154_w45_6, heap_bh154_w45_6_d1, heap_bh154_w45_6_d2 : std_logic;
signal heap_bh154_w46_6 : std_logic;
signal CompressorIn_bh154_36_72 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_36_73 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_36_36 :  std_logic_vector(2 downto 0);
signal heap_bh154_w47_6, heap_bh154_w47_6_d1, heap_bh154_w47_6_d2 : std_logic;
signal heap_bh154_w48_6, heap_bh154_w48_6_d1, heap_bh154_w48_6_d2 : std_logic;
signal heap_bh154_w49_6 : std_logic;
signal CompressorIn_bh154_37_74 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_37_75 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_37_37 :  std_logic_vector(2 downto 0);
signal heap_bh154_w50_6, heap_bh154_w50_6_d1, heap_bh154_w50_6_d2 : std_logic;
signal heap_bh154_w51_6, heap_bh154_w51_6_d1, heap_bh154_w51_6_d2 : std_logic;
signal heap_bh154_w52_6 : std_logic;
signal CompressorIn_bh154_38_76 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_38_77 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_38_38 :  std_logic_vector(2 downto 0);
signal heap_bh154_w53_6, heap_bh154_w53_6_d1, heap_bh154_w53_6_d2 : std_logic;
signal heap_bh154_w54_6, heap_bh154_w54_6_d1, heap_bh154_w54_6_d2 : std_logic;
signal heap_bh154_w55_6 : std_logic;
signal CompressorIn_bh154_39_78 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_39_79 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_39_39 :  std_logic_vector(2 downto 0);
signal heap_bh154_w56_6, heap_bh154_w56_6_d1, heap_bh154_w56_6_d2 : std_logic;
signal heap_bh154_w57_6, heap_bh154_w57_6_d1, heap_bh154_w57_6_d2 : std_logic;
signal heap_bh154_w58_6 : std_logic;
signal CompressorIn_bh154_40_80 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh154_40_81 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh154_40_40 :  std_logic_vector(2 downto 0);
signal heap_bh154_w59_6, heap_bh154_w59_6_d1, heap_bh154_w59_6_d2 : std_logic;
signal heap_bh154_w60_6, heap_bh154_w60_6_d1, heap_bh154_w60_6_d2 : std_logic;
signal heap_bh154_w61_4, heap_bh154_w61_4_d1, heap_bh154_w61_4_d2 : std_logic;
signal CompressorIn_bh154_41_82 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_41_83 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_41_41 :  std_logic_vector(2 downto 0);
signal heap_bh154_w61_5, heap_bh154_w61_5_d1, heap_bh154_w61_5_d2 : std_logic;
signal heap_bh154_w62_5, heap_bh154_w62_5_d1, heap_bh154_w62_5_d2 : std_logic;
signal heap_bh154_w63_4 : std_logic;
signal CompressorIn_bh154_42_84 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh154_42_85 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh154_42_42 :  std_logic_vector(2 downto 0);
signal heap_bh154_w72_3, heap_bh154_w72_3_d1, heap_bh154_w72_3_d2 : std_logic;
signal heap_bh154_w73_2, heap_bh154_w73_2_d1, heap_bh154_w73_2_d2 : std_logic;
signal heap_bh154_w74_2 : std_logic;
signal inAdder0_bh154_2, inAdder0_bh154_2_d1 :  std_logic_vector(14 downto 0);
signal inAdder1_bh154_2, inAdder1_bh154_2_d1 :  std_logic_vector(14 downto 0);
signal cin_bh154_2, cin_bh154_2_d1 : std_logic;
signal outAdder_bh154_2 :  std_logic_vector(14 downto 0);
signal heap_bh154_w20_6 : std_logic;
signal heap_bh154_w21_5 : std_logic;
signal heap_bh154_w22_6 : std_logic;
signal heap_bh154_w23_5 : std_logic;
signal heap_bh154_w24_6 : std_logic;
signal heap_bh154_w25_5 : std_logic;
signal heap_bh154_w26_6 : std_logic;
signal heap_bh154_w27_5 : std_logic;
signal heap_bh154_w28_6 : std_logic;
signal heap_bh154_w29_5 : std_logic;
signal heap_bh154_w30_7 : std_logic;
signal heap_bh154_w31_7 : std_logic;
signal heap_bh154_w32_8 : std_logic;
signal heap_bh154_w33_7 : std_logic;
signal heap_bh154_w34_7, heap_bh154_w34_7_d1 : std_logic;
signal tempR_bh154_2, tempR_bh154_2_d1 :  std_logic_vector(13 downto 0);
signal CompressorIn_bh154_43_86 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh154_43_43 :  std_logic_vector(1 downto 0);
signal heap_bh154_w34_8, heap_bh154_w34_8_d1, heap_bh154_w34_8_d2 : std_logic;
signal heap_bh154_w35_7, heap_bh154_w35_7_d1, heap_bh154_w35_7_d2 : std_logic;
signal CompressorIn_bh154_44_87 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh154_44_44 :  std_logic_vector(1 downto 0);
signal heap_bh154_w37_7, heap_bh154_w37_7_d1, heap_bh154_w37_7_d2 : std_logic;
signal heap_bh154_w38_7, heap_bh154_w38_7_d1, heap_bh154_w38_7_d2 : std_logic;
signal CompressorIn_bh154_45_88 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh154_45_45 :  std_logic_vector(1 downto 0);
signal heap_bh154_w40_7, heap_bh154_w40_7_d1, heap_bh154_w40_7_d2 : std_logic;
signal heap_bh154_w41_7, heap_bh154_w41_7_d1, heap_bh154_w41_7_d2 : std_logic;
signal CompressorIn_bh154_46_89 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh154_46_46 :  std_logic_vector(1 downto 0);
signal heap_bh154_w43_7, heap_bh154_w43_7_d1, heap_bh154_w43_7_d2 : std_logic;
signal heap_bh154_w44_7, heap_bh154_w44_7_d1, heap_bh154_w44_7_d2 : std_logic;
signal CompressorIn_bh154_47_90 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh154_47_47 :  std_logic_vector(1 downto 0);
signal heap_bh154_w46_7, heap_bh154_w46_7_d1, heap_bh154_w46_7_d2 : std_logic;
signal heap_bh154_w47_7, heap_bh154_w47_7_d1, heap_bh154_w47_7_d2 : std_logic;
signal CompressorIn_bh154_48_91 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh154_48_48 :  std_logic_vector(1 downto 0);
signal heap_bh154_w49_7, heap_bh154_w49_7_d1, heap_bh154_w49_7_d2 : std_logic;
signal heap_bh154_w50_7, heap_bh154_w50_7_d1, heap_bh154_w50_7_d2 : std_logic;
signal CompressorIn_bh154_49_92 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh154_49_49 :  std_logic_vector(1 downto 0);
signal heap_bh154_w52_7, heap_bh154_w52_7_d1, heap_bh154_w52_7_d2 : std_logic;
signal heap_bh154_w53_7, heap_bh154_w53_7_d1, heap_bh154_w53_7_d2 : std_logic;
signal CompressorIn_bh154_50_93 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh154_50_50 :  std_logic_vector(1 downto 0);
signal heap_bh154_w55_7, heap_bh154_w55_7_d1, heap_bh154_w55_7_d2 : std_logic;
signal heap_bh154_w56_7, heap_bh154_w56_7_d1, heap_bh154_w56_7_d2 : std_logic;
signal CompressorIn_bh154_51_94 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh154_51_51 :  std_logic_vector(1 downto 0);
signal heap_bh154_w58_7, heap_bh154_w58_7_d1, heap_bh154_w58_7_d2 : std_logic;
signal heap_bh154_w59_7, heap_bh154_w59_7_d1, heap_bh154_w59_7_d2 : std_logic;
signal inAdder0_bh154_3 :  std_logic_vector(8 downto 0);
signal inAdder1_bh154_3 :  std_logic_vector(8 downto 0);
signal cin_bh154_3 : std_logic;
signal outAdder_bh154_3 :  std_logic_vector(8 downto 0);
signal heap_bh154_w63_5, heap_bh154_w63_5_d1, heap_bh154_w63_5_d2 : std_logic;
signal heap_bh154_w64_5, heap_bh154_w64_5_d1, heap_bh154_w64_5_d2 : std_logic;
signal heap_bh154_w65_4, heap_bh154_w65_4_d1, heap_bh154_w65_4_d2 : std_logic;
signal heap_bh154_w66_5, heap_bh154_w66_5_d1, heap_bh154_w66_5_d2 : std_logic;
signal heap_bh154_w67_4, heap_bh154_w67_4_d1, heap_bh154_w67_4_d2 : std_logic;
signal heap_bh154_w68_5, heap_bh154_w68_5_d1, heap_bh154_w68_5_d2 : std_logic;
signal heap_bh154_w69_4, heap_bh154_w69_4_d1, heap_bh154_w69_4_d2 : std_logic;
signal heap_bh154_w70_5, heap_bh154_w70_5_d1, heap_bh154_w70_5_d2 : std_logic;
signal heap_bh154_w71_3, heap_bh154_w71_3_d1, heap_bh154_w71_3_d2 : std_logic;
signal inAdder0_bh154_4 :  std_logic_vector(4 downto 0);
signal inAdder1_bh154_4 :  std_logic_vector(4 downto 0);
signal cin_bh154_4 : std_logic;
signal outAdder_bh154_4 :  std_logic_vector(4 downto 0);
signal heap_bh154_w74_3, heap_bh154_w74_3_d1, heap_bh154_w74_3_d2 : std_logic;
signal heap_bh154_w75_2, heap_bh154_w75_2_d1, heap_bh154_w75_2_d2 : std_logic;
signal heap_bh154_w76_2, heap_bh154_w76_2_d1, heap_bh154_w76_2_d2 : std_logic;
signal heap_bh154_w77_2, heap_bh154_w77_2_d1, heap_bh154_w77_2_d2 : std_logic;
signal heap_bh154_w78_1, heap_bh154_w78_1_d1, heap_bh154_w78_1_d2 : std_logic;
signal finalAdderIn0_bh154 :  std_logic_vector(61 downto 0);
signal finalAdderIn1_bh154 :  std_logic_vector(61 downto 0);
signal finalAdderCin_bh154 : std_logic;
signal finalAdderOut_bh154 :  std_logic_vector(61 downto 0);
signal CompressionResult154 :  std_logic_vector(95 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            heap_bh154_w94_0_d1 <=  heap_bh154_w94_0;
            heap_bh154_w94_0_d2 <=  heap_bh154_w94_0_d1;
            heap_bh154_w94_0_d3 <=  heap_bh154_w94_0_d2;
            heap_bh154_w93_0_d1 <=  heap_bh154_w93_0;
            heap_bh154_w93_0_d2 <=  heap_bh154_w93_0_d1;
            heap_bh154_w93_0_d3 <=  heap_bh154_w93_0_d2;
            heap_bh154_w92_0_d1 <=  heap_bh154_w92_0;
            heap_bh154_w92_0_d2 <=  heap_bh154_w92_0_d1;
            heap_bh154_w92_0_d3 <=  heap_bh154_w92_0_d2;
            heap_bh154_w91_0_d1 <=  heap_bh154_w91_0;
            heap_bh154_w91_0_d2 <=  heap_bh154_w91_0_d1;
            heap_bh154_w91_0_d3 <=  heap_bh154_w91_0_d2;
            heap_bh154_w90_0_d1 <=  heap_bh154_w90_0;
            heap_bh154_w90_0_d2 <=  heap_bh154_w90_0_d1;
            heap_bh154_w90_0_d3 <=  heap_bh154_w90_0_d2;
            heap_bh154_w89_0_d1 <=  heap_bh154_w89_0;
            heap_bh154_w89_0_d2 <=  heap_bh154_w89_0_d1;
            heap_bh154_w89_0_d3 <=  heap_bh154_w89_0_d2;
            heap_bh154_w88_0_d1 <=  heap_bh154_w88_0;
            heap_bh154_w88_0_d2 <=  heap_bh154_w88_0_d1;
            heap_bh154_w88_0_d3 <=  heap_bh154_w88_0_d2;
            heap_bh154_w87_0_d1 <=  heap_bh154_w87_0;
            heap_bh154_w87_0_d2 <=  heap_bh154_w87_0_d1;
            heap_bh154_w87_0_d3 <=  heap_bh154_w87_0_d2;
            heap_bh154_w86_0_d1 <=  heap_bh154_w86_0;
            heap_bh154_w86_0_d2 <=  heap_bh154_w86_0_d1;
            heap_bh154_w86_0_d3 <=  heap_bh154_w86_0_d2;
            heap_bh154_w85_0_d1 <=  heap_bh154_w85_0;
            heap_bh154_w85_0_d2 <=  heap_bh154_w85_0_d1;
            heap_bh154_w85_0_d3 <=  heap_bh154_w85_0_d2;
            heap_bh154_w84_0_d1 <=  heap_bh154_w84_0;
            heap_bh154_w84_0_d2 <=  heap_bh154_w84_0_d1;
            heap_bh154_w84_0_d3 <=  heap_bh154_w84_0_d2;
            heap_bh154_w83_0_d1 <=  heap_bh154_w83_0;
            heap_bh154_w83_0_d2 <=  heap_bh154_w83_0_d1;
            heap_bh154_w83_0_d3 <=  heap_bh154_w83_0_d2;
            heap_bh154_w82_0_d1 <=  heap_bh154_w82_0;
            heap_bh154_w82_0_d2 <=  heap_bh154_w82_0_d1;
            heap_bh154_w82_0_d3 <=  heap_bh154_w82_0_d2;
            heap_bh154_w81_0_d1 <=  heap_bh154_w81_0;
            heap_bh154_w81_0_d2 <=  heap_bh154_w81_0_d1;
            heap_bh154_w81_0_d3 <=  heap_bh154_w81_0_d2;
            heap_bh154_w80_0_d1 <=  heap_bh154_w80_0;
            heap_bh154_w80_0_d2 <=  heap_bh154_w80_0_d1;
            heap_bh154_w80_0_d3 <=  heap_bh154_w80_0_d2;
            heap_bh154_w79_0_d1 <=  heap_bh154_w79_0;
            heap_bh154_w79_0_d2 <=  heap_bh154_w79_0_d1;
            heap_bh154_w79_0_d3 <=  heap_bh154_w79_0_d2;
            heap_bh154_w78_0_d1 <=  heap_bh154_w78_0;
            heap_bh154_w78_0_d2 <=  heap_bh154_w78_0_d1;
            heap_bh154_w78_0_d3 <=  heap_bh154_w78_0_d2;
            heap_bh154_w77_0_d1 <=  heap_bh154_w77_0;
            heap_bh154_w76_0_d1 <=  heap_bh154_w76_0;
            heap_bh154_w75_0_d1 <=  heap_bh154_w75_0;
            heap_bh154_w74_0_d1 <=  heap_bh154_w74_0;
            heap_bh154_w73_0_d1 <=  heap_bh154_w73_0;
            heap_bh154_w72_0_d1 <=  heap_bh154_w72_0;
            heap_bh154_w69_0_d1 <=  heap_bh154_w69_0;
            heap_bh154_w67_0_d1 <=  heap_bh154_w67_0;
            heap_bh154_w65_0_d1 <=  heap_bh154_w65_0;
            heap_bh154_w63_0_d1 <=  heap_bh154_w63_0;
            heap_bh154_w61_0_d1 <=  heap_bh154_w61_0;
            heap_bh154_w59_0_d1 <=  heap_bh154_w59_0;
            heap_bh154_w56_0_d1 <=  heap_bh154_w56_0;
            heap_bh154_w61_1_d1 <=  heap_bh154_w61_1;
            heap_bh154_w59_1_d1 <=  heap_bh154_w59_1;
            heap_bh154_w56_1_d1 <=  heap_bh154_w56_1;
            heap_bh154_w53_0_d1 <=  heap_bh154_w53_0;
            heap_bh154_w50_0_d1 <=  heap_bh154_w50_0;
            heap_bh154_w47_0_d1 <=  heap_bh154_w47_0;
            heap_bh154_w44_0_d1 <=  heap_bh154_w44_0;
            heap_bh154_w41_0_d1 <=  heap_bh154_w41_0;
            heap_bh154_w38_0_d1 <=  heap_bh154_w38_0;
            heap_bh154_w35_0_d1 <=  heap_bh154_w35_0;
            heap_bh154_w32_0_d1 <=  heap_bh154_w32_0;
            heap_bh154_w77_1_d1 <=  heap_bh154_w77_1;
            heap_bh154_w76_1_d1 <=  heap_bh154_w76_1;
            heap_bh154_w75_1_d1 <=  heap_bh154_w75_1;
            heap_bh154_w74_1_d1 <=  heap_bh154_w74_1;
            heap_bh154_w73_1_d1 <=  heap_bh154_w73_1;
            heap_bh154_w72_1_d1 <=  heap_bh154_w72_1;
            heap_bh154_w53_1_d1 <=  heap_bh154_w53_1;
            heap_bh154_w50_1_d1 <=  heap_bh154_w50_1;
            heap_bh154_w47_1_d1 <=  heap_bh154_w47_1;
            heap_bh154_w44_1_d1 <=  heap_bh154_w44_1;
            heap_bh154_w41_1_d1 <=  heap_bh154_w41_1;
            heap_bh154_w38_1_d1 <=  heap_bh154_w38_1;
            heap_bh154_w35_1_d1 <=  heap_bh154_w35_1;
            heap_bh154_w32_1_d1 <=  heap_bh154_w32_1;
            heap_bh154_w29_0_d1 <=  heap_bh154_w29_0;
            heap_bh154_w27_0_d1 <=  heap_bh154_w27_0;
            heap_bh154_w25_0_d1 <=  heap_bh154_w25_0;
            heap_bh154_w23_0_d1 <=  heap_bh154_w23_0;
            heap_bh154_w21_0_d1 <=  heap_bh154_w21_0;
            tempR_bh154_0_d1 <=  tempR_bh154_0;
            tempR_bh154_0_d2 <=  tempR_bh154_0_d1;
            tempR_bh154_0_d3 <=  tempR_bh154_0_d2;
            inAdder0_bh154_0_d1 <=  inAdder0_bh154_0;
            inAdder1_bh154_0_d1 <=  inAdder1_bh154_0;
            cin_bh154_0_d1 <=  cin_bh154_0;
            heap_bh154_w20_4_d1 <=  heap_bh154_w20_4;
            heap_bh154_w21_3_d1 <=  heap_bh154_w21_3;
            heap_bh154_w22_3_d1 <=  heap_bh154_w22_3;
            heap_bh154_w22_4_d1 <=  heap_bh154_w22_4;
            heap_bh154_w23_3_d1 <=  heap_bh154_w23_3;
            heap_bh154_w24_3_d1 <=  heap_bh154_w24_3;
            heap_bh154_w24_4_d1 <=  heap_bh154_w24_4;
            heap_bh154_w25_3_d1 <=  heap_bh154_w25_3;
            heap_bh154_w26_3_d1 <=  heap_bh154_w26_3;
            heap_bh154_w26_4_d1 <=  heap_bh154_w26_4;
            heap_bh154_w27_3_d1 <=  heap_bh154_w27_3;
            heap_bh154_w28_3_d1 <=  heap_bh154_w28_3;
            heap_bh154_w28_4_d1 <=  heap_bh154_w28_4;
            heap_bh154_w29_3_d1 <=  heap_bh154_w29_3;
            heap_bh154_w30_4_d1 <=  heap_bh154_w30_4;
            heap_bh154_w30_5_d1 <=  heap_bh154_w30_5;
            heap_bh154_w31_4_d1 <=  heap_bh154_w31_4;
            heap_bh154_w32_4_d1 <=  heap_bh154_w32_4;
            heap_bh154_w31_5_d1 <=  heap_bh154_w31_5;
            heap_bh154_w32_5_d1 <=  heap_bh154_w32_5;
            heap_bh154_w33_4_d1 <=  heap_bh154_w33_4;
            heap_bh154_w33_5_d1 <=  heap_bh154_w33_5;
            heap_bh154_w34_4_d1 <=  heap_bh154_w34_4;
            heap_bh154_w35_4_d1 <=  heap_bh154_w35_4;
            heap_bh154_w34_5_d1 <=  heap_bh154_w34_5;
            heap_bh154_w35_5_d1 <=  heap_bh154_w35_5;
            heap_bh154_w36_4_d1 <=  heap_bh154_w36_4;
            heap_bh154_w36_4_d2 <=  heap_bh154_w36_4_d1;
            heap_bh154_w36_4_d3 <=  heap_bh154_w36_4_d2;
            heap_bh154_w36_5_d1 <=  heap_bh154_w36_5;
            heap_bh154_w37_4_d1 <=  heap_bh154_w37_4;
            heap_bh154_w38_4_d1 <=  heap_bh154_w38_4;
            heap_bh154_w37_5_d1 <=  heap_bh154_w37_5;
            heap_bh154_w38_5_d1 <=  heap_bh154_w38_5;
            heap_bh154_w39_4_d1 <=  heap_bh154_w39_4;
            heap_bh154_w39_4_d2 <=  heap_bh154_w39_4_d1;
            heap_bh154_w39_4_d3 <=  heap_bh154_w39_4_d2;
            heap_bh154_w39_5_d1 <=  heap_bh154_w39_5;
            heap_bh154_w40_4_d1 <=  heap_bh154_w40_4;
            heap_bh154_w41_4_d1 <=  heap_bh154_w41_4;
            heap_bh154_w40_5_d1 <=  heap_bh154_w40_5;
            heap_bh154_w41_5_d1 <=  heap_bh154_w41_5;
            heap_bh154_w42_4_d1 <=  heap_bh154_w42_4;
            heap_bh154_w42_4_d2 <=  heap_bh154_w42_4_d1;
            heap_bh154_w42_4_d3 <=  heap_bh154_w42_4_d2;
            heap_bh154_w42_5_d1 <=  heap_bh154_w42_5;
            heap_bh154_w43_4_d1 <=  heap_bh154_w43_4;
            heap_bh154_w44_4_d1 <=  heap_bh154_w44_4;
            heap_bh154_w43_5_d1 <=  heap_bh154_w43_5;
            heap_bh154_w44_5_d1 <=  heap_bh154_w44_5;
            heap_bh154_w45_4_d1 <=  heap_bh154_w45_4;
            heap_bh154_w45_4_d2 <=  heap_bh154_w45_4_d1;
            heap_bh154_w45_4_d3 <=  heap_bh154_w45_4_d2;
            heap_bh154_w45_5_d1 <=  heap_bh154_w45_5;
            heap_bh154_w46_4_d1 <=  heap_bh154_w46_4;
            heap_bh154_w47_4_d1 <=  heap_bh154_w47_4;
            heap_bh154_w46_5_d1 <=  heap_bh154_w46_5;
            heap_bh154_w47_5_d1 <=  heap_bh154_w47_5;
            heap_bh154_w48_4_d1 <=  heap_bh154_w48_4;
            heap_bh154_w48_4_d2 <=  heap_bh154_w48_4_d1;
            heap_bh154_w48_4_d3 <=  heap_bh154_w48_4_d2;
            heap_bh154_w48_5_d1 <=  heap_bh154_w48_5;
            heap_bh154_w49_4_d1 <=  heap_bh154_w49_4;
            heap_bh154_w50_4_d1 <=  heap_bh154_w50_4;
            heap_bh154_w49_5_d1 <=  heap_bh154_w49_5;
            heap_bh154_w50_5_d1 <=  heap_bh154_w50_5;
            heap_bh154_w51_4_d1 <=  heap_bh154_w51_4;
            heap_bh154_w51_4_d2 <=  heap_bh154_w51_4_d1;
            heap_bh154_w51_4_d3 <=  heap_bh154_w51_4_d2;
            heap_bh154_w51_5_d1 <=  heap_bh154_w51_5;
            heap_bh154_w52_4_d1 <=  heap_bh154_w52_4;
            heap_bh154_w53_4_d1 <=  heap_bh154_w53_4;
            heap_bh154_w52_5_d1 <=  heap_bh154_w52_5;
            heap_bh154_w53_5_d1 <=  heap_bh154_w53_5;
            heap_bh154_w54_4_d1 <=  heap_bh154_w54_4;
            heap_bh154_w54_4_d2 <=  heap_bh154_w54_4_d1;
            heap_bh154_w54_4_d3 <=  heap_bh154_w54_4_d2;
            heap_bh154_w54_5_d1 <=  heap_bh154_w54_5;
            heap_bh154_w55_4_d1 <=  heap_bh154_w55_4;
            heap_bh154_w56_4_d1 <=  heap_bh154_w56_4;
            heap_bh154_w55_5_d1 <=  heap_bh154_w55_5;
            heap_bh154_w56_5_d1 <=  heap_bh154_w56_5;
            heap_bh154_w57_4_d1 <=  heap_bh154_w57_4;
            heap_bh154_w57_4_d2 <=  heap_bh154_w57_4_d1;
            heap_bh154_w57_4_d3 <=  heap_bh154_w57_4_d2;
            heap_bh154_w57_5_d1 <=  heap_bh154_w57_5;
            heap_bh154_w58_4_d1 <=  heap_bh154_w58_4;
            heap_bh154_w59_4_d1 <=  heap_bh154_w59_4;
            heap_bh154_w58_5_d1 <=  heap_bh154_w58_5;
            heap_bh154_w59_5_d1 <=  heap_bh154_w59_5;
            heap_bh154_w60_4_d1 <=  heap_bh154_w60_4;
            heap_bh154_w60_4_d2 <=  heap_bh154_w60_4_d1;
            heap_bh154_w60_4_d3 <=  heap_bh154_w60_4_d2;
            heap_bh154_w60_5_d1 <=  heap_bh154_w60_5;
            heap_bh154_w61_3_d1 <=  heap_bh154_w61_3;
            heap_bh154_w62_3_d1 <=  heap_bh154_w62_3;
            heap_bh154_w62_4_d1 <=  heap_bh154_w62_4;
            heap_bh154_w63_3_d1 <=  heap_bh154_w63_3;
            heap_bh154_w64_3_d1 <=  heap_bh154_w64_3;
            heap_bh154_w64_4_d1 <=  heap_bh154_w64_4;
            heap_bh154_w65_3_d1 <=  heap_bh154_w65_3;
            heap_bh154_w66_3_d1 <=  heap_bh154_w66_3;
            heap_bh154_w66_4_d1 <=  heap_bh154_w66_4;
            heap_bh154_w67_3_d1 <=  heap_bh154_w67_3;
            heap_bh154_w68_3_d1 <=  heap_bh154_w68_3;
            heap_bh154_w68_4_d1 <=  heap_bh154_w68_4;
            heap_bh154_w69_3_d1 <=  heap_bh154_w69_3;
            heap_bh154_w70_3_d1 <=  heap_bh154_w70_3;
            heap_bh154_w70_4_d1 <=  heap_bh154_w70_4;
            heap_bh154_w71_2_d1 <=  heap_bh154_w71_2;
            heap_bh154_w71_2_d2 <=  heap_bh154_w71_2_d1;
            heap_bh154_w71_2_d3 <=  heap_bh154_w71_2_d2;
            heap_bh154_w72_2_d1 <=  heap_bh154_w72_2;
            tempR_bh154_1_d1 <=  tempR_bh154_1;
            tempR_bh154_1_d2 <=  tempR_bh154_1_d1;
            heap_bh154_w35_6_d1 <=  heap_bh154_w35_6;
            heap_bh154_w35_6_d2 <=  heap_bh154_w35_6_d1;
            heap_bh154_w36_6_d1 <=  heap_bh154_w36_6;
            heap_bh154_w36_6_d2 <=  heap_bh154_w36_6_d1;
            heap_bh154_w38_6_d1 <=  heap_bh154_w38_6;
            heap_bh154_w38_6_d2 <=  heap_bh154_w38_6_d1;
            heap_bh154_w39_6_d1 <=  heap_bh154_w39_6;
            heap_bh154_w39_6_d2 <=  heap_bh154_w39_6_d1;
            heap_bh154_w41_6_d1 <=  heap_bh154_w41_6;
            heap_bh154_w41_6_d2 <=  heap_bh154_w41_6_d1;
            heap_bh154_w42_6_d1 <=  heap_bh154_w42_6;
            heap_bh154_w42_6_d2 <=  heap_bh154_w42_6_d1;
            heap_bh154_w44_6_d1 <=  heap_bh154_w44_6;
            heap_bh154_w44_6_d2 <=  heap_bh154_w44_6_d1;
            heap_bh154_w45_6_d1 <=  heap_bh154_w45_6;
            heap_bh154_w45_6_d2 <=  heap_bh154_w45_6_d1;
            heap_bh154_w47_6_d1 <=  heap_bh154_w47_6;
            heap_bh154_w47_6_d2 <=  heap_bh154_w47_6_d1;
            heap_bh154_w48_6_d1 <=  heap_bh154_w48_6;
            heap_bh154_w48_6_d2 <=  heap_bh154_w48_6_d1;
            heap_bh154_w50_6_d1 <=  heap_bh154_w50_6;
            heap_bh154_w50_6_d2 <=  heap_bh154_w50_6_d1;
            heap_bh154_w51_6_d1 <=  heap_bh154_w51_6;
            heap_bh154_w51_6_d2 <=  heap_bh154_w51_6_d1;
            heap_bh154_w53_6_d1 <=  heap_bh154_w53_6;
            heap_bh154_w53_6_d2 <=  heap_bh154_w53_6_d1;
            heap_bh154_w54_6_d1 <=  heap_bh154_w54_6;
            heap_bh154_w54_6_d2 <=  heap_bh154_w54_6_d1;
            heap_bh154_w56_6_d1 <=  heap_bh154_w56_6;
            heap_bh154_w56_6_d2 <=  heap_bh154_w56_6_d1;
            heap_bh154_w57_6_d1 <=  heap_bh154_w57_6;
            heap_bh154_w57_6_d2 <=  heap_bh154_w57_6_d1;
            heap_bh154_w59_6_d1 <=  heap_bh154_w59_6;
            heap_bh154_w59_6_d2 <=  heap_bh154_w59_6_d1;
            heap_bh154_w60_6_d1 <=  heap_bh154_w60_6;
            heap_bh154_w60_6_d2 <=  heap_bh154_w60_6_d1;
            heap_bh154_w61_4_d1 <=  heap_bh154_w61_4;
            heap_bh154_w61_4_d2 <=  heap_bh154_w61_4_d1;
            heap_bh154_w61_5_d1 <=  heap_bh154_w61_5;
            heap_bh154_w61_5_d2 <=  heap_bh154_w61_5_d1;
            heap_bh154_w62_5_d1 <=  heap_bh154_w62_5;
            heap_bh154_w62_5_d2 <=  heap_bh154_w62_5_d1;
            heap_bh154_w72_3_d1 <=  heap_bh154_w72_3;
            heap_bh154_w72_3_d2 <=  heap_bh154_w72_3_d1;
            heap_bh154_w73_2_d1 <=  heap_bh154_w73_2;
            heap_bh154_w73_2_d2 <=  heap_bh154_w73_2_d1;
            inAdder0_bh154_2_d1 <=  inAdder0_bh154_2;
            inAdder1_bh154_2_d1 <=  inAdder1_bh154_2;
            cin_bh154_2_d1 <=  cin_bh154_2;
            heap_bh154_w34_7_d1 <=  heap_bh154_w34_7;
            tempR_bh154_2_d1 <=  tempR_bh154_2;
            heap_bh154_w34_8_d1 <=  heap_bh154_w34_8;
            heap_bh154_w34_8_d2 <=  heap_bh154_w34_8_d1;
            heap_bh154_w35_7_d1 <=  heap_bh154_w35_7;
            heap_bh154_w35_7_d2 <=  heap_bh154_w35_7_d1;
            heap_bh154_w37_7_d1 <=  heap_bh154_w37_7;
            heap_bh154_w37_7_d2 <=  heap_bh154_w37_7_d1;
            heap_bh154_w38_7_d1 <=  heap_bh154_w38_7;
            heap_bh154_w38_7_d2 <=  heap_bh154_w38_7_d1;
            heap_bh154_w40_7_d1 <=  heap_bh154_w40_7;
            heap_bh154_w40_7_d2 <=  heap_bh154_w40_7_d1;
            heap_bh154_w41_7_d1 <=  heap_bh154_w41_7;
            heap_bh154_w41_7_d2 <=  heap_bh154_w41_7_d1;
            heap_bh154_w43_7_d1 <=  heap_bh154_w43_7;
            heap_bh154_w43_7_d2 <=  heap_bh154_w43_7_d1;
            heap_bh154_w44_7_d1 <=  heap_bh154_w44_7;
            heap_bh154_w44_7_d2 <=  heap_bh154_w44_7_d1;
            heap_bh154_w46_7_d1 <=  heap_bh154_w46_7;
            heap_bh154_w46_7_d2 <=  heap_bh154_w46_7_d1;
            heap_bh154_w47_7_d1 <=  heap_bh154_w47_7;
            heap_bh154_w47_7_d2 <=  heap_bh154_w47_7_d1;
            heap_bh154_w49_7_d1 <=  heap_bh154_w49_7;
            heap_bh154_w49_7_d2 <=  heap_bh154_w49_7_d1;
            heap_bh154_w50_7_d1 <=  heap_bh154_w50_7;
            heap_bh154_w50_7_d2 <=  heap_bh154_w50_7_d1;
            heap_bh154_w52_7_d1 <=  heap_bh154_w52_7;
            heap_bh154_w52_7_d2 <=  heap_bh154_w52_7_d1;
            heap_bh154_w53_7_d1 <=  heap_bh154_w53_7;
            heap_bh154_w53_7_d2 <=  heap_bh154_w53_7_d1;
            heap_bh154_w55_7_d1 <=  heap_bh154_w55_7;
            heap_bh154_w55_7_d2 <=  heap_bh154_w55_7_d1;
            heap_bh154_w56_7_d1 <=  heap_bh154_w56_7;
            heap_bh154_w56_7_d2 <=  heap_bh154_w56_7_d1;
            heap_bh154_w58_7_d1 <=  heap_bh154_w58_7;
            heap_bh154_w58_7_d2 <=  heap_bh154_w58_7_d1;
            heap_bh154_w59_7_d1 <=  heap_bh154_w59_7;
            heap_bh154_w59_7_d2 <=  heap_bh154_w59_7_d1;
            heap_bh154_w63_5_d1 <=  heap_bh154_w63_5;
            heap_bh154_w63_5_d2 <=  heap_bh154_w63_5_d1;
            heap_bh154_w64_5_d1 <=  heap_bh154_w64_5;
            heap_bh154_w64_5_d2 <=  heap_bh154_w64_5_d1;
            heap_bh154_w65_4_d1 <=  heap_bh154_w65_4;
            heap_bh154_w65_4_d2 <=  heap_bh154_w65_4_d1;
            heap_bh154_w66_5_d1 <=  heap_bh154_w66_5;
            heap_bh154_w66_5_d2 <=  heap_bh154_w66_5_d1;
            heap_bh154_w67_4_d1 <=  heap_bh154_w67_4;
            heap_bh154_w67_4_d2 <=  heap_bh154_w67_4_d1;
            heap_bh154_w68_5_d1 <=  heap_bh154_w68_5;
            heap_bh154_w68_5_d2 <=  heap_bh154_w68_5_d1;
            heap_bh154_w69_4_d1 <=  heap_bh154_w69_4;
            heap_bh154_w69_4_d2 <=  heap_bh154_w69_4_d1;
            heap_bh154_w70_5_d1 <=  heap_bh154_w70_5;
            heap_bh154_w70_5_d2 <=  heap_bh154_w70_5_d1;
            heap_bh154_w71_3_d1 <=  heap_bh154_w71_3;
            heap_bh154_w71_3_d2 <=  heap_bh154_w71_3_d1;
            heap_bh154_w74_3_d1 <=  heap_bh154_w74_3;
            heap_bh154_w74_3_d2 <=  heap_bh154_w74_3_d1;
            heap_bh154_w75_2_d1 <=  heap_bh154_w75_2;
            heap_bh154_w75_2_d2 <=  heap_bh154_w75_2_d1;
            heap_bh154_w76_2_d1 <=  heap_bh154_w76_2;
            heap_bh154_w76_2_d2 <=  heap_bh154_w76_2_d1;
            heap_bh154_w77_2_d1 <=  heap_bh154_w77_2;
            heap_bh154_w77_2_d2 <=  heap_bh154_w77_2_d1;
            heap_bh154_w78_1_d1 <=  heap_bh154_w78_1;
            heap_bh154_w78_1_d2 <=  heap_bh154_w78_1_d1;
         end if;
      end process;
   XX_m153 <= Y ;
   YY_m153 <= X ;
   
   -- Beginning of code generated by BitHeap::generateCompressorVHDL
   -- code generated by BitHeap::generateSupertileVHDL()
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh154_ch0_0 <= ("" & XX_m153(47 downto 24) & "") * ("" & YY_m153(46 downto 30) & "");
   heap_bh154_w94_0 <= DSP_bh154_ch0_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w93_0 <= DSP_bh154_ch0_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w92_0 <= DSP_bh154_ch0_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w91_0 <= DSP_bh154_ch0_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w90_0 <= DSP_bh154_ch0_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w89_0 <= DSP_bh154_ch0_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w88_0 <= DSP_bh154_ch0_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w87_0 <= DSP_bh154_ch0_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w86_0 <= DSP_bh154_ch0_0(32); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w85_0 <= DSP_bh154_ch0_0(31); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w84_0 <= DSP_bh154_ch0_0(30); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w83_0 <= DSP_bh154_ch0_0(29); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w82_0 <= DSP_bh154_ch0_0(28); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w81_0 <= DSP_bh154_ch0_0(27); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w80_0 <= DSP_bh154_ch0_0(26); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w79_0 <= DSP_bh154_ch0_0(25); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w78_0 <= DSP_bh154_ch0_0(24); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w77_0 <= DSP_bh154_ch0_0(23); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w76_0 <= DSP_bh154_ch0_0(22); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w75_0 <= DSP_bh154_ch0_0(21); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w74_0 <= DSP_bh154_ch0_0(20); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w73_0 <= DSP_bh154_ch0_0(19); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w72_0 <= DSP_bh154_ch0_0(18); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w71_0 <= DSP_bh154_ch0_0(17); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w70_0 <= DSP_bh154_ch0_0(16); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w69_0 <= DSP_bh154_ch0_0(15); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w68_0 <= DSP_bh154_ch0_0(14); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w67_0 <= DSP_bh154_ch0_0(13); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w66_0 <= DSP_bh154_ch0_0(12); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w65_0 <= DSP_bh154_ch0_0(11); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w64_0 <= DSP_bh154_ch0_0(10); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w63_0 <= DSP_bh154_ch0_0(9); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w62_0 <= DSP_bh154_ch0_0(8); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w61_0 <= DSP_bh154_ch0_0(7); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w60_0 <= DSP_bh154_ch0_0(6); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w59_0 <= DSP_bh154_ch0_0(5); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w58_0 <= DSP_bh154_ch0_0(4); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w57_0 <= DSP_bh154_ch0_0(3); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w56_0 <= DSP_bh154_ch0_0(2); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w55_0 <= DSP_bh154_ch0_0(1); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w54_0 <= DSP_bh154_ch0_0(0); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh154_ch1_0 <= ("" & XX_m153(23 downto 0) & "") * ("" & YY_m153(46 downto 30) & "");
   heap_bh154_w70_1 <= DSP_bh154_ch1_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w69_1 <= DSP_bh154_ch1_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w68_1 <= DSP_bh154_ch1_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w67_1 <= DSP_bh154_ch1_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w66_1 <= DSP_bh154_ch1_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w65_1 <= DSP_bh154_ch1_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w64_1 <= DSP_bh154_ch1_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w63_1 <= DSP_bh154_ch1_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w62_1 <= DSP_bh154_ch1_0(32); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w61_1 <= DSP_bh154_ch1_0(31); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w60_1 <= DSP_bh154_ch1_0(30); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w59_1 <= DSP_bh154_ch1_0(29); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w58_1 <= DSP_bh154_ch1_0(28); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w57_1 <= DSP_bh154_ch1_0(27); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w56_1 <= DSP_bh154_ch1_0(26); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w55_1 <= DSP_bh154_ch1_0(25); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w54_1 <= DSP_bh154_ch1_0(24); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w53_0 <= DSP_bh154_ch1_0(23); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w52_0 <= DSP_bh154_ch1_0(22); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w51_0 <= DSP_bh154_ch1_0(21); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w50_0 <= DSP_bh154_ch1_0(20); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w49_0 <= DSP_bh154_ch1_0(19); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w48_0 <= DSP_bh154_ch1_0(18); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w47_0 <= DSP_bh154_ch1_0(17); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w46_0 <= DSP_bh154_ch1_0(16); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w45_0 <= DSP_bh154_ch1_0(15); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w44_0 <= DSP_bh154_ch1_0(14); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w43_0 <= DSP_bh154_ch1_0(13); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w42_0 <= DSP_bh154_ch1_0(12); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w41_0 <= DSP_bh154_ch1_0(11); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w40_0 <= DSP_bh154_ch1_0(10); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w39_0 <= DSP_bh154_ch1_0(9); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w38_0 <= DSP_bh154_ch1_0(8); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w37_0 <= DSP_bh154_ch1_0(7); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w36_0 <= DSP_bh154_ch1_0(6); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w35_0 <= DSP_bh154_ch1_0(5); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w34_0 <= DSP_bh154_ch1_0(4); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w33_0 <= DSP_bh154_ch1_0(3); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w32_0 <= DSP_bh154_ch1_0(2); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w31_0 <= DSP_bh154_ch1_0(1); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w30_0 <= DSP_bh154_ch1_0(0); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh154_ch2_0 <= ("" & XX_m153(47 downto 24) & "") * ("" & YY_m153(29 downto 13) & "");
   heap_bh154_w77_1 <= DSP_bh154_ch2_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w76_1 <= DSP_bh154_ch2_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w75_1 <= DSP_bh154_ch2_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w74_1 <= DSP_bh154_ch2_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w73_1 <= DSP_bh154_ch2_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w72_1 <= DSP_bh154_ch2_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w71_1 <= DSP_bh154_ch2_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w70_2 <= DSP_bh154_ch2_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w69_2 <= DSP_bh154_ch2_0(32); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w68_2 <= DSP_bh154_ch2_0(31); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w67_2 <= DSP_bh154_ch2_0(30); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w66_2 <= DSP_bh154_ch2_0(29); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w65_2 <= DSP_bh154_ch2_0(28); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w64_2 <= DSP_bh154_ch2_0(27); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w63_2 <= DSP_bh154_ch2_0(26); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w62_2 <= DSP_bh154_ch2_0(25); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w61_2 <= DSP_bh154_ch2_0(24); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w60_2 <= DSP_bh154_ch2_0(23); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w59_2 <= DSP_bh154_ch2_0(22); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w58_2 <= DSP_bh154_ch2_0(21); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w57_2 <= DSP_bh154_ch2_0(20); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w56_2 <= DSP_bh154_ch2_0(19); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w55_2 <= DSP_bh154_ch2_0(18); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w54_2 <= DSP_bh154_ch2_0(17); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w53_1 <= DSP_bh154_ch2_0(16); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w52_1 <= DSP_bh154_ch2_0(15); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w51_1 <= DSP_bh154_ch2_0(14); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w50_1 <= DSP_bh154_ch2_0(13); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w49_1 <= DSP_bh154_ch2_0(12); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w48_1 <= DSP_bh154_ch2_0(11); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w47_1 <= DSP_bh154_ch2_0(10); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w46_1 <= DSP_bh154_ch2_0(9); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w45_1 <= DSP_bh154_ch2_0(8); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w44_1 <= DSP_bh154_ch2_0(7); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w43_1 <= DSP_bh154_ch2_0(6); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w42_1 <= DSP_bh154_ch2_0(5); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w41_1 <= DSP_bh154_ch2_0(4); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w40_1 <= DSP_bh154_ch2_0(3); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w39_1 <= DSP_bh154_ch2_0(2); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w38_1 <= DSP_bh154_ch2_0(1); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w37_1 <= DSP_bh154_ch2_0(0); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh154_ch3_0 <= ("" & XX_m153(23 downto 0) & "") * ("" & YY_m153(29 downto 13) & "");
   heap_bh154_w53_2 <= DSP_bh154_ch3_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w52_2 <= DSP_bh154_ch3_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w51_2 <= DSP_bh154_ch3_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w50_2 <= DSP_bh154_ch3_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w49_2 <= DSP_bh154_ch3_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w48_2 <= DSP_bh154_ch3_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w47_2 <= DSP_bh154_ch3_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w46_2 <= DSP_bh154_ch3_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w45_2 <= DSP_bh154_ch3_0(32); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w44_2 <= DSP_bh154_ch3_0(31); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w43_2 <= DSP_bh154_ch3_0(30); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w42_2 <= DSP_bh154_ch3_0(29); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w41_2 <= DSP_bh154_ch3_0(28); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w40_2 <= DSP_bh154_ch3_0(27); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w39_2 <= DSP_bh154_ch3_0(26); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w38_2 <= DSP_bh154_ch3_0(25); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w37_2 <= DSP_bh154_ch3_0(24); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w36_1 <= DSP_bh154_ch3_0(23); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w35_1 <= DSP_bh154_ch3_0(22); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w34_1 <= DSP_bh154_ch3_0(21); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w33_1 <= DSP_bh154_ch3_0(20); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w32_1 <= DSP_bh154_ch3_0(19); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w31_1 <= DSP_bh154_ch3_0(18); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w30_1 <= DSP_bh154_ch3_0(17); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w29_0 <= DSP_bh154_ch3_0(16); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w28_0 <= DSP_bh154_ch3_0(15); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w27_0 <= DSP_bh154_ch3_0(14); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w26_0 <= DSP_bh154_ch3_0(13); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w25_0 <= DSP_bh154_ch3_0(12); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w24_0 <= DSP_bh154_ch3_0(11); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w23_0 <= DSP_bh154_ch3_0(10); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w22_0 <= DSP_bh154_ch3_0(9); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w21_0 <= DSP_bh154_ch3_0(8); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w20_0 <= DSP_bh154_ch3_0(7); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w19_0 <= DSP_bh154_ch3_0(6); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w18_0 <= DSP_bh154_ch3_0(5); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w17_0 <= DSP_bh154_ch3_0(4); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w16_0 <= DSP_bh154_ch3_0(3); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w15_0 <= DSP_bh154_ch3_0(2); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w14_0 <= DSP_bh154_ch3_0(1); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w13_0 <= DSP_bh154_ch3_0(0); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh154_ch4_0 <= ("" & XX_m153(47 downto 24) & "") * ("" & YY_m153(12 downto 0) & "0000");
   heap_bh154_w60_3 <= DSP_bh154_ch4_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w59_3 <= DSP_bh154_ch4_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w58_3 <= DSP_bh154_ch4_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w57_3 <= DSP_bh154_ch4_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w56_3 <= DSP_bh154_ch4_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w55_3 <= DSP_bh154_ch4_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w54_3 <= DSP_bh154_ch4_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w53_3 <= DSP_bh154_ch4_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w52_3 <= DSP_bh154_ch4_0(32); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w51_3 <= DSP_bh154_ch4_0(31); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w50_3 <= DSP_bh154_ch4_0(30); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w49_3 <= DSP_bh154_ch4_0(29); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w48_3 <= DSP_bh154_ch4_0(28); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w47_3 <= DSP_bh154_ch4_0(27); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w46_3 <= DSP_bh154_ch4_0(26); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w45_3 <= DSP_bh154_ch4_0(25); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w44_3 <= DSP_bh154_ch4_0(24); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w43_3 <= DSP_bh154_ch4_0(23); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w42_3 <= DSP_bh154_ch4_0(22); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w41_3 <= DSP_bh154_ch4_0(21); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w40_3 <= DSP_bh154_ch4_0(20); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w39_3 <= DSP_bh154_ch4_0(19); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w38_3 <= DSP_bh154_ch4_0(18); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w37_3 <= DSP_bh154_ch4_0(17); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w36_2 <= DSP_bh154_ch4_0(16); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w35_2 <= DSP_bh154_ch4_0(15); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w34_2 <= DSP_bh154_ch4_0(14); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w33_2 <= DSP_bh154_ch4_0(13); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w32_2 <= DSP_bh154_ch4_0(12); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w31_2 <= DSP_bh154_ch4_0(11); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w30_2 <= DSP_bh154_ch4_0(10); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w29_1 <= DSP_bh154_ch4_0(9); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w28_1 <= DSP_bh154_ch4_0(8); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w27_1 <= DSP_bh154_ch4_0(7); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w26_1 <= DSP_bh154_ch4_0(6); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w25_1 <= DSP_bh154_ch4_0(5); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w24_1 <= DSP_bh154_ch4_0(4); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w23_1 <= DSP_bh154_ch4_0(3); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w22_1 <= DSP_bh154_ch4_0(2); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w21_1 <= DSP_bh154_ch4_0(1); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w20_1 <= DSP_bh154_ch4_0(0); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh154_ch5_0 <= ("" & XX_m153(23 downto 0) & "") * ("" & YY_m153(12 downto 0) & "0000");
   heap_bh154_w36_3 <= DSP_bh154_ch5_0(40); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w35_3 <= DSP_bh154_ch5_0(39); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w34_3 <= DSP_bh154_ch5_0(38); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w33_3 <= DSP_bh154_ch5_0(37); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w32_3 <= DSP_bh154_ch5_0(36); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w31_3 <= DSP_bh154_ch5_0(35); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w30_3 <= DSP_bh154_ch5_0(34); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w29_2 <= DSP_bh154_ch5_0(33); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w28_2 <= DSP_bh154_ch5_0(32); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w27_2 <= DSP_bh154_ch5_0(31); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w26_2 <= DSP_bh154_ch5_0(30); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w25_2 <= DSP_bh154_ch5_0(29); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w24_2 <= DSP_bh154_ch5_0(28); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w23_2 <= DSP_bh154_ch5_0(27); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w22_2 <= DSP_bh154_ch5_0(26); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w21_2 <= DSP_bh154_ch5_0(25); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w20_2 <= DSP_bh154_ch5_0(24); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w19_1 <= DSP_bh154_ch5_0(23); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w18_1 <= DSP_bh154_ch5_0(22); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w17_1 <= DSP_bh154_ch5_0(21); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w16_1 <= DSP_bh154_ch5_0(20); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w15_1 <= DSP_bh154_ch5_0(19); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w14_1 <= DSP_bh154_ch5_0(18); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w13_1 <= DSP_bh154_ch5_0(17); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w12_0 <= DSP_bh154_ch5_0(16); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w11_0 <= DSP_bh154_ch5_0(15); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w10_0 <= DSP_bh154_ch5_0(14); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w9_0 <= DSP_bh154_ch5_0(13); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w8_0 <= DSP_bh154_ch5_0(12); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w7_0 <= DSP_bh154_ch5_0(11); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w6_0 <= DSP_bh154_ch5_0(10); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w5_0 <= DSP_bh154_ch5_0(9); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w4_0 <= DSP_bh154_ch5_0(8); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w3_0 <= DSP_bh154_ch5_0(7); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w2_0 <= DSP_bh154_ch5_0(6); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w1_0 <= DSP_bh154_ch5_0(5); -- cycle= 0 cp= 1.638e-09
   heap_bh154_w0_0 <= DSP_bh154_ch5_0(4); -- cycle= 0 cp= 1.638e-09
   ----------------Synchro barrier, entering cycle 0----------------

   -- Adding the constant bits
   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 0----------------
   tempR_bh154_0 <= heap_bh154_w12_0 & heap_bh154_w11_0 & heap_bh154_w10_0 & heap_bh154_w9_0 & heap_bh154_w8_0 & heap_bh154_w7_0 & heap_bh154_w6_0 & heap_bh154_w5_0 & heap_bh154_w4_0 & heap_bh154_w3_0 & heap_bh154_w2_0 & heap_bh154_w1_0 & heap_bh154_w0_0; -- already compressed
   ----------------Synchro barrier, entering cycle 0----------------
   inAdder0_bh154_0 <= '0' & heap_bh154_w19_1 & heap_bh154_w18_1 & heap_bh154_w17_1 & heap_bh154_w16_1 & heap_bh154_w15_1 & heap_bh154_w14_1 & heap_bh154_w13_1;
   inAdder1_bh154_0 <= '0' & heap_bh154_w19_0 & heap_bh154_w18_0 & heap_bh154_w17_0 & heap_bh154_w16_0 & heap_bh154_w15_0 & heap_bh154_w14_0 & heap_bh154_w13_0;
   cin_bh154_0 <= '0';
   ----------------Synchro barrier, entering cycle 1----------------
   outAdder_bh154_0 <= inAdder0_bh154_0_d1 + inAdder1_bh154_0_d1 + cin_bh154_0_d1;
   heap_bh154_w13_2 <= outAdder_bh154_0(0); -- cycle= 1 cp= 8.8565e-10
   heap_bh154_w14_2 <= outAdder_bh154_0(1); -- cycle= 1 cp= 8.8565e-10
   heap_bh154_w15_2 <= outAdder_bh154_0(2); -- cycle= 1 cp= 8.8565e-10
   heap_bh154_w16_2 <= outAdder_bh154_0(3); -- cycle= 1 cp= 8.8565e-10
   heap_bh154_w17_2 <= outAdder_bh154_0(4); -- cycle= 1 cp= 8.8565e-10
   heap_bh154_w18_2 <= outAdder_bh154_0(5); -- cycle= 1 cp= 8.8565e-10
   heap_bh154_w19_2 <= outAdder_bh154_0(6); -- cycle= 1 cp= 8.8565e-10
   heap_bh154_w20_3 <= outAdder_bh154_0(7); -- cycle= 1 cp= 8.8565e-10

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_0_0 <= heap_bh154_w20_2 & heap_bh154_w20_1 & heap_bh154_w20_0;
   CompressorIn_bh154_0_1 <= heap_bh154_w21_2 & heap_bh154_w21_1;
   Compressor_bh154_0: Compressor_23_3
      port map ( R => CompressorOut_bh154_0_0   ,
                 X0 => CompressorIn_bh154_0_0,
                 X1 => CompressorIn_bh154_0_1);
   heap_bh154_w20_4 <= CompressorOut_bh154_0_0(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w21_3 <= CompressorOut_bh154_0_0(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w22_3 <= CompressorOut_bh154_0_0(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_1_2 <= heap_bh154_w22_2 & heap_bh154_w22_1 & heap_bh154_w22_0;
   CompressorIn_bh154_1_3 <= heap_bh154_w23_2 & heap_bh154_w23_1;
   Compressor_bh154_1: Compressor_23_3
      port map ( R => CompressorOut_bh154_1_1   ,
                 X0 => CompressorIn_bh154_1_2,
                 X1 => CompressorIn_bh154_1_3);
   heap_bh154_w22_4 <= CompressorOut_bh154_1_1(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w23_3 <= CompressorOut_bh154_1_1(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w24_3 <= CompressorOut_bh154_1_1(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_2_4 <= heap_bh154_w24_2 & heap_bh154_w24_1 & heap_bh154_w24_0;
   CompressorIn_bh154_2_5 <= heap_bh154_w25_2 & heap_bh154_w25_1;
   Compressor_bh154_2: Compressor_23_3
      port map ( R => CompressorOut_bh154_2_2   ,
                 X0 => CompressorIn_bh154_2_4,
                 X1 => CompressorIn_bh154_2_5);
   heap_bh154_w24_4 <= CompressorOut_bh154_2_2(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w25_3 <= CompressorOut_bh154_2_2(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w26_3 <= CompressorOut_bh154_2_2(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_3_6 <= heap_bh154_w26_2 & heap_bh154_w26_1 & heap_bh154_w26_0;
   CompressorIn_bh154_3_7 <= heap_bh154_w27_2 & heap_bh154_w27_1;
   Compressor_bh154_3: Compressor_23_3
      port map ( R => CompressorOut_bh154_3_3   ,
                 X0 => CompressorIn_bh154_3_6,
                 X1 => CompressorIn_bh154_3_7);
   heap_bh154_w26_4 <= CompressorOut_bh154_3_3(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w27_3 <= CompressorOut_bh154_3_3(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w28_3 <= CompressorOut_bh154_3_3(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_4_8 <= heap_bh154_w28_2 & heap_bh154_w28_1 & heap_bh154_w28_0;
   CompressorIn_bh154_4_9 <= heap_bh154_w29_2 & heap_bh154_w29_1;
   Compressor_bh154_4: Compressor_23_3
      port map ( R => CompressorOut_bh154_4_4   ,
                 X0 => CompressorIn_bh154_4_8,
                 X1 => CompressorIn_bh154_4_9);
   heap_bh154_w28_4 <= CompressorOut_bh154_4_4(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w29_3 <= CompressorOut_bh154_4_4(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w30_4 <= CompressorOut_bh154_4_4(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_5_10 <= heap_bh154_w30_3 & heap_bh154_w30_2 & heap_bh154_w30_1 & heap_bh154_w30_0;
   CompressorIn_bh154_5_11(0) <= heap_bh154_w31_3;
   Compressor_bh154_5: Compressor_14_3
      port map ( R => CompressorOut_bh154_5_5   ,
                 X0 => CompressorIn_bh154_5_10,
                 X1 => CompressorIn_bh154_5_11);
   heap_bh154_w30_5 <= CompressorOut_bh154_5_5(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w31_4 <= CompressorOut_bh154_5_5(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w32_4 <= CompressorOut_bh154_5_5(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_6_12 <= heap_bh154_w31_2 & heap_bh154_w31_1 & heap_bh154_w31_0;
   CompressorIn_bh154_6_13 <= heap_bh154_w32_3 & heap_bh154_w32_2;
   Compressor_bh154_6: Compressor_23_3
      port map ( R => CompressorOut_bh154_6_6   ,
                 X0 => CompressorIn_bh154_6_12,
                 X1 => CompressorIn_bh154_6_13);
   heap_bh154_w31_5 <= CompressorOut_bh154_6_6(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w32_5 <= CompressorOut_bh154_6_6(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w33_4 <= CompressorOut_bh154_6_6(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_7_14 <= heap_bh154_w33_3 & heap_bh154_w33_2 & heap_bh154_w33_1 & heap_bh154_w33_0;
   CompressorIn_bh154_7_15(0) <= heap_bh154_w34_3;
   Compressor_bh154_7: Compressor_14_3
      port map ( R => CompressorOut_bh154_7_7   ,
                 X0 => CompressorIn_bh154_7_14,
                 X1 => CompressorIn_bh154_7_15);
   heap_bh154_w33_5 <= CompressorOut_bh154_7_7(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w34_4 <= CompressorOut_bh154_7_7(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w35_4 <= CompressorOut_bh154_7_7(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_8_16 <= heap_bh154_w34_2 & heap_bh154_w34_1 & heap_bh154_w34_0;
   CompressorIn_bh154_8_17 <= heap_bh154_w35_3 & heap_bh154_w35_2;
   Compressor_bh154_8: Compressor_23_3
      port map ( R => CompressorOut_bh154_8_8   ,
                 X0 => CompressorIn_bh154_8_16,
                 X1 => CompressorIn_bh154_8_17);
   heap_bh154_w34_5 <= CompressorOut_bh154_8_8(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w35_5 <= CompressorOut_bh154_8_8(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w36_4 <= CompressorOut_bh154_8_8(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_9_18 <= heap_bh154_w36_3 & heap_bh154_w36_2 & heap_bh154_w36_1 & heap_bh154_w36_0;
   CompressorIn_bh154_9_19(0) <= heap_bh154_w37_3;
   Compressor_bh154_9: Compressor_14_3
      port map ( R => CompressorOut_bh154_9_9   ,
                 X0 => CompressorIn_bh154_9_18,
                 X1 => CompressorIn_bh154_9_19);
   heap_bh154_w36_5 <= CompressorOut_bh154_9_9(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w37_4 <= CompressorOut_bh154_9_9(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w38_4 <= CompressorOut_bh154_9_9(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_10_20 <= heap_bh154_w37_2 & heap_bh154_w37_1 & heap_bh154_w37_0;
   CompressorIn_bh154_10_21 <= heap_bh154_w38_3 & heap_bh154_w38_2;
   Compressor_bh154_10: Compressor_23_3
      port map ( R => CompressorOut_bh154_10_10   ,
                 X0 => CompressorIn_bh154_10_20,
                 X1 => CompressorIn_bh154_10_21);
   heap_bh154_w37_5 <= CompressorOut_bh154_10_10(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w38_5 <= CompressorOut_bh154_10_10(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w39_4 <= CompressorOut_bh154_10_10(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_11_22 <= heap_bh154_w39_3 & heap_bh154_w39_2 & heap_bh154_w39_1 & heap_bh154_w39_0;
   CompressorIn_bh154_11_23(0) <= heap_bh154_w40_3;
   Compressor_bh154_11: Compressor_14_3
      port map ( R => CompressorOut_bh154_11_11   ,
                 X0 => CompressorIn_bh154_11_22,
                 X1 => CompressorIn_bh154_11_23);
   heap_bh154_w39_5 <= CompressorOut_bh154_11_11(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w40_4 <= CompressorOut_bh154_11_11(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w41_4 <= CompressorOut_bh154_11_11(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_12_24 <= heap_bh154_w40_2 & heap_bh154_w40_1 & heap_bh154_w40_0;
   CompressorIn_bh154_12_25 <= heap_bh154_w41_3 & heap_bh154_w41_2;
   Compressor_bh154_12: Compressor_23_3
      port map ( R => CompressorOut_bh154_12_12   ,
                 X0 => CompressorIn_bh154_12_24,
                 X1 => CompressorIn_bh154_12_25);
   heap_bh154_w40_5 <= CompressorOut_bh154_12_12(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w41_5 <= CompressorOut_bh154_12_12(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w42_4 <= CompressorOut_bh154_12_12(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_13_26 <= heap_bh154_w42_3 & heap_bh154_w42_2 & heap_bh154_w42_1 & heap_bh154_w42_0;
   CompressorIn_bh154_13_27(0) <= heap_bh154_w43_3;
   Compressor_bh154_13: Compressor_14_3
      port map ( R => CompressorOut_bh154_13_13   ,
                 X0 => CompressorIn_bh154_13_26,
                 X1 => CompressorIn_bh154_13_27);
   heap_bh154_w42_5 <= CompressorOut_bh154_13_13(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w43_4 <= CompressorOut_bh154_13_13(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w44_4 <= CompressorOut_bh154_13_13(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_14_28 <= heap_bh154_w43_2 & heap_bh154_w43_1 & heap_bh154_w43_0;
   CompressorIn_bh154_14_29 <= heap_bh154_w44_3 & heap_bh154_w44_2;
   Compressor_bh154_14: Compressor_23_3
      port map ( R => CompressorOut_bh154_14_14   ,
                 X0 => CompressorIn_bh154_14_28,
                 X1 => CompressorIn_bh154_14_29);
   heap_bh154_w43_5 <= CompressorOut_bh154_14_14(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w44_5 <= CompressorOut_bh154_14_14(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w45_4 <= CompressorOut_bh154_14_14(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_15_30 <= heap_bh154_w45_3 & heap_bh154_w45_2 & heap_bh154_w45_1 & heap_bh154_w45_0;
   CompressorIn_bh154_15_31(0) <= heap_bh154_w46_3;
   Compressor_bh154_15: Compressor_14_3
      port map ( R => CompressorOut_bh154_15_15   ,
                 X0 => CompressorIn_bh154_15_30,
                 X1 => CompressorIn_bh154_15_31);
   heap_bh154_w45_5 <= CompressorOut_bh154_15_15(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w46_4 <= CompressorOut_bh154_15_15(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w47_4 <= CompressorOut_bh154_15_15(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_16_32 <= heap_bh154_w46_2 & heap_bh154_w46_1 & heap_bh154_w46_0;
   CompressorIn_bh154_16_33 <= heap_bh154_w47_3 & heap_bh154_w47_2;
   Compressor_bh154_16: Compressor_23_3
      port map ( R => CompressorOut_bh154_16_16   ,
                 X0 => CompressorIn_bh154_16_32,
                 X1 => CompressorIn_bh154_16_33);
   heap_bh154_w46_5 <= CompressorOut_bh154_16_16(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w47_5 <= CompressorOut_bh154_16_16(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w48_4 <= CompressorOut_bh154_16_16(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_17_34 <= heap_bh154_w48_3 & heap_bh154_w48_2 & heap_bh154_w48_1 & heap_bh154_w48_0;
   CompressorIn_bh154_17_35(0) <= heap_bh154_w49_3;
   Compressor_bh154_17: Compressor_14_3
      port map ( R => CompressorOut_bh154_17_17   ,
                 X0 => CompressorIn_bh154_17_34,
                 X1 => CompressorIn_bh154_17_35);
   heap_bh154_w48_5 <= CompressorOut_bh154_17_17(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w49_4 <= CompressorOut_bh154_17_17(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w50_4 <= CompressorOut_bh154_17_17(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_18_36 <= heap_bh154_w49_2 & heap_bh154_w49_1 & heap_bh154_w49_0;
   CompressorIn_bh154_18_37 <= heap_bh154_w50_3 & heap_bh154_w50_2;
   Compressor_bh154_18: Compressor_23_3
      port map ( R => CompressorOut_bh154_18_18   ,
                 X0 => CompressorIn_bh154_18_36,
                 X1 => CompressorIn_bh154_18_37);
   heap_bh154_w49_5 <= CompressorOut_bh154_18_18(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w50_5 <= CompressorOut_bh154_18_18(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w51_4 <= CompressorOut_bh154_18_18(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_19_38 <= heap_bh154_w51_3 & heap_bh154_w51_2 & heap_bh154_w51_1 & heap_bh154_w51_0;
   CompressorIn_bh154_19_39(0) <= heap_bh154_w52_3;
   Compressor_bh154_19: Compressor_14_3
      port map ( R => CompressorOut_bh154_19_19   ,
                 X0 => CompressorIn_bh154_19_38,
                 X1 => CompressorIn_bh154_19_39);
   heap_bh154_w51_5 <= CompressorOut_bh154_19_19(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w52_4 <= CompressorOut_bh154_19_19(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w53_4 <= CompressorOut_bh154_19_19(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_20_40 <= heap_bh154_w52_2 & heap_bh154_w52_1 & heap_bh154_w52_0;
   CompressorIn_bh154_20_41 <= heap_bh154_w53_3 & heap_bh154_w53_2;
   Compressor_bh154_20: Compressor_23_3
      port map ( R => CompressorOut_bh154_20_20   ,
                 X0 => CompressorIn_bh154_20_40,
                 X1 => CompressorIn_bh154_20_41);
   heap_bh154_w52_5 <= CompressorOut_bh154_20_20(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w53_5 <= CompressorOut_bh154_20_20(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w54_4 <= CompressorOut_bh154_20_20(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_21_42 <= heap_bh154_w54_3 & heap_bh154_w54_2 & heap_bh154_w54_1 & heap_bh154_w54_0;
   CompressorIn_bh154_21_43(0) <= heap_bh154_w55_3;
   Compressor_bh154_21: Compressor_14_3
      port map ( R => CompressorOut_bh154_21_21   ,
                 X0 => CompressorIn_bh154_21_42,
                 X1 => CompressorIn_bh154_21_43);
   heap_bh154_w54_5 <= CompressorOut_bh154_21_21(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w55_4 <= CompressorOut_bh154_21_21(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w56_4 <= CompressorOut_bh154_21_21(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_22_44 <= heap_bh154_w55_2 & heap_bh154_w55_1 & heap_bh154_w55_0;
   CompressorIn_bh154_22_45 <= heap_bh154_w56_3 & heap_bh154_w56_2;
   Compressor_bh154_22: Compressor_23_3
      port map ( R => CompressorOut_bh154_22_22   ,
                 X0 => CompressorIn_bh154_22_44,
                 X1 => CompressorIn_bh154_22_45);
   heap_bh154_w55_5 <= CompressorOut_bh154_22_22(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w56_5 <= CompressorOut_bh154_22_22(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w57_4 <= CompressorOut_bh154_22_22(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_23_46 <= heap_bh154_w57_3 & heap_bh154_w57_2 & heap_bh154_w57_1 & heap_bh154_w57_0;
   CompressorIn_bh154_23_47(0) <= heap_bh154_w58_3;
   Compressor_bh154_23: Compressor_14_3
      port map ( R => CompressorOut_bh154_23_23   ,
                 X0 => CompressorIn_bh154_23_46,
                 X1 => CompressorIn_bh154_23_47);
   heap_bh154_w57_5 <= CompressorOut_bh154_23_23(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w58_4 <= CompressorOut_bh154_23_23(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w59_4 <= CompressorOut_bh154_23_23(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_24_48 <= heap_bh154_w58_2 & heap_bh154_w58_1 & heap_bh154_w58_0;
   CompressorIn_bh154_24_49 <= heap_bh154_w59_3 & heap_bh154_w59_2;
   Compressor_bh154_24: Compressor_23_3
      port map ( R => CompressorOut_bh154_24_24   ,
                 X0 => CompressorIn_bh154_24_48,
                 X1 => CompressorIn_bh154_24_49);
   heap_bh154_w58_5 <= CompressorOut_bh154_24_24(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w59_5 <= CompressorOut_bh154_24_24(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w60_4 <= CompressorOut_bh154_24_24(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_25_50 <= heap_bh154_w60_3 & heap_bh154_w60_2 & heap_bh154_w60_1 & heap_bh154_w60_0;
   CompressorIn_bh154_25_51(0) <= heap_bh154_w61_2;
   Compressor_bh154_25: Compressor_14_3
      port map ( R => CompressorOut_bh154_25_25   ,
                 X0 => CompressorIn_bh154_25_50,
                 X1 => CompressorIn_bh154_25_51);
   heap_bh154_w60_5 <= CompressorOut_bh154_25_25(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w61_3 <= CompressorOut_bh154_25_25(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w62_3 <= CompressorOut_bh154_25_25(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_26_52 <= heap_bh154_w62_2 & heap_bh154_w62_1 & heap_bh154_w62_0;
   CompressorIn_bh154_26_53 <= heap_bh154_w63_2 & heap_bh154_w63_1;
   Compressor_bh154_26: Compressor_23_3
      port map ( R => CompressorOut_bh154_26_26   ,
                 X0 => CompressorIn_bh154_26_52,
                 X1 => CompressorIn_bh154_26_53);
   heap_bh154_w62_4 <= CompressorOut_bh154_26_26(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w63_3 <= CompressorOut_bh154_26_26(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w64_3 <= CompressorOut_bh154_26_26(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_27_54 <= heap_bh154_w64_2 & heap_bh154_w64_1 & heap_bh154_w64_0;
   CompressorIn_bh154_27_55 <= heap_bh154_w65_2 & heap_bh154_w65_1;
   Compressor_bh154_27: Compressor_23_3
      port map ( R => CompressorOut_bh154_27_27   ,
                 X0 => CompressorIn_bh154_27_54,
                 X1 => CompressorIn_bh154_27_55);
   heap_bh154_w64_4 <= CompressorOut_bh154_27_27(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w65_3 <= CompressorOut_bh154_27_27(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w66_3 <= CompressorOut_bh154_27_27(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_28_56 <= heap_bh154_w66_2 & heap_bh154_w66_1 & heap_bh154_w66_0;
   CompressorIn_bh154_28_57 <= heap_bh154_w67_2 & heap_bh154_w67_1;
   Compressor_bh154_28: Compressor_23_3
      port map ( R => CompressorOut_bh154_28_28   ,
                 X0 => CompressorIn_bh154_28_56,
                 X1 => CompressorIn_bh154_28_57);
   heap_bh154_w66_4 <= CompressorOut_bh154_28_28(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w67_3 <= CompressorOut_bh154_28_28(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w68_3 <= CompressorOut_bh154_28_28(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_29_58 <= heap_bh154_w68_2 & heap_bh154_w68_1 & heap_bh154_w68_0;
   CompressorIn_bh154_29_59 <= heap_bh154_w69_2 & heap_bh154_w69_1;
   Compressor_bh154_29: Compressor_23_3
      port map ( R => CompressorOut_bh154_29_29   ,
                 X0 => CompressorIn_bh154_29_58,
                 X1 => CompressorIn_bh154_29_59);
   heap_bh154_w68_4 <= CompressorOut_bh154_29_29(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w69_3 <= CompressorOut_bh154_29_29(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w70_3 <= CompressorOut_bh154_29_29(2); -- cycle= 0 cp= 2.01965e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh154_30_60 <= heap_bh154_w70_2 & heap_bh154_w70_1 & heap_bh154_w70_0;
   CompressorIn_bh154_30_61 <= heap_bh154_w71_1 & heap_bh154_w71_0;
   Compressor_bh154_30: Compressor_23_3
      port map ( R => CompressorOut_bh154_30_30   ,
                 X0 => CompressorIn_bh154_30_60,
                 X1 => CompressorIn_bh154_30_61);
   heap_bh154_w70_4 <= CompressorOut_bh154_30_30(0); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w71_2 <= CompressorOut_bh154_30_30(1); -- cycle= 0 cp= 2.01965e-09
   heap_bh154_w72_2 <= CompressorOut_bh154_30_30(2); -- cycle= 0 cp= 2.01965e-09
   ----------------Synchro barrier, entering cycle 1----------------
   tempR_bh154_1 <= heap_bh154_w19_2 & heap_bh154_w18_2 & heap_bh154_w17_2 & heap_bh154_w16_2 & heap_bh154_w15_2 & heap_bh154_w14_2 & heap_bh154_w13_2; -- already compressed
   ----------------Synchro barrier, entering cycle 1----------------
   inAdder0_bh154_1 <= '0' & heap_bh154_w31_5_d1 & heap_bh154_w30_5_d1 & heap_bh154_w29_0_d1 & heap_bh154_w28_4_d1 & heap_bh154_w27_0_d1 & heap_bh154_w26_4_d1 & heap_bh154_w25_0_d1 & heap_bh154_w24_4_d1 & heap_bh154_w23_0_d1 & heap_bh154_w22_4_d1 & heap_bh154_w21_0_d1 & heap_bh154_w20_4_d1;
   inAdder1_bh154_1 <= '0' & heap_bh154_w31_4_d1 & heap_bh154_w30_4_d1 & heap_bh154_w29_3_d1 & heap_bh154_w28_3_d1 & heap_bh154_w27_3_d1 & heap_bh154_w26_3_d1 & heap_bh154_w25_3_d1 & heap_bh154_w24_3_d1 & heap_bh154_w23_3_d1 & heap_bh154_w22_3_d1 & heap_bh154_w21_3_d1 & '0';
   cin_bh154_1 <= '0';
   outAdder_bh154_1 <= inAdder0_bh154_1 + inAdder1_bh154_1 + cin_bh154_1;
   heap_bh154_w20_5 <= outAdder_bh154_1(0); -- cycle= 1 cp= 1.8463e-09
   heap_bh154_w21_4 <= outAdder_bh154_1(1); -- cycle= 1 cp= 1.8463e-09
   heap_bh154_w22_5 <= outAdder_bh154_1(2); -- cycle= 1 cp= 1.8463e-09
   heap_bh154_w23_4 <= outAdder_bh154_1(3); -- cycle= 1 cp= 1.8463e-09
   heap_bh154_w24_5 <= outAdder_bh154_1(4); -- cycle= 1 cp= 1.8463e-09
   heap_bh154_w25_4 <= outAdder_bh154_1(5); -- cycle= 1 cp= 1.8463e-09
   heap_bh154_w26_5 <= outAdder_bh154_1(6); -- cycle= 1 cp= 1.8463e-09
   heap_bh154_w27_4 <= outAdder_bh154_1(7); -- cycle= 1 cp= 1.8463e-09
   heap_bh154_w28_5 <= outAdder_bh154_1(8); -- cycle= 1 cp= 1.8463e-09
   heap_bh154_w29_4 <= outAdder_bh154_1(9); -- cycle= 1 cp= 1.8463e-09
   heap_bh154_w30_6 <= outAdder_bh154_1(10); -- cycle= 1 cp= 1.8463e-09
   heap_bh154_w31_6 <= outAdder_bh154_1(11); -- cycle= 1 cp= 1.8463e-09
   heap_bh154_w32_6 <= outAdder_bh154_1(12); -- cycle= 1 cp= 1.8463e-09

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_31_62 <= heap_bh154_w32_1_d1 & heap_bh154_w32_0_d1 & heap_bh154_w32_5_d1 & heap_bh154_w32_4_d1;
   CompressorIn_bh154_31_63(0) <= heap_bh154_w33_5_d1;
   Compressor_bh154_31: Compressor_14_3
      port map ( R => CompressorOut_bh154_31_31   ,
                 X0 => CompressorIn_bh154_31_62,
                 X1 => CompressorIn_bh154_31_63);
   heap_bh154_w32_7 <= CompressorOut_bh154_31_31(0); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w33_6 <= CompressorOut_bh154_31_31(1); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w34_6 <= CompressorOut_bh154_31_31(2); -- cycle= 1 cp= 3.8165e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_32_64 <= heap_bh154_w35_1_d1 & heap_bh154_w35_0_d1 & heap_bh154_w35_5_d1 & heap_bh154_w35_4_d1;
   CompressorIn_bh154_32_65(0) <= heap_bh154_w36_5_d1;
   Compressor_bh154_32: Compressor_14_3
      port map ( R => CompressorOut_bh154_32_32   ,
                 X0 => CompressorIn_bh154_32_64,
                 X1 => CompressorIn_bh154_32_65);
   heap_bh154_w35_6 <= CompressorOut_bh154_32_32(0); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w36_6 <= CompressorOut_bh154_32_32(1); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w37_6 <= CompressorOut_bh154_32_32(2); -- cycle= 1 cp= 3.8165e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_33_66 <= heap_bh154_w38_1_d1 & heap_bh154_w38_0_d1 & heap_bh154_w38_5_d1 & heap_bh154_w38_4_d1;
   CompressorIn_bh154_33_67(0) <= heap_bh154_w39_5_d1;
   Compressor_bh154_33: Compressor_14_3
      port map ( R => CompressorOut_bh154_33_33   ,
                 X0 => CompressorIn_bh154_33_66,
                 X1 => CompressorIn_bh154_33_67);
   heap_bh154_w38_6 <= CompressorOut_bh154_33_33(0); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w39_6 <= CompressorOut_bh154_33_33(1); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w40_6 <= CompressorOut_bh154_33_33(2); -- cycle= 1 cp= 3.8165e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_34_68 <= heap_bh154_w41_1_d1 & heap_bh154_w41_0_d1 & heap_bh154_w41_5_d1 & heap_bh154_w41_4_d1;
   CompressorIn_bh154_34_69(0) <= heap_bh154_w42_5_d1;
   Compressor_bh154_34: Compressor_14_3
      port map ( R => CompressorOut_bh154_34_34   ,
                 X0 => CompressorIn_bh154_34_68,
                 X1 => CompressorIn_bh154_34_69);
   heap_bh154_w41_6 <= CompressorOut_bh154_34_34(0); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w42_6 <= CompressorOut_bh154_34_34(1); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w43_6 <= CompressorOut_bh154_34_34(2); -- cycle= 1 cp= 3.8165e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_35_70 <= heap_bh154_w44_1_d1 & heap_bh154_w44_0_d1 & heap_bh154_w44_5_d1 & heap_bh154_w44_4_d1;
   CompressorIn_bh154_35_71(0) <= heap_bh154_w45_5_d1;
   Compressor_bh154_35: Compressor_14_3
      port map ( R => CompressorOut_bh154_35_35   ,
                 X0 => CompressorIn_bh154_35_70,
                 X1 => CompressorIn_bh154_35_71);
   heap_bh154_w44_6 <= CompressorOut_bh154_35_35(0); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w45_6 <= CompressorOut_bh154_35_35(1); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w46_6 <= CompressorOut_bh154_35_35(2); -- cycle= 1 cp= 3.8165e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_36_72 <= heap_bh154_w47_1_d1 & heap_bh154_w47_0_d1 & heap_bh154_w47_5_d1 & heap_bh154_w47_4_d1;
   CompressorIn_bh154_36_73(0) <= heap_bh154_w48_5_d1;
   Compressor_bh154_36: Compressor_14_3
      port map ( R => CompressorOut_bh154_36_36   ,
                 X0 => CompressorIn_bh154_36_72,
                 X1 => CompressorIn_bh154_36_73);
   heap_bh154_w47_6 <= CompressorOut_bh154_36_36(0); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w48_6 <= CompressorOut_bh154_36_36(1); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w49_6 <= CompressorOut_bh154_36_36(2); -- cycle= 1 cp= 3.8165e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_37_74 <= heap_bh154_w50_1_d1 & heap_bh154_w50_0_d1 & heap_bh154_w50_5_d1 & heap_bh154_w50_4_d1;
   CompressorIn_bh154_37_75(0) <= heap_bh154_w51_5_d1;
   Compressor_bh154_37: Compressor_14_3
      port map ( R => CompressorOut_bh154_37_37   ,
                 X0 => CompressorIn_bh154_37_74,
                 X1 => CompressorIn_bh154_37_75);
   heap_bh154_w50_6 <= CompressorOut_bh154_37_37(0); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w51_6 <= CompressorOut_bh154_37_37(1); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w52_6 <= CompressorOut_bh154_37_37(2); -- cycle= 1 cp= 3.8165e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_38_76 <= heap_bh154_w53_1_d1 & heap_bh154_w53_0_d1 & heap_bh154_w53_5_d1 & heap_bh154_w53_4_d1;
   CompressorIn_bh154_38_77(0) <= heap_bh154_w54_5_d1;
   Compressor_bh154_38: Compressor_14_3
      port map ( R => CompressorOut_bh154_38_38   ,
                 X0 => CompressorIn_bh154_38_76,
                 X1 => CompressorIn_bh154_38_77);
   heap_bh154_w53_6 <= CompressorOut_bh154_38_38(0); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w54_6 <= CompressorOut_bh154_38_38(1); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w55_6 <= CompressorOut_bh154_38_38(2); -- cycle= 1 cp= 3.8165e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_39_78 <= heap_bh154_w56_1_d1 & heap_bh154_w56_0_d1 & heap_bh154_w56_5_d1 & heap_bh154_w56_4_d1;
   CompressorIn_bh154_39_79(0) <= heap_bh154_w57_5_d1;
   Compressor_bh154_39: Compressor_14_3
      port map ( R => CompressorOut_bh154_39_39   ,
                 X0 => CompressorIn_bh154_39_78,
                 X1 => CompressorIn_bh154_39_79);
   heap_bh154_w56_6 <= CompressorOut_bh154_39_39(0); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w57_6 <= CompressorOut_bh154_39_39(1); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w58_6 <= CompressorOut_bh154_39_39(2); -- cycle= 1 cp= 3.8165e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_40_80 <= heap_bh154_w59_1_d1 & heap_bh154_w59_0_d1 & heap_bh154_w59_5_d1 & heap_bh154_w59_4_d1;
   CompressorIn_bh154_40_81(0) <= heap_bh154_w60_5_d1;
   Compressor_bh154_40: Compressor_14_3
      port map ( R => CompressorOut_bh154_40_40   ,
                 X0 => CompressorIn_bh154_40_80,
                 X1 => CompressorIn_bh154_40_81);
   heap_bh154_w59_6 <= CompressorOut_bh154_40_40(0); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w60_6 <= CompressorOut_bh154_40_40(1); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w61_4 <= CompressorOut_bh154_40_40(2); -- cycle= 1 cp= 3.8165e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_41_82 <= heap_bh154_w61_1_d1 & heap_bh154_w61_0_d1 & heap_bh154_w61_3_d1;
   CompressorIn_bh154_41_83 <= heap_bh154_w62_4_d1 & heap_bh154_w62_3_d1;
   Compressor_bh154_41: Compressor_23_3
      port map ( R => CompressorOut_bh154_41_41   ,
                 X0 => CompressorIn_bh154_41_82,
                 X1 => CompressorIn_bh154_41_83);
   heap_bh154_w61_5 <= CompressorOut_bh154_41_41(0); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w62_5 <= CompressorOut_bh154_41_41(1); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w63_4 <= CompressorOut_bh154_41_41(2); -- cycle= 1 cp= 3.8165e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_42_84 <= heap_bh154_w72_1_d1 & heap_bh154_w72_0_d1 & heap_bh154_w72_2_d1;
   CompressorIn_bh154_42_85 <= heap_bh154_w73_1_d1 & heap_bh154_w73_0_d1;
   Compressor_bh154_42: Compressor_23_3
      port map ( R => CompressorOut_bh154_42_42   ,
                 X0 => CompressorIn_bh154_42_84,
                 X1 => CompressorIn_bh154_42_85);
   heap_bh154_w72_3 <= CompressorOut_bh154_42_42(0); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w73_2 <= CompressorOut_bh154_42_42(1); -- cycle= 1 cp= 3.8165e-10
   heap_bh154_w74_2 <= CompressorOut_bh154_42_42(2); -- cycle= 1 cp= 3.8165e-10
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 2----------------
   ----------------Synchro barrier, entering cycle 1----------------
   inAdder0_bh154_2 <= '0' & heap_bh154_w33_4_d1 & heap_bh154_w32_7 & heap_bh154_w31_6 & heap_bh154_w30_6 & heap_bh154_w29_4 & heap_bh154_w28_5 & heap_bh154_w27_4 & heap_bh154_w26_5 & heap_bh154_w25_4 & heap_bh154_w24_5 & heap_bh154_w23_4 & heap_bh154_w22_5 & heap_bh154_w21_4 & heap_bh154_w20_3;
   inAdder1_bh154_2 <= '0' & heap_bh154_w33_6 & heap_bh154_w32_6 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh154_w20_5;
   cin_bh154_2 <= '0';
   ----------------Synchro barrier, entering cycle 2----------------
   outAdder_bh154_2 <= inAdder0_bh154_2_d1 + inAdder1_bh154_2_d1 + cin_bh154_2_d1;
   heap_bh154_w20_6 <= outAdder_bh154_2(0); -- cycle= 2 cp= 9.9065e-10
   heap_bh154_w21_5 <= outAdder_bh154_2(1); -- cycle= 2 cp= 9.9065e-10
   heap_bh154_w22_6 <= outAdder_bh154_2(2); -- cycle= 2 cp= 9.9065e-10
   heap_bh154_w23_5 <= outAdder_bh154_2(3); -- cycle= 2 cp= 9.9065e-10
   heap_bh154_w24_6 <= outAdder_bh154_2(4); -- cycle= 2 cp= 9.9065e-10
   heap_bh154_w25_5 <= outAdder_bh154_2(5); -- cycle= 2 cp= 9.9065e-10
   heap_bh154_w26_6 <= outAdder_bh154_2(6); -- cycle= 2 cp= 9.9065e-10
   heap_bh154_w27_5 <= outAdder_bh154_2(7); -- cycle= 2 cp= 9.9065e-10
   heap_bh154_w28_6 <= outAdder_bh154_2(8); -- cycle= 2 cp= 9.9065e-10
   heap_bh154_w29_5 <= outAdder_bh154_2(9); -- cycle= 2 cp= 9.9065e-10
   heap_bh154_w30_7 <= outAdder_bh154_2(10); -- cycle= 2 cp= 9.9065e-10
   heap_bh154_w31_7 <= outAdder_bh154_2(11); -- cycle= 2 cp= 9.9065e-10
   heap_bh154_w32_8 <= outAdder_bh154_2(12); -- cycle= 2 cp= 9.9065e-10
   heap_bh154_w33_7 <= outAdder_bh154_2(13); -- cycle= 2 cp= 9.9065e-10
   heap_bh154_w34_7 <= outAdder_bh154_2(14); -- cycle= 2 cp= 9.9065e-10
   ----------------Synchro barrier, entering cycle 2----------------
   tempR_bh154_2 <= heap_bh154_w33_7 & heap_bh154_w32_8 & heap_bh154_w31_7 & heap_bh154_w30_7 & heap_bh154_w29_5 & heap_bh154_w28_6 & heap_bh154_w27_5 & heap_bh154_w26_6 & heap_bh154_w25_5 & heap_bh154_w24_6 & heap_bh154_w23_5 & heap_bh154_w22_6 & heap_bh154_w21_5 & heap_bh154_w20_6; -- already compressed

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_43_86 <= heap_bh154_w34_5_d1 & heap_bh154_w34_4_d1 & heap_bh154_w34_6;
   Compressor_bh154_43: Compressor_3_2
      port map ( R => CompressorOut_bh154_43_43   ,
                 X0 => CompressorIn_bh154_43_86);
   heap_bh154_w34_8 <= CompressorOut_bh154_43_43(0); -- cycle= 1 cp= 7.633e-10
   heap_bh154_w35_7 <= CompressorOut_bh154_43_43(1); -- cycle= 1 cp= 7.633e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_44_87 <= heap_bh154_w37_5_d1 & heap_bh154_w37_4_d1 & heap_bh154_w37_6;
   Compressor_bh154_44: Compressor_3_2
      port map ( R => CompressorOut_bh154_44_44   ,
                 X0 => CompressorIn_bh154_44_87);
   heap_bh154_w37_7 <= CompressorOut_bh154_44_44(0); -- cycle= 1 cp= 7.633e-10
   heap_bh154_w38_7 <= CompressorOut_bh154_44_44(1); -- cycle= 1 cp= 7.633e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_45_88 <= heap_bh154_w40_5_d1 & heap_bh154_w40_4_d1 & heap_bh154_w40_6;
   Compressor_bh154_45: Compressor_3_2
      port map ( R => CompressorOut_bh154_45_45   ,
                 X0 => CompressorIn_bh154_45_88);
   heap_bh154_w40_7 <= CompressorOut_bh154_45_45(0); -- cycle= 1 cp= 7.633e-10
   heap_bh154_w41_7 <= CompressorOut_bh154_45_45(1); -- cycle= 1 cp= 7.633e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_46_89 <= heap_bh154_w43_5_d1 & heap_bh154_w43_4_d1 & heap_bh154_w43_6;
   Compressor_bh154_46: Compressor_3_2
      port map ( R => CompressorOut_bh154_46_46   ,
                 X0 => CompressorIn_bh154_46_89);
   heap_bh154_w43_7 <= CompressorOut_bh154_46_46(0); -- cycle= 1 cp= 7.633e-10
   heap_bh154_w44_7 <= CompressorOut_bh154_46_46(1); -- cycle= 1 cp= 7.633e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_47_90 <= heap_bh154_w46_5_d1 & heap_bh154_w46_4_d1 & heap_bh154_w46_6;
   Compressor_bh154_47: Compressor_3_2
      port map ( R => CompressorOut_bh154_47_47   ,
                 X0 => CompressorIn_bh154_47_90);
   heap_bh154_w46_7 <= CompressorOut_bh154_47_47(0); -- cycle= 1 cp= 7.633e-10
   heap_bh154_w47_7 <= CompressorOut_bh154_47_47(1); -- cycle= 1 cp= 7.633e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_48_91 <= heap_bh154_w49_5_d1 & heap_bh154_w49_4_d1 & heap_bh154_w49_6;
   Compressor_bh154_48: Compressor_3_2
      port map ( R => CompressorOut_bh154_48_48   ,
                 X0 => CompressorIn_bh154_48_91);
   heap_bh154_w49_7 <= CompressorOut_bh154_48_48(0); -- cycle= 1 cp= 7.633e-10
   heap_bh154_w50_7 <= CompressorOut_bh154_48_48(1); -- cycle= 1 cp= 7.633e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_49_92 <= heap_bh154_w52_5_d1 & heap_bh154_w52_4_d1 & heap_bh154_w52_6;
   Compressor_bh154_49: Compressor_3_2
      port map ( R => CompressorOut_bh154_49_49   ,
                 X0 => CompressorIn_bh154_49_92);
   heap_bh154_w52_7 <= CompressorOut_bh154_49_49(0); -- cycle= 1 cp= 7.633e-10
   heap_bh154_w53_7 <= CompressorOut_bh154_49_49(1); -- cycle= 1 cp= 7.633e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_50_93 <= heap_bh154_w55_5_d1 & heap_bh154_w55_4_d1 & heap_bh154_w55_6;
   Compressor_bh154_50: Compressor_3_2
      port map ( R => CompressorOut_bh154_50_50   ,
                 X0 => CompressorIn_bh154_50_93);
   heap_bh154_w55_7 <= CompressorOut_bh154_50_50(0); -- cycle= 1 cp= 7.633e-10
   heap_bh154_w56_7 <= CompressorOut_bh154_50_50(1); -- cycle= 1 cp= 7.633e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh154_51_94 <= heap_bh154_w58_5_d1 & heap_bh154_w58_4_d1 & heap_bh154_w58_6;
   Compressor_bh154_51: Compressor_3_2
      port map ( R => CompressorOut_bh154_51_51   ,
                 X0 => CompressorIn_bh154_51_94);
   heap_bh154_w58_7 <= CompressorOut_bh154_51_51(0); -- cycle= 1 cp= 7.633e-10
   heap_bh154_w59_7 <= CompressorOut_bh154_51_51(1); -- cycle= 1 cp= 7.633e-10
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 1----------------
   inAdder0_bh154_3 <= '0' & heap_bh154_w70_4_d1 & heap_bh154_w69_0_d1 & heap_bh154_w68_4_d1 & heap_bh154_w67_0_d1 & heap_bh154_w66_4_d1 & heap_bh154_w65_0_d1 & heap_bh154_w64_4_d1 & heap_bh154_w63_0_d1;
   inAdder1_bh154_3 <= '0' & heap_bh154_w70_3_d1 & heap_bh154_w69_3_d1 & heap_bh154_w68_3_d1 & heap_bh154_w67_3_d1 & heap_bh154_w66_3_d1 & heap_bh154_w65_3_d1 & heap_bh154_w64_3_d1 & heap_bh154_w63_3_d1;
   cin_bh154_3 <= heap_bh154_w63_4;
   outAdder_bh154_3 <= inAdder0_bh154_3 + inAdder1_bh154_3 + cin_bh154_3;
   heap_bh154_w63_5 <= outAdder_bh154_3(0); -- cycle= 1 cp= 1.2823e-09
   heap_bh154_w64_5 <= outAdder_bh154_3(1); -- cycle= 1 cp= 1.2823e-09
   heap_bh154_w65_4 <= outAdder_bh154_3(2); -- cycle= 1 cp= 1.2823e-09
   heap_bh154_w66_5 <= outAdder_bh154_3(3); -- cycle= 1 cp= 1.2823e-09
   heap_bh154_w67_4 <= outAdder_bh154_3(4); -- cycle= 1 cp= 1.2823e-09
   heap_bh154_w68_5 <= outAdder_bh154_3(5); -- cycle= 1 cp= 1.2823e-09
   heap_bh154_w69_4 <= outAdder_bh154_3(6); -- cycle= 1 cp= 1.2823e-09
   heap_bh154_w70_5 <= outAdder_bh154_3(7); -- cycle= 1 cp= 1.2823e-09
   heap_bh154_w71_3 <= outAdder_bh154_3(8); -- cycle= 1 cp= 1.2823e-09
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 1----------------
   inAdder0_bh154_4 <= '0' & heap_bh154_w77_1_d1 & heap_bh154_w76_1_d1 & heap_bh154_w75_1_d1 & heap_bh154_w74_1_d1;
   inAdder1_bh154_4 <= '0' & heap_bh154_w77_0_d1 & heap_bh154_w76_0_d1 & heap_bh154_w75_0_d1 & heap_bh154_w74_0_d1;
   cin_bh154_4 <= heap_bh154_w74_2;
   outAdder_bh154_4 <= inAdder0_bh154_4 + inAdder1_bh154_4 + cin_bh154_4;
   heap_bh154_w74_3 <= outAdder_bh154_4(0); -- cycle= 1 cp= 1.2223e-09
   heap_bh154_w75_2 <= outAdder_bh154_4(1); -- cycle= 1 cp= 1.2223e-09
   heap_bh154_w76_2 <= outAdder_bh154_4(2); -- cycle= 1 cp= 1.2223e-09
   heap_bh154_w77_2 <= outAdder_bh154_4(3); -- cycle= 1 cp= 1.2223e-09
   heap_bh154_w78_1 <= outAdder_bh154_4(4); -- cycle= 1 cp= 1.2223e-09
   ----------------Synchro barrier, entering cycle 2----------------
   ----------------Synchro barrier, entering cycle 3----------------
   finalAdderIn0_bh154 <= "0" & heap_bh154_w94_0_d3 & heap_bh154_w93_0_d3 & heap_bh154_w92_0_d3 & heap_bh154_w91_0_d3 & heap_bh154_w90_0_d3 & heap_bh154_w89_0_d3 & heap_bh154_w88_0_d3 & heap_bh154_w87_0_d3 & heap_bh154_w86_0_d3 & heap_bh154_w85_0_d3 & heap_bh154_w84_0_d3 & heap_bh154_w83_0_d3 & heap_bh154_w82_0_d3 & heap_bh154_w81_0_d3 & heap_bh154_w80_0_d3 & heap_bh154_w79_0_d3 & heap_bh154_w78_0_d3 & heap_bh154_w77_2_d2 & heap_bh154_w76_2_d2 & heap_bh154_w75_2_d2 & heap_bh154_w74_3_d2 & heap_bh154_w73_2_d2 & heap_bh154_w72_3_d2 & heap_bh154_w71_2_d3 & heap_bh154_w70_5_d2 & heap_bh154_w69_4_d2 & heap_bh154_w68_5_d2 & heap_bh154_w67_4_d2 & heap_bh154_w66_5_d2 & heap_bh154_w65_4_d2 & heap_bh154_w64_5_d2 & heap_bh154_w63_5_d2 & heap_bh154_w62_5_d2 & heap_bh154_w61_5_d2 & heap_bh154_w60_4_d3 & heap_bh154_w59_6_d2 & heap_bh154_w58_7_d2 & heap_bh154_w57_4_d3 & heap_bh154_w56_6_d2 & heap_bh154_w55_7_d2 & heap_bh154_w54_4_d3 & heap_bh154_w53_6_d2 & heap_bh154_w52_7_d2 & heap_bh154_w51_4_d3 & heap_bh154_w50_6_d2 & heap_bh154_w49_7_d2 & heap_bh154_w48_4_d3 & heap_bh154_w47_6_d2 & heap_bh154_w46_7_d2 & heap_bh154_w45_4_d3 & heap_bh154_w44_6_d2 & heap_bh154_w43_7_d2 & heap_bh154_w42_4_d3 & heap_bh154_w41_6_d2 & heap_bh154_w40_7_d2 & heap_bh154_w39_4_d3 & heap_bh154_w38_6_d2 & heap_bh154_w37_7_d2 & heap_bh154_w36_4_d3 & heap_bh154_w35_6_d2 & heap_bh154_w34_8_d2;
   finalAdderIn1_bh154 <= "0" & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh154_w78_1_d2 & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh154_w71_3_d2 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh154_w61_4_d2 & heap_bh154_w60_6_d2 & heap_bh154_w59_7_d2 & '0' & heap_bh154_w57_6_d2 & heap_bh154_w56_7_d2 & '0' & heap_bh154_w54_6_d2 & heap_bh154_w53_7_d2 & '0' & heap_bh154_w51_6_d2 & heap_bh154_w50_7_d2 & '0' & heap_bh154_w48_6_d2 & heap_bh154_w47_7_d2 & '0' & heap_bh154_w45_6_d2 & heap_bh154_w44_7_d2 & '0' & heap_bh154_w42_6_d2 & heap_bh154_w41_7_d2 & '0' & heap_bh154_w39_6_d2 & heap_bh154_w38_7_d2 & '0' & heap_bh154_w36_6_d2 & heap_bh154_w35_7_d2 & heap_bh154_w34_7_d1;
   finalAdderCin_bh154 <= '0';
   Adder_final154_5: IntAdder_62_f400_uid217  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => finalAdderCin_bh154,
                 R => finalAdderOut_bh154   ,
                 X => finalAdderIn0_bh154,
                 Y => finalAdderIn1_bh154);
   -- concatenate all the compressed chunks
   CompressionResult154 <= finalAdderOut_bh154 & tempR_bh154_2_d1 & tempR_bh154_1_d2 & tempR_bh154_0_d3;
   -- End of code generated by BitHeap::generateCompressorVHDL
   R <= CompressionResult154(94 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_57_f400_uid225
--                     (IntAdderClassical_57_f400_uid227)
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

entity IntAdder_57_f400_uid225 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(56 downto 0);
          Y : in  std_logic_vector(56 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(56 downto 0)   );
end entity;

architecture arch of IntAdder_57_f400_uid225 is
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
--                          IntAdder_65_f400_uid232
--                     (IntAdderClassical_65_f400_uid234)
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

entity IntAdder_65_f400_uid232 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(64 downto 0);
          Y : in  std_logic_vector(64 downto 0);
          Cin : in std_logic;
          R : out  std_logic_vector(64 downto 0)   );
end entity;

architecture arch of IntAdder_65_f400_uid232 is
signal X_d1 :  std_logic_vector(64 downto 0);
signal Y_d1 :  std_logic_vector(64 downto 0);
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
--                              FPExp_11_52_400
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: F. de Dinechin, Bogdan Pasca (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 20 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity FPExp_11_52_400 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(11+52+2 downto 0);
          R : out  std_logic_vector(11+52+2 downto 0)   );
end entity;

architecture arch of FPExp_11_52_400 is
   component FixRealKCM_0_10_M56_log_2_unsigned is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(10 downto 0);
             R : out  std_logic_vector(66 downto 0)   );
   end component;

   component FixRealKCM_M3_9_0_1_log_2_unsigned is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(12 downto 0);
             R : out  std_logic_vector(10 downto 0)   );
   end component;

   component FunctionEvaluator_36 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(37 downto 0);
             R : out  std_logic_vector(38 downto 0)   );
   end component;

   component IntAdder_48_f400_uid138 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(47 downto 0);
             Y : in  std_logic_vector(47 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(47 downto 0)   );
   end component;

   component IntAdder_48_f400_uid145 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(47 downto 0);
             Y : in  std_logic_vector(47 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(47 downto 0)   );
   end component;

   component IntAdder_56_f441_uid27 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(55 downto 0);
             Y : in  std_logic_vector(55 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(55 downto 0)   );
   end component;

   component IntAdder_57_f400_uid225 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(56 downto 0);
             Y : in  std_logic_vector(56 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(56 downto 0)   );
   end component;

   component IntAdder_65_f400_uid232 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(64 downto 0);
             Y : in  std_logic_vector(64 downto 0);
             Cin : in std_logic;
             R : out  std_logic_vector(64 downto 0)   );
   end component;

   component IntMultiplier_UsingDSP_47_48_0_unsigned_uid152 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(46 downto 0);
             Y : in  std_logic_vector(47 downto 0);
             R : out  std_logic_vector(94 downto 0)   );
   end component;

   component LeftShifter_53_by_max_66_uid3 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(52 downto 0);
             S : in  std_logic_vector(6 downto 0);
             R : out  std_logic_vector(118 downto 0)   );
   end component;

   component firstExpTable_9_57 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(8 downto 0);
             Y : out  std_logic_vector(56 downto 0)   );
   end component;

signal Xexn, Xexn_d1, Xexn_d2, Xexn_d3, Xexn_d4, Xexn_d5, Xexn_d6, Xexn_d7, Xexn_d8, Xexn_d9, Xexn_d10, Xexn_d11, Xexn_d12, Xexn_d13, Xexn_d14, Xexn_d15, Xexn_d16, Xexn_d17, Xexn_d18, Xexn_d19, Xexn_d20 :  std_logic_vector(1 downto 0);
signal XSign, XSign_d1, XSign_d2, XSign_d3, XSign_d4, XSign_d5, XSign_d6, XSign_d7, XSign_d8, XSign_d9, XSign_d10, XSign_d11, XSign_d12, XSign_d13, XSign_d14, XSign_d15, XSign_d16, XSign_d17, XSign_d18, XSign_d19, XSign_d20 : std_logic;
signal XexpField :  std_logic_vector(10 downto 0);
signal Xfrac :  std_logic_vector(51 downto 0);
signal e0 :  std_logic_vector(12 downto 0);
signal shiftVal, shiftVal_d1 :  std_logic_vector(12 downto 0);
signal resultWillBeOne, resultWillBeOne_d1, resultWillBeOne_d2, resultWillBeOne_d3, resultWillBeOne_d4 : std_logic;
signal mXu :  std_logic_vector(52 downto 0);
signal oufl0, oufl0_d1, oufl0_d2, oufl0_d3, oufl0_d4, oufl0_d5, oufl0_d6, oufl0_d7, oufl0_d8, oufl0_d9, oufl0_d10, oufl0_d11, oufl0_d12, oufl0_d13, oufl0_d14, oufl0_d15, oufl0_d16, oufl0_d17, oufl0_d18, oufl0_d19 : std_logic;
signal shiftValIn :  std_logic_vector(6 downto 0);
signal fixX0, fixX0_d1 :  std_logic_vector(118 downto 0);
signal fixX, fixX_d1, fixX_d2 :  std_logic_vector(66 downto 0);
signal xMulIn :  std_logic_vector(12 downto 0);
signal absK :  std_logic_vector(10 downto 0);
signal minusAbsK :  std_logic_vector(11 downto 0);
signal K, K_d1, K_d2, K_d3, K_d4, K_d5, K_d6, K_d7, K_d8, K_d9, K_d10, K_d11, K_d12, K_d13, K_d14 :  std_logic_vector(11 downto 0);
signal absKLog2 :  std_logic_vector(66 downto 0);
signal subOp1 :  std_logic_vector(55 downto 0);
signal subOp2 :  std_logic_vector(55 downto 0);
signal Y :  std_logic_vector(55 downto 0);
signal Addr1 :  std_logic_vector(8 downto 0);
signal Z, Z_d1, Z_d2, Z_d3, Z_d4, Z_d5, Z_d6, Z_d7, Z_d8 :  std_logic_vector(46 downto 0);
signal Zhigh, Zhigh_d1 :  std_logic_vector(37 downto 0);
signal expA, expA_d1, expA_d2, expA_d3, expA_d4, expA_d5, expA_d6, expA_d7, expA_d8, expA_d9, expA_d10, expA_d11 :  std_logic_vector(56 downto 0);
signal expZmZm1_0 :  std_logic_vector(38 downto 0);
signal expZmZm1 :  std_logic_vector(38 downto 0);
signal expZminus1X :  std_logic_vector(47 downto 0);
signal expZminus1Y :  std_logic_vector(47 downto 0);
signal expZminus1 :  std_logic_vector(47 downto 0);
signal expArounded0 :  std_logic_vector(47 downto 0);
signal expArounded, expArounded_d1, expArounded_d2, expArounded_d3, expArounded_d4, expArounded_d5, expArounded_d6, expArounded_d7 :  std_logic_vector(46 downto 0);
signal lowerProduct :  std_logic_vector(94 downto 0);
signal extendedLowerProduct :  std_logic_vector(56 downto 0);
signal expY, expY_d1 :  std_logic_vector(56 downto 0);
signal needNoNorm, needNoNorm_d1 : std_logic;
signal preRoundBiasSig :  std_logic_vector(64 downto 0);
signal roundBit : std_logic;
signal roundNormAddend :  std_logic_vector(64 downto 0);
signal roundedExpSigRes :  std_logic_vector(64 downto 0);
signal roundedExpSig :  std_logic_vector(64 downto 0);
signal ofl1 : std_logic;
signal ofl2 : std_logic;
signal ofl3 : std_logic;
signal ofl : std_logic;
signal ufl1 : std_logic;
signal ufl2 : std_logic;
signal ufl3 : std_logic;
signal ufl : std_logic;
signal Rexn :  std_logic_vector(1 downto 0);
constant g: positive := 4;
constant wE: positive := 11;
constant wF: positive := 52;
constant wFIn: positive := 52;
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            Xexn_d1 <=  Xexn;
            Xexn_d2 <=  Xexn_d1;
            Xexn_d3 <=  Xexn_d2;
            Xexn_d4 <=  Xexn_d3;
            Xexn_d5 <=  Xexn_d4;
            Xexn_d6 <=  Xexn_d5;
            Xexn_d7 <=  Xexn_d6;
            Xexn_d8 <=  Xexn_d7;
            Xexn_d9 <=  Xexn_d8;
            Xexn_d10 <=  Xexn_d9;
            Xexn_d11 <=  Xexn_d10;
            Xexn_d12 <=  Xexn_d11;
            Xexn_d13 <=  Xexn_d12;
            Xexn_d14 <=  Xexn_d13;
            Xexn_d15 <=  Xexn_d14;
            Xexn_d16 <=  Xexn_d15;
            Xexn_d17 <=  Xexn_d16;
            Xexn_d18 <=  Xexn_d17;
            Xexn_d19 <=  Xexn_d18;
            Xexn_d20 <=  Xexn_d19;
            XSign_d1 <=  XSign;
            XSign_d2 <=  XSign_d1;
            XSign_d3 <=  XSign_d2;
            XSign_d4 <=  XSign_d3;
            XSign_d5 <=  XSign_d4;
            XSign_d6 <=  XSign_d5;
            XSign_d7 <=  XSign_d6;
            XSign_d8 <=  XSign_d7;
            XSign_d9 <=  XSign_d8;
            XSign_d10 <=  XSign_d9;
            XSign_d11 <=  XSign_d10;
            XSign_d12 <=  XSign_d11;
            XSign_d13 <=  XSign_d12;
            XSign_d14 <=  XSign_d13;
            XSign_d15 <=  XSign_d14;
            XSign_d16 <=  XSign_d15;
            XSign_d17 <=  XSign_d16;
            XSign_d18 <=  XSign_d17;
            XSign_d19 <=  XSign_d18;
            XSign_d20 <=  XSign_d19;
            shiftVal_d1 <=  shiftVal;
            resultWillBeOne_d1 <=  resultWillBeOne;
            resultWillBeOne_d2 <=  resultWillBeOne_d1;
            resultWillBeOne_d3 <=  resultWillBeOne_d2;
            resultWillBeOne_d4 <=  resultWillBeOne_d3;
            oufl0_d1 <=  oufl0;
            oufl0_d2 <=  oufl0_d1;
            oufl0_d3 <=  oufl0_d2;
            oufl0_d4 <=  oufl0_d3;
            oufl0_d5 <=  oufl0_d4;
            oufl0_d6 <=  oufl0_d5;
            oufl0_d7 <=  oufl0_d6;
            oufl0_d8 <=  oufl0_d7;
            oufl0_d9 <=  oufl0_d8;
            oufl0_d10 <=  oufl0_d9;
            oufl0_d11 <=  oufl0_d10;
            oufl0_d12 <=  oufl0_d11;
            oufl0_d13 <=  oufl0_d12;
            oufl0_d14 <=  oufl0_d13;
            oufl0_d15 <=  oufl0_d14;
            oufl0_d16 <=  oufl0_d15;
            oufl0_d17 <=  oufl0_d16;
            oufl0_d18 <=  oufl0_d17;
            oufl0_d19 <=  oufl0_d18;
            fixX0_d1 <=  fixX0;
            fixX_d1 <=  fixX;
            fixX_d2 <=  fixX_d1;
            K_d1 <=  K;
            K_d2 <=  K_d1;
            K_d3 <=  K_d2;
            K_d4 <=  K_d3;
            K_d5 <=  K_d4;
            K_d6 <=  K_d5;
            K_d7 <=  K_d6;
            K_d8 <=  K_d7;
            K_d9 <=  K_d8;
            K_d10 <=  K_d9;
            K_d11 <=  K_d10;
            K_d12 <=  K_d11;
            K_d13 <=  K_d12;
            K_d14 <=  K_d13;
            Z_d1 <=  Z;
            Z_d2 <=  Z_d1;
            Z_d3 <=  Z_d2;
            Z_d4 <=  Z_d3;
            Z_d5 <=  Z_d4;
            Z_d6 <=  Z_d5;
            Z_d7 <=  Z_d6;
            Z_d8 <=  Z_d7;
            Zhigh_d1 <=  Zhigh;
            expA_d1 <=  expA;
            expA_d2 <=  expA_d1;
            expA_d3 <=  expA_d2;
            expA_d4 <=  expA_d3;
            expA_d5 <=  expA_d4;
            expA_d6 <=  expA_d5;
            expA_d7 <=  expA_d6;
            expA_d8 <=  expA_d7;
            expA_d9 <=  expA_d8;
            expA_d10 <=  expA_d9;
            expA_d11 <=  expA_d10;
            expArounded_d1 <=  expArounded;
            expArounded_d2 <=  expArounded_d1;
            expArounded_d3 <=  expArounded_d2;
            expArounded_d4 <=  expArounded_d3;
            expArounded_d5 <=  expArounded_d4;
            expArounded_d6 <=  expArounded_d5;
            expArounded_d7 <=  expArounded_d6;
            expY_d1 <=  expY;
            needNoNorm_d1 <=  needNoNorm;
         end if;
      end process;
   Xexn <= X(wE+wFIn+2 downto wE+wFIn+1);
   XSign <= X(wE+wFIn);
   XexpField <= X(wE+wFIn-1 downto wFIn);
   Xfrac <= X(wFIn-1 downto 0);
   e0 <= conv_std_logic_vector(967, wE+2);  -- bias - (wF+g)
   shiftVal <= ("00" & XexpField) - e0; -- for a left shift
   -- underflow when input is shifted to zero (shiftval<0), in which case exp = 1
   resultWillBeOne <= shiftVal(wE+1);
   --  mantissa with implicit bit
   mXu <= "1" & Xfrac;
   -- Partial overflow/underflow detection
   ----------------Synchro barrier, entering cycle 1----------------
   oufl0 <= not shiftVal_d1(wE+1) when shiftVal_d1(wE downto 0) >= conv_std_logic_vector(66, wE+1) else '0';
   ---------------- cycle 0----------------
   shiftValIn <= shiftVal(6 downto 0);
   mantissa_shift: LeftShifter_53_by_max_66_uid3  -- pipelineDepth=3 maxInDelay=2.43175e-09
      port map ( clk  => clk,
                 rst  => rst,
                 R => fixX0,
                 S => shiftValIn,
                 X => mXu);
   ----------------Synchro barrier, entering cycle 3----------------
   ----------------Synchro barrier, entering cycle 4----------------
   fixX <=  fixX0_d1(118 downto 52)when resultWillBeOne_d4='0' else "0000000000000000000000000000000000000000000000000000000000000000000";
   xMulIn <=  fixX(65 downto 53); -- truncation, error 2^-3
   mulInvLog2: FixRealKCM_M3_9_0_1_log_2_unsigned  -- pipelineDepth=1 maxInDelay=1.75885e-09
      port map ( clk  => clk,
                 rst  => rst,
                 R => absK,
                 X => xMulIn);
   ----------------Synchro barrier, entering cycle 5----------------
   minusAbsK <= (11 downto 0 => '0') - ('0' & absK);
   K <= minusAbsK when  XSign_d5='1'   else ('0' & absK);
   ---------------- cycle 5----------------
   mulLog2: FixRealKCM_0_10_M56_log_2_unsigned  -- pipelineDepth=1 maxInDelay=2.2648e-09
      port map ( clk  => clk,
                 rst  => rst,
                 R => absKLog2,
                 X => absK);
   ----------------Synchro barrier, entering cycle 6----------------
   subOp1 <= fixX_d2(55 downto 0) when XSign_d6='0' else not (fixX_d2(55 downto 0));
   subOp2 <= absKLog2(55 downto 0) when XSign_d6='1' else not (absKLog2(55 downto 0));
   theYAdder: IntAdder_56_f441_uid27  -- pipelineDepth=0 maxInDelay=7.103e-10
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => '1',
                 R => Y,
                 X => subOp1,
                 Y => subOp2);

   -- Now compute the exp of this fixed-point value
   Addr1 <= Y(55 downto 47);
   Z <= Y(46 downto 0);
   Zhigh <= Z(46 downto 9);
   table: firstExpTable_9_57  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Addr1,
                 Y => expA);
   ----------------Synchro barrier, entering cycle 7----------------
-- signal delay at BRAM output = 1.591e-09
   poly: FunctionEvaluator_36  -- pipelineDepth=7 maxInDelay=1.91965e-09
      port map ( clk  => clk,
                 rst  => rst,
                 R => expZmZm1_0,
                 X => Zhigh_d1);
   ----------------Synchro barrier, entering cycle 14----------------
   expZmZm1 <= expZmZm1_0(38 downto 0); 
   -- Computing Z + (exp(Z)-1-Z)
   expZminus1X <= '0' & Z_d8;
   expZminus1Y <= (47 downto 39 => '0') & expZmZm1 ;
   Adder_expZminus1: IntAdder_48_f400_uid138  -- pipelineDepth=1 maxInDelay=1.39565e-09
      port map ( clk  => clk,
                 rst  => rst,
                 Cin =>  '0' ,
                 R => expZminus1,
                 X => expZminus1X,
                 Y => expZminus1Y);
   ----------------Synchro barrier, entering cycle 15----------------
   -- Truncating expA to the same accuracy as expZminus1
   ---------------- cycle 7----------------
   Adder_expArounded0: IntAdder_48_f400_uid145  -- pipelineDepth=1 maxInDelay=1.826e-09
      port map ( clk  => clk,
                 rst  => rst,
                 Cin =>  '1' ,
                 R => expArounded0,
                 X => expA(56 downto 9),
                 Y => "000000000000000000000000000000000000000000000000");
   ----------------Synchro barrier, entering cycle 8----------------
   expArounded <= expArounded0(47 downto 1);
   ----------------Synchro barrier, entering cycle 15----------------
   TheLowerProduct: IntMultiplier_UsingDSP_47_48_0_unsigned_uid152  -- pipelineDepth=3 maxInDelay=9.33e-10
      port map ( clk  => clk,
                 rst  => rst,
                 R => lowerProduct,
                 X => expArounded_d7,
                 Y => expZminus1);

   ----------------Synchro barrier, entering cycle 18----------------
   -- Final addition -- the product MSB bit weight is -k+2 = -7
   extendedLowerProduct <= ((56 downto 49 => '0') & lowerProduct(94 downto 46));
   TheFinalAdder: IntAdder_57_f400_uid225  -- pipelineDepth=0 maxInDelay=3.2865e-10
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => '0',
                 R => expY,
                 X => expA_d11,
                 Y => extendedLowerProduct);

   needNoNorm <= expY(56);
   ----------------Synchro barrier, entering cycle 19----------------
   -- Rounding: all this should consume one row of LUTs
   preRoundBiasSig <= conv_std_logic_vector(1023, wE+2)  & expY_d1(55 downto 4) when needNoNorm_d1 = '1'
      else conv_std_logic_vector(1022, wE+2)  & expY_d1(54 downto 3) ;
   roundBit <= expY_d1(3)  when needNoNorm_d1 = '1'    else expY_d1(2) ;
   roundNormAddend <= K_d14(11) & K_d14 & (51 downto 1 => '0') & roundBit;
   roundedExpSigOperandAdder: IntAdder_65_f400_uid232  -- pipelineDepth=1 maxInDelay=1.7119e-09
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => '0',
                 R => roundedExpSigRes,
                 X => preRoundBiasSig,
                 Y => roundNormAddend);

   ----------------Synchro barrier, entering cycle 20----------------
   -- delay at adder output is 1.412e-09
   roundedExpSig <= roundedExpSigRes when Xexn_d20="01" else  "000" & (wE-2 downto 0 => '1') & (wF-1 downto 0 => '0');
   ofl1 <= not XSign_d20 and oufl0_d19 and (not Xexn_d20(1) and Xexn_d20(0)); -- input positive, normal,  very large
   ofl2 <= not XSign_d20 and (roundedExpSig(wE+wF) and not roundedExpSig(wE+wF+1)) and (not Xexn_d20(1) and Xexn_d20(0)); -- input positive, normal, overflowed
   ofl3 <= not XSign_d20 and Xexn_d20(1) and not Xexn_d20(0);  -- input was -infty
   ofl <= ofl1 or ofl2 or ofl3;
   ufl1 <= (roundedExpSig(wE+wF) and roundedExpSig(wE+wF+1))  and (not Xexn_d20(1) and Xexn_d20(0)); -- input normal
   ufl2 <= XSign_d20 and Xexn_d20(1) and not Xexn_d20(0);  -- input was -infty
   ufl3 <= XSign_d20 and oufl0_d19  and (not Xexn_d20(1) and Xexn_d20(0)); -- input negative, normal,  very large
   ufl <= ufl1 or ufl2 or ufl3;
   Rexn <= "11" when Xexn_d20 = "11"
      else "10" when ofl='1'
      else "00" when ufl='1'
      else "01";
   R <= Rexn & '0' & roundedExpSig(62 downto 0);
end architecture;

