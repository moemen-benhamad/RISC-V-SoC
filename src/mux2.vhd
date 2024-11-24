library ieee;
use ieee.std_logic_1164.all;

entity mux2 is
	generic(
		DATA_WIDTH : natural := 32
	);
	
	port(
		input0 : in std_logic_vector((DATA_WIDTH - 1) downto 0);
		input1 : in std_logic_vector((DATA_WIDTH - 1) downto 0);
		output : out std_logic_vector((DATA_WIDTH - 1) downto 0);
		sel : in std_logic
	);
end entity;

architecture arch of mux2 is 
begin

	process(sel, input0, input1)
	begin
		if sel = '0' then
			output <= input0;
		else
			output <= input1;
		end if;	
	end process;
	
end architecture;