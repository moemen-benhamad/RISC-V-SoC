library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SM is
    generic
    (
        DATA_WIDTH : natural := 32
    );
    port
    (
        data : in std_logic_vector((DATA_WIDTH - 1) downto 0);
		  q : in std_logic_vector((DATA_WIDTH - 1) downto 0);
        res : in std_logic_vector(1 downto 0);
		  funct3 : in std_logic_vector(2 downto 0);
		  dataOut : out std_logic_vector((DATA_WIDTH - 1) downto 0)
    );
end entity;

architecture arch of SM is

	signal m : std_logic_vector(3 downto 0);
	signal m_h : std_logic_vector(3 downto 0);
	signal m_b : std_logic_vector(3 downto 0);
	signal mux4_4bit_part3_in1 : std_logic_vector(3 downto 0);
	signal mux4_4bit_part3_in2 : std_logic_vector(3 downto 0);
	signal mux3_4bit_part1_out : std_logic_vector(3 downto 0);
	
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
	
	mux2_8bit_m0 : mux2
		generic map (
			DATA_WIDTH => 8
		)
		port map (
			input0 => data(7 downto 0),
			input1 => q(7 downto 0),
			output => dataOut(7 downto 0),
			sel => m(0)
		);
		
	mux2_8bit_m1 : mux2
		generic map (
			DATA_WIDTH => 8
		)
		port map (
			input0 => data(15 downto 8),
			input1 => q(15 downto 8),
			output => dataOut(15 downto 8),
			sel => m(1)
		);
	
	mux2_8bit_m2 : mux2
		generic map (
			DATA_WIDTH => 8
		)
		port map (
			input0 => data(23 downto 16),
			input1 => q(23 downto 16),
			output => dataOut(23 downto 16),
			sel => m(2)
		);
		
	mux2_8bit_m3 : mux2
		generic map (
			DATA_WIDTH => 8
		)
		port map (
			input0 => data(31 downto 24),
			input1 => q(31 downto 24),
			output => dataOut(31 downto 24),
			sel => m(3)
		);
		
	mux2_4bit : mux2
		generic map (
			DATA_WIDTH => 4
		)
		port map (
			input0 => x"C",
			input1 => x"3",
			output => m_h,
			sel => res(1)
		);
		
	mux4_4bit_part1 : mux2
		generic map (
			DATA_WIDTH => 4
		)
		port map (
			input0 => x"E",
			input1 => x"D",
			output => mux4_4bit_part3_in1,
			sel => res(0)
		);
		
	mux4_4bit_part2 : mux2
		generic map (
			DATA_WIDTH => 4
		)
		port map (
			input0 => x"B",
			input1 => x"7",
			output => mux4_4bit_part3_in2,
			sel => res(0)
		);
		
	mux4_4bit_part3 : mux2
		generic map (
			DATA_WIDTH => 4
		)
		port map (
			input0 => mux4_4bit_part3_in1,
			input1 => mux4_4bit_part3_in2,
			output => m_b,
			sel => res(1)
		);
		
	mux3_4bit_part1 : mux2
		generic map (
			DATA_WIDTH => 4
		)
		port map (
			input0 => m_b,
			input1 => m_h,
			output => mux3_4bit_part1_out,
			sel => funct3(0)
		);
		
	mux3_4bit_part2 : mux2
		generic map (
			DATA_WIDTH => 4
		)
		port map (
			input0 => mux3_4bit_part1_out,
			input1 => x"0",
			output => m,
			sel => funct3(1)
		);
		
	
	

end architecture;