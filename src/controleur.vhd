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
		RI_sel : out std_logic;
		we     : out std_logic;
		loadAcc : out std_logic;
		wrMem : out std_logic;
		load   : out std_logic;
      clk    : in std_logic;
		funct3_out : out std_logic_vector(2 downto 0);
		Bsel : out std_logic; -- add to tb
		Bres : in std_logic -- add to tb
	);

end entity;

architecture arch of controleur is

	alias funct7 : std_logic_vector(6 downto 0) is instr(31 downto 25);
	alias funct3 : std_logic_vector(2 downto 0) is instr(14 downto 12);
	alias OpCode : std_logic_vector(6 downto 0) is instr(6 downto 0);
	
	begin
		funct3_out <= funct3;
		
		process(clk, OpCode, funct7(5), funct3, Bres)
			begin
				case OpCode is
					when "0110011" =>
						RI_sel <= '0';
						loadAcc <= '0';
						we <= '1';
						wrMem <= '0';
						Bsel <= '0';
						load <= '0';
						aluOp <= funct7(5) & funct3;	
					when "0010011" =>
						RI_sel <= '1';
						loadAcc <= '0';
						we <= '1';
						wrMem <= '0';
						Bsel <= '0';
						load <= '0';
						aluOp <= funct7(5) & funct3;
					when "0000011" =>
						RI_sel <= '1';
						loadAcc <= '1';
						we <= '1';
						wrMem <= '0';
						Bsel <= '0';
						load <= '0';
						aluOp <= "0000";
					when "0100011" => -- Type S
						RI_sel <= '1';
						loadAcc <= '1';
						we <= '0';
						wrMem <= '1';
						Bsel <= '0';
						load <= '0';
						aluOp <= "0000";
						
					when "1100011" => -- Type B
						RI_sel <= '1';
						loadAcc <= '0';
						we <= '0';
						wrMem <= '0';
						Bsel <= '1';
						load <= Bres;
						aluOp <= "0000";
						
					when others => 
						RI_sel <= '0';
						loadAcc <= '0';
						we <= '0';
						wrMem <= '0';
						Bsel <= '0';
						load <= '0';
						aluOp <= funct7(5) & funct3;
				end case;
		end process;
end architecture;