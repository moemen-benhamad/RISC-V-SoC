library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_SM is
end entity;

architecture arch of tb_SM is

	component SM is
		 generic
		 (
			  DATA_WIDTH : natural
		 );
		 port
		 (
			  data : in std_logic_vector((DATA_WIDTH - 1) downto 0);
			  q : in std_logic_vector((DATA_WIDTH - 1) downto 0);
			  res : in std_logic_vector(1 downto 0);
			  funct3 : in std_logic_vector(2 downto 0);
			  dataOut : out std_logic_vector((DATA_WIDTH - 1) downto 0)
		 );
	end component;
	
	constant DATA_WIDTH_t : natural := 32;
	signal data_t : std_logic_vector((DATA_WIDTH_t - 1) downto 0);
	signal q_t : std_logic_vector((DATA_WIDTH_t - 1) downto 0);
	signal res_t : std_logic_vector(1 downto 0);
	signal funct3_t : std_logic_vector(2 downto 0);
	signal dataOut_t : std_logic_vector((DATA_WIDTH_t - 1) downto 0);
	
	begin
	
	SM_inst : SM
		generic map
		 (
			  DATA_WIDTH => DATA_WIDTH_t
		 )
		 port map
		 (
			  data => data_t,
			  q => q_t,
			  res => res_t,
			  funct3 => funct3_t,
			  dataOut => dataOut_t
		 );
		 
	data_t <= x"1C39F1BC";
	q_t <= x"55555555";
	
	process
	begin
		res_t <= "00";
		funct3_t <= "000";
		wait for 10ns;
		funct3_t <= "001";
		wait for 10ns;
		funct3_t <= "010";
		wait for 10ns;
		
		res_t <= "01";
		funct3_t <= "000";
		wait for 10ns;
		funct3_t <= "001";
		wait for 10ns;
		funct3_t <= "010";
		wait for 10ns;

		res_t <= "10";
		funct3_t <= "000";
		wait for 10ns;
		funct3_t <= "001";
		wait for 10ns;
		funct3_t <= "010";
		wait for 10ns;
		
		res_t <= "11";
		funct3_t <= "000";
		wait for 10ns;
		funct3_t <= "001";
		wait for 10ns;
		funct3_t <= "010";
		wait for 10ns;
		
		wait;
	end process;

end architecture;	