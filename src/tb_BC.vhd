library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_BC is
end entity;

architecture arch of tb_BC is

	component BC is
		generic
		(
			DATA_WIDTH : natural := 32
		);
		 port
		(
			BusA   : in std_logic_vector((DATA_WIDTH-1) downto 0);
			BusB   : in std_logic_vector((DATA_WIDTH-1) downto 0);
			Btype  : in std_logic_vector(2 downto 0);
			Bres   : out std_logic	
		);
	end component;

	constant DATA_WIDTH_t : natural := 32;
	signal BusA_t   : std_logic_vector((DATA_WIDTH_t - 1) downto 0);
	signal BusB_t  : std_logic_vector((DATA_WIDTH_t - 1) downto 0);
	signal Btype_t  : std_logic_vector(2 downto 0);
	signal Bres_t   : std_logic;

	begin
	
	BC_inst : BC
		generic map
		 (
			  DATA_WIDTH => DATA_WIDTH_t
		 )
		 port map
		 (
			  BusA => BusA_t,
			  BusB => BusB_t,
			  Btype => Btype_t,
			  Bres => Bres_t
		 );

	process
		begin
		
			BusA_t <= x"00000008";
			BusB_t <= x"00000008";
			Btype_t <= "000";
			wait for 10ns;
			
			BusA_t <= x"FFFFFFF8";
			
			Btype_t <= "001";
			wait for 10ns;
			Btype_t <= "100";
			wait for 10ns;
			Btype_t <= "101";
			wait for 10ns;
			Btype_t <= "110";
			wait for 10ns;
			Btype_t <= "111";
			wait for 10ns;
			
			BusB_t <= x"00000006";
			Btype_t <= "001";
			wait for 10ns;
			Btype_t <= "100";
			wait for 10ns;
			Btype_t <= "101";
			wait for 10ns;
			Btype_t <= "110";
			wait for 10ns;
			Btype_t <= "111";
			wait for 10ns;
			
			BusB_t <= x"0000000A";
			Btype_t <= "001";
			wait for 10ns;
			Btype_t <= "100";
			wait for 10ns;
			Btype_t <= "101";
			wait for 10ns;
			Btype_t <= "110";
			wait for 10ns;
			Btype_t <= "111";
			wait for 10ns;
			
			wait;

	end process;

end architecture;