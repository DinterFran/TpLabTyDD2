library IEEE;
use ieee.std_logic_1164.ALL;

entity lab_parteA is
	port (SW1: in std_logic;
		   SW2: in std_logic;
		   LED: out std_logic);
end lab_parteA;

architecture Behavioral of lab_parteA is

begin
	LED <= not(SW1 and SW2);

	end Behavioral;
	
