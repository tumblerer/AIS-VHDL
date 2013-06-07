------------------------------------------------------------------------------
--	Copyright (c) 2012, Imperial College London
--	All rights reserved.
-------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;


-- Module will contain the riffa_interface and an ipcore of the user.
ENTITY top_connector IS
		GENERIC
		(
			C_SIMPBUS_AWIDTH			: integer							:= 32;
			C_BRAM_ADDR_0				: std_logic_vector					:= X"00000000";
			C_BRAM_ADDR_1				: std_logic_vector					:= X"00000000";
			C_BRAM_SIZE					: integer							:= 32768;
			C_USE_DOORBELL_RESET		: boolean							:= true;
			C_NUM_OF_INPUTS_TO_CORE 	: integer 							:= 654;
			C_NUM_OF_OUTPUTS_FROM_CORE  : integer 							:= 2;
			ARGUMENT_ZERO_VAL			: std_logic_vector(31 DOWNTO 0) 	:= (OTHERS => '1'); 
			ARGUMENT_ONE_VAL			: std_logic_vector(31 DOWNTO 0) 	:= (OTHERS => '1')
		);			
		PORT(
			--SYSTEM CLOCK AND SYSTEM RESET--
			SYS_CLK					: IN std_logic;
			SYS_RST					: IN std_logic;

			--INTERRUPTS SIGNALS TO PC--
			INTERRUPT				: OUT std_logic;
			INTERRUPT_ERR			: OUT std_logic;
			INTERRUPT_ACK			: IN std_logic;
			
			--DOORBELL SIGNALS FROM PC--
			DOORBELL				: IN std_logic;
			DOORBELL_ERR			: IN std_logic;
			DOORBELL_LEN			: IN std_logic_vector(C_SIMPBUS_AWIDTH-1 downto 0);
			DOORBELL_ARG			: IN std_logic_vector(31 DOWNTO 0);
			
			--DMA SIGNALS--
			DMA_REQ					: OUT std_logic;
			DMA_REQ_ACK				: IN std_logic;
			DMA_SRC					: OUT std_logic_vector(C_SIMPBUS_AWIDTH-1 DOWNTO 0);
			DMA_DST					: OUT std_logic_vector(C_SIMPBUS_AWIDTH-1 DOWNTO 0);
			DMA_LEN					: OUT std_logic_vector(C_SIMPBUS_AWIDTH-1 DOWNTO 0);
			DMA_SIG					: OUT std_logic;
			DMA_DONE				: IN std_logic;
			DMA_ERR					: IN std_logic;
			
			--PC BUFFER REQUEST SIGNALS--
			BUF_REQ					: OUT std_logic;
			BUF_REQ_ACK				: IN std_logic;
			BUF_REQ_ADDR			: IN std_logic_vector(C_SIMPBUS_AWIDTH-1 DOWNTO 0);
			BUF_REQ_SIZE			: IN std_logic_vector(4 DOWNTO 0);
			BUF_REQ_RDY				: IN std_logic;
			BUF_REQ_ERR				: IN std_logic;
			--FPGA BUFFER REQUEST SIGNALS--
			BUF_REQD				: IN std_logic;
			BUF_REQD_ADDR			: OUT std_logic_vector(C_SIMPBUS_AWIDTH-1 DOWNTO 0);
			BUF_REQD_SIZE			: OUT std_logic_vector(4 DOWNTO 0);
			BUF_REQD_RDY			: OUT std_logic;
			BUF_REQD_ERR			: OUT std_logic;

			--BRAM 0 SIGNALS--
			BRAM_EN_0					: OUT std_logic;
			BRAM_WEN_0				: OUT std_logic_vector(3 DOWNTO 0);
			BRAM_Dout_0				: OUT std_logic_vector(C_SIMPBUS_AWIDTH -1  DOWNTO 0);	  --Not sure if length should be 32 bits or length of simplebus
			BRAM_Din_0				: IN std_logic_vector(C_SIMPBUS_AWIDTH -1  DOWNTO 0);     --Not sure if length should be 32 bits or length of simplebus
			BRAM_Addr_0				: OUT std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);    --Not sure if length should be 32 bits or length of simplebus
			
			--BRAM 1 SIGNALS--
			BRAM_EN_1				: OUT std_logic;
			BRAM_WEN_1				: OUT std_logic_vector(3 DOWNTO 0);
			BRAM_Dout_1				: OUT std_logic_vector(C_SIMPBUS_AWIDTH -1  DOWNTO 0);
			BRAM_Din_1				: IN std_logic_vector(C_SIMPBUS_AWIDTH -1  DOWNTO 0); 
			BRAM_Addr_1				: OUT std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0) 		
		);
END ENTITY top_connector;


