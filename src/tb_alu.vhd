library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_alu is
end entity;

architecture arch of tb_alu is

	component alu is

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

	end component;

	constant DATA_WIDTH_t : natural := 32;
	constant	ADDR_WIDTH_t : natural := 5;
	signal aluOp_t : std_logic_vector(3 downto 0);
	signal opA_t   : std_logic_vector((DATA_WIDTH_t - 1) downto 0);
	signal opB_t   : std_logic_vector((DATA_WIDTH_t - 1) downto 0);
	signal res_t     : std_logic_vector((DATA_WIDTH_t - 1) downto 0);
	
	begin
	
		alu_1 : alu 
		
		generic map
			(
				DATA_WIDTH => DATA_WIDTH_t,
				ADDR_WIDTH => ADDR_WIDTH_t
			)
			
		port map
			(
				aluOp => aluOp_t,
				opA => opA_t,
				opB => opB_t,
				res => res_t
			);
	
	process
		begin
			for i in 0 to 2**4 loop
					aluOp_t <= std_logic_vector(to_unsigned(i, aluOp_t'length));
				for j in -2 to 0 loop  -- 0 to 9
					opA_t <= std_logic_vector(to_signed(j, opA_t'length));
					opB_t <= std_logic_vector(to_signed(j+5, opA_t'length));
					wait for 10 ns;
				end loop;
				
				for j in 0 to 2 loop  -- 0 to 9
					opA_t <= std_logic_vector(to_unsigned(j+5, opA_t'length));
					opB_t <= std_logic_vector(to_unsigned(j, opA_t'length));
					wait for 10 ns;
				end loop;
			end loop;
		wait;
	end process;
end architecture;