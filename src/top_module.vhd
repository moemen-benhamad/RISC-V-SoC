library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_module is
    generic
    (
        DATA_WIDTH : natural := 32;
        ADDR_WIDTH : natural := 5;
        INSTR_WIDTH : natural := 32
    );
    port
    (
        clk      : in std_logic;
        reset    : in std_logic
    );
end entity top_module;

architecture arch of top_module is

	component pc is

		generic
		(
			ADDR_WIDTH : natural := 5
		);

		port
		(
			din	: in std_logic_vector (ADDR_WIDTH - 1 downto 0);
			dout  : out std_logic_vector (ADDR_WIDTH - 1 downto 0);
			reset : in std_logic;
			load  : in std_logic;
			clk   : in std_logic
					
		);

	end component;
	
	component imem is
		 generic 
		 (
			 DATA_WIDTH  :   natural:=32;
			 ADDR_WIDTH  :   natural:=8;
			 MEM_DEPTH   :   natural:=100;
			 INIT_FILE   :   string := "INIT_FILE.txt"
		 );
		 port 
		 (
			  address     : in    std_logic_vector (ADDR_WIDTH - 1 downto 0);
			  Data_Out    : out   std_logic_vector (DATA_WIDTH - 1 downto 0)
		 );
	end component imem;
	
	component banc2reg is

		generic
		(
			DATA_WIDTH : natural := 32; -- Taille registres
			ADDR_WIDTH : natural := 5  -- Nb registres
		);

		port
		(
			BusA   : out std_logic_vector((DATA_WIDTH-1) downto 0);
			BusB   : out std_logic_vector((DATA_WIDTH-1) downto 0);
			BusW   : in std_logic_vector((DATA_WIDTH-1) downto 0);
			clk    : in std_logic;
			RA		 : in natural range 0 to (2**ADDR_WIDTH - 1); 
			RB		 : in natural range 0 to (2**ADDR_WIDTH - 1);
			RW		 : in natural range 0 to (2**ADDR_WIDTH - 1);
			we     : in std_logic := '1'        
		);

	end component;
	
	component controleur is

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

	end component;
	
	component alu is

		generic
		(
			DATA_WIDTH : natural := 32;
			ADDR_WIDTH : natural := 5
		);

		port
		(
			aluOp  : in std_logic_vector(3 downto 0);
			opA   : in std_logic_vector((DATA_WIDTH-1) downto 0);
			opB   : in std_logic_vector((DATA_WIDTH-1) downto 0);
			res   : out std_logic_vector((DATA_WIDTH-1) downto 0)    
		);

end component;

    -- Signals for interconnecting components
    signal pc_out          : std_logic_vector (ADDR_WIDTH - 1 downto 0);
    signal instruction     : std_logic_vector(INSTR_WIDTH-1 downto 0);
    signal alu_result      : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal regA_out        : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal regB_out        : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal alu_op          : std_logic_vector(3 downto 0);
    signal we_signal       : std_logic;
    signal load_signal     : std_logic;
    signal busW            : std_logic_vector(DATA_WIDTH-1 downto 0);
    
begin

    -- Instantiate the Program Counter (pc)
    pc_inst: pc
        generic map
        (
            ADDR_WIDTH => ADDR_WIDTH
        )
        port map
        (
            din   => alu_result,     -- PC gets updated with ALU result
            dout  => pc_out,
            reset => reset,
            load  => load_signal,
            clk   => clk
        );

    -- Instantiate the Instruction Memory (imem)
    imem_inst: imem
        generic map
        (
            DATA_WIDTH => INSTR_WIDTH,
            ADDR_WIDTH => ADDR_WIDTH
        )
        port map
        (
            address  => pc_out,
            Data_Out => instruction
        );

    -- Instantiate the Controller (controleur)
    controller_inst: controleur
        generic map
        (
            INSTR_WIDTH => INSTR_WIDTH
        )
        port map
        (
            instr  => instruction,
            aluOp  => alu_op,
            we     => we_signal,
            load   => load_signal,
            clk    => clk
        );

    -- Instantiate the Register File (banc2reg)
    register_file_inst: banc2reg
        generic map
        (
            DATA_WIDTH => DATA_WIDTH,
            ADDR_WIDTH => ADDR_WIDTH
        )
        port map
        (
            BusA   => regA_out,
            BusB   => regB_out,
            BusW   => busW,
            clk    => clk,
            RA     => to_integer(unsigned(instruction(19 downto 15))), -- rs1
            RB     => to_integer(unsigned(instruction(24 downto 20))), -- rs2
            RW     => to_integer(unsigned(instruction(11 downto 7))),  -- rd
            we     => we_signal
        );

    -- Instantiate the ALU (alu)
    alu_inst: alu
        generic map
        (
            DATA_WIDTH => DATA_WIDTH,
            ADDR_WIDTH => ADDR_WIDTH
        )
        port map
        (
            aluOp  => alu_op,
            opA    => regA_out,
            opB    => regB_out,
            res    => alu_result
        );

    -- Connect the ALU result to the register write bus (BusW)
    busW <= alu_result;

end architecture arch;
