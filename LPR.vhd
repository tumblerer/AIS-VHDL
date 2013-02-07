library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Pack.ALL;

entity LPR is
    Port ( State : in  StateArray;
           Eta : in  STD_LOGIC_VECTOR (ETA_SIZE downto 0);
           Output : out  STD_LOGIC_VECTOR (STATE_SIZE downto 0));
end LPR;

architecture Behavioral of LPR is

begin


end Behavioral;

