library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BC is
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
end entity;

architecture arch of BC is
begin

process(Btype, BusA, BusB)
	begin
		case Btype is
			when "000" => 
				if signed(BusA) = signed(BusB) then
					Bres <= '1';
				else 
					Bres <= '0';
				end if;
				
			when "001" =>
				if signed(BusA) /= signed(BusB) then
					Bres <= '1';
				else 
					Bres <= '0';
				end if;
				
			when "100" => 
				if signed(BusA) < signed(BusB) then
					Bres <= '1';
				else 
					Bres <= '0';
				end if;
				
			when "101" =>
				if signed(BusA) >= signed(BusB) then
					Bres <= '1';
				else 
					Bres <= '0';
				end if;
				
			when "110" =>
				if unsigned(BusA) < unsigned(BusB) then
					Bres <= '1';
				else 
					Bres <= '0';
				end if;
				
			when "111" =>
				if unsigned(BusA) >= unsigned(BusB) then
					Bres <= '1';
				else 
					Bres <= '0';
				end if;
				
			when others => Bres <= '0';
				
		end case;
		
end process;

end architecture;