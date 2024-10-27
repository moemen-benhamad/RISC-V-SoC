library ieee;
use ieee.std_logic_1164.all;

entity banc2reg is

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

end entity;

architecture arch of banc2reg is
	-- Build a 2-D array type for the REG
	subtype word_t is std_logic_vector((DATA_WIDTH-1) downto 0);
	type banc_t is array(2**ADDR_WIDTH-1 downto 0) of word_t;
	
	signal banc : banc_t := (others => (others => '0')); -- init banc
	
	begin
		BusA <= banc(RA);
		BusB <= banc(RB);
		
		process(clk)
			begin
			if rising_edge(clk) then
            if we = '1' and RW /= 0 then
                banc(RW) <= BusW;
            end if;
			end if;
		end process;

end arch;
