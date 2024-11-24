library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LM is
    generic
    (
        DATA_WIDTH : natural := 32
    );
    port
    (
        data : in std_logic_vector((DATA_WIDTH - 1) downto 0);
        res : in std_logic_vector(1 downto 0);
		  funct3 : in std_logic_vector(2 downto 0);
		  dataOut : out std_logic_vector((DATA_WIDTH - 1) downto 0)
    );
end entity;

architecture arch of LM is

	signal res_h : std_logic_vector((DATA_WIDTH - 1) downto 0);
	signal res_b : std_logic_vector((DATA_WIDTH - 1) downto 0);
	signal mux4_part1_out : std_logic_vector((DATA_WIDTH - 1) downto 0);
	signal mux2_24bit_sel : std_logic;
	signal mux2_16bit_sel : std_logic;
	
	component mux2 is
		generic(
			DATA_WIDTH : natural
		);
		
		port(
			input0 : in std_logic_vector((DATA_WIDTH - 1) downto 0);
			input1 : in std_logic_vector((DATA_WIDTH - 1) downto 0);
			output : out std_logic_vector((DATA_WIDTH - 1) downto 0);
			sel : in std_logic
		);
	end component;
	
	begin
	
	mux2_16bit_1 : mux2
		generic map (
			DATA_WIDTH => 16
		)
		port map (
			input0 => data(15  downto 0),
			input1 => data(31  downto 16),
			output => res_h(15 downto 0),
			sel => res(1)
		);
		
	mux2_16bit_2 : mux2
		generic map (
			DATA_WIDTH => 16
		)
		port map (
			input0 => x"0000",
			input1 => x"FFFF",
			output => res_h(31 downto 16),
			sel => mux2_16bit_sel
		);
	
	mux2_8bit : mux2
		generic map (
			DATA_WIDTH => 8
		)
		port map (
			input0 => res_h(7 downto 0),
			input1 => res_h(15 downto 8),
			output => res_b(7 downto 0),
			sel => res(0)
		);
	
	mux2_24bit : mux2
		generic map (
			DATA_WIDTH => 24
		)
		port map (
			input0 => x"000000",
			input1 => x"FFFFFF",
			output => res_b(31 downto 8),
			sel => mux2_24bit_sel
		);
		
	mux4_part1 : mux2
		generic map (
			DATA_WIDTH => 32
		)
		port map (
			input0 => res_b,
			input1 => res_h,
			output => mux4_part1_out,
			sel => funct3(0)
		);
	
	mux4_part2 : mux2
		generic map (
			DATA_WIDTH => 32
		)
		port map (
			input0 => mux4_part1_out,
			input1 => data,
			output => dataOut,
			sel => funct3(1)
		);
		
	mux2_16bit_sel <= res_h(15) and not(funct3(2));	
	mux2_24bit_sel <= res_b(7) and not(funct3(2));

end architecture;