library ieee;
use ieee.std_logic_1164.all;

entity tb_controleur is
end entity;

architecture arch of tb_controleur is

	component controleur is

		generic
		(
			INSTR_WIDTH : natural := 32
		);

		port
		(
			instr	 : in std_logic_vector((INSTR_WIDTH - 1) downto 0);
			aluOp  : out std_logic_vector(3 downto 0);
			we     : out std_logic;
			load   : out std_logic;
			clk    : in std_logic
					
		);

	end component;
	
	constant clk_demi_periode : time := 5 ns;
	constant INSTR_WIDTH_t : natural := 32;
	signal instr_t : std_logic_vector((INSTR_WIDTH_t - 1) downto 0);
	signal aluOp_t   : std_logic_vector(3 downto 0);
	signal we_t     : std_logic;
	signal load_t   : std_logic;
	signal clk_t    : std_logic := '0';
	
	begin
		controleur_1 : controleur
		
		generic map
			(
				INSTR_WIDTH => INSTR_WIDTH_t
			)
			
		port map
			(
				instr => instr_t,
				aluOp => aluOp_t,
				we => we_t,
				load => load_t,
				clk => clk_t
			);
			
		clk_t <= not clk_t after clk_demi_periode;
				
		process
			begin

				-- ADD
				instr_t <= "00000000000000000000000000110011"; 
				wait for 2*clk_demi_periode;

				-- SUB
				instr_t <= "01000000000000000000000000110011"; 
				wait for 2*clk_demi_periode;

				-- SLL (Shift Left Logical)
				instr_t <= "00000000000000000001000000110011";
				wait for 2*clk_demi_periode;

				-- SLT (Set Less Than)
				instr_t <= "00000000000000000010000000110011";  
				wait for 2*clk_demi_periode;

				-- SLTU (Set Less Than Unsigned)
				instr_t <= "00000000000000000011000000110011";  
				wait for 2*clk_demi_periode;

				-- XOR
				instr_t <= "00000000000000000100000000110011";  
				wait for 2*clk_demi_periode;

				-- SRL (Shift Right Logical)
				instr_t <= "00000000000000000101000000110011";  
				wait for 2*clk_demi_periode;

				-- SRA (Shift Right Arithmetic)
				instr_t <= "01000000000000000101000000110011"; 
				wait for 2*clk_demi_periode;

				-- OR
				instr_t <= "00000000000000000110000000110011"; 
				wait for 2*clk_demi_periode;

				-- AND
				instr_t <= "00000000000000000111000000110011"; 
				wait for 2*clk_demi_periode;

			wait;
		end process;
end architecture;