ARCHITECTURE synth OF top_connector IS

	COMPONENT riffa_interface IS
		GENERIC
		(
			C_SIMPBUS_AWIDTH 			: integer;
			C_BRAM_ADDR_0				: std_logic_vector(31 DOWNTO 0);
			C_BRAM_ADDR_1				: std_logic_vector(31 DOWNTO 0);
			C_BRAM_SIZE					: integer;
			C_NUM_OF_INPUTS_TO_CORE		: integer;
			C_NUM_OF_OUTPUTS_FROM_CORE	: integer
		);
		PORT(
			--SYSTEM CLOCK AND SYSTEM RESET--
			SYS_CLK					: IN std_logic;
			SYS_RST					: IN std_logic;

			--INTERRUPTS SIGNALS TO PC--
			INTERRUPT				: OUT std_logic;
			INTERRUPT_ERR			: OUT std_logic;
			INTERRUPT_ACK			: IN std_logic;
			
			--DOORBELL SIGNALS FROM PC--
			DOORBELL				: IN std_logic;
			DOORBELL_ERR			: IN std_logic;
			DOORBELL_LEN			: IN std_logic_vector(C_SIMPBUS_AWIDTH-1 downto 0);
			DOORBELL_ARG			: IN std_logic_vector(31 DOWNTO 0);
			
			--DMA SIGNALS--
			DMA_REQ					: OUT std_logic;
			DMA_REQ_ACK				: IN std_logic;
			DMA_SRC					: OUT std_logic_vector(C_SIMPBUS_AWIDTH-1 DOWNTO 0);
			DMA_DST					: OUT std_logic_vector(C_SIMPBUS_AWIDTH-1 DOWNTO 0);
			DMA_LEN					: OUT std_logic_vector(C_SIMPBUS_AWIDTH-1 DOWNTO 0);
			DMA_SIG					: OUT std_logic;
			DMA_DONE				: IN std_logic;
			DMA_ERR					: IN std_logic;
			
			--PC BUFFER REQUEST SIGNALS--
			BUF_REQ					: OUT std_logic;
			BUF_REQ_ACK				: IN std_logic;
			BUF_REQ_ADDR			: IN std_logic_vector(C_SIMPBUS_AWIDTH-1 DOWNTO 0);
			BUF_REQ_SIZE			: IN std_logic_vector(4 DOWNTO 0);
			BUF_REQ_RDY				: IN std_logic;
			BUF_REQ_ERR				: IN std_logic;
			--FPGA BUFFER REQUEST SIGNALS--
			BUF_REQD				: IN std_logic;
			BUF_REQD_ADDR			: OUT std_logic_vector(C_SIMPBUS_AWIDTH-1 DOWNTO 0);
			BUF_REQD_SIZE			: OUT std_logic_vector(4 DOWNTO 0);
			BUF_REQD_RDY			: OUT std_logic;
			BUF_REQD_ERR			: OUT std_logic;

			--BRAM 0 SIGNALS--
			BRAM_EN_0				: OUT std_logic;
			BRAM_WEN_0				: OUT std_logic_vector(3 DOWNTO 0);
			BRAM_Dout_0				: OUT std_logic_vector(C_SIMPBUS_AWIDTH -1  DOWNTO 0);
			BRAM_Din_0				: IN std_logic_vector(C_SIMPBUS_AWIDTH -1  DOWNTO 0);  
			BRAM_Addr_0				: OUT std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0); 
			
			--BRAM 1 SIGNALS--
			BRAM_EN_1				: OUT std_logic;
			BRAM_WEN_1				: OUT std_logic_vector(3 DOWNTO 0);
			BRAM_Dout_1				: OUT std_logic_vector(C_SIMPBUS_AWIDTH -1  DOWNTO 0);
			BRAM_Din_1				: IN std_logic_vector(C_SIMPBUS_AWIDTH -1  DOWNTO 0);  
			BRAM_Addr_1				: OUT std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0); 			
			
			---------------CORE INTERFACE SIGNALS-----------------
			--Inputs from PC to CORE
			CORE_INPUTS				: OUT std_logic_vector(C_NUM_OF_INPUTS_TO_CORE*C_SIMPBUS_AWIDTH-1 DOWNTO 0);
			--Signal to start the core processing
			START_PROCESS			: OUT std_logic;
			--FINISHED SIGNAL FROM CORE
			FINISHED				: IN std_logic;
			--VALID SIGNAL FROM CORE TO SIGNAL VALID OUTPUT THAT NEEDS TO BE STORED INTO BRAM
			VALID					: IN std_logic;
			--BUSY SIGNAL GOING TO CORE
			BUSY					: OUT std_logic;
			--Outputs generated from CORE to Interface
			CORE_OUTPUTS			: IN std_logic_vector(C_NUM_OF_OUTPUTS_FROM_CORE*C_SIMPBUS_AWIDTH - 1 DOWNTO 0)			
		);
	END COMPONENT riffa_interface;
	
	--DOORBELL_RESET component declaration
	COMPONENT doorbell_reset IS
		GENERIC(
			ARGUMENT_ZERO_VAL 	: std_logic_vector(31 DOWNTO 0);
			ARGUMENT_ONE_VAL 	: std_logic_vector(31 DOWNTO 0)
		);
		PORT(
			SYS_CLK			: IN std_logic;
			SYS_RST			: IN std_logic;
			RESET			: OUT std_logic;
			DOORBELL		: IN std_logic;
			DOORBELL_ARG	: IN std_logic_vector(31 DOWNTO 0);
			DOORBELL_ERR	: IN std_logic
		);
	END COMPONENT doorbell_reset;
	
----------------DECLARE YOUR CORE AS A COMPONENT HERE--------------------
	COMPONENT test_core IS
		GENERIC(
			C_SIMPBUS_AWIDTH 	: integer := 32
		);
		PORT(
			SYS_CLK			: IN std_logic;
			SYS_RST 		: IN std_logic;
		
			--INPUT SIGNALS
			INPUT_1 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_2 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_3 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_4 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_5 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_6 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_7 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_8 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_9 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_10 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_11 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_12 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_13 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_14 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_15 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_16 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_17 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_18 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_19 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_20 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_21 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_22 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_23 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_24 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_25 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_26 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_27 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_28 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_29 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_30 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_31 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_32 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_33 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_34 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_35 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_36 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_37 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_38 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_39 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_40 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_41 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_42 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_43 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_44 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_45 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_46 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_47 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_48 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_49 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_50 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_51 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_52 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_53 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_54 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_55 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_56 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_57 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_58 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_59 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_60 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_61 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_62 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_63 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_64 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_65 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_66 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_67 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_68 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_69 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_70 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_71 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_72 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_73 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_74 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_75 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_76 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_77 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_78 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_79 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_80 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_81 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_82 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_83 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_84 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_85 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_86 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_87 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_88 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_89 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_90 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_91 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_92 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_93 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_94 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_95 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_96 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_97 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_98 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_99 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_100 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_101 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_102 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_103 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_104 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_105 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_106 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_107 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_108 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_109 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_110 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_111 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_112 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_113 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_114 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_115 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_116 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_117 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_118 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_119 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_120 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_121 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_122 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_123 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_124 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_125 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_126 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_127 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_128 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_129 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_130 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_131 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_132 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_133 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_134 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_135 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_136 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_137 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_138 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_139 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_140 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_141 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_142 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_143 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_144 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_145 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_146 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_147 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_148 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_149 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_150 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_151 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_152 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_153 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_154 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_155 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_156 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_157 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_158 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_159 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_160 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_161 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_162 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_163 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_164 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_165 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_166 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_167 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_168 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_169 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_170 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_171 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_172 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_173 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_174 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_175 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_176 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_177 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_178 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_179 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_180 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_181 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_182 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_183 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_184 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_185 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_186 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_187 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_188 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_189 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_190 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_191 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_192 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_193 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_194 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_195 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_196 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_197 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_198 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_199 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_200 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_201 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_202 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_203 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_204 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_205 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_206 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_207 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_208 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_209 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_210 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_211 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_212 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_213 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_214 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_215 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_216 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_217 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_218 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_219 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_220 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_221 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_222 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_223 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_224 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_225 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_226 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_227 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_228 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_229 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_230 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_231 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_232 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_233 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_234 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_235 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_236 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_237 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_238 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_239 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_240 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_241 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_242 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_243 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_244 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_245 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_246 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_247 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_248 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_249 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_250 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_251 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_252 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_253 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_254 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_255 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_256 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_257 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_258 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_259 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_260 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_261 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_262 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_263 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_264 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_265 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_266 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_267 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_268 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_269 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_270 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_271 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_272 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_273 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_274 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_275 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_276 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_277 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_278 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_279 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_280 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_281 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_282 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_283 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_284 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_285 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_286 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_287 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_288 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_289 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_290 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_291 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_292 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_293 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_294 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_295 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_296 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_297 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_298 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_299 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_300 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_301 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_302 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_303 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_304 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_305 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_306 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_307 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_308 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_309 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_310 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_311 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_312 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_313 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_314 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_315 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_316 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_317 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_318 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_319 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_320 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_321 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_322 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_323 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_324 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_325 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_326 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_327 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_328 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_329 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_330 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_331 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_332 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_333 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_334 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_335 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_336 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_337 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_338 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_339 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_340 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_341 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_342 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_343 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_344 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_345 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_346 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_347 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_348 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_349 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_350 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_351 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_352 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_353 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_354 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_355 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_356 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_357 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_358 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_359 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_360 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_361 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_362 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_363 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_364 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_365 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_366 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_367 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_368 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_369 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_370 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_371 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_372 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_373 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_374 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_375 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_376 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_377 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_378 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_379 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_380 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_381 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_382 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_383 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_384 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_385 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_386 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_387 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_388 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_389 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_390 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_391 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_392 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_393 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_394 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_395 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_396 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_397 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_398 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_399 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_400 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_401 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_402 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_403 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_404 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_405 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_406 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_407 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_408 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_409 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_410 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_411 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_412 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_413 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_414 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_415 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_416 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_417 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_418 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_419 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_420 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_421 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_422 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_423 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_424 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_425 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_426 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_427 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_428 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_429 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_430 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_431 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_432 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_433 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_434 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_435 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_436 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_437 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_438 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_439 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_440 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_441 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_442 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_443 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_444 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_445 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_446 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_447 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_448 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_449 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_450 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_451 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_452 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_453 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_454 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_455 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_456 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_457 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_458 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_459 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_460 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_461 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_462 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_463 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_464 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_465 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_466 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_467 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_468 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_469 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_470 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_471 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_472 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_473 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_474 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_475 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_476 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_477 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_478 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_479 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_480 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_481 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_482 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_483 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_484 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_485 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_486 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_487 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_488 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_489 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_490 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_491 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_492 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_493 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_494 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_495 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_496 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_497 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_498 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_499 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_500 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_501 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_502 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_503 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_504 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_505 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_506 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_507 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_508 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_509 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_510 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_511 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_512 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_513 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_514 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_515 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_516 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_517 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_518 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_519 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_520 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_521 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_522 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_523 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_524 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_525 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_526 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_527 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_528 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_529 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_530 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_531 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_532 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_533 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_534 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_535 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_536 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_537 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_538 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_539 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_540 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_541 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_542 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_543 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_544 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_545 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_546 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_547 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_548 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_549 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_550 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_551 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_552 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_553 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_554 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_555 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_556 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_557 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_558 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_559 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_560 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_561 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_562 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_563 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_564 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_565 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_566 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_567 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_568 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_569 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_570 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_571 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_572 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_573 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_574 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_575 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_576 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_577 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_578 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_579 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_580 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_581 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_582 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_583 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_584 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_585 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_586 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_587 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_588 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_589 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_590 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_591 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_592 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_593 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_594 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_595 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_596 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_597 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_598 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_599 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_600 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_601 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_602 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_603 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_604 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_605 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_606 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_607 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_608 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_609 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_610 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_611 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_612 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_613 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_614 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_615 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_616 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_617 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_618 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_619 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_620 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_621 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_622 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_623 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_624 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_625 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_626 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_627 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_628 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_629 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_630 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_631 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_632 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_633 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_634 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_635 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_636 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_637 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_638 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_639 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_640 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_641 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_642 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_643 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_644 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_645 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_646 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_647 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_648 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_649 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_650 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_651 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_652 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_653 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			INPUT_654 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);


			OUTPUT			: OUT std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			OUTPUT_2		: OUT std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);


			--VALID SIGNAL FOR VALID OUTPUT
			VALID			: OUT std_logic;
			
			--START SIGNAL TO START PROCESSING
			START			: IN std_logic;
			
			--RUN TIME OF THE CORE
			RUNTIME 		: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0);
			
			--FINISHED SIGNAL
			FINISHED 		: OUT std_logic;
			
			--BUSY TO SIGNAL THE CORE TO PAUSE THE PROCESSING
			BUSY			: IN std_logic;
			
			--OUTPUT_CYCLE: Determines after how many cycles the output will be valid
			OUTPUT_CYCLE 	: IN std_logic_vector(C_SIMPBUS_AWIDTH - 1 DOWNTO 0)
		);	
	END COMPONENT test_core;
