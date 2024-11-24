library ieee;
use ieee.std_logic_1164.all;

entity registre is

    generic
    (
        DATA_WIDTH : natural := 32
    );

    port
    (
        clk        : in std_logic;
		  data_in    : in std_logic_vector((DATA_WIDTH-1) downto 0);
        we         : in std_logic := '1';        
		  data_out   : out std_logic_vector((DATA_WIDTH-1) downto 0)

		  );

end entity;

 
architecture arch of Registre is
begin
    process(clk)
    begin
        if(rising_edge(clk)) then
    
            if(we = '1') then
                data_out <= data_in;
            end if;
       
        end if;
       
    end process;


	 
end arch;