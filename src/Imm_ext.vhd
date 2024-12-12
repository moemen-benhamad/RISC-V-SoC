library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Imm_ext is
	generic
	(
		INSTR_WIDTH : natural := 32
	);
	
	port
	(
		instr	 : in std_logic_vector((INSTR_WIDTH - 1) downto 0);
		immExt : out std_logic_vector((INSTR_WIDTH - 1) downto 0);
		instType : in std_logic_vector(6 downto 0)
	);
end entity;

architecture arch of Imm_Ext is

	begin	
	
		process(instr, instType)
		
		variable extension : std_logic_vector(19 downto 0) := (others => '0');	
		
		begin
			extension := (others => instr(31));
			case instType is
				when "0010011" | "0000011" => immExt <= extension & instr(31 downto 20);
				when "0100011" => immExt <= extension & instr(31 downto 25) & instr(11 downto 7);
				when "1100011" => immExt <= extension & instr(31) & instr(30 downto 25) & instr(11 downto 8) & '0';
				when others => immExt <= (others => '0');
			end case;
			
		end process;
end architecture;