library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_Imm_ext is
end entity;

architecture arch of tb_Imm_ext is

	component Imm_ext
		generic(
			INSTR_WIDTH : natural := 32
		);
		port(
         instr    : in std_logic_vector((INSTR_WIDTH - 1) downto 0);
         immExt   : out std_logic_vector((INSTR_WIDTH - 1) downto 0);
         instType : in std_logic_vector(6 downto 0)
		);
   end component;

	constant INSTR_WIDTH_t : natural := 32;
   signal instr_t    : std_logic_vector(31 downto 0);
   signal immExt_t   : std_logic_vector(31 downto 0);
   signal instType_t : std_logic_vector(6 downto 0);
    
    
   
	begin

		Imm_ext_1: Imm_ext
			generic map(
				INSTR_WIDTH => INSTR_WIDTH_t
         )
			port map(
				instr    => instr_t,
            immExt   => immExt_t,
            instType => instType_t 
         );

    
	process
		begin
			instType_t <= "0010011";
			instr_t <= x"00c08013"; -- addi x0,x1, 12
			wait for 10ns;
			instr_t <= x"00d0e013"; -- ori x0,x1, 12
			wait for 10ns;
			instr_t <= x"00e0f013"; -- andi x0,x1, 14
			wait for 10ns;
			instr_t <= x"00f0a013"; -- slti x0, x1, 15
			wait for 10ns;
			instr_t <= x"0100b013"; -- sltiu x0, x1, 16
			wait for 10ns;
			instr_t <= x"0110c013"; -- xori x0, x1, 17
			wait for 10ns;
			instr_t <= x"01209013"; -- slli x0,x1, 18
			wait for 10ns;
			instr_t <= x"0130d013"; -- srli x0,x1, 19
			wait for 10ns;
			instr_t <= x"4150d013"; -- srai x0,x1,21
			wait for 10ns;
			instr_t <= x"7e808013"; -- addi x0,x1, 2024
			wait for 10ns;
		wait;
	end process;
end arch;