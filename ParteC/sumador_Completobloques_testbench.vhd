library ieee;
use ieee.std_logic_1164.ALL;

entity Sumador_Completobloques_testbench is
end Sumador_Completobloques_testbench;

architecture behavior of sumador_Completobloques_testbench is

Component ParteC
		port(	
			Clock,A0,A1,A2,A3,B0,B1,B2,B3,Cin: in std_logic;
			S0,S1,S2,S3,C,Z,N,V : out std_logic
			);
			end component;
		signal A0 : std_logic :='0';
		signal A1 : std_logic :='0';
		signal A2 : std_logic :='0';
		signal A3 : std_logic :='0';
		signal B0 : std_logic :='0';
		signal B1 : std_logic :='0';
		signal B2 : std_logic :='0';
		signal B3 : std_logic :='0';
		signal Cin : std_logic :='0';	
	   signal Clock : std_logic :='0';	
		signal S0: std_logic ;
		signal S1: std_logic ;
		signal S2: std_logic ;
		signal S3: std_logic ;
		signal C: std_logic ;
		signal Z: std_logic ;
		signal N: std_logic ;
		signal V: std_logic ;	
		
	constant clock_period : time := 20 ns;
begin	
	uut: ParteC port map(
		
			A0 => A0,
			A1 => A1,
			A2 => A2,
			A3 => A3,
			B0 => B0,
			B1 => B1,
			B2 => B2,
			B3 => B3,
			S0 => S0,
			S1 => S1,
			S2 => S2,
			S3 => S3,
			C => C,
			Clock => Clock,
			Z => Z,
			N => N,
			V => V,
			Cin => Cin
			);
clock_process: process
	
	begin 
	
		clock<='0';
		wait for clock_period/2;
		clock<='1';
		wait for clock_period/2;
	end process;

	stim_proc: process
		begin
		
			A0<='1';A1<='1';A2<='1';A3<='1';B0<='1';B1<='1';B2<='1';B3<='1';Cin<='0'; wait for 30ns;
			A0<='0';A1<='1';A2<='0';A3<='1';B0<='0';B1<='0';B2<='1';B3<='1';Cin<='0'; wait for 30ns;
			A0<='0';A1<='1';A2<='0';A3<='1';B0<='0';B1<='1';B2<='0';B3<='1';Cin<='0'; wait for 30ns;
			A0<='0';A1<='0';A2<='1';A3<='0';B0<='1';B1<='0';B2<='1';B3<='0';Cin<='0'; wait for 30ns;
			A0<='1';A1<='1';A2<='1';A3<='1';B0<='1';B1<='1';B2<='1';B3<='1';Cin<='1'; wait for 30ns;
			A0<='0';A1<='1';A2<='0';A3<='1';B0<='0';B1<='1';B2<='0';B3<='1';Cin<='1'; wait for 30ns;
			A0<='1';A1<='1';A2<='0';A3<='0';B0<='1';B1<='0';B2<='0';B3<='1';Cin<='1'; wait for 30ns;
			A0<='0';A1<='0';A2<='1';A3<='0';B0<='0';B1<='1';B2<='0';B3<='0';Cin<='1'; wait for 30ns;
			A0<='1';A1<='0';A2<='1';A3<='1';B0<='0';B1<='0';B2<='1';B3<='0';Cin<='1'; wait for 30ns;
			A0<='0';A1<='1';A2<='0';A3<='1';B0<='0';B1<='0';B2<='0';B3<='1';Cin<='1'; wait for 30ns;
			

			
			wait;
		end process;
end;


		