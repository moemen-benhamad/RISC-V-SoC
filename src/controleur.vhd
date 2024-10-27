library ieee;
use ieee.std_logic_1164.all;

entity controleur is

	generic
   (
		INSTR_WIDTH : natural := 32
   );

	port
   (
		instr	 : in std_logic_vector((INSTR_WIDTH - 1) downto 0);
		aluOp  : out std_logic_vector(3 downto 0);
		we     : out std_logic;
		load   : out std_logic;
      clk    : in std_logic
            
	);

end entity;

architecture arch of controleur is

	alias funct7 : std_logic_vector(6 downto 0) is instr(31 downto 25);
	alias rs2 : std_logic_vector(4 downto 0) is instr(24 downto 20);
	alias rs1 : std_logic_vector(4 downto 0) is instr(19 downto 15);
	alias funct3 : std_logic_vector(2 downto 0) is instr(14 downto 12);
	alias rsd : std_logic_vector(4 downto 0) is instr(11 downto 7);
	alias OpCode : std_logic_vector(6 downto 0) is instr(6 downto 0);
	
	begin
		we <= '1';
		load <= '0';
		aluOp <= funct7(5) & funct3;
end architecture;