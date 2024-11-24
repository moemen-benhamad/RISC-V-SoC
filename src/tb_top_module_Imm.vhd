library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_top_module_Imm is
end entity;

architecture arch of tb_top_module_Imm is

	component top_module is
		 generic
		 (
			  DATA_WIDTH : natural := 32;
			  ADDR_WIDTH : natural := 5;
			  PC_ADDR_WIDTH : natural := 32;
			  IMEM_ADDR_WIDTH : natural := 8;
			  INSTR_WIDTH : natural := 32
		 );
		 port
		 (
			  clk      : in std_logic;
			  reset    : in std_logic
		 );
	end component;
	
	constant clk_demi_periode : time := 5 ns;
	constant DATA_WIDTH_t : natural := 32;
	constant ADDR_WIDTH_t : natural := 5;
	constant PC_ADDR_WIDTH_t : natural := 32;
	constant IMEM_ADDR_WIDTH_t : natural := 8;
	constant INSTR_WIDTH_t : natural := 32;
	signal clk_t   : std_logic := '0';
	signal reset_t : std_logic := '0';
	
	begin 
		
		top_module_1 : top_module
		
		generic map
		 (
			  DATA_WIDTH => DATA_WIDTH_t,
			  ADDR_WIDTH => ADDR_WIDTH_t,
			  PC_ADDR_WIDTH => PC_ADDR_WIDTH_t,
			  IMEM_ADDR_WIDTH => IMEM_ADDR_WIDTH_t,
			  INSTR_WIDTH => INSTR_WIDTH_t
		 )
		 port map
		 (
			  clk => clk_t,
			  reset => reset_t
		 );
		 
		clk_t <= not clk_t after clk_demi_periode;
				
		--process
			--begin
				--wait for 5*2*clk_demi_periode;
				--reset_t <= '1';
				--wait for 5*2*clk_demi_periode;
				--reset_t <= '0';
				--wait;
		--end process;
end architecture;
		