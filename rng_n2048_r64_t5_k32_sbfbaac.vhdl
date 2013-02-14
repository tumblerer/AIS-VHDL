library ieee;
use ieee.std_logic_1164.all;

entity rng_n2048_r64_t5_k32_sbfbaac is
  port(
    clk:in std_logic;
    ce:in std_logic;
    mode:in std_logic;
    s_in:in std_logic;
    s_out:out std_logic;
    rng:out std_logic_vector(63 downto 0)
  );
end rng_n2048_r64_t5_k32_sbfbaac;

architecture RTL of rng_n2048_r64_t5_k32_sbfbaac is
--
--component rng_n2048_r64_t5_k32_sbfbaac_SR is
--  generic(K:integer);
--  port(clk:in std_logic; ce:in std_logic; din:in std_logic; dout:out std_logic);
--end component;
  signal fifo_out, r_out:std_logic_vector(63 downto 0);
  
begin 
  rng(0) <= r_out(42);
  rng(1) <= r_out(7);
  rng(2) <= r_out(56);
  rng(3) <= r_out(5);
  rng(4) <= r_out(60);
  rng(5) <= r_out(1);
  rng(6) <= r_out(48);
  rng(7) <= r_out(2);
  rng(8) <= r_out(12);
  rng(9) <= r_out(61);
  rng(10) <= r_out(8);
  rng(11) <= r_out(62);
  rng(12) <= r_out(16);
  rng(13) <= r_out(50);
  rng(14) <= r_out(40);
  rng(15) <= r_out(63);
  rng(16) <= r_out(32);
  rng(17) <= r_out(33);
  rng(18) <= r_out(19);
  rng(19) <= r_out(57);
  rng(20) <= r_out(34);
  rng(21) <= r_out(49);
  rng(22) <= r_out(21);
  rng(23) <= r_out(11);
  rng(24) <= r_out(15);
  rng(25) <= r_out(43);
  rng(26) <= r_out(20);
  rng(27) <= r_out(47);
  rng(28) <= r_out(31);
  rng(29) <= r_out(30);
  rng(30) <= r_out(9);
  rng(31) <= r_out(26);
  rng(32) <= r_out(13);
  rng(33) <= r_out(35);
  rng(34) <= r_out(59);
  rng(35) <= r_out(0);
  rng(36) <= r_out(6);
  rng(37) <= r_out(55);
  rng(38) <= r_out(36);
  rng(39) <= r_out(54);
  rng(40) <= r_out(27);
  rng(41) <= r_out(53);
  rng(42) <= r_out(24);
  rng(43) <= r_out(22);
  rng(44) <= r_out(58);
  rng(45) <= r_out(39);
  rng(46) <= r_out(18);
  rng(47) <= r_out(3);
  rng(48) <= r_out(37);
  rng(49) <= r_out(4);
  rng(50) <= r_out(17);
  rng(51) <= r_out(23);
  rng(52) <= r_out(28);
  rng(53) <= r_out(46);
  rng(54) <= r_out(41);
  rng(55) <= r_out(29);
  rng(56) <= r_out(25);
  rng(57) <= r_out(45);
  rng(58) <= r_out(44);
  rng(59) <= r_out(14);
  rng(60) <= r_out(52);
  rng(61) <= r_out(10);
  rng(62) <= r_out(51);
  rng(63) <= r_out(38);
  s_out <= fifo_out(7);
  regs : process(clk) begin
    if(rising_edge(clk) and (ce='1')) then
      r_out(0)<=(mode and fifo_out(0)) or ((not mode) and ('0' xor fifo_out(59) xor fifo_out(5) xor fifo_out(0) xor fifo_out(58) xor fifo_out(39)));
      r_out(1)<=(mode and fifo_out(1)) or ((not mode) and ('0' xor fifo_out(1) xor fifo_out(24) xor fifo_out(22) xor fifo_out(16) xor fifo_out(18)));
      r_out(2)<=(mode and fifo_out(2)) or ((not mode) and ('0' xor fifo_out(30) xor fifo_out(35) xor fifo_out(2) xor fifo_out(4) xor fifo_out(60)));
      r_out(3)<=(mode and fifo_out(3)) or ((not mode) and ('0' xor fifo_out(3) xor fifo_out(46) xor fifo_out(55) xor fifo_out(9) xor fifo_out(13)));
      r_out(4)<=(mode and fifo_out(4)) or ((not mode) and ('0' xor fifo_out(30) xor fifo_out(10) xor fifo_out(4) xor fifo_out(32) xor fifo_out(61)));
      r_out(5)<=(mode and fifo_out(5)) or ((not mode) and ('0' xor fifo_out(62) xor fifo_out(11) xor fifo_out(5) xor fifo_out(53) xor fifo_out(35)));
      r_out(6)<=(mode and fifo_out(6)) or ((not mode) and ('0' xor fifo_out(21) xor fifo_out(6) xor fifo_out(14) xor fifo_out(8)));
      r_out(7)<=(mode and s_in) or ((not mode) and ('0' xor fifo_out(63) xor fifo_out(4) xor fifo_out(9) xor fifo_out(7)));
      r_out(8)<=(mode and fifo_out(8)) or ((not mode) and ('0' xor fifo_out(59) xor fifo_out(18) xor fifo_out(52) xor fifo_out(23) xor fifo_out(8)));
      r_out(9)<=(mode and fifo_out(9)) or ((not mode) and ('0' xor fifo_out(24) xor fifo_out(54) xor fifo_out(32) xor fifo_out(9) xor fifo_out(39)));
      r_out(10)<=(mode and fifo_out(10)) or ((not mode) and ('0' xor fifo_out(10) xor fifo_out(41) xor fifo_out(38) xor fifo_out(23) xor fifo_out(13)));
      r_out(11)<=(mode and fifo_out(11)) or ((not mode) and ('0' xor fifo_out(11) xor fifo_out(51) xor fifo_out(54) xor fifo_out(12) xor fifo_out(6)));
      r_out(12)<=(mode and fifo_out(12)) or ((not mode) and ('0' xor fifo_out(44) xor fifo_out(1) xor fifo_out(49) xor fifo_out(33) xor fifo_out(12)));
      r_out(13)<=(mode and fifo_out(13)) or ((not mode) and ('0' xor fifo_out(1) xor fifo_out(62) xor fifo_out(12) xor fifo_out(13)));
      r_out(14)<=(mode and fifo_out(14)) or ((not mode) and ('0' xor fifo_out(5) xor fifo_out(35) xor fifo_out(43) xor fifo_out(42) xor fifo_out(14)));
      r_out(15)<=(mode and fifo_out(15)) or ((not mode) and ('0' xor fifo_out(15) xor fifo_out(28) xor fifo_out(63) xor fifo_out(6) xor fifo_out(9)));
      r_out(16)<=(mode and fifo_out(16)) or ((not mode) and ('0' xor fifo_out(19) xor fifo_out(57) xor fifo_out(25) xor fifo_out(16) xor fifo_out(50)));
      r_out(17)<=(mode and fifo_out(17)) or ((not mode) and ('0' xor fifo_out(3) xor fifo_out(28) xor fifo_out(0) xor fifo_out(33) xor fifo_out(17)));
      r_out(18)<=(mode and fifo_out(18)) or ((not mode) and ('0' xor fifo_out(44) xor fifo_out(20) xor fifo_out(18) xor fifo_out(45) xor fifo_out(23)));
      r_out(19)<=(mode and fifo_out(19)) or ((not mode) and ('0' xor fifo_out(31) xor fifo_out(19) xor fifo_out(58) xor fifo_out(32) xor fifo_out(61)));
      r_out(20)<=(mode and fifo_out(20)) or ((not mode) and ('0' xor fifo_out(31) xor fifo_out(20) xor fifo_out(2) xor fifo_out(17) xor fifo_out(39)));
      r_out(21)<=(mode and fifo_out(21)) or ((not mode) and ('0' xor fifo_out(25) xor fifo_out(21) xor fifo_out(56) xor fifo_out(55) xor fifo_out(18)));
      r_out(22)<=(mode and fifo_out(22)) or ((not mode) and ('0' xor fifo_out(11) xor fifo_out(22) xor fifo_out(42) xor fifo_out(48) xor fifo_out(7)));
      r_out(23)<=(mode and fifo_out(23)) or ((not mode) and ('0' xor fifo_out(26) xor fifo_out(11) xor fifo_out(52) xor fifo_out(23)));
      r_out(24)<=(mode and fifo_out(24)) or ((not mode) and ('0' xor fifo_out(24) xor fifo_out(36) xor fifo_out(52) xor fifo_out(48) xor fifo_out(60)));
      r_out(25)<=(mode and fifo_out(25)) or ((not mode) and ('0' xor fifo_out(3) xor fifo_out(57) xor fifo_out(25) xor fifo_out(38) xor fifo_out(50)));
      r_out(26)<=(mode and fifo_out(26)) or ((not mode) and ('0' xor fifo_out(19) xor fifo_out(25) xor fifo_out(26) xor fifo_out(27) xor fifo_out(34)));
      r_out(27)<=(mode and fifo_out(27)) or ((not mode) and ('0' xor fifo_out(3) xor fifo_out(27) xor fifo_out(53) xor fifo_out(61) xor fifo_out(7)));
      r_out(28)<=(mode and fifo_out(28)) or ((not mode) and ('0' xor fifo_out(30) xor fifo_out(62) xor fifo_out(28) xor fifo_out(33) xor fifo_out(37)));
      r_out(29)<=(mode and fifo_out(29)) or ((not mode) and ('0' xor fifo_out(15) xor fifo_out(57) xor fifo_out(40) xor fifo_out(10) xor fifo_out(29)));
      r_out(30)<=(mode and fifo_out(30)) or ((not mode) and ('0' xor fifo_out(30) xor fifo_out(21) xor fifo_out(49) xor fifo_out(27) xor fifo_out(58)));
      r_out(31)<=(mode and fifo_out(31)) or ((not mode) and ('0' xor fifo_out(31) xor fifo_out(15) xor fifo_out(46) xor fifo_out(5) xor fifo_out(20)));
      r_out(32)<=(mode and fifo_out(32)) or ((not mode) and ('0' xor fifo_out(16) xor fifo_out(0) xor fifo_out(32) xor fifo_out(34) xor fifo_out(45)));
      r_out(33)<=(mode and fifo_out(33)) or ((not mode) and ('0' xor fifo_out(21) xor fifo_out(33) xor fifo_out(2) xor fifo_out(37) xor fifo_out(17)));
      r_out(34)<=(mode and fifo_out(34)) or ((not mode) and ('0' xor fifo_out(58) xor fifo_out(43) xor fifo_out(42) xor fifo_out(34)));
      r_out(35)<=(mode and fifo_out(35)) or ((not mode) and ('0' xor fifo_out(51) xor fifo_out(55) xor fifo_out(35) xor fifo_out(47) xor fifo_out(8)));
      r_out(36)<=(mode and fifo_out(36)) or ((not mode) and ('0' xor fifo_out(31) xor fifo_out(46) xor fifo_out(11) xor fifo_out(36) xor fifo_out(34)));
      r_out(37)<=(mode and fifo_out(37)) or ((not mode) and ('0' xor fifo_out(0) xor fifo_out(41) xor fifo_out(52) xor fifo_out(37) xor fifo_out(61)));
      r_out(38)<=(mode and fifo_out(38)) or ((not mode) and ('0' xor fifo_out(40) xor fifo_out(24) xor fifo_out(38) xor fifo_out(37) xor fifo_out(39)));
      r_out(39)<=(mode and fifo_out(39)) or ((not mode) and ('0' xor fifo_out(10) xor fifo_out(27) xor fifo_out(20) xor fifo_out(14) xor fifo_out(39)));
      r_out(40)<=(mode and fifo_out(40)) or ((not mode) and ('0' xor fifo_out(1) xor fifo_out(40) xor fifo_out(51) xor fifo_out(54) xor fifo_out(45)));
      r_out(41)<=(mode and fifo_out(41)) or ((not mode) and ('0' xor fifo_out(15) xor fifo_out(41) xor fifo_out(35) xor fifo_out(63) xor fifo_out(29)));
      r_out(42)<=(mode and fifo_out(42)) or ((not mode) and ('0' xor fifo_out(30) xor fifo_out(16) xor fifo_out(42) xor fifo_out(6) xor fifo_out(13)));
      r_out(43)<=(mode and fifo_out(43)) or ((not mode) and ('0' xor fifo_out(62) xor fifo_out(43) xor fifo_out(48) xor fifo_out(60) xor fifo_out(47)));
      r_out(44)<=(mode and fifo_out(44)) or ((not mode) and ('0' xor fifo_out(31) xor fifo_out(44) xor fifo_out(21) xor fifo_out(53) xor fifo_out(29)));
      r_out(45)<=(mode and fifo_out(45)) or ((not mode) and ('0' xor fifo_out(19) xor fifo_out(27) xor fifo_out(55) xor fifo_out(14) xor fifo_out(45)));
      r_out(46)<=(mode and fifo_out(46)) or ((not mode) and ('0' xor fifo_out(46) xor fifo_out(32) xor fifo_out(14) xor fifo_out(47) xor fifo_out(7)));
      r_out(47)<=(mode and fifo_out(47)) or ((not mode) and ('0' xor fifo_out(3) xor fifo_out(12) xor fifo_out(2) xor fifo_out(47) xor fifo_out(37)));
      r_out(48)<=(mode and fifo_out(48)) or ((not mode) and ('0' xor fifo_out(56) xor fifo_out(54) xor fifo_out(18) xor fifo_out(48) xor fifo_out(8)));
      r_out(49)<=(mode and fifo_out(49)) or ((not mode) and ('0' xor fifo_out(28) xor fifo_out(59) xor fifo_out(26) xor fifo_out(49) xor fifo_out(48)));
      r_out(50)<=(mode and fifo_out(50)) or ((not mode) and ('0' xor fifo_out(41) xor fifo_out(42) xor fifo_out(23) xor fifo_out(50) xor fifo_out(13)));
      r_out(51)<=(mode and fifo_out(51)) or ((not mode) and ('0' xor fifo_out(59) xor fifo_out(25) xor fifo_out(16) xor fifo_out(51) xor fifo_out(56)));
      r_out(52)<=(mode and fifo_out(52)) or ((not mode) and ('0' xor fifo_out(51) xor fifo_out(52) xor fifo_out(4) xor fifo_out(29)));
      r_out(53)<=(mode and fifo_out(53)) or ((not mode) and ('0' xor fifo_out(22) xor fifo_out(36) xor fifo_out(53) xor fifo_out(60) xor fifo_out(7)));
      r_out(54)<=(mode and fifo_out(54)) or ((not mode) and ('0' xor fifo_out(57) xor fifo_out(22) xor fifo_out(54) xor fifo_out(41) xor fifo_out(33)));
      r_out(55)<=(mode and fifo_out(55)) or ((not mode) and ('0' xor fifo_out(46) xor fifo_out(28) xor fifo_out(55) xor fifo_out(43) xor fifo_out(50)));
      r_out(56)<=(mode and fifo_out(56)) or ((not mode) and ('0' xor fifo_out(44) xor fifo_out(24) xor fifo_out(22) xor fifo_out(56)));
      r_out(57)<=(mode and fifo_out(57)) or ((not mode) and ('0' xor fifo_out(19) xor fifo_out(57) xor fifo_out(0) xor fifo_out(43) xor fifo_out(4)));
      r_out(58)<=(mode and fifo_out(58)) or ((not mode) and ('0' xor fifo_out(36) xor fifo_out(58) xor fifo_out(53) xor fifo_out(47) xor fifo_out(8)));
      r_out(59)<=(mode and fifo_out(59)) or ((not mode) and ('0' xor fifo_out(59) xor fifo_out(5) xor fifo_out(38) xor fifo_out(17) xor fifo_out(50)));
      r_out(60)<=(mode and fifo_out(60)) or ((not mode) and ('0' xor fifo_out(15) xor fifo_out(10) xor fifo_out(56) xor fifo_out(63) xor fifo_out(60)));
      r_out(61)<=(mode and fifo_out(61)) or ((not mode) and ('0' xor fifo_out(40) xor fifo_out(36) xor fifo_out(61) xor fifo_out(45)));
      r_out(62)<=(mode and fifo_out(62)) or ((not mode) and ('0' xor fifo_out(62) xor fifo_out(26) xor fifo_out(49) xor fifo_out(38) xor fifo_out(17)));
      r_out(63)<=(mode and fifo_out(63)) or ((not mode) and ('0' xor fifo_out(1) xor fifo_out(49) xor fifo_out(20) xor fifo_out(63) xor fifo_out(2)));
    end if;
  end process;
 fifo_0 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(1), dout=>fifo_out(0));
 fifo_1 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(2), dout=>fifo_out(1));
 fifo_2 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>27)
    port map(clk=>clk, ce=>ce, din=>r_out(3), dout=>fifo_out(2));
 fifo_3 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(4), dout=>fifo_out(3));
 fifo_4 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>30)
    port map(clk=>clk, ce=>ce, din=>r_out(5), dout=>fifo_out(4));
 fifo_5 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(6), dout=>fifo_out(5));
 fifo_6 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(7), dout=>fifo_out(6));
 fifo_7 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(8), dout=>fifo_out(7));
 fifo_8 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>31)
    port map(clk=>clk, ce=>ce, din=>r_out(9), dout=>fifo_out(8));
 fifo_9 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(10), dout=>fifo_out(9));
 fifo_10 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(11), dout=>fifo_out(10));
 fifo_11 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(12), dout=>fifo_out(11));
 fifo_12 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>31)
    port map(clk=>clk, ce=>ce, din=>r_out(13), dout=>fifo_out(12));
 fifo_13 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>30)
    port map(clk=>clk, ce=>ce, din=>r_out(14), dout=>fifo_out(13));
 fifo_14 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>27)
    port map(clk=>clk, ce=>ce, din=>r_out(15), dout=>fifo_out(14));
 fifo_15 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(16), dout=>fifo_out(15));
 fifo_16 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(17), dout=>fifo_out(16));
 fifo_17 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>29)
    port map(clk=>clk, ce=>ce, din=>r_out(18), dout=>fifo_out(17));
 fifo_18 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>31)
    port map(clk=>clk, ce=>ce, din=>r_out(19), dout=>fifo_out(18));
 fifo_19 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(20), dout=>fifo_out(19));
 fifo_20 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>28)
    port map(clk=>clk, ce=>ce, din=>r_out(21), dout=>fifo_out(20));
 fifo_21 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(22), dout=>fifo_out(21));
 fifo_22 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(23), dout=>fifo_out(22));
 fifo_23 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(24), dout=>fifo_out(23));
 fifo_24 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(25), dout=>fifo_out(24));
 fifo_25 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(26), dout=>fifo_out(25));
 fifo_26 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(27), dout=>fifo_out(26));
 fifo_27 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(28), dout=>fifo_out(27));
 fifo_28 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(29), dout=>fifo_out(28));
 fifo_29 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>31)
    port map(clk=>clk, ce=>ce, din=>r_out(30), dout=>fifo_out(29));
 fifo_30 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(31), dout=>fifo_out(30));
 fifo_31 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(32), dout=>fifo_out(31));
 fifo_32 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(33), dout=>fifo_out(32));
 fifo_33 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(34), dout=>fifo_out(33));
 fifo_34 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>29)
    port map(clk=>clk, ce=>ce, din=>r_out(35), dout=>fifo_out(34));
 fifo_35 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>31)
    port map(clk=>clk, ce=>ce, din=>r_out(36), dout=>fifo_out(35));
 fifo_36 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(37), dout=>fifo_out(36));
 fifo_37 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(38), dout=>fifo_out(37));
 fifo_38 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>29)
    port map(clk=>clk, ce=>ce, din=>r_out(39), dout=>fifo_out(38));
 fifo_39 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>30)
    port map(clk=>clk, ce=>ce, din=>r_out(40), dout=>fifo_out(39));
 fifo_40 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(41), dout=>fifo_out(40));
 fifo_41 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(42), dout=>fifo_out(41));
 fifo_42 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>27)
    port map(clk=>clk, ce=>ce, din=>r_out(43), dout=>fifo_out(42));
 fifo_43 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>28)
    port map(clk=>clk, ce=>ce, din=>r_out(44), dout=>fifo_out(43));
 fifo_44 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(45), dout=>fifo_out(44));
 fifo_45 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>28)
    port map(clk=>clk, ce=>ce, din=>r_out(46), dout=>fifo_out(45));
 fifo_46 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(47), dout=>fifo_out(46));
 fifo_47 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>31)
    port map(clk=>clk, ce=>ce, din=>r_out(48), dout=>fifo_out(47));
 fifo_48 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>30)
    port map(clk=>clk, ce=>ce, din=>r_out(49), dout=>fifo_out(48));
 fifo_49 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>30)
    port map(clk=>clk, ce=>ce, din=>r_out(50), dout=>fifo_out(49));
 fifo_50 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(51), dout=>fifo_out(50));
 fifo_51 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(52), dout=>fifo_out(51));
 fifo_52 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(53), dout=>fifo_out(52));
 fifo_53 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(54), dout=>fifo_out(53));
 fifo_54 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>28)
    port map(clk=>clk, ce=>ce, din=>r_out(55), dout=>fifo_out(54));
 fifo_55 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>30)
    port map(clk=>clk, ce=>ce, din=>r_out(56), dout=>fifo_out(55));
 fifo_56 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(57), dout=>fifo_out(56));
 fifo_57 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(58), dout=>fifo_out(57));
 fifo_58 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(59), dout=>fifo_out(58));
 fifo_59 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(60), dout=>fifo_out(59));
 fifo_60 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>26)
    port map(clk=>clk, ce=>ce, din=>r_out(61), dout=>fifo_out(60));
 fifo_61 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(62), dout=>fifo_out(61));
 fifo_62 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(63), dout=>fifo_out(62));
 fifo_63 : entity rng_n2048_r64_t5_k32_sbfbaac_SR generic map (K=>32)
    port map(clk=>clk, ce=>ce, din=>r_out(0), dout=>fifo_out(63));
end RTL;
