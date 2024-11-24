-- Quartus II VHDL Template
-- Single-port RAM with single read/write address and initial contents	

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dmem is -- aka single_port_ram

	generic 
	(
		DATA_WIDTH : natural := 32;
		ADDR_WIDTH : natural := 8
	);

	port 
	(
		clk	: in std_logic;
		addr	: in natural range 0 to 2**ADDR_WIDTH - 1;
		data	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		we		: in std_logic;
		q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end entity;

architecture rtl of dmem is

	-- Build a 2-D array type for the RAM
	subtype word_t is std_logic_vector((DATA_WIDTH-1) downto 0);
	type memory_t is array(2**ADDR_WIDTH-1 downto 0) of word_t;

	function init_ram
		return memory_t is 
		variable tmp : memory_t := (others => (others => '0'));
	begin 
		for addr_pos in 0 to 2**ADDR_WIDTH - 1 loop 
			-- Initialize each address with the address itself
			tmp(addr_pos) := std_logic_vector(to_unsigned(2**ADDR_WIDTH - addr_pos, DATA_WIDTH));
		end loop;
			tmp(0) := x"F3A5C789";
		return tmp;
	end init_ram;

	-- Declare the RAM signal and specify a default value.	Quartus II
	-- will create a memory initialization file (.mif) based on the 
	-- default value.
	signal ram : memory_t := init_ram;

	signal addr_bytes :  natural range 0 to (2**ADDR_WIDTH) - 1;

begin
	
	addr_bytes <= addr / 4;

	process(clk)
	--process(addr, we, data)
	begin
	if(rising_edge(clk)) then
		if(we = '1') then
			ram(addr_bytes) <= data;
		end if;
	end if;
	end process;

	q <= ram(addr_bytes);

end rtl;