---------------COMPONENT DECLARATION END----------------------------------

	
	SIGNAL CORE_INPUTS : std_logic_vector(C_NUM_OF_INPUTS_TO_CORE*C_SIMPBUS_AWIDTH-1 DOWNTO 0); --Inputs to the core organised in a contigous std_logic_vector
	
	TYPE buffer_type IS ARRAY (natural RANGE <>) OF std_logic_vector(C_SIMPBUS_AWIDTH-1 DOWNTO 0); --Buffer type (array of std_logic_vectors) array size = C_NUM_OF_INPUTS_TO_CORE

	SIGNAL input_buffer 	: buffer_type(0 TO C_NUM_OF_INPUTS_TO_CORE-1);
	SIGNAL output_buffer 	: buffer_type(0 TO C_NUM_OF_OUTPUTS_FROM_CORE - 1);
	
	--Valid signal from core to signal that the output is ready to be stored in the RAM
	SIGNAL VALID : std_logic := '0';
	
	--FINISHED signal: flagged high when processing has finished
	SIGNAL FINISHED : std_logic := '0';
	
	--BUSY SIGNAL FROM INTERFACE TO CORE
	SIGNAL BUSY	: std_logic := '0';
	
	--START signal from interface to core to start processing
	SIGNAL START : std_logic := '0';
	
	SIGNAL CORE_OUTPUTS		: std_logic_vector(C_NUM_OF_OUTPUTS_FROM_CORE*C_SIMPBUS_AWIDTH - 1 DOWNTO 0) := (OTHERS => '0');
	
	--DOORBELL RESET SIGNALS--
	SIGNAL RESET : std_logic := '0';

