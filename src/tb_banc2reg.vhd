library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity tb_banc2reg is 
end entity tb_banc2reg;

architecture tb_arch of tb_banc2reg is

component banc2reg is

	generic
   (
      DATA_WIDTH : natural := 32; -- Taille registres
		ADDR_WIDTH : natural := 5  -- Nb registres
   );

	port
   (
		BusA   : out std_logic_vector((DATA_WIDTH-1) downto 0);
		BusB   : out std_logic_vector((DATA_WIDTH-1) downto 0);
		BusW   : in std_logic_vector((DATA_WIDTH-1) downto 0);
      clk    : in std_logic;
		RA		 : in natural range 0 to (2**ADDR_WIDTH - 1); 
		RB		 : in natural range 0 to (2**ADDR_WIDTH - 1);
		RW		 : in natural range 0 to (2**ADDR_WIDTH - 1);
      we     : in std_logic := '1'        
	);

end component;

	constant clk_demi_periode : time := 5 ns;
	constant DATA_WIDTH : natural := 32;
	constant ADDR_WIDTH : natural := 5;
	signal BusA_t : std_logic_vector((DATA_WIDTH-1) downto 0);
	signal BusB_t : std_logic_vector((DATA_WIDTH-1) downto 0);
	signal BusW_t : std_logic_vector((DATA_WIDTH-1) downto 0);
   signal clk_t  : std_logic := '0';
	signal RA_t	: natural range 0 to (2**ADDR_WIDTH - 1); 
	signal RB_t	: natural range 0 to (2**ADDR_WIDTH - 1);
	signal RW_t	: natural range 0 to (2**ADDR_WIDTH - 1);
   signal we_t   : std_logic := '1';        
	
	begin 
			
		banc_1 : banc2reg
			
		generic map
			(
				DATA_WIDTH => DATA_WIDTH,
				ADDR_WIDTH => ADDR_WIDTH
			)
			
		port map
			(
				BusA  => BusA_t,
				BusB => BusB_t,
				BusW => BusW_t,
				clk => clk_t,
				RA => RA_t,
				RB => RB_t,
				RW => RW_t,
				we   => we_t
			);
			
	clk_t <= not clk_t after clk_demi_periode;

	process
	begin
		for i in 0 to 2**ADDR_WIDTH - 1 loop
			RW_t <= i;
			BusW_t <= std_logic_vector(to_unsigned((DATA_WIDTH - 1) - i, DATA_WIDTH));
			we_t <= '1';
			wait for 10 ns;
		 end loop;
		 
		 for i in 0 to 31 loop
			RA_t <= i;
			RB_t <= (2**ADDR_WIDTH - 1) - i; -- ASK ABOUT 31 -1 
			we_t <= '0';
			wait for 10 ns;
		 end loop;
		 
		 wait;
	end process;	
		
end tb_arch;
	