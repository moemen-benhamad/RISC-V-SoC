library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity tb_registre is 
end entity tb_registre;

architecture tb_arch of tb_registre is

	component registre is

		generic
		 (
			  DATA_WIDTH : natural := 32
		 );

		port
		(
			  clk        : in std_logic;
			  data_in    : in std_logic_vector((DATA_WIDTH-1) downto 0);
			  we         : in std_logic := '1';        
			  data_out   : out std_logic_vector((DATA_WIDTH-1) downto 0)
		);

	end component;

	constant clk_demi_periode : time := 5 ns;
	signal clk_t : std_logic := '0'; 
	signal addr_t : natural  range 0 to 7 := 0;
	signal data_t	: std_logic_vector(31 downto 0);
	signal we_t	: std_logic := '1';
	signal q_t : std_logic_vector (31 downto 0);
	
	-- NOT FINISHED
	begin end
end tb_arch;