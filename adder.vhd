--------------------------------------------------
----------------adder-----------------------------
------------28/8/2020----------------------
--------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
-----------------------------------------------------
entity adder is 
  generic(N : natural :=32);
  port
  (
    input1 : in std_logic_vector (N-1 downto 0);
	input2 : in std_logic_vector (N-1 downto 0);
	Cin    : in std_logic;
	Sum    : out std_logic_vector(N-1 downto 0);
	Cout   : out std_logic
  );
-----------------------------------------------------
architecture behav of adder is  
  signal sum_temp : std_logic_vector (N downto 0);  
  begin  
	sum_temp <= ('0' & input1) + ('0' & input2) + Cin;
	Sum <= sum_temp(N-1 downto 0);
	Cout <= sum_temp(N);   
end architecture;
