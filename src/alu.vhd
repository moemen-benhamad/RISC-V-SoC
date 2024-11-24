library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- RETEST!!!!

entity alu is

	generic
   (
		DATA_WIDTH : natural := 32;
		ADDR_WIDTH : natural := 5
   );

	port
   (
		aluOp  : in std_logic_vector(3 downto 0);
		opA   : in std_logic_vector((DATA_WIDTH-1) downto 0);
		opB   : in std_logic_vector((DATA_WIDTH-1) downto 0);
		res   : out std_logic_vector((DATA_WIDTH-1) downto 0)    
	);

end entity;

architecture arch of alu is
	
	begin
	
	process(aluOp, opA, opB)
		begin
			case aluOp is
				when "0000" =>
					res <=  std_logic_vector(unsigned(opA) + unsigned(opB));
				when "1000" =>
					res <= std_logic_vector(unsigned(opA) - unsigned(opB));
				when "0001" =>
					res <= std_logic_vector(shift_left(unsigned(opA), to_integer(unsigned(opB(4 downto 0)))));
				when "0010" =>
					if signed(opA) < signed(opB) then
						res <= (others => '1');
					else
						res <= (others => '0');
					end if;
				when "0011" =>
					if unsigned(opA) < unsigned(opB) then
						res <= (others => '1');
					else
						res <= (others => '0');
					end if;
				when "0100" => 
					res <= opA xor opB;
				when "0101" =>
					res <= std_logic_vector(shift_right(unsigned(opA), to_integer(unsigned(opB(4 downto 0)))));
				when "1101" => -- shift right arithmetic
					res <=  to_stdlogicvector(to_bitvector(std_logic_vector(opA)) sra to_integer(unsigned(opB(4 downto 0))));
				when "0110" => 
					res <= opA or opB;
				when "0111" =>
					res <= opA and opB;
				when others => -- Default
					res <= (others => '0');
      end case;
	end process;
	
end architecture;