library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity tb_single_port_ram is 
end entity tb_single_port_ram;

architecture behav of tb_single_port_ram is

	component single_port_ram_with_init is

		generic 
		(
			DATA_WIDTH : natural := 32;
			ADDR_WIDTH : natural := 3
		);

		port 
		(
			clk	: in std_logic;
			addr	: in natural range 0 to 2**ADDR_WIDTH - 1;
			data	: in std_logic_vector((DATA_WIDTH-1) downto 0);
			we		: in std_logic := '1';
			q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
		);

	end component;

	constant clk_demi_periode : time := 5 ns;
	signal clk_t : std_logic := '0'; 
	signal addr_t : natural  range 0 to 7 := 0;
	signal data_t	: std_logic_vector(31 downto 0);
	signal we_t	: std_logic := '1';
	signal q_t : std_logic_vector (31 downto 0);
	
	begin 
			
		ram_1 : single_port_ram_with_init
			
		generic map
			(
				DATA_WIDTH => 32,
				ADDR_WIDTH => 3
			)
			
		port map
			(
				clk  => clk_t,
				addr => addr_t,
				data => data_t,
				we   => we_t,
				q    => q_t
			);
			
	clk_t <= not clk_t after clk_demi_periode;

	process
	begin
		 for i in 0 to 7 loop
			  addr_t <= i;
			  we_t <= '0';
			  wait for 10 ns;
		 end loop;

		 for i in 0 to 7 loop
			  addr_t <= i;
			  data_t <= std_logic_vector(to_unsigned(7 - addr_t, 32));
			  we_t <= '1';
			  wait for 10 ns;
		 end loop;

		 for i in 0 to 7 loop
			  addr_t <= i;
			  we_t <= '0';
			  wait for 10 ns;
		 end loop;
		 wait;
	end process;	
		
end behav;
	