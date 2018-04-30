// THIS FILE IS AUTOGENERATED BY wb_intercon_gen
// ANY MANUAL CHANGES WILL BE LOST
module wb_intercon
   (input         wb_clk_i,
    input         wb_rst_i,
    input  [31:0] wb_picorv32_adr_i,
    input  [31:0] wb_picorv32_dat_i,
    input   [3:0] wb_picorv32_sel_i,
    input         wb_picorv32_we_i,
    input         wb_picorv32_cyc_i,
    input         wb_picorv32_stb_i,
    input   [2:0] wb_picorv32_cti_i,
    input   [1:0] wb_picorv32_bte_i,
    output [31:0] wb_picorv32_dat_o,
    output        wb_picorv32_ack_o,
    output        wb_picorv32_err_o,
    output        wb_picorv32_rty_o,
    output [31:0] wb_rom0_adr_o,
    output [31:0] wb_rom0_dat_o,
    output  [3:0] wb_rom0_sel_o,
    output        wb_rom0_we_o,
    output        wb_rom0_cyc_o,
    output        wb_rom0_stb_o,
    output  [2:0] wb_rom0_cti_o,
    output  [1:0] wb_rom0_bte_o,
    input  [31:0] wb_rom0_dat_i,
    input         wb_rom0_ack_i,
    input         wb_rom0_err_i,
    input         wb_rom0_rty_i,
    output [31:0] wb_sram0_adr_o,
    output [31:0] wb_sram0_dat_o,
    output  [3:0] wb_sram0_sel_o,
    output        wb_sram0_we_o,
    output        wb_sram0_cyc_o,
    output        wb_sram0_stb_o,
    output  [2:0] wb_sram0_cti_o,
    output  [1:0] wb_sram0_bte_o,
    input  [31:0] wb_sram0_dat_i,
    input         wb_sram0_ack_i,
    input         wb_sram0_err_i,
    input         wb_sram0_rty_i,
    output [31:0] wb_uart0_adr_o,
    output [31:0] wb_uart0_dat_o,
    output  [3:0] wb_uart0_sel_o,
    output        wb_uart0_we_o,
    output        wb_uart0_cyc_o,
    output        wb_uart0_stb_o,
    output  [2:0] wb_uart0_cti_o,
    output  [1:0] wb_uart0_bte_o,
    input  [31:0] wb_uart0_dat_i,
    input         wb_uart0_ack_i,
    input         wb_uart0_err_i,
    input         wb_uart0_rty_i,
    output [31:0] wb_gpio0_adr_o,
    output [31:0] wb_gpio0_dat_o,
    output  [3:0] wb_gpio0_sel_o,
    output        wb_gpio0_we_o,
    output        wb_gpio0_cyc_o,
    output        wb_gpio0_stb_o,
    output  [2:0] wb_gpio0_cti_o,
    output  [1:0] wb_gpio0_bte_o,
    input  [31:0] wb_gpio0_dat_i,
    input         wb_gpio0_ack_i,
    input         wb_gpio0_err_i,
    input         wb_gpio0_rty_i,
    output [31:0] wb_gpio1_adr_o,
    output [31:0] wb_gpio1_dat_o,
    output  [3:0] wb_gpio1_sel_o,
    output        wb_gpio1_we_o,
    output        wb_gpio1_cyc_o,
    output        wb_gpio1_stb_o,
    output  [2:0] wb_gpio1_cti_o,
    output  [1:0] wb_gpio1_bte_o,
    input  [31:0] wb_gpio1_dat_i,
    input         wb_gpio1_ack_i,
    input         wb_gpio1_err_i,
    input         wb_gpio1_rty_i);

wb_mux
  #(.num_slaves (5),
    .MATCH_ADDR ({32'h00000000, 32'h40000000, 32'h90000000, 32'h91000000, 32'h91000100}),
    .MATCH_MASK ({32'hffff0000, 32'hffff0000, 32'hffffffe0, 32'hfffffff8, 32'hfffffff8}))
 wb_mux_picorv32
   (.wb_clk_i  (wb_clk_i),
    .wb_rst_i  (wb_rst_i),
    .wbm_adr_i (wb_picorv32_adr_i),
    .wbm_dat_i (wb_picorv32_dat_i),
    .wbm_sel_i (wb_picorv32_sel_i),
    .wbm_we_i  (wb_picorv32_we_i),
    .wbm_cyc_i (wb_picorv32_cyc_i),
    .wbm_stb_i (wb_picorv32_stb_i),
    .wbm_cti_i (wb_picorv32_cti_i),
    .wbm_bte_i (wb_picorv32_bte_i),
    .wbm_dat_o (wb_picorv32_dat_o),
    .wbm_ack_o (wb_picorv32_ack_o),
    .wbm_err_o (wb_picorv32_err_o),
    .wbm_rty_o (wb_picorv32_rty_o),
    .wbs_adr_o ({wb_rom0_adr_o, wb_sram0_adr_o, wb_uart0_adr_o, wb_gpio0_adr_o, wb_gpio1_adr_o}),
    .wbs_dat_o ({wb_rom0_dat_o, wb_sram0_dat_o, wb_uart0_dat_o, wb_gpio0_dat_o, wb_gpio1_dat_o}),
    .wbs_sel_o ({wb_rom0_sel_o, wb_sram0_sel_o, wb_uart0_sel_o, wb_gpio0_sel_o, wb_gpio1_sel_o}),
    .wbs_we_o  ({wb_rom0_we_o, wb_sram0_we_o, wb_uart0_we_o, wb_gpio0_we_o, wb_gpio1_we_o}),
    .wbs_cyc_o ({wb_rom0_cyc_o, wb_sram0_cyc_o, wb_uart0_cyc_o, wb_gpio0_cyc_o, wb_gpio1_cyc_o}),
    .wbs_stb_o ({wb_rom0_stb_o, wb_sram0_stb_o, wb_uart0_stb_o, wb_gpio0_stb_o, wb_gpio1_stb_o}),
    .wbs_cti_o ({wb_rom0_cti_o, wb_sram0_cti_o, wb_uart0_cti_o, wb_gpio0_cti_o, wb_gpio1_cti_o}),
    .wbs_bte_o ({wb_rom0_bte_o, wb_sram0_bte_o, wb_uart0_bte_o, wb_gpio0_bte_o, wb_gpio1_bte_o}),
    .wbs_dat_i ({wb_rom0_dat_i, wb_sram0_dat_i, wb_uart0_dat_i, wb_gpio0_dat_i, wb_gpio1_dat_i}),
    .wbs_ack_i ({wb_rom0_ack_i, wb_sram0_ack_i, wb_uart0_ack_i, wb_gpio0_ack_i, wb_gpio1_ack_i}),
    .wbs_err_i ({wb_rom0_err_i, wb_sram0_err_i, wb_uart0_err_i, wb_gpio0_err_i, wb_gpio1_err_i}),
    .wbs_rty_i ({wb_rom0_rty_i, wb_sram0_rty_i, wb_uart0_rty_i, wb_gpio0_rty_i, wb_gpio1_rty_i}));

endmodule