BEGIN

	--riffa_interface instantiation. The riffa_interface handles the data transfer
	--between the PC and FPGA and vice versa.
	RIFFA_INTERFACE_I : COMPONENT riffa_interface
	GENERIC MAP
	(
		C_SIMPBUS_AWIDTH			=> C_SIMPBUS_AWIDTH,
		C_BRAM_ADDR_0				=> C_BRAM_ADDR_0,
		C_BRAM_ADDR_1				=> C_BRAM_ADDR_1,
		C_BRAM_SIZE					=> C_BRAM_SIZE,
		C_NUM_OF_INPUTS_TO_CORE 	=> C_NUM_OF_INPUTS_TO_CORE,
		C_NUM_OF_OUTPUTS_FROM_CORE 	=> C_NUM_OF_OUTPUTS_FROM_CORE
	)
	PORT MAP
	(
		SYS_CLK					=> SYS_CLK,
		SYS_RST					=> RESET,
		INTERRUPT				=> INTERRUPT,
		INTERRUPT_ERR			=> INTERRUPT_ERR,
		INTERRUPT_ACK			=> INTERRUPT_ACK,
		DOORBELL				=> DOORBELL,
		DOORBELL_ERR			=> DOORBELL_ERR,
		DOORBELL_LEN			=> DOORBELL_LEN,
		DOORBELL_ARG			=> DOORBELL_ARG,
		DMA_REQ					=> DMA_REQ,
		DMA_REQ_ACK				=> DMA_REQ_ACK,
		DMA_SRC					=> DMA_SRC,
		DMA_DST					=> DMA_DST,
		DMA_LEN					=> DMA_LEN,
		DMA_SIG					=> DMA_SIG,
		DMA_DONE				=> DMA_DONE,
		DMA_ERR					=> DMA_ERR,
		BUF_REQ					=> BUF_REQ,
		BUF_REQ_ACK				=> BUF_REQ_ACK,
		BUF_REQ_ADDR			=> BUF_REQ_ADDR,
		BUF_REQ_SIZE			=> BUF_REQ_SIZE,
		BUF_REQ_RDY				=> BUF_REQ_RDY,
		BUF_REQ_ERR				=> BUF_REQ_ERR,
		BUF_REQD				=> BUF_REQD,
		BUF_REQD_ADDR			=> BUF_REQD_ADDR,
		BUF_REQD_SIZE			=> BUF_REQD_SIZE,
		BUF_REQD_RDY			=> BUF_REQD_RDY,
		BUF_REQD_ERR			=> BUF_REQD_ERR,
		BRAM_EN_0				=> BRAM_EN_0,
		BRAM_WEN_0				=> BRAM_WEN_0,
		BRAM_Dout_0				=> BRAM_Dout_0,
		BRAM_Din_0				=> BRAM_Din_0,
		BRAM_Addr_0				=> BRAM_Addr_0,
		BRAM_EN_1				=> BRAM_EN_1,
		BRAM_WEN_1				=> BRAM_WEN_1,
		BRAM_Dout_1				=> BRAM_Dout_1,
		BRAM_Din_1				=> BRAM_Din_1,
		BRAM_Addr_1				=> BRAM_Addr_1,
		CORE_INPUTS				=> CORE_INPUTS,
		START_PROCESS			=> START,
		FINISHED				=> FINISHED,
		VALID					=> VALID,
		BUSY					=> BUSY,
		CORE_OUTPUTS			=> CORE_OUTPUTS
		
	);

	--Assign the input buffers from the outputs of riffa_interface
	Input_Buff_Assign : FOR i IN input_buffer'RANGE GENERATE
		input_buffer(i) <= CORE_INPUTS(((i+1)*C_SIMPBUS_AWIDTH-1) DOWNTO (((i+1)*C_SIMPBUS_AWIDTH-1)-C_SIMPBUS_AWIDTH + 1));
	END GENERATE;
	
	--Assign output_buffer from core to riffa_interface
	Output_Buff_Assignment : FOR i IN output_buffer'RANGE GENERATE
		CORE_OUTPUTS(((i+1)*C_SIMPBUS_AWIDTH-1) DOWNTO (((i+1)*C_SIMPBUS_AWIDTH-1)-C_SIMPBUS_AWIDTH + 1)) <= output_buffer(i);
	END GENERATE;	
	
	--Instantiation of DOORBELL_RESET if user wants to use doorbell_reset in design
	RST_ASSIGN : BLOCK
	BEGIN
		DR_INSTANTIATION : IF (C_USE_DOORBELL_RESET = true) GENERATE
			DR : COMPONENT doorbell_reset
				GENERIC MAP(
					ARGUMENT_ZERO_VAL 	=>	ARGUMENT_ZERO_VAL, 				
					ARGUMENT_ONE_VAL 	=>	ARGUMENT_ONE_VAL 				
				)
				PORT MAP(
					SYS_CLK			=> SYS_CLK,			
					SYS_RST			=> SYS_RST,			
					RESET			=> RESET,			
					DOORBELL		=> DOORBELL,		
					DOORBELL_ARG	=> DOORBELL_ARG,	
					DOORBELL_ERR	=> DOORBELL_ERR				
				);
		END GENERATE;
		
		DEFAULT_RST_ASSIGN : IF (C_USE_DOORBELL_RESET = false) GENERATE
			RESET <= SYS_RST;
		END GENERATE;
	END BLOCK RST_ASSIGN;
	
----------INSTANTIATE AND CONNECT YOUR CORE HERE. DECLARE IT AS A COMPONENT----------
	TEST_CORE_1 : COMPONENT test_core
		GENERIC MAP(
			C_SIMPBUS_AWIDTH 	=> C_SIMPBUS_AWIDTH
		)
		PORT MAP(
			SYS_CLK				=> SYS_CLK,
			SYS_RST 			=> RESET,

			INPUT_1 			=> input_buffer(0),
			INPUT_2 			=> input_buffer(1),
			INPUT_3 			=> input_buffer(2),
			INPUT_4 			=> input_buffer(3),
			INPUT_5 			=> input_buffer(4),
			INPUT_6 			=> input_buffer(5),
			INPUT_7 			=> input_buffer(6),
			INPUT_8 			=> input_buffer(7),
			INPUT_9 			=> input_buffer(8),
			INPUT_10 			=> input_buffer(9),
			INPUT_11 			=> input_buffer(10),
			INPUT_12 			=> input_buffer(11),
			INPUT_13 			=> input_buffer(12),
			INPUT_14 			=> input_buffer(13),
			INPUT_15 			=> input_buffer(14),
			INPUT_16 			=> input_buffer(15),
			INPUT_17 			=> input_buffer(16),
			INPUT_18 			=> input_buffer(17),
			INPUT_19 			=> input_buffer(18),
			INPUT_20 			=> input_buffer(19),
			INPUT_21 			=> input_buffer(20),
			INPUT_22 			=> input_buffer(21),
			INPUT_23 			=> input_buffer(22),
			INPUT_24 			=> input_buffer(23),
			INPUT_25 			=> input_buffer(24),
			INPUT_26 			=> input_buffer(25),
			INPUT_27 			=> input_buffer(26),
			INPUT_28 			=> input_buffer(27),
			INPUT_29 			=> input_buffer(28),
			INPUT_30 			=> input_buffer(29),
			INPUT_31 			=> input_buffer(30),
			INPUT_32 			=> input_buffer(31),
			INPUT_33 			=> input_buffer(32),
			INPUT_34 			=> input_buffer(33),
			INPUT_35 			=> input_buffer(34),
			INPUT_36 			=> input_buffer(35),
			INPUT_37 			=> input_buffer(36),
			INPUT_38 			=> input_buffer(37),
			INPUT_39 			=> input_buffer(38),
			INPUT_40 			=> input_buffer(39),
			INPUT_41 			=> input_buffer(40),
			INPUT_42 			=> input_buffer(41),
			INPUT_43 			=> input_buffer(42),
			INPUT_44 			=> input_buffer(43),
			INPUT_45 			=> input_buffer(44),
			INPUT_46 			=> input_buffer(45),
			INPUT_47 			=> input_buffer(46),
			INPUT_48 			=> input_buffer(47),
			INPUT_49 			=> input_buffer(48),
			INPUT_50 			=> input_buffer(49),
			INPUT_51 			=> input_buffer(50),
			INPUT_52 			=> input_buffer(51),
			INPUT_53 			=> input_buffer(52),
			INPUT_54 			=> input_buffer(53),
			INPUT_55 			=> input_buffer(54),
			INPUT_56 			=> input_buffer(55),
			INPUT_57 			=> input_buffer(56),
			INPUT_58 			=> input_buffer(57),
			INPUT_59 			=> input_buffer(58),
			INPUT_60 			=> input_buffer(59),
			INPUT_61 			=> input_buffer(60),
			INPUT_62 			=> input_buffer(61),
			INPUT_63 			=> input_buffer(62),
			INPUT_64 			=> input_buffer(63),
			INPUT_65 			=> input_buffer(64),
			INPUT_66 			=> input_buffer(65),
			INPUT_67 			=> input_buffer(66),
			INPUT_68 			=> input_buffer(67),
			INPUT_69 			=> input_buffer(68),
			INPUT_70 			=> input_buffer(69),
			INPUT_71 			=> input_buffer(70),
			INPUT_72 			=> input_buffer(71),
			INPUT_73 			=> input_buffer(72),
			INPUT_74 			=> input_buffer(73),
			INPUT_75 			=> input_buffer(74),
			INPUT_76 			=> input_buffer(75),
			INPUT_77 			=> input_buffer(76),
			INPUT_78 			=> input_buffer(77),
			INPUT_79 			=> input_buffer(78),
			INPUT_80 			=> input_buffer(79),
			INPUT_81 			=> input_buffer(80),
			INPUT_82 			=> input_buffer(81),
			INPUT_83 			=> input_buffer(82),
			INPUT_84 			=> input_buffer(83),
			INPUT_85 			=> input_buffer(84),
			INPUT_86 			=> input_buffer(85),
			INPUT_87 			=> input_buffer(86),
			INPUT_88 			=> input_buffer(87),
			INPUT_89 			=> input_buffer(88),
			INPUT_90 			=> input_buffer(89),
			INPUT_91 			=> input_buffer(90),
			INPUT_92 			=> input_buffer(91),
			INPUT_93 			=> input_buffer(92),
			INPUT_94 			=> input_buffer(93),
			INPUT_95 			=> input_buffer(94),
			INPUT_96 			=> input_buffer(95),
			INPUT_97 			=> input_buffer(96),
			INPUT_98 			=> input_buffer(97),
			INPUT_99 			=> input_buffer(98),
			INPUT_100 			=> input_buffer(99),
			INPUT_101 			=> input_buffer(100),
			INPUT_102 			=> input_buffer(101),
			INPUT_103 			=> input_buffer(102),
			INPUT_104 			=> input_buffer(103),
			INPUT_105 			=> input_buffer(104),
			INPUT_106 			=> input_buffer(105),
			INPUT_107 			=> input_buffer(106),
			INPUT_108 			=> input_buffer(107),
			INPUT_109 			=> input_buffer(108),
			INPUT_110 			=> input_buffer(109),
			INPUT_111 			=> input_buffer(110),
			INPUT_112 			=> input_buffer(111),
			INPUT_113 			=> input_buffer(112),
			INPUT_114 			=> input_buffer(113),
			INPUT_115 			=> input_buffer(114),
			INPUT_116 			=> input_buffer(115),
			INPUT_117 			=> input_buffer(116),
			INPUT_118 			=> input_buffer(117),
			INPUT_119 			=> input_buffer(118),
			INPUT_120 			=> input_buffer(119),
			INPUT_121 			=> input_buffer(120),
			INPUT_122 			=> input_buffer(121),
			INPUT_123 			=> input_buffer(122),
			INPUT_124 			=> input_buffer(123),
			INPUT_125 			=> input_buffer(124),
			INPUT_126 			=> input_buffer(125),
			INPUT_127 			=> input_buffer(126),
			INPUT_128 			=> input_buffer(127),
			INPUT_129 			=> input_buffer(128),
			INPUT_130 			=> input_buffer(129),
			INPUT_131 			=> input_buffer(130),
			INPUT_132 			=> input_buffer(131),
			INPUT_133 			=> input_buffer(132),
			INPUT_134 			=> input_buffer(133),
			INPUT_135 			=> input_buffer(134),
			INPUT_136 			=> input_buffer(135),
			INPUT_137 			=> input_buffer(136),
			INPUT_138 			=> input_buffer(137),
			INPUT_139 			=> input_buffer(138),
			INPUT_140 			=> input_buffer(139),
			INPUT_141 			=> input_buffer(140),
			INPUT_142 			=> input_buffer(141),
			INPUT_143 			=> input_buffer(142),
			INPUT_144 			=> input_buffer(143),
			INPUT_145 			=> input_buffer(144),
			INPUT_146 			=> input_buffer(145),
			INPUT_147 			=> input_buffer(146),
			INPUT_148 			=> input_buffer(147),
			INPUT_149 			=> input_buffer(148),
			INPUT_150 			=> input_buffer(149),
			INPUT_151 			=> input_buffer(150),
			INPUT_152 			=> input_buffer(151),
			INPUT_153 			=> input_buffer(152),
			INPUT_154 			=> input_buffer(153),
			INPUT_155 			=> input_buffer(154),
			INPUT_156 			=> input_buffer(155),
			INPUT_157 			=> input_buffer(156),
			INPUT_158 			=> input_buffer(157),
			INPUT_159 			=> input_buffer(158),
			INPUT_160 			=> input_buffer(159),
			INPUT_161 			=> input_buffer(160),
			INPUT_162 			=> input_buffer(161),
			INPUT_163 			=> input_buffer(162),
			INPUT_164 			=> input_buffer(163),
			INPUT_165 			=> input_buffer(164),
			INPUT_166 			=> input_buffer(165),
			INPUT_167 			=> input_buffer(166),
			INPUT_168 			=> input_buffer(167),
			INPUT_169 			=> input_buffer(168),
			INPUT_170 			=> input_buffer(169),
			INPUT_171 			=> input_buffer(170),
			INPUT_172 			=> input_buffer(171),
			INPUT_173 			=> input_buffer(172),
			INPUT_174 			=> input_buffer(173),
			INPUT_175 			=> input_buffer(174),
			INPUT_176 			=> input_buffer(175),
			INPUT_177 			=> input_buffer(176),
			INPUT_178 			=> input_buffer(177),
			INPUT_179 			=> input_buffer(178),
			INPUT_180 			=> input_buffer(179),
			INPUT_181 			=> input_buffer(180),
			INPUT_182 			=> input_buffer(181),
			INPUT_183 			=> input_buffer(182),
			INPUT_184 			=> input_buffer(183),
			INPUT_185 			=> input_buffer(184),
			INPUT_186 			=> input_buffer(185),
			INPUT_187 			=> input_buffer(186),
			INPUT_188 			=> input_buffer(187),
			INPUT_189 			=> input_buffer(188),
			INPUT_190 			=> input_buffer(189),
			INPUT_191 			=> input_buffer(190),
			INPUT_192 			=> input_buffer(191),
			INPUT_193 			=> input_buffer(192),
			INPUT_194 			=> input_buffer(193),
			INPUT_195 			=> input_buffer(194),
			INPUT_196 			=> input_buffer(195),
			INPUT_197 			=> input_buffer(196),
			INPUT_198 			=> input_buffer(197),
			INPUT_199 			=> input_buffer(198),
			INPUT_200 			=> input_buffer(199),
			INPUT_201 			=> input_buffer(200),
			INPUT_202 			=> input_buffer(201),
			INPUT_203 			=> input_buffer(202),
			INPUT_204 			=> input_buffer(203),
			INPUT_205 			=> input_buffer(204),
			INPUT_206 			=> input_buffer(205),
			INPUT_207 			=> input_buffer(206),
			INPUT_208 			=> input_buffer(207),
			INPUT_209 			=> input_buffer(208),
			INPUT_210 			=> input_buffer(209),
			INPUT_211 			=> input_buffer(210),
			INPUT_212 			=> input_buffer(211),
			INPUT_213 			=> input_buffer(212),
			INPUT_214 			=> input_buffer(213),
			INPUT_215 			=> input_buffer(214),
			INPUT_216 			=> input_buffer(215),
			INPUT_217 			=> input_buffer(216),
			INPUT_218 			=> input_buffer(217),
			INPUT_219 			=> input_buffer(218),
			INPUT_220 			=> input_buffer(219),
			INPUT_221 			=> input_buffer(220),
			INPUT_222 			=> input_buffer(221),
			INPUT_223 			=> input_buffer(222),
			INPUT_224 			=> input_buffer(223),
			INPUT_225 			=> input_buffer(224),
			INPUT_226 			=> input_buffer(225),
			INPUT_227 			=> input_buffer(226),
			INPUT_228 			=> input_buffer(227),
			INPUT_229 			=> input_buffer(228),
			INPUT_230 			=> input_buffer(229),
			INPUT_231 			=> input_buffer(230),
			INPUT_232 			=> input_buffer(231),
			INPUT_233 			=> input_buffer(232),
			INPUT_234 			=> input_buffer(233),
			INPUT_235 			=> input_buffer(234),
			INPUT_236 			=> input_buffer(235),
			INPUT_237 			=> input_buffer(236),
			INPUT_238 			=> input_buffer(237),
			INPUT_239 			=> input_buffer(238),
			INPUT_240 			=> input_buffer(239),
			INPUT_241 			=> input_buffer(240),
			INPUT_242 			=> input_buffer(241),
			INPUT_243 			=> input_buffer(242),
			INPUT_244 			=> input_buffer(243),
			INPUT_245 			=> input_buffer(244),
			INPUT_246 			=> input_buffer(245),
			INPUT_247 			=> input_buffer(246),
			INPUT_248 			=> input_buffer(247),
			INPUT_249 			=> input_buffer(248),
			INPUT_250 			=> input_buffer(249),
			INPUT_251 			=> input_buffer(250),
			INPUT_252 			=> input_buffer(251),
			INPUT_253 			=> input_buffer(252),
			INPUT_254 			=> input_buffer(253),
			INPUT_255 			=> input_buffer(254),
			INPUT_256 			=> input_buffer(255),
			INPUT_257 			=> input_buffer(256),
			INPUT_258 			=> input_buffer(257),
			INPUT_259 			=> input_buffer(258),
			INPUT_260 			=> input_buffer(259),
			INPUT_261 			=> input_buffer(260),
			INPUT_262 			=> input_buffer(261),
			INPUT_263 			=> input_buffer(262),
			INPUT_264 			=> input_buffer(263),
			INPUT_265 			=> input_buffer(264),
			INPUT_266 			=> input_buffer(265),
			INPUT_267 			=> input_buffer(266),
			INPUT_268 			=> input_buffer(267),
			INPUT_269 			=> input_buffer(268),
			INPUT_270 			=> input_buffer(269),
			INPUT_271 			=> input_buffer(270),
			INPUT_272 			=> input_buffer(271),
			INPUT_273 			=> input_buffer(272),
			INPUT_274 			=> input_buffer(273),
			INPUT_275 			=> input_buffer(274),
			INPUT_276 			=> input_buffer(275),
			INPUT_277 			=> input_buffer(276),
			INPUT_278 			=> input_buffer(277),
			INPUT_279 			=> input_buffer(278),
			INPUT_280 			=> input_buffer(279),
			INPUT_281 			=> input_buffer(280),
			INPUT_282 			=> input_buffer(281),
			INPUT_283 			=> input_buffer(282),
			INPUT_284 			=> input_buffer(283),
			INPUT_285 			=> input_buffer(284),
			INPUT_286 			=> input_buffer(285),
			INPUT_287 			=> input_buffer(286),
			INPUT_288 			=> input_buffer(287),
			INPUT_289 			=> input_buffer(288),
			INPUT_290 			=> input_buffer(289),
			INPUT_291 			=> input_buffer(290),
			INPUT_292 			=> input_buffer(291),
			INPUT_293 			=> input_buffer(292),
			INPUT_294 			=> input_buffer(293),
			INPUT_295 			=> input_buffer(294),
			INPUT_296 			=> input_buffer(295),
			INPUT_297 			=> input_buffer(296),
			INPUT_298 			=> input_buffer(297),
			INPUT_299 			=> input_buffer(298),
			INPUT_300 			=> input_buffer(299),
			INPUT_301 			=> input_buffer(300),
			INPUT_302 			=> input_buffer(301),
			INPUT_303 			=> input_buffer(302),
			INPUT_304 			=> input_buffer(303),
			INPUT_305 			=> input_buffer(304),
			INPUT_306 			=> input_buffer(305),
			INPUT_307 			=> input_buffer(306),
			INPUT_308 			=> input_buffer(307),
			INPUT_309 			=> input_buffer(308),
			INPUT_310 			=> input_buffer(309),
			INPUT_311 			=> input_buffer(310),
			INPUT_312 			=> input_buffer(311),
			INPUT_313 			=> input_buffer(312),
			INPUT_314 			=> input_buffer(313),
			INPUT_315 			=> input_buffer(314),
			INPUT_316 			=> input_buffer(315),
			INPUT_317 			=> input_buffer(316),
			INPUT_318 			=> input_buffer(317),
			INPUT_319 			=> input_buffer(318),
			INPUT_320 			=> input_buffer(319),
			INPUT_321 			=> input_buffer(320),
			INPUT_322 			=> input_buffer(321),
			INPUT_323 			=> input_buffer(322),
			INPUT_324 			=> input_buffer(323),
			INPUT_325 			=> input_buffer(324),
			INPUT_326 			=> input_buffer(325),
			INPUT_327 			=> input_buffer(326),
			INPUT_328 			=> input_buffer(327),
			INPUT_329 			=> input_buffer(328),
			INPUT_330 			=> input_buffer(329),
			INPUT_331 			=> input_buffer(330),
			INPUT_332 			=> input_buffer(331),
			INPUT_333 			=> input_buffer(332),
			INPUT_334 			=> input_buffer(333),
			INPUT_335 			=> input_buffer(334),
			INPUT_336 			=> input_buffer(335),
			INPUT_337 			=> input_buffer(336),
			INPUT_338 			=> input_buffer(337),
			INPUT_339 			=> input_buffer(338),
			INPUT_340 			=> input_buffer(339),
			INPUT_341 			=> input_buffer(340),
			INPUT_342 			=> input_buffer(341),
			INPUT_343 			=> input_buffer(342),
			INPUT_344 			=> input_buffer(343),
			INPUT_345 			=> input_buffer(344),
			INPUT_346 			=> input_buffer(345),
			INPUT_347 			=> input_buffer(346),
			INPUT_348 			=> input_buffer(347),
			INPUT_349 			=> input_buffer(348),
			INPUT_350 			=> input_buffer(349),
			INPUT_351 			=> input_buffer(350),
			INPUT_352 			=> input_buffer(351),
			INPUT_353 			=> input_buffer(352),
			INPUT_354 			=> input_buffer(353),
			INPUT_355 			=> input_buffer(354),
			INPUT_356 			=> input_buffer(355),
			INPUT_357 			=> input_buffer(356),
			INPUT_358 			=> input_buffer(357),
			INPUT_359 			=> input_buffer(358),
			INPUT_360 			=> input_buffer(359),
			INPUT_361 			=> input_buffer(360),
			INPUT_362 			=> input_buffer(361),
			INPUT_363 			=> input_buffer(362),
			INPUT_364 			=> input_buffer(363),
			INPUT_365 			=> input_buffer(364),
			INPUT_366 			=> input_buffer(365),
			INPUT_367 			=> input_buffer(366),
			INPUT_368 			=> input_buffer(367),
			INPUT_369 			=> input_buffer(368),
			INPUT_370 			=> input_buffer(369),
			INPUT_371 			=> input_buffer(370),
			INPUT_372 			=> input_buffer(371),
			INPUT_373 			=> input_buffer(372),
			INPUT_374 			=> input_buffer(373),
			INPUT_375 			=> input_buffer(374),
			INPUT_376 			=> input_buffer(375),
			INPUT_377 			=> input_buffer(376),
			INPUT_378 			=> input_buffer(377),
			INPUT_379 			=> input_buffer(378),
			INPUT_380 			=> input_buffer(379),
			INPUT_381 			=> input_buffer(380),
			INPUT_382 			=> input_buffer(381),
			INPUT_383 			=> input_buffer(382),
			INPUT_384 			=> input_buffer(383),
			INPUT_385 			=> input_buffer(384),
			INPUT_386 			=> input_buffer(385),
			INPUT_387 			=> input_buffer(386),
			INPUT_388 			=> input_buffer(387),
			INPUT_389 			=> input_buffer(388),
			INPUT_390 			=> input_buffer(389),
			INPUT_391 			=> input_buffer(390),
			INPUT_392 			=> input_buffer(391),
			INPUT_393 			=> input_buffer(392),
			INPUT_394 			=> input_buffer(393),
			INPUT_395 			=> input_buffer(394),
			INPUT_396 			=> input_buffer(395),
			INPUT_397 			=> input_buffer(396),
			INPUT_398 			=> input_buffer(397),
			INPUT_399 			=> input_buffer(398),
			INPUT_400 			=> input_buffer(399),
			INPUT_401 			=> input_buffer(400),
			INPUT_402 			=> input_buffer(401),
			INPUT_403 			=> input_buffer(402),
			INPUT_404 			=> input_buffer(403),
			INPUT_405 			=> input_buffer(404),
			INPUT_406 			=> input_buffer(405),
			INPUT_407 			=> input_buffer(406),
			INPUT_408 			=> input_buffer(407),
			INPUT_409 			=> input_buffer(408),
			INPUT_410 			=> input_buffer(409),
			INPUT_411 			=> input_buffer(410),
			INPUT_412 			=> input_buffer(411),
			INPUT_413 			=> input_buffer(412),
			INPUT_414 			=> input_buffer(413),
			INPUT_415 			=> input_buffer(414),
			INPUT_416 			=> input_buffer(415),
			INPUT_417 			=> input_buffer(416),
			INPUT_418 			=> input_buffer(417),
			INPUT_419 			=> input_buffer(418),
			INPUT_420 			=> input_buffer(419),
			INPUT_421 			=> input_buffer(420),
			INPUT_422 			=> input_buffer(421),
			INPUT_423 			=> input_buffer(422),
			INPUT_424 			=> input_buffer(423),
			INPUT_425 			=> input_buffer(424),
			INPUT_426 			=> input_buffer(425),
			INPUT_427 			=> input_buffer(426),
			INPUT_428 			=> input_buffer(427),
			INPUT_429 			=> input_buffer(428),
			INPUT_430 			=> input_buffer(429),
			INPUT_431 			=> input_buffer(430),
			INPUT_432 			=> input_buffer(431),
			INPUT_433 			=> input_buffer(432),
			INPUT_434 			=> input_buffer(433),
			INPUT_435 			=> input_buffer(434),
			INPUT_436 			=> input_buffer(435),
			INPUT_437 			=> input_buffer(436),
			INPUT_438 			=> input_buffer(437),
			INPUT_439 			=> input_buffer(438),
			INPUT_440 			=> input_buffer(439),
			INPUT_441 			=> input_buffer(440),
			INPUT_442 			=> input_buffer(441),
			INPUT_443 			=> input_buffer(442),
			INPUT_444 			=> input_buffer(443),
			INPUT_445 			=> input_buffer(444),
			INPUT_446 			=> input_buffer(445),
			INPUT_447 			=> input_buffer(446),
			INPUT_448 			=> input_buffer(447),
			INPUT_449 			=> input_buffer(448),
			INPUT_450 			=> input_buffer(449),
			INPUT_451 			=> input_buffer(450),
			INPUT_452 			=> input_buffer(451),
			INPUT_453 			=> input_buffer(452),
			INPUT_454 			=> input_buffer(453),
			INPUT_455 			=> input_buffer(454),
			INPUT_456 			=> input_buffer(455),
			INPUT_457 			=> input_buffer(456),
			INPUT_458 			=> input_buffer(457),
			INPUT_459 			=> input_buffer(458),
			INPUT_460 			=> input_buffer(459),
			INPUT_461 			=> input_buffer(460),
			INPUT_462 			=> input_buffer(461),
			INPUT_463 			=> input_buffer(462),
			INPUT_464 			=> input_buffer(463),
			INPUT_465 			=> input_buffer(464),
			INPUT_466 			=> input_buffer(465),
			INPUT_467 			=> input_buffer(466),
			INPUT_468 			=> input_buffer(467),
			INPUT_469 			=> input_buffer(468),
			INPUT_470 			=> input_buffer(469),
			INPUT_471 			=> input_buffer(470),
			INPUT_472 			=> input_buffer(471),
			INPUT_473 			=> input_buffer(472),
			INPUT_474 			=> input_buffer(473),
			INPUT_475 			=> input_buffer(474),
			INPUT_476 			=> input_buffer(475),
			INPUT_477 			=> input_buffer(476),
			INPUT_478 			=> input_buffer(477),
			INPUT_479 			=> input_buffer(478),
			INPUT_480 			=> input_buffer(479),
			INPUT_481 			=> input_buffer(480),
			INPUT_482 			=> input_buffer(481),
			INPUT_483 			=> input_buffer(482),
			INPUT_484 			=> input_buffer(483),
			INPUT_485 			=> input_buffer(484),
			INPUT_486 			=> input_buffer(485),
			INPUT_487 			=> input_buffer(486),
			INPUT_488 			=> input_buffer(487),
			INPUT_489 			=> input_buffer(488),
			INPUT_490 			=> input_buffer(489),
			INPUT_491 			=> input_buffer(490),
			INPUT_492 			=> input_buffer(491),
			INPUT_493 			=> input_buffer(492),
			INPUT_494 			=> input_buffer(493),
			INPUT_495 			=> input_buffer(494),
			INPUT_496 			=> input_buffer(495),
			INPUT_497 			=> input_buffer(496),
			INPUT_498 			=> input_buffer(497),
			INPUT_499 			=> input_buffer(498),
			INPUT_500 			=> input_buffer(499),
			INPUT_501 			=> input_buffer(500),
			INPUT_502 			=> input_buffer(501),
			INPUT_503 			=> input_buffer(502),
			INPUT_504 			=> input_buffer(503),
			INPUT_505 			=> input_buffer(504),
			INPUT_506 			=> input_buffer(505),
			INPUT_507 			=> input_buffer(506),
			INPUT_508 			=> input_buffer(507),
			INPUT_509 			=> input_buffer(508),
			INPUT_510 			=> input_buffer(509),
			INPUT_511 			=> input_buffer(510),
			INPUT_512 			=> input_buffer(511),
			INPUT_513 			=> input_buffer(512),
			INPUT_514 			=> input_buffer(513),
			INPUT_515 			=> input_buffer(514),
			INPUT_516 			=> input_buffer(515),
			INPUT_517 			=> input_buffer(516),
			INPUT_518 			=> input_buffer(517),
			INPUT_519 			=> input_buffer(518),
			INPUT_520 			=> input_buffer(519),
			INPUT_521 			=> input_buffer(520),
			INPUT_522 			=> input_buffer(521),
			INPUT_523 			=> input_buffer(522),
			INPUT_524 			=> input_buffer(523),
			INPUT_525 			=> input_buffer(524),
			INPUT_526 			=> input_buffer(525),
			INPUT_527 			=> input_buffer(526),
			INPUT_528 			=> input_buffer(527),
			INPUT_529 			=> input_buffer(528),
			INPUT_530 			=> input_buffer(529),
			INPUT_531 			=> input_buffer(530),
			INPUT_532 			=> input_buffer(531),
			INPUT_533 			=> input_buffer(532),
			INPUT_534 			=> input_buffer(533),
			INPUT_535 			=> input_buffer(534),
			INPUT_536 			=> input_buffer(535),
			INPUT_537 			=> input_buffer(536),
			INPUT_538 			=> input_buffer(537),
			INPUT_539 			=> input_buffer(538),
			INPUT_540 			=> input_buffer(539),
			INPUT_541 			=> input_buffer(540),
			INPUT_542 			=> input_buffer(541),
			INPUT_543 			=> input_buffer(542),
			INPUT_544 			=> input_buffer(543),
			INPUT_545 			=> input_buffer(544),
			INPUT_546 			=> input_buffer(545),
			INPUT_547 			=> input_buffer(546),
			INPUT_548 			=> input_buffer(547),
			INPUT_549 			=> input_buffer(548),
			INPUT_550 			=> input_buffer(549),
			INPUT_551 			=> input_buffer(550),
			INPUT_552 			=> input_buffer(551),
			INPUT_553 			=> input_buffer(552),
			INPUT_554 			=> input_buffer(553),
			INPUT_555 			=> input_buffer(554),
			INPUT_556 			=> input_buffer(555),
			INPUT_557 			=> input_buffer(556),
			INPUT_558 			=> input_buffer(557),
			INPUT_559 			=> input_buffer(558),
			INPUT_560 			=> input_buffer(559),
			INPUT_561 			=> input_buffer(560),
			INPUT_562 			=> input_buffer(561),
			INPUT_563 			=> input_buffer(562),
			INPUT_564 			=> input_buffer(563),
			INPUT_565 			=> input_buffer(564),
			INPUT_566 			=> input_buffer(565),
			INPUT_567 			=> input_buffer(566),
			INPUT_568 			=> input_buffer(567),
			INPUT_569 			=> input_buffer(568),
			INPUT_570 			=> input_buffer(569),
			INPUT_571 			=> input_buffer(570),
			INPUT_572 			=> input_buffer(571),
			INPUT_573 			=> input_buffer(572),
			INPUT_574 			=> input_buffer(573),
			INPUT_575 			=> input_buffer(574),
			INPUT_576 			=> input_buffer(575),
			INPUT_577 			=> input_buffer(576),
			INPUT_578 			=> input_buffer(577),
			INPUT_579 			=> input_buffer(578),
			INPUT_580 			=> input_buffer(579),
			INPUT_581 			=> input_buffer(580),
			INPUT_582 			=> input_buffer(581),
			INPUT_583 			=> input_buffer(582),
			INPUT_584 			=> input_buffer(583),
			INPUT_585 			=> input_buffer(584),
			INPUT_586 			=> input_buffer(585),
			INPUT_587 			=> input_buffer(586),
			INPUT_588 			=> input_buffer(587),
			INPUT_589 			=> input_buffer(588),
			INPUT_590 			=> input_buffer(589),
			INPUT_591 			=> input_buffer(590),
			INPUT_592 			=> input_buffer(591),
			INPUT_593 			=> input_buffer(592),
			INPUT_594 			=> input_buffer(593),
			INPUT_595 			=> input_buffer(594),
			INPUT_596 			=> input_buffer(595),
			INPUT_597 			=> input_buffer(596),
			INPUT_598 			=> input_buffer(597),
			INPUT_599 			=> input_buffer(598),
			INPUT_600 			=> input_buffer(599),
			INPUT_601 			=> input_buffer(600),
			INPUT_602 			=> input_buffer(601),
			INPUT_603 			=> input_buffer(602),
			INPUT_604 			=> input_buffer(603),
			INPUT_605 			=> input_buffer(604),
			INPUT_606 			=> input_buffer(605),
			INPUT_607 			=> input_buffer(606),
			INPUT_608 			=> input_buffer(607),
			INPUT_609 			=> input_buffer(608),
			INPUT_610 			=> input_buffer(609),
			INPUT_611 			=> input_buffer(610),
			INPUT_612 			=> input_buffer(611),
			INPUT_613 			=> input_buffer(612),
			INPUT_614 			=> input_buffer(613),
			INPUT_615 			=> input_buffer(614),
			INPUT_616 			=> input_buffer(615),
			INPUT_617 			=> input_buffer(616),
			INPUT_618 			=> input_buffer(617),
			INPUT_619 			=> input_buffer(618),
			INPUT_620 			=> input_buffer(619),
			INPUT_621 			=> input_buffer(620),
			INPUT_622 			=> input_buffer(621),
			INPUT_623 			=> input_buffer(622),
			INPUT_624 			=> input_buffer(623),
			INPUT_625 			=> input_buffer(624),
			INPUT_626 			=> input_buffer(625),
			INPUT_627 			=> input_buffer(626),
			INPUT_628 			=> input_buffer(627),
			INPUT_629 			=> input_buffer(628),
			INPUT_630 			=> input_buffer(629),
			INPUT_631 			=> input_buffer(630),
			INPUT_632 			=> input_buffer(631),
			INPUT_633 			=> input_buffer(632),
			INPUT_634 			=> input_buffer(633),
			INPUT_635 			=> input_buffer(634),
			INPUT_636 			=> input_buffer(635),
			INPUT_637 			=> input_buffer(636),
			INPUT_638 			=> input_buffer(637),
			INPUT_639 			=> input_buffer(638),
			INPUT_640 			=> input_buffer(639),
			INPUT_641 			=> input_buffer(640),
			INPUT_642 			=> input_buffer(641),
			INPUT_643 			=> input_buffer(642),
			INPUT_644 			=> input_buffer(643),
			INPUT_645 			=> input_buffer(644),
			INPUT_646 			=> input_buffer(645),
			INPUT_647 			=> input_buffer(646),
			INPUT_648 			=> input_buffer(647),
			INPUT_649 			=> input_buffer(648),
			INPUT_650 			=> input_buffer(649),
			INPUT_651 			=> input_buffer(650),
			INPUT_652 			=> input_buffer(651),
			INPUT_653 			=> input_buffer(652),
			INPUT_654 			=> input_buffer(653),
			
			OUTPUT				=> output_buffer(0),
			OUTPUT_2			=> output_buffer(1),

			VALID				=> VALID,
			START				=> START,
			RUNTIME				=> input_buffer(0),
			FINISHED			=> FINISHED,
			BUSY				=> BUSY,
			OUTPUT_CYCLE		=> input_buffer(1)
		);
		--output_buffer(1) <= output_buffer(0);
		--output_buffer(2) <= output_buffer(0);
		--output_buffer(3) <= output_buffer(0);
		--output_buffer(4) <= output_buffer(0);
END ARCHITECTURE synth;
