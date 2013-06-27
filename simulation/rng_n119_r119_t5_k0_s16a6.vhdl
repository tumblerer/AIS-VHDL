LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity rng_n119_r119_t5_k0_s16a6 is
  port(
    clk:in std_logic;
    ce:in std_logic;
    mode:in std_logic;
    s_in:in std_logic;
    s_out:out std_logic;
    rng:out std_logic_vector(118 downto 0)
  );
end rng_n119_r119_t5_k0_s16a6;

architecture RTL of rng_n119_r119_t5_k0_s16a6 is
  signal fifo_out : std_logic_vector(118 downto 0);
  signal r_out:std_logic_vector(118 downto 0) := (others=>'1');
begin
  rng(0) <= r_out(19);
  rng(1) <= r_out(58);
  rng(2) <= r_out(106);
  rng(3) <= r_out(68);
  rng(4) <= r_out(45);
  rng(5) <= r_out(53);
  rng(6) <= r_out(107);
  rng(7) <= r_out(69);
  rng(8) <= r_out(91);
  rng(9) <= r_out(116);
  rng(10) <= r_out(95);
  rng(11) <= r_out(88);
  rng(12) <= r_out(43);
  rng(13) <= r_out(6);
  rng(14) <= r_out(112);
  rng(15) <= r_out(66);
  rng(16) <= r_out(52);
  rng(17) <= r_out(42);
  rng(18) <= r_out(31);
  rng(19) <= r_out(40);
  rng(20) <= r_out(25);
  rng(21) <= r_out(85);
  rng(22) <= r_out(0);
  rng(23) <= r_out(33);
  rng(24) <= r_out(78);
  rng(25) <= r_out(44);
  rng(26) <= r_out(34);
  rng(27) <= r_out(5);
  rng(28) <= r_out(29);
  rng(29) <= r_out(23);
  rng(30) <= r_out(13);
  rng(31) <= r_out(4);
  rng(32) <= r_out(70);
  rng(33) <= r_out(98);
  rng(34) <= r_out(60);
  rng(35) <= r_out(101);
  rng(36) <= r_out(77);
  rng(37) <= r_out(104);
  rng(38) <= r_out(15);
  rng(39) <= r_out(17);
  rng(40) <= r_out(63);
  rng(41) <= r_out(47);
  rng(42) <= r_out(39);
  rng(43) <= r_out(72);
  rng(44) <= r_out(76);
  rng(45) <= r_out(37);
  rng(46) <= r_out(105);
  rng(47) <= r_out(36);
  rng(48) <= r_out(67);
  rng(49) <= r_out(11);
  rng(50) <= r_out(83);
  rng(51) <= r_out(27);
  rng(52) <= r_out(75);
  rng(53) <= r_out(18);
  rng(54) <= r_out(111);
  rng(55) <= r_out(38);
  rng(56) <= r_out(64);
  rng(57) <= r_out(16);
  rng(58) <= r_out(82);
  rng(59) <= r_out(74);
  rng(60) <= r_out(117);
  rng(61) <= r_out(48);
  rng(62) <= r_out(96);
  rng(63) <= r_out(81);
  rng(64) <= r_out(92);
  rng(65) <= r_out(26);
  rng(66) <= r_out(9);
  rng(67) <= r_out(7);
  rng(68) <= r_out(57);
  rng(69) <= r_out(113);
  rng(70) <= r_out(56);
  rng(71) <= r_out(46);
  rng(72) <= r_out(55);
  rng(73) <= r_out(79);
  rng(74) <= r_out(3);
  rng(75) <= r_out(94);
  rng(76) <= r_out(2);
  rng(77) <= r_out(71);
  rng(78) <= r_out(21);
  rng(79) <= r_out(28);
  rng(80) <= r_out(54);
  rng(81) <= r_out(86);
  rng(82) <= r_out(118);
  rng(83) <= r_out(35);
  rng(84) <= r_out(22);
  rng(85) <= r_out(115);
  rng(86) <= r_out(32);
  rng(87) <= r_out(12);
  rng(88) <= r_out(50);
  rng(89) <= r_out(100);
  rng(90) <= r_out(102);
  rng(91) <= r_out(1);
  rng(92) <= r_out(61);
  rng(93) <= r_out(59);
  rng(94) <= r_out(8);
  rng(95) <= r_out(90);
  rng(96) <= r_out(87);
  rng(97) <= r_out(14);
  rng(98) <= r_out(89);
  rng(99) <= r_out(97);
  rng(100) <= r_out(110);
  rng(101) <= r_out(109);
  rng(102) <= r_out(24);
  rng(103) <= r_out(51);
  rng(104) <= r_out(103);
  rng(105) <= r_out(49);
  rng(106) <= r_out(65);
  rng(107) <= r_out(108);
  rng(108) <= r_out(93);
  rng(109) <= r_out(84);
  rng(110) <= r_out(62);
  rng(111) <= r_out(99);
  rng(112) <= r_out(80);
  rng(113) <= r_out(10);
  rng(114) <= r_out(30);
  rng(115) <= r_out(73);
  rng(116) <= r_out(114);
  rng(117) <= r_out(41);
  rng(118) <= r_out(20);
  s_out <= fifo_out(48);
  regs : process(clk) begin
    if(rising_edge(clk)) then
      if(ce='1') then
      r_out(0)<=(mode and fifo_out(0)) or ((not mode) and ('0' xor fifo_out(0) xor fifo_out(6) xor fifo_out(44) xor fifo_out(48) xor fifo_out(61)));
      r_out(1)<=(mode and fifo_out(1)) or ((not mode) and ('0' xor fifo_out(1) xor fifo_out(29) xor fifo_out(38) xor fifo_out(98) xor fifo_out(106)));
      r_out(2)<=(mode and fifo_out(2)) or ((not mode) and ('0' xor fifo_out(2) xor fifo_out(28) xor fifo_out(34) xor fifo_out(36) xor fifo_out(114)));
      r_out(3)<=(mode and fifo_out(3)) or ((not mode) and ('0' xor fifo_out(3) xor fifo_out(51) xor fifo_out(59) xor fifo_out(76) xor fifo_out(104)));
      r_out(4)<=(mode and fifo_out(4)) or ((not mode) and ('0' xor fifo_out(4) xor fifo_out(41) xor fifo_out(56) xor fifo_out(61) xor fifo_out(85)));
      r_out(5)<=(mode and fifo_out(5)) or ((not mode) and ('0' xor fifo_out(5) xor fifo_out(28) xor fifo_out(55) xor fifo_out(80)));
      r_out(6)<=(mode and fifo_out(6)) or ((not mode) and ('0' xor fifo_out(6) xor fifo_out(12) xor fifo_out(23) xor fifo_out(54) xor fifo_out(75)));
      r_out(7)<=(mode and fifo_out(7)) or ((not mode) and ('0' xor fifo_out(7) xor fifo_out(17) xor fifo_out(26) xor fifo_out(60) xor fifo_out(103)));
      r_out(8)<=(mode and fifo_out(8)) or ((not mode) and ('0' xor fifo_out(8) xor fifo_out(66) xor fifo_out(70) xor fifo_out(102) xor fifo_out(103)));
      r_out(9)<=(mode and fifo_out(9)) or ((not mode) and ('0' xor fifo_out(9) xor fifo_out(12) xor fifo_out(14) xor fifo_out(64) xor fifo_out(68)));
      r_out(10)<=(mode and fifo_out(10)) or ((not mode) and ('0' xor fifo_out(0) xor fifo_out(2) xor fifo_out(10) xor fifo_out(18) xor fifo_out(57)));
      r_out(11)<=(mode and fifo_out(11)) or ((not mode) and ('0' xor fifo_out(11) xor fifo_out(41) xor fifo_out(88) xor fifo_out(91) xor fifo_out(101)));
      r_out(12)<=(mode and fifo_out(12)) or ((not mode) and ('0' xor fifo_out(12) xor fifo_out(18) xor fifo_out(43) xor fifo_out(58) xor fifo_out(75)));
      r_out(13)<=(mode and fifo_out(13)) or ((not mode) and ('0' xor fifo_out(13) xor fifo_out(15) xor fifo_out(58) xor fifo_out(100) xor fifo_out(108)));
      r_out(14)<=(mode and fifo_out(14)) or ((not mode) and ('0' xor fifo_out(10) xor fifo_out(14) xor fifo_out(23) xor fifo_out(41) xor fifo_out(116)));
      r_out(15)<=(mode and fifo_out(15)) or ((not mode) and ('0' xor fifo_out(15) xor fifo_out(38) xor fifo_out(40) xor fifo_out(87) xor fifo_out(101)));
      r_out(16)<=(mode and fifo_out(16)) or ((not mode) and ('0' xor fifo_out(16) xor fifo_out(37) xor fifo_out(84) xor fifo_out(100) xor fifo_out(110)));
      r_out(17)<=(mode and fifo_out(17)) or ((not mode) and ('0' xor fifo_out(7) xor fifo_out(17) xor fifo_out(90) xor fifo_out(91) xor fifo_out(96)));
      r_out(18)<=(mode and fifo_out(18)) or ((not mode) and ('0' xor fifo_out(17) xor fifo_out(18) xor fifo_out(21) xor fifo_out(52) xor fifo_out(97)));
      r_out(19)<=(mode and fifo_out(19)) or ((not mode) and ('0' xor fifo_out(10) xor fifo_out(11) xor fifo_out(19) xor fifo_out(39) xor fifo_out(115)));
      r_out(20)<=(mode and fifo_out(20)) or ((not mode) and ('0' xor fifo_out(20) xor fifo_out(40) xor fifo_out(59) xor fifo_out(65) xor fifo_out(77)));
      r_out(21)<=(mode and fifo_out(21)) or ((not mode) and ('0' xor fifo_out(4) xor fifo_out(21) xor fifo_out(33) xor fifo_out(93) xor fifo_out(101)));
      r_out(22)<=(mode and fifo_out(22)) or ((not mode) and ('0' xor fifo_out(22) xor fifo_out(24) xor fifo_out(29) xor fifo_out(73) xor fifo_out(88)));
      r_out(23)<=(mode and fifo_out(23)) or ((not mode) and ('0' xor fifo_out(16) xor fifo_out(20) xor fifo_out(23) xor fifo_out(34) xor fifo_out(37)));
      r_out(24)<=(mode and fifo_out(24)) or ((not mode) and ('0' xor fifo_out(24) xor fifo_out(30) xor fifo_out(38) xor fifo_out(63) xor fifo_out(79)));
      r_out(25)<=(mode and fifo_out(25)) or ((not mode) and ('0' xor fifo_out(22) xor fifo_out(24) xor fifo_out(25) xor fifo_out(34) xor fifo_out(64)));
      r_out(26)<=(mode and fifo_out(26)) or ((not mode) and ('0' xor fifo_out(11) xor fifo_out(26) xor fifo_out(54) xor fifo_out(84) xor fifo_out(112)));
      r_out(27)<=(mode and fifo_out(27)) or ((not mode) and ('0' xor fifo_out(27) xor fifo_out(72) xor fifo_out(86) xor fifo_out(93) xor fifo_out(94)));
      r_out(28)<=(mode and fifo_out(28)) or ((not mode) and ('0' xor fifo_out(10) xor fifo_out(28) xor fifo_out(46) xor fifo_out(68) xor fifo_out(88)));
      r_out(29)<=(mode and fifo_out(29)) or ((not mode) and ('0' xor fifo_out(2) xor fifo_out(29) xor fifo_out(44) xor fifo_out(65) xor fifo_out(101)));
      r_out(30)<=(mode and fifo_out(30)) or ((not mode) and ('0' xor fifo_out(22) xor fifo_out(30) xor fifo_out(43) xor fifo_out(85) xor fifo_out(90)));
      r_out(31)<=(mode and fifo_out(31)) or ((not mode) and ('0' xor fifo_out(31) xor fifo_out(47) xor fifo_out(68) xor fifo_out(90) xor fifo_out(100)));
      r_out(32)<=(mode and fifo_out(32)) or ((not mode) and ('0' xor fifo_out(2) xor fifo_out(12) xor fifo_out(32) xor fifo_out(42) xor fifo_out(111)));
      r_out(33)<=(mode and fifo_out(33)) or ((not mode) and ('0' xor fifo_out(3) xor fifo_out(33) xor fifo_out(46) xor fifo_out(92) xor fifo_out(106)));
      r_out(34)<=(mode and fifo_out(34)) or ((not mode) and ('0' xor fifo_out(5) xor fifo_out(19) xor fifo_out(32) xor fifo_out(34) xor fifo_out(36)));
      r_out(35)<=(mode and fifo_out(35)) or ((not mode) and ('0' xor fifo_out(17) xor fifo_out(31) xor fifo_out(35) xor fifo_out(52) xor fifo_out(70)));
      r_out(36)<=(mode and fifo_out(36)) or ((not mode) and ('0' xor fifo_out(21) xor fifo_out(24) xor fifo_out(36) xor fifo_out(63) xor fifo_out(106)));
      r_out(37)<=(mode and fifo_out(37)) or ((not mode) and ('0' xor fifo_out(118) xor fifo_out(27) xor fifo_out(32) xor fifo_out(37) xor fifo_out(111)));
      r_out(38)<=(mode and fifo_out(38)) or ((not mode) and ('0' xor fifo_out(27) xor fifo_out(38) xor fifo_out(39) xor fifo_out(42) xor fifo_out(99)));
      r_out(39)<=(mode and fifo_out(39)) or ((not mode) and ('0' xor fifo_out(15) xor fifo_out(31) xor fifo_out(39) xor fifo_out(75) xor fifo_out(97)));
      r_out(40)<=(mode and fifo_out(40)) or ((not mode) and ('0' xor fifo_out(40) xor fifo_out(59) xor fifo_out(67) xor fifo_out(87) xor fifo_out(114)));
      r_out(41)<=(mode and fifo_out(41)) or ((not mode) and ('0' xor fifo_out(32) xor fifo_out(41) xor fifo_out(80) xor fifo_out(88) xor fifo_out(89)));
      r_out(42)<=(mode and fifo_out(42)) or ((not mode) and ('0' xor fifo_out(12) xor fifo_out(42) xor fifo_out(46) xor fifo_out(81) xor fifo_out(112)));
      r_out(43)<=(mode and fifo_out(43)) or ((not mode) and ('0' xor fifo_out(33) xor fifo_out(43) xor fifo_out(53) xor fifo_out(107)));
      r_out(44)<=(mode and fifo_out(44)) or ((not mode) and ('0' xor fifo_out(5) xor fifo_out(44) xor fifo_out(74) xor fifo_out(76) xor fifo_out(108)));
      r_out(45)<=(mode and fifo_out(45)) or ((not mode) and ('0' xor fifo_out(26) xor fifo_out(45) xor fifo_out(70) xor fifo_out(77) xor fifo_out(80)));
      r_out(46)<=(mode and fifo_out(46)) or ((not mode) and ('0' xor fifo_out(25) xor fifo_out(46) xor fifo_out(69) xor fifo_out(92) xor fifo_out(105)));
      r_out(47)<=(mode and fifo_out(47)) or ((not mode) and ('0' xor fifo_out(2) xor fifo_out(41) xor fifo_out(47) xor fifo_out(75) xor fifo_out(94)));
      r_out(48)<=(mode and s_in) or ((not mode) and ('0' xor fifo_out(48) xor fifo_out(89) xor fifo_out(105) xor fifo_out(109)));
      r_out(49)<=(mode and fifo_out(49)) or ((not mode) and ('0' xor fifo_out(49) xor fifo_out(56) xor fifo_out(58) xor fifo_out(99) xor fifo_out(108)));
      r_out(50)<=(mode and fifo_out(50)) or ((not mode) and ('0' xor fifo_out(20) xor fifo_out(27) xor fifo_out(50) xor fifo_out(77) xor fifo_out(82)));
      r_out(51)<=(mode and fifo_out(51)) or ((not mode) and ('0' xor fifo_out(21) xor fifo_out(44) xor fifo_out(51) xor fifo_out(98) xor fifo_out(115)));
      r_out(52)<=(mode and fifo_out(52)) or ((not mode) and ('0' xor fifo_out(9) xor fifo_out(25) xor fifo_out(51) xor fifo_out(52) xor fifo_out(93)));
      r_out(53)<=(mode and fifo_out(53)) or ((not mode) and ('0' xor fifo_out(13) xor fifo_out(25) xor fifo_out(36) xor fifo_out(53) xor fifo_out(94)));
      r_out(54)<=(mode and fifo_out(54)) or ((not mode) and ('0' xor fifo_out(54) xor fifo_out(79) xor fifo_out(89) xor fifo_out(95) xor fifo_out(96)));
      r_out(55)<=(mode and fifo_out(55)) or ((not mode) and ('0' xor fifo_out(4) xor fifo_out(25) xor fifo_out(55) xor fifo_out(109) xor fifo_out(114)));
      r_out(56)<=(mode and fifo_out(56)) or ((not mode) and ('0' xor fifo_out(10) xor fifo_out(44) xor fifo_out(56) xor fifo_out(62) xor fifo_out(87)));
      r_out(57)<=(mode and fifo_out(57)) or ((not mode) and ('0' xor fifo_out(13) xor fifo_out(43) xor fifo_out(50) xor fifo_out(57) xor fifo_out(62)));
      r_out(58)<=(mode and fifo_out(58)) or ((not mode) and ('0' xor fifo_out(16) xor fifo_out(49) xor fifo_out(52) xor fifo_out(58) xor fifo_out(67)));
      r_out(59)<=(mode and fifo_out(59)) or ((not mode) and ('0' xor fifo_out(28) xor fifo_out(33) xor fifo_out(53) xor fifo_out(59) xor fifo_out(95)));
      r_out(60)<=(mode and fifo_out(60)) or ((not mode) and ('0' xor fifo_out(5) xor fifo_out(60) xor fifo_out(84) xor fifo_out(100) xor fifo_out(112)));
      r_out(61)<=(mode and fifo_out(61)) or ((not mode) and ('0' xor fifo_out(1) xor fifo_out(61) xor fifo_out(83) xor fifo_out(84) xor fifo_out(91)));
      r_out(62)<=(mode and fifo_out(62)) or ((not mode) and ('0' xor fifo_out(30) xor fifo_out(36) xor fifo_out(62) xor fifo_out(72) xor fifo_out(79)));
      r_out(63)<=(mode and fifo_out(63)) or ((not mode) and ('0' xor fifo_out(22) xor fifo_out(53) xor fifo_out(60) xor fifo_out(63) xor fifo_out(116)));
      r_out(64)<=(mode and fifo_out(64)) or ((not mode) and ('0' xor fifo_out(6) xor fifo_out(55) xor fifo_out(64) xor fifo_out(73) xor fifo_out(110)));
      r_out(65)<=(mode and fifo_out(65)) or ((not mode) and ('0' xor fifo_out(3) xor fifo_out(49) xor fifo_out(65) xor fifo_out(86) xor fifo_out(111)));
      r_out(66)<=(mode and fifo_out(66)) or ((not mode) and ('0' xor fifo_out(66) xor fifo_out(72) xor fifo_out(74) xor fifo_out(81) xor fifo_out(114)));
      r_out(67)<=(mode and fifo_out(67)) or ((not mode) and ('0' xor fifo_out(19) xor fifo_out(34) xor fifo_out(57) xor fifo_out(67) xor fifo_out(99)));
      r_out(68)<=(mode and fifo_out(68)) or ((not mode) and ('0' xor fifo_out(67) xor fifo_out(68) xor fifo_out(80) xor fifo_out(94) xor fifo_out(102)));
      r_out(69)<=(mode and fifo_out(69)) or ((not mode) and ('0' xor fifo_out(7) xor fifo_out(31) xor fifo_out(69) xor fifo_out(83) xor fifo_out(107)));
      r_out(70)<=(mode and fifo_out(70)) or ((not mode) and ('0' xor fifo_out(20) xor fifo_out(31) xor fifo_out(45) xor fifo_out(70) xor fifo_out(87)));
      r_out(71)<=(mode and fifo_out(71)) or ((not mode) and ('0' xor fifo_out(20) xor fifo_out(40) xor fifo_out(68) xor fifo_out(71) xor fifo_out(113)));
      r_out(72)<=(mode and fifo_out(72)) or ((not mode) and ('0' xor fifo_out(54) xor fifo_out(59) xor fifo_out(72) xor fifo_out(92) xor fifo_out(97)));
      r_out(73)<=(mode and fifo_out(73)) or ((not mode) and ('0' xor fifo_out(49) xor fifo_out(72) xor fifo_out(73) xor fifo_out(78) xor fifo_out(110)));
      r_out(74)<=(mode and fifo_out(74)) or ((not mode) and ('0' xor fifo_out(50) xor fifo_out(64) xor fifo_out(74) xor fifo_out(83) xor fifo_out(104)));
      r_out(75)<=(mode and fifo_out(75)) or ((not mode) and ('0' xor fifo_out(0) xor fifo_out(17) xor fifo_out(38) xor fifo_out(75) xor fifo_out(102)));
      r_out(76)<=(mode and fifo_out(76)) or ((not mode) and ('0' xor fifo_out(118) xor fifo_out(66) xor fifo_out(71) xor fifo_out(76) xor fifo_out(85)));
      r_out(77)<=(mode and fifo_out(77)) or ((not mode) and ('0' xor fifo_out(21) xor fifo_out(39) xor fifo_out(77) xor fifo_out(86) xor fifo_out(108)));
      r_out(78)<=(mode and fifo_out(78)) or ((not mode) and ('0' xor fifo_out(42) xor fifo_out(65) xor fifo_out(69) xor fifo_out(78) xor fifo_out(89)));
      r_out(79)<=(mode and fifo_out(79)) or ((not mode) and ('0' xor fifo_out(16) xor fifo_out(35) xor fifo_out(69) xor fifo_out(71) xor fifo_out(79)));
      r_out(80)<=(mode and fifo_out(80)) or ((not mode) and ('0' xor fifo_out(8) xor fifo_out(50) xor fifo_out(80) xor fifo_out(98) xor fifo_out(113)));
      r_out(81)<=(mode and fifo_out(81)) or ((not mode) and ('0' xor fifo_out(29) xor fifo_out(79) xor fifo_out(81) xor fifo_out(82) xor fifo_out(109)));
      r_out(82)<=(mode and fifo_out(82)) or ((not mode) and ('0' xor fifo_out(118) xor fifo_out(4) xor fifo_out(14) xor fifo_out(50) xor fifo_out(82)));
      r_out(83)<=(mode and fifo_out(83)) or ((not mode) and ('0' xor fifo_out(5) xor fifo_out(45) xor fifo_out(74) xor fifo_out(83) xor fifo_out(117)));
      r_out(84)<=(mode and fifo_out(84)) or ((not mode) and ('0' xor fifo_out(9) xor fifo_out(22) xor fifo_out(37) xor fifo_out(84) xor fifo_out(95)));
      r_out(85)<=(mode and fifo_out(85)) or ((not mode) and ('0' xor fifo_out(9) xor fifo_out(73) xor fifo_out(76) xor fifo_out(85) xor fifo_out(93)));
      r_out(86)<=(mode and fifo_out(86)) or ((not mode) and ('0' xor fifo_out(11) xor fifo_out(30) xor fifo_out(60) xor fifo_out(86) xor fifo_out(96)));
      r_out(87)<=(mode and fifo_out(87)) or ((not mode) and ('0' xor fifo_out(45) xor fifo_out(71) xor fifo_out(87) xor fifo_out(111) xor fifo_out(113)));
      r_out(88)<=(mode and fifo_out(88)) or ((not mode) and ('0' xor fifo_out(33) xor fifo_out(37) xor fifo_out(54) xor fifo_out(88) xor fifo_out(102)));
      r_out(89)<=(mode and fifo_out(89)) or ((not mode) and ('0' xor fifo_out(35) xor fifo_out(47) xor fifo_out(71) xor fifo_out(86) xor fifo_out(89)));
      r_out(90)<=(mode and fifo_out(90)) or ((not mode) and ('0' xor fifo_out(42) xor fifo_out(65) xor fifo_out(82) xor fifo_out(90) xor fifo_out(117)));
      r_out(91)<=(mode and fifo_out(91)) or ((not mode) and ('0' xor fifo_out(14) xor fifo_out(26) xor fifo_out(53) xor fifo_out(76) xor fifo_out(91)));
      r_out(92)<=(mode and fifo_out(92)) or ((not mode) and ('0' xor fifo_out(8) xor fifo_out(81) xor fifo_out(92) xor fifo_out(112) xor fifo_out(115)));
      r_out(93)<=(mode and fifo_out(93)) or ((not mode) and ('0' xor fifo_out(13) xor fifo_out(27) xor fifo_out(93) xor fifo_out(116)));
      r_out(94)<=(mode and fifo_out(94)) or ((not mode) and ('0' xor fifo_out(13) xor fifo_out(40) xor fifo_out(43) xor fifo_out(81) xor fifo_out(94)));
      r_out(95)<=(mode and fifo_out(95)) or ((not mode) and ('0' xor fifo_out(19) xor fifo_out(51) xor fifo_out(56) xor fifo_out(95) xor fifo_out(113)));
      r_out(96)<=(mode and fifo_out(96)) or ((not mode) and ('0' xor fifo_out(15) xor fifo_out(60) xor fifo_out(62) xor fifo_out(78) xor fifo_out(96)));
      r_out(97)<=(mode and fifo_out(97)) or ((not mode) and ('0' xor fifo_out(14) xor fifo_out(66) xor fifo_out(67) xor fifo_out(97) xor fifo_out(110)));
      r_out(98)<=(mode and fifo_out(98)) or ((not mode) and ('0' xor fifo_out(1) xor fifo_out(3) xor fifo_out(8) xor fifo_out(78) xor fifo_out(98)));
      r_out(99)<=(mode and fifo_out(99)) or ((not mode) and ('0' xor fifo_out(1) xor fifo_out(57) xor fifo_out(63) xor fifo_out(99) xor fifo_out(106)));
      r_out(100)<=(mode and fifo_out(100)) or ((not mode) and ('0' xor fifo_out(28) xor fifo_out(30) xor fifo_out(35) xor fifo_out(99) xor fifo_out(100)));
      r_out(101)<=(mode and fifo_out(101)) or ((not mode) and ('0' xor fifo_out(7) xor fifo_out(69) xor fifo_out(70) xor fifo_out(101) xor fifo_out(105)));
      r_out(102)<=(mode and fifo_out(102)) or ((not mode) and ('0' xor fifo_out(16) xor fifo_out(77) xor fifo_out(102) xor fifo_out(104)));
      r_out(103)<=(mode and fifo_out(103)) or ((not mode) and ('0' xor fifo_out(11) xor fifo_out(18) xor fifo_out(39) xor fifo_out(47) xor fifo_out(103)));
      r_out(104)<=(mode and fifo_out(104)) or ((not mode) and ('0' xor fifo_out(32) xor fifo_out(62) xor fifo_out(73) xor fifo_out(90) xor fifo_out(104)));
      r_out(105)<=(mode and fifo_out(105)) or ((not mode) and ('0' xor fifo_out(26) xor fifo_out(55) xor fifo_out(61) xor fifo_out(82) xor fifo_out(105)));
      r_out(106)<=(mode and fifo_out(106)) or ((not mode) and ('0' xor fifo_out(47) xor fifo_out(48) xor fifo_out(91) xor fifo_out(97) xor fifo_out(106)));
      r_out(107)<=(mode and fifo_out(107)) or ((not mode) and ('0' xor fifo_out(1) xor fifo_out(6) xor fifo_out(85) xor fifo_out(95) xor fifo_out(107)));
      r_out(108)<=(mode and fifo_out(108)) or ((not mode) and ('0' xor fifo_out(4) xor fifo_out(45) xor fifo_out(92) xor fifo_out(108) xor fifo_out(117)));
      r_out(109)<=(mode and fifo_out(109)) or ((not mode) and ('0' xor fifo_out(8) xor fifo_out(98) xor fifo_out(103) xor fifo_out(109)));
      r_out(110)<=(mode and fifo_out(110)) or ((not mode) and ('0' xor fifo_out(19) xor fifo_out(56) xor fifo_out(63) xor fifo_out(78) xor fifo_out(110)));
      r_out(111)<=(mode and fifo_out(111)) or ((not mode) and ('0' xor fifo_out(0) xor fifo_out(18) xor fifo_out(23) xor fifo_out(66) xor fifo_out(111)));
      r_out(112)<=(mode and fifo_out(112)) or ((not mode) and ('0' xor fifo_out(3) xor fifo_out(83) xor fifo_out(96) xor fifo_out(103) xor fifo_out(112)));
      r_out(113)<=(mode and fifo_out(113)) or ((not mode) and ('0' xor fifo_out(23) xor fifo_out(35) xor fifo_out(46) xor fifo_out(51) xor fifo_out(113)));
      r_out(114)<=(mode and fifo_out(114)) or ((not mode) and ('0' xor fifo_out(9) xor fifo_out(61) xor fifo_out(64) xor fifo_out(105) xor fifo_out(114)));
      r_out(115)<=(mode and fifo_out(115)) or ((not mode) and ('0' xor fifo_out(7) xor fifo_out(15) xor fifo_out(24) xor fifo_out(58) xor fifo_out(115)));
      r_out(116)<=(mode and fifo_out(116)) or ((not mode) and ('0' xor fifo_out(118) xor fifo_out(52) xor fifo_out(74) xor fifo_out(107) xor fifo_out(116)));
      r_out(117)<=(mode and fifo_out(117)) or ((not mode) and ('0' xor fifo_out(0) xor fifo_out(48) xor fifo_out(49) xor fifo_out(115) xor fifo_out(117)));
      r_out(118)<=(mode and fifo_out(118)) or ((not mode) and ('0' xor fifo_out(118) xor fifo_out(6) xor fifo_out(29) xor fifo_out(57) xor fifo_out(117)));
    end if; end if;
  end process;
  fifo_out(0) <= r_out(1);
  fifo_out(1) <= r_out(2);
  fifo_out(2) <= r_out(3);
  fifo_out(3) <= r_out(4);
  fifo_out(4) <= r_out(5);
  fifo_out(5) <= r_out(6);
  fifo_out(6) <= r_out(7);
  fifo_out(7) <= r_out(8);
  fifo_out(8) <= r_out(9);
  fifo_out(9) <= r_out(10);
  fifo_out(10) <= r_out(11);
  fifo_out(11) <= r_out(12);
  fifo_out(12) <= r_out(13);
  fifo_out(13) <= r_out(14);
  fifo_out(14) <= r_out(15);
  fifo_out(15) <= r_out(16);
  fifo_out(16) <= r_out(17);
  fifo_out(17) <= r_out(18);
  fifo_out(18) <= r_out(19);
  fifo_out(19) <= r_out(20);
  fifo_out(20) <= r_out(21);
  fifo_out(21) <= r_out(22);
  fifo_out(22) <= r_out(23);
  fifo_out(23) <= r_out(24);
  fifo_out(24) <= r_out(25);
  fifo_out(25) <= r_out(26);
  fifo_out(26) <= r_out(27);
  fifo_out(27) <= r_out(28);
  fifo_out(28) <= r_out(29);
  fifo_out(29) <= r_out(30);
  fifo_out(30) <= r_out(31);
  fifo_out(31) <= r_out(32);
  fifo_out(32) <= r_out(33);
  fifo_out(33) <= r_out(34);
  fifo_out(34) <= r_out(35);
  fifo_out(35) <= r_out(36);
  fifo_out(36) <= r_out(37);
  fifo_out(37) <= r_out(38);
  fifo_out(38) <= r_out(39);
  fifo_out(39) <= r_out(40);
  fifo_out(40) <= r_out(41);
  fifo_out(41) <= r_out(42);
  fifo_out(42) <= r_out(43);
  fifo_out(43) <= r_out(44);
  fifo_out(44) <= r_out(45);
  fifo_out(45) <= r_out(46);
  fifo_out(46) <= r_out(47);
  fifo_out(47) <= r_out(48);
  fifo_out(48) <= r_out(49);
  fifo_out(49) <= r_out(50);
  fifo_out(50) <= r_out(51);
  fifo_out(51) <= r_out(52);
  fifo_out(52) <= r_out(53);
  fifo_out(53) <= r_out(54);
  fifo_out(54) <= r_out(55);
  fifo_out(55) <= r_out(56);
  fifo_out(56) <= r_out(57);
  fifo_out(57) <= r_out(58);
  fifo_out(58) <= r_out(59);
  fifo_out(59) <= r_out(60);
  fifo_out(60) <= r_out(61);
  fifo_out(61) <= r_out(62);
  fifo_out(62) <= r_out(63);
  fifo_out(63) <= r_out(64);
  fifo_out(64) <= r_out(65);
  fifo_out(65) <= r_out(66);
  fifo_out(66) <= r_out(67);
  fifo_out(67) <= r_out(68);
  fifo_out(68) <= r_out(69);
  fifo_out(69) <= r_out(70);
  fifo_out(70) <= r_out(71);
  fifo_out(71) <= r_out(72);
  fifo_out(72) <= r_out(73);
  fifo_out(73) <= r_out(74);
  fifo_out(74) <= r_out(75);
  fifo_out(75) <= r_out(76);
  fifo_out(76) <= r_out(77);
  fifo_out(77) <= r_out(78);
  fifo_out(78) <= r_out(79);
  fifo_out(79) <= r_out(80);
  fifo_out(80) <= r_out(81);
  fifo_out(81) <= r_out(82);
  fifo_out(82) <= r_out(83);
  fifo_out(83) <= r_out(84);
  fifo_out(84) <= r_out(85);
  fifo_out(85) <= r_out(86);
  fifo_out(86) <= r_out(87);
  fifo_out(87) <= r_out(88);
  fifo_out(88) <= r_out(89);
  fifo_out(89) <= r_out(90);
  fifo_out(90) <= r_out(91);
  fifo_out(91) <= r_out(92);
  fifo_out(92) <= r_out(93);
  fifo_out(93) <= r_out(94);
  fifo_out(94) <= r_out(95);
  fifo_out(95) <= r_out(96);
  fifo_out(96) <= r_out(97);
  fifo_out(97) <= r_out(98);
  fifo_out(98) <= r_out(99);
  fifo_out(99) <= r_out(100);
  fifo_out(100) <= r_out(101);
  fifo_out(101) <= r_out(102);
  fifo_out(102) <= r_out(103);
  fifo_out(103) <= r_out(104);
  fifo_out(104) <= r_out(105);
  fifo_out(105) <= r_out(106);
  fifo_out(106) <= r_out(107);
  fifo_out(107) <= r_out(108);
  fifo_out(108) <= r_out(109);
  fifo_out(109) <= r_out(110);
  fifo_out(110) <= r_out(111);
  fifo_out(111) <= r_out(112);
  fifo_out(112) <= r_out(113);
  fifo_out(113) <= r_out(114);
  fifo_out(114) <= r_out(115);
  fifo_out(115) <= r_out(116);
  fifo_out(116) <= r_out(117);
  fifo_out(117) <= r_out(118);
  fifo_out(118) <= r_out(0);
end RTL;
