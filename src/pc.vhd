library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pc is

	generic
   (
		ADDR_WIDTH : natural := 32
   );

	port
   (
		din	: in std_logic_vector (ADDR_WIDTH - 1 downto 0);
		dout  : out std_logic_vector (ADDR_WIDTH - 1 downto 0);
		reset : in std_logic;
		load  : in std_logic;
      clk   : in std_logic
            
	);

end entity;

architecture arch of pc is
	signal pcc : std_logic_vector (ADDR_WIDTH - 1 downto 0) := (others => '0');
	begin
		process (clk)
			begin
				if rising_edge(clk) then
					if reset = '1' then 
						pcc <= (others => '0');
					elsif load = '1' then	
						pcc <= din;
					else 
						pcc <= std_logic_vector(unsigned(pcc) + 4);
					end if;
				end if;
		end process;
		
		dout <= pcc;

end architecture;