library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_module is
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
end entity top_module;

architecture arch of top_module is

	component pc is

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

	end component;
	
	component imem is
		 generic 
		 (
			 DATA_WIDTH  :   natural := 32;
			 ADDR_WIDTH  :   natural := 8;
			 MEM_DEPTH   :   natural := 100;
			 INIT_FILE   :   string := "O:\SLE 3A S9\Systeme sur puce\TP - A\add01.hex"
		 );
		 port 
		 (
			  address     : in    std_logic_vector (8 - 1 downto 0);
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
			RI_sel : out std_logic;
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
	
	component mux2 is
		generic(
			DATA_WIDTH : natural := 32
		);
		
		port(
			input0 : in std_logic_vector((DATA_WIDTH - 1) downto 0);
			input1 : in std_logic_vector((DATA_WIDTH - 1) downto 0);
			output : out std_logic_vector((DATA_WIDTH - 1) downto 0);
			sel : in std_logic
		);
	end component;
	
	component Imm_ext is
		generic
		(
			INSTR_WIDTH : natural := 32
		);
		
		port
		(
			instr	 : in std_logic_vector((INSTR_WIDTH - 1) downto 0);
			immExt : out std_logic_vector((INSTR_WIDTH - 1) downto 0);
			instType : in std_logic_vector(6 downto 0)
		);
	end component;

    -- Signals for interconnecting components
    signal pc_out          : std_logic_vector (PC_ADDR_WIDTH - 1 downto 0) := (others => '0');
    signal instruction     : std_logic_vector(INSTR_WIDTH-1 downto 0) := (others => '0');
    signal alu_result      : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    signal regA_out        : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    signal regB_out        : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    signal alu_op          : std_logic_vector(3 downto 0) := (others => '0');
    signal we_signal       : std_logic := '0';
    signal load_signal     : std_logic := '0';
    signal busW            : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
	 signal RA_t	: natural range 0 to (2**ADDR_WIDTH - 1) := 0; 
	 signal RB_t	: natural range 0 to (2**ADDR_WIDTH - 1) := 0;
	 signal RW_t	: natural range 0 to (2**ADDR_WIDTH - 1) := 0;
	 signal alu_in_opB : std_logic_vector((DATA_WIDTH-1) downto 0);
	 signal ctrl_out_RI_sel : std_logic;
	 signal immExt_out : std_logic_vector((INSTR_WIDTH - 1) downto 0);
    
begin

    pc_inst: pc
        generic map
        (
            ADDR_WIDTH => PC_ADDR_WIDTH
        )
        port map
        (
            din   => alu_result(DATA_WIDTH - 1 downto 0),
            dout  => pc_out,
            reset => reset,
            load  => load_signal,
            clk   => clk
        );


    imem_inst: imem
        generic map
        (
            DATA_WIDTH => INSTR_WIDTH,
            ADDR_WIDTH => IMEM_ADDR_WIDTH
        )
        port map
        (
            address  => pc_out(9 downto 2),
            Data_Out => instruction
        );

    controller_inst: controleur
        generic map
        (
            INSTR_WIDTH => INSTR_WIDTH
        )
        port map
        (
            instr  => instruction,
            aluOp  => alu_op,
				RI_sel => ctrl_out_RI_sel,
            we     => we_signal,
            load   => load_signal,
            clk    => clk
        );

    banc2reg_inst: banc2reg
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
            RA     => RA_t,
            RB     => RB_t,
            RW     => RW_t,
            we     => we_signal
        );

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
            opB    => alu_in_opB,
            res    => alu_result
        );
		  
	mux2_inst : mux2
		generic map
		(
			DATA_WIDTH => DATA_WIDTH
		)
		
		port map
		(
			input0 => regB_out,
			input1  => immExt_out,
			output  => alu_in_opB,
			sel  => ctrl_out_RI_sel
		);
		
	Imm_ext_inst : Imm_ext
		generic map
		(
			INSTR_WIDTH => INSTR_WIDTH
		)
		
		port map
		(
			instr	 => instruction,
			immExt => immExt_out,
			instType => instruction(6 downto 0)
		);

    busW <= alu_result;
	 RA_t <= to_integer(unsigned(instruction(19 downto 15))); -- rs1
    RB_t <= to_integer(unsigned(instruction(24 downto 20))); -- rs2
    RW_t <= to_integer(unsigned(instruction(11 downto 7)));  -- rd

end architecture;
