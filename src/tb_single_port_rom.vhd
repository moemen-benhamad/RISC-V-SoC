library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity tb_single_port_rom is 
end entity tb_single_port_rom;

architecture behav of tb_single_port_rom is
	
	component single_port_rom is

		generic 
		(
			DATA_WIDTH : natural := 8;
			ADDR_WIDTH : natural := 8
		);

		port 
		(
			clk	: in std_logic;
			addr	: in natural range 0 to 2**ADDR_WIDTH - 1;
			q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
		);
		
	end component;
	
	 signal addr_t : natural  range 0 to 255 := 0;
	 signal q_t : std_logic_vector (7 downto 0);
	 signal clk_t : std_logic:='0'; 
	 
begin 
		
	rom_1 : single_port_rom
		
	generic map
		(
			DATA_WIDTH => 8,
			ADDR_WIDTH => 8
		)
		
	port map
		(
			clk  => clk_t,
			addr => addr_t,
			q    => q_t
		);
		
clk_t <= not clk_t after 5ns;

-- addr_t <= 0, 1 after 20ns, 2 after 40ns, 3 after 60ns; -- 20 ns par rapport au debut		

process
begin
    for i in 0 to 11 loop
        addr_t <= i;
        wait for 10 ns;
    end loop;
	 wait;
end process;	
		
end behav;