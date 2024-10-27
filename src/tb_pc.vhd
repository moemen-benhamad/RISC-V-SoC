library ieee;
use ieee.std_logic_1164.all;

entity tb_pc is
end entity; 

architecture arch of tb_pc is

	component pc is

		generic
		(
			ADDR_WIDTH : natural := 5
		);

		port
		(
			din	: in natural range 0 to 2**ADDR_WIDTH - 1;
			dout  : out natural range 0 to 2**ADDR_WIDTH - 1;
			reset    : in std_logic;
			load  : in std_logic;
			clk   : in std_logic
					
		);

	end component;

	constant clk_demi_periode : time := 5 ns;
	constant ADDR_WIDTH_t : natural := 5;
	signal din_t	: natural range 0 to 2**ADDR_WIDTH_t - 1;
	signal dout_t : natural range 0 to 2**ADDR_WIDTH_t - 1;
	signal reset_t   : std_logic := '0';
	signal load_t : std_logic := '0';
	signal clk_t  : std_logic := '0';
	
	begin
		pc_1 : pc 
		
		generic map
			(
				ADDR_WIDTH => ADDR_WIDTH_t
			)
			
		port map
			(
				din => din_t,
				dout => dout_t,
				reset => reset_t,
				load => load_t,
				clk => clk_t
			);
			
	clk_t <= not clk_t after clk_demi_periode;
	
	process
		begin
			din_t <= 10;
			load_t <= '1';
			wait for 2*clk_demi_periode;
			load_t <= '0';
			wait for 2*clk_demi_periode;
			reset_t <= '1';
			wait for 2*clk_demi_periode;
			reset_t <= '0';
	end process;

end architecture;