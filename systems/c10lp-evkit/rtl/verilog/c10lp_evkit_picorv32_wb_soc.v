module c10lp_evkit_picorv32_wb_soc(
	input CLK50MHZ,

	output [12:0] DRAM_ADDR,
	output [1:0] DRAM_BA,
	output DRAM_CAS_N,
	output DRAM_RAS_N,
	output DRAM_CLK,
	output DRAM_CKE,
	output DRAM_CS_N,
	output DRAM_WE_N,
	output [1:0] DRAM_DQM,
	inout [15:0] DRAM_DQ,

	input  USER_PB,
	output [1:0] USER_LED,

	input ARDUINO_IO0,
	output ARDUINO_IO1
	);

	wire wb_clk;
	wire wb_rst;

	wire sdram_clk;
	wire sdram_rst;

	altpll_wb_clkgen #(
		.DEVICE_FAMILY ("Cyclone 10 LP"),
		.INPUT_FREQUENCY (48),

		/* wb_clk: 24 MHz */
		.WB_DIVIDE_BY (24),
		.WB_MULTIPLY_BY (12)
	)
	clkgen(
		.sys_clk_pad_i (CLK50MHZ),
		.rst_n_pad_i (USER_PB),

		.wb_clk_o (wb_clk),
		.wb_rst_o (wb_rst),

		.sdram_clk_o (sdram_clk),
		.sdram_rst_o (sdram_rst)
	);

	wire uart0_rx;
	wire uart0_tx;

	assign uart0_rx = ARDUINO_IO0;
	assign ARDUINO_IO1 = uart0_tx;

	wire [15:0] sdram_dq_i;
	wire [15:0] sdram_dq_o;
	wire sdram_dq_oe;

	assign sdram_dq_i = DRAM_DQ;
	assign DRAM_DQ = sdram_dq_oe ? sdram_dq_o : 16'bz;
	assign DRAM_CLK = sdram_clk;

	picorv32_wb_soc #(
		.PROGADDR_RESET (32'h 0000_0000),

		.BOOTROM_MEMFILE ("nmon_picorv32-wb-soc_24MHz_115200.txt"),
		.BOOTROM_MEMDEPTH (1024),

		.SRAM0_MEMDEPTH (16384),

		// MT48LC4M16A2
		.SDRAM_CLK_FREQ_MHZ	(75),	// sdram_clk freq in MHZ
		.SDRAM_POWERUP_DELAY	(200),	// power up delay in us
		.SDRAM_REFRESH_MS	(32),	// time to wait between refreshes in ms
		.SDRAM_BURST_LENGTH	(8),	// 0, 1, 2, 4 or 8 (0 = full page)
		.SDRAM_BUF_WIDTH	(3),	// Buffer size = 2^BUF_WIDTH
		.SDRAM_ROW_WIDTH	(12),	// Row width
		.SDRAM_COL_WIDTH	(8),	// Column width
		.SDRAM_BA_WIDTH		(2),	// Ba width
		.SDRAM_tCAC		(3),	// CAS Latency
		.SDRAM_tRAC		(7),	// RAS Latency
		.SDRAM_tRP		(3),	// Command Period (PRE to ACT)
		.SDRAM_tRC		(8),	// Command Period (REF to REF / ACT to ACT)
		.SDRAM_tMRD		(2)	// Mode Register Set To Command Delay time
	)
	soc(
		.clock (wb_clk),
		.reset (wb_rst),

		.uart_rx (uart0_rx),
		.uart_tx (uart0_tx),

		.sdram_clk (sdram_clk),
		.sdram_rst (sdram_rst),
		.sdram_ba_pad_o (DRAM_BA[1:0]),
		.sdram_a_pad_o (DRAM_ADDR[12:0]),
		.sdram_cs_n_pad_o (DRAM_CS_N),
		.sdram_ras_pad_o (DRAM_RAS_N),
		.sdram_cas_pad_o (DRAM_CAS_N),
		.sdram_we_pad_o (DRAM_WE_N),
		.sdram_dq_o (sdram_dq_o[15:0]),
		.sdram_dq_i (sdram_dq_i[15:0]),
		.sdram_dq_oe (sdram_dq_oe),
		.sdram_dqm_pad_o (DRAM_DQM[1:0]),
		.sdram_cke_pad_o (DRAM_CKE)
	);

	assign USER_LED[0] = wb_clk;
	assign USER_LED[1] = wb_rst;

endmodule
