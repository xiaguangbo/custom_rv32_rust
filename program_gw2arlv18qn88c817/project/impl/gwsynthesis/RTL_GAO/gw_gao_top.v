module gw_gao(
    \out_byte[7] ,
    \out_byte[6] ,
    \out_byte[5] ,
    \out_byte[4] ,
    \out_byte[3] ,
    \out_byte[2] ,
    \out_byte[1] ,
    \out_byte[0] ,
    out_byte_en,
    \m_read_data[31] ,
    \m_read_data[30] ,
    \m_read_data[29] ,
    \m_read_data[28] ,
    \m_read_data[27] ,
    \m_read_data[26] ,
    \m_read_data[25] ,
    \m_read_data[24] ,
    \m_read_data[23] ,
    \m_read_data[22] ,
    \m_read_data[21] ,
    \m_read_data[20] ,
    \m_read_data[19] ,
    \m_read_data[18] ,
    \m_read_data[17] ,
    \m_read_data[16] ,
    \m_read_data[15] ,
    \m_read_data[14] ,
    \m_read_data[13] ,
    \m_read_data[12] ,
    \m_read_data[11] ,
    \m_read_data[10] ,
    \m_read_data[9] ,
    \m_read_data[8] ,
    \m_read_data[7] ,
    \m_read_data[6] ,
    \m_read_data[5] ,
    \m_read_data[4] ,
    \m_read_data[3] ,
    \m_read_data[2] ,
    \m_read_data[1] ,
    \m_read_data[0] ,
    m_read_en,
    \mem_addr[31] ,
    \mem_addr[30] ,
    \mem_addr[29] ,
    \mem_addr[28] ,
    \mem_addr[27] ,
    \mem_addr[26] ,
    \mem_addr[25] ,
    \mem_addr[24] ,
    \mem_addr[23] ,
    \mem_addr[22] ,
    \mem_addr[21] ,
    \mem_addr[20] ,
    \mem_addr[19] ,
    \mem_addr[18] ,
    \mem_addr[17] ,
    \mem_addr[16] ,
    \mem_addr[15] ,
    \mem_addr[14] ,
    \mem_addr[13] ,
    \mem_addr[12] ,
    \mem_addr[11] ,
    \mem_addr[10] ,
    \mem_addr[9] ,
    \mem_addr[8] ,
    \mem_addr[7] ,
    \mem_addr[6] ,
    \mem_addr[5] ,
    \mem_addr[4] ,
    \mem_addr[3] ,
    \mem_addr[2] ,
    \mem_addr[1] ,
    \mem_addr[0] ,
    \mem_wdata[31] ,
    \mem_wdata[30] ,
    \mem_wdata[29] ,
    \mem_wdata[28] ,
    \mem_wdata[27] ,
    \mem_wdata[26] ,
    \mem_wdata[25] ,
    \mem_wdata[24] ,
    \mem_wdata[23] ,
    \mem_wdata[22] ,
    \mem_wdata[21] ,
    \mem_wdata[20] ,
    \mem_wdata[19] ,
    \mem_wdata[18] ,
    \mem_wdata[17] ,
    \mem_wdata[16] ,
    \mem_wdata[15] ,
    \mem_wdata[14] ,
    \mem_wdata[13] ,
    \mem_wdata[12] ,
    \mem_wdata[11] ,
    \mem_wdata[10] ,
    \mem_wdata[9] ,
    \mem_wdata[8] ,
    \mem_wdata[7] ,
    \mem_wdata[6] ,
    \mem_wdata[5] ,
    \mem_wdata[4] ,
    \mem_wdata[3] ,
    \mem_wdata[2] ,
    \mem_wdata[1] ,
    \mem_wdata[0] ,
    \mem_wstrb[3] ,
    \mem_wstrb[2] ,
    \mem_wstrb[1] ,
    \mem_wstrb[0] ,
    \mem_rdata[31] ,
    \mem_rdata[30] ,
    \mem_rdata[29] ,
    \mem_rdata[28] ,
    \mem_rdata[27] ,
    \mem_rdata[26] ,
    \mem_rdata[25] ,
    \mem_rdata[24] ,
    \mem_rdata[23] ,
    \mem_rdata[22] ,
    \mem_rdata[21] ,
    \mem_rdata[20] ,
    \mem_rdata[19] ,
    \mem_rdata[18] ,
    \mem_rdata[17] ,
    \mem_rdata[16] ,
    \mem_rdata[15] ,
    \mem_rdata[14] ,
    \mem_rdata[13] ,
    \mem_rdata[12] ,
    \mem_rdata[11] ,
    \mem_rdata[10] ,
    \mem_rdata[9] ,
    \mem_rdata[8] ,
    \mem_rdata[7] ,
    \mem_rdata[6] ,
    \mem_rdata[5] ,
    \mem_rdata[4] ,
    \mem_rdata[3] ,
    \mem_rdata[2] ,
    \mem_rdata[1] ,
    \mem_rdata[0] ,
    mem_valid,
    mem_instr,
    mem_ready,
    resetn,
    clk,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input \out_byte[7] ;
input \out_byte[6] ;
input \out_byte[5] ;
input \out_byte[4] ;
input \out_byte[3] ;
input \out_byte[2] ;
input \out_byte[1] ;
input \out_byte[0] ;
input out_byte_en;
input \m_read_data[31] ;
input \m_read_data[30] ;
input \m_read_data[29] ;
input \m_read_data[28] ;
input \m_read_data[27] ;
input \m_read_data[26] ;
input \m_read_data[25] ;
input \m_read_data[24] ;
input \m_read_data[23] ;
input \m_read_data[22] ;
input \m_read_data[21] ;
input \m_read_data[20] ;
input \m_read_data[19] ;
input \m_read_data[18] ;
input \m_read_data[17] ;
input \m_read_data[16] ;
input \m_read_data[15] ;
input \m_read_data[14] ;
input \m_read_data[13] ;
input \m_read_data[12] ;
input \m_read_data[11] ;
input \m_read_data[10] ;
input \m_read_data[9] ;
input \m_read_data[8] ;
input \m_read_data[7] ;
input \m_read_data[6] ;
input \m_read_data[5] ;
input \m_read_data[4] ;
input \m_read_data[3] ;
input \m_read_data[2] ;
input \m_read_data[1] ;
input \m_read_data[0] ;
input m_read_en;
input \mem_addr[31] ;
input \mem_addr[30] ;
input \mem_addr[29] ;
input \mem_addr[28] ;
input \mem_addr[27] ;
input \mem_addr[26] ;
input \mem_addr[25] ;
input \mem_addr[24] ;
input \mem_addr[23] ;
input \mem_addr[22] ;
input \mem_addr[21] ;
input \mem_addr[20] ;
input \mem_addr[19] ;
input \mem_addr[18] ;
input \mem_addr[17] ;
input \mem_addr[16] ;
input \mem_addr[15] ;
input \mem_addr[14] ;
input \mem_addr[13] ;
input \mem_addr[12] ;
input \mem_addr[11] ;
input \mem_addr[10] ;
input \mem_addr[9] ;
input \mem_addr[8] ;
input \mem_addr[7] ;
input \mem_addr[6] ;
input \mem_addr[5] ;
input \mem_addr[4] ;
input \mem_addr[3] ;
input \mem_addr[2] ;
input \mem_addr[1] ;
input \mem_addr[0] ;
input \mem_wdata[31] ;
input \mem_wdata[30] ;
input \mem_wdata[29] ;
input \mem_wdata[28] ;
input \mem_wdata[27] ;
input \mem_wdata[26] ;
input \mem_wdata[25] ;
input \mem_wdata[24] ;
input \mem_wdata[23] ;
input \mem_wdata[22] ;
input \mem_wdata[21] ;
input \mem_wdata[20] ;
input \mem_wdata[19] ;
input \mem_wdata[18] ;
input \mem_wdata[17] ;
input \mem_wdata[16] ;
input \mem_wdata[15] ;
input \mem_wdata[14] ;
input \mem_wdata[13] ;
input \mem_wdata[12] ;
input \mem_wdata[11] ;
input \mem_wdata[10] ;
input \mem_wdata[9] ;
input \mem_wdata[8] ;
input \mem_wdata[7] ;
input \mem_wdata[6] ;
input \mem_wdata[5] ;
input \mem_wdata[4] ;
input \mem_wdata[3] ;
input \mem_wdata[2] ;
input \mem_wdata[1] ;
input \mem_wdata[0] ;
input \mem_wstrb[3] ;
input \mem_wstrb[2] ;
input \mem_wstrb[1] ;
input \mem_wstrb[0] ;
input \mem_rdata[31] ;
input \mem_rdata[30] ;
input \mem_rdata[29] ;
input \mem_rdata[28] ;
input \mem_rdata[27] ;
input \mem_rdata[26] ;
input \mem_rdata[25] ;
input \mem_rdata[24] ;
input \mem_rdata[23] ;
input \mem_rdata[22] ;
input \mem_rdata[21] ;
input \mem_rdata[20] ;
input \mem_rdata[19] ;
input \mem_rdata[18] ;
input \mem_rdata[17] ;
input \mem_rdata[16] ;
input \mem_rdata[15] ;
input \mem_rdata[14] ;
input \mem_rdata[13] ;
input \mem_rdata[12] ;
input \mem_rdata[11] ;
input \mem_rdata[10] ;
input \mem_rdata[9] ;
input \mem_rdata[8] ;
input \mem_rdata[7] ;
input \mem_rdata[6] ;
input \mem_rdata[5] ;
input \mem_rdata[4] ;
input \mem_rdata[3] ;
input \mem_rdata[2] ;
input \mem_rdata[1] ;
input \mem_rdata[0] ;
input mem_valid;
input mem_instr;
input mem_ready;
input resetn;
input clk;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire \out_byte[7] ;
wire \out_byte[6] ;
wire \out_byte[5] ;
wire \out_byte[4] ;
wire \out_byte[3] ;
wire \out_byte[2] ;
wire \out_byte[1] ;
wire \out_byte[0] ;
wire out_byte_en;
wire \m_read_data[31] ;
wire \m_read_data[30] ;
wire \m_read_data[29] ;
wire \m_read_data[28] ;
wire \m_read_data[27] ;
wire \m_read_data[26] ;
wire \m_read_data[25] ;
wire \m_read_data[24] ;
wire \m_read_data[23] ;
wire \m_read_data[22] ;
wire \m_read_data[21] ;
wire \m_read_data[20] ;
wire \m_read_data[19] ;
wire \m_read_data[18] ;
wire \m_read_data[17] ;
wire \m_read_data[16] ;
wire \m_read_data[15] ;
wire \m_read_data[14] ;
wire \m_read_data[13] ;
wire \m_read_data[12] ;
wire \m_read_data[11] ;
wire \m_read_data[10] ;
wire \m_read_data[9] ;
wire \m_read_data[8] ;
wire \m_read_data[7] ;
wire \m_read_data[6] ;
wire \m_read_data[5] ;
wire \m_read_data[4] ;
wire \m_read_data[3] ;
wire \m_read_data[2] ;
wire \m_read_data[1] ;
wire \m_read_data[0] ;
wire m_read_en;
wire \mem_addr[31] ;
wire \mem_addr[30] ;
wire \mem_addr[29] ;
wire \mem_addr[28] ;
wire \mem_addr[27] ;
wire \mem_addr[26] ;
wire \mem_addr[25] ;
wire \mem_addr[24] ;
wire \mem_addr[23] ;
wire \mem_addr[22] ;
wire \mem_addr[21] ;
wire \mem_addr[20] ;
wire \mem_addr[19] ;
wire \mem_addr[18] ;
wire \mem_addr[17] ;
wire \mem_addr[16] ;
wire \mem_addr[15] ;
wire \mem_addr[14] ;
wire \mem_addr[13] ;
wire \mem_addr[12] ;
wire \mem_addr[11] ;
wire \mem_addr[10] ;
wire \mem_addr[9] ;
wire \mem_addr[8] ;
wire \mem_addr[7] ;
wire \mem_addr[6] ;
wire \mem_addr[5] ;
wire \mem_addr[4] ;
wire \mem_addr[3] ;
wire \mem_addr[2] ;
wire \mem_addr[1] ;
wire \mem_addr[0] ;
wire \mem_wdata[31] ;
wire \mem_wdata[30] ;
wire \mem_wdata[29] ;
wire \mem_wdata[28] ;
wire \mem_wdata[27] ;
wire \mem_wdata[26] ;
wire \mem_wdata[25] ;
wire \mem_wdata[24] ;
wire \mem_wdata[23] ;
wire \mem_wdata[22] ;
wire \mem_wdata[21] ;
wire \mem_wdata[20] ;
wire \mem_wdata[19] ;
wire \mem_wdata[18] ;
wire \mem_wdata[17] ;
wire \mem_wdata[16] ;
wire \mem_wdata[15] ;
wire \mem_wdata[14] ;
wire \mem_wdata[13] ;
wire \mem_wdata[12] ;
wire \mem_wdata[11] ;
wire \mem_wdata[10] ;
wire \mem_wdata[9] ;
wire \mem_wdata[8] ;
wire \mem_wdata[7] ;
wire \mem_wdata[6] ;
wire \mem_wdata[5] ;
wire \mem_wdata[4] ;
wire \mem_wdata[3] ;
wire \mem_wdata[2] ;
wire \mem_wdata[1] ;
wire \mem_wdata[0] ;
wire \mem_wstrb[3] ;
wire \mem_wstrb[2] ;
wire \mem_wstrb[1] ;
wire \mem_wstrb[0] ;
wire \mem_rdata[31] ;
wire \mem_rdata[30] ;
wire \mem_rdata[29] ;
wire \mem_rdata[28] ;
wire \mem_rdata[27] ;
wire \mem_rdata[26] ;
wire \mem_rdata[25] ;
wire \mem_rdata[24] ;
wire \mem_rdata[23] ;
wire \mem_rdata[22] ;
wire \mem_rdata[21] ;
wire \mem_rdata[20] ;
wire \mem_rdata[19] ;
wire \mem_rdata[18] ;
wire \mem_rdata[17] ;
wire \mem_rdata[16] ;
wire \mem_rdata[15] ;
wire \mem_rdata[14] ;
wire \mem_rdata[13] ;
wire \mem_rdata[12] ;
wire \mem_rdata[11] ;
wire \mem_rdata[10] ;
wire \mem_rdata[9] ;
wire \mem_rdata[8] ;
wire \mem_rdata[7] ;
wire \mem_rdata[6] ;
wire \mem_rdata[5] ;
wire \mem_rdata[4] ;
wire \mem_rdata[3] ;
wire \mem_rdata[2] ;
wire \mem_rdata[1] ;
wire \mem_rdata[0] ;
wire mem_valid;
wire mem_instr;
wire mem_ready;
wire resetn;
wire clk;
wire tms_pad_i;
wire tck_pad_i;
wire tdi_pad_i;
wire tdo_pad_o;
wire tms_i_c;
wire tck_i_c;
wire tdi_i_c;
wire tdo_o_c;
wire [9:0] control0;
wire gao_jtag_tck;
wire gao_jtag_reset;
wire run_test_idle_er1;
wire run_test_idle_er2;
wire shift_dr_capture_dr;
wire update_dr;
wire pause_dr;
wire enable_er1;
wire enable_er2;
wire gao_jtag_tdi;
wire tdo_er1;

IBUF tms_ibuf (
    .I(tms_pad_i),
    .O(tms_i_c)
);

IBUF tck_ibuf (
    .I(tck_pad_i),
    .O(tck_i_c)
);

IBUF tdi_ibuf (
    .I(tdi_pad_i),
    .O(tdi_i_c)
);

OBUF tdo_obuf (
    .I(tdo_o_c),
    .O(tdo_pad_o)
);

GW_JTAG  u_gw_jtag(
    .tms_pad_i(tms_i_c),
    .tck_pad_i(tck_i_c),
    .tdi_pad_i(tdi_i_c),
    .tdo_pad_o(tdo_o_c),
    .tck_o(gao_jtag_tck),
    .test_logic_reset_o(gao_jtag_reset),
    .run_test_idle_er1_o(run_test_idle_er1),
    .run_test_idle_er2_o(run_test_idle_er2),
    .shift_dr_capture_dr_o(shift_dr_capture_dr),
    .update_dr_o(update_dr),
    .pause_dr_o(pause_dr),
    .enable_er1_o(enable_er1),
    .enable_er2_o(enable_er2),
    .tdi_o(gao_jtag_tdi),
    .tdo_er1_i(tdo_er1),
    .tdo_er2_i(1'b0)
);

gw_con_top  u_icon_top(
    .tck_i(gao_jtag_tck),
    .tdi_i(gao_jtag_tdi),
    .tdo_o(tdo_er1),
    .rst_i(gao_jtag_reset),
    .control0(control0[9:0]),
    .enable_i(enable_er1),
    .shift_dr_capture_dr_i(shift_dr_capture_dr),
    .update_dr_i(update_dr)
);

ao_top_0  u_la0_top(
    .control(control0[9:0]),
    .trig0_i(resetn),
    .data_i({\out_byte[7] ,\out_byte[6] ,\out_byte[5] ,\out_byte[4] ,\out_byte[3] ,\out_byte[2] ,\out_byte[1] ,\out_byte[0] ,out_byte_en,\m_read_data[31] ,\m_read_data[30] ,\m_read_data[29] ,\m_read_data[28] ,\m_read_data[27] ,\m_read_data[26] ,\m_read_data[25] ,\m_read_data[24] ,\m_read_data[23] ,\m_read_data[22] ,\m_read_data[21] ,\m_read_data[20] ,\m_read_data[19] ,\m_read_data[18] ,\m_read_data[17] ,\m_read_data[16] ,\m_read_data[15] ,\m_read_data[14] ,\m_read_data[13] ,\m_read_data[12] ,\m_read_data[11] ,\m_read_data[10] ,\m_read_data[9] ,\m_read_data[8] ,\m_read_data[7] ,\m_read_data[6] ,\m_read_data[5] ,\m_read_data[4] ,\m_read_data[3] ,\m_read_data[2] ,\m_read_data[1] ,\m_read_data[0] ,m_read_en,\mem_addr[31] ,\mem_addr[30] ,\mem_addr[29] ,\mem_addr[28] ,\mem_addr[27] ,\mem_addr[26] ,\mem_addr[25] ,\mem_addr[24] ,\mem_addr[23] ,\mem_addr[22] ,\mem_addr[21] ,\mem_addr[20] ,\mem_addr[19] ,\mem_addr[18] ,\mem_addr[17] ,\mem_addr[16] ,\mem_addr[15] ,\mem_addr[14] ,\mem_addr[13] ,\mem_addr[12] ,\mem_addr[11] ,\mem_addr[10] ,\mem_addr[9] ,\mem_addr[8] ,\mem_addr[7] ,\mem_addr[6] ,\mem_addr[5] ,\mem_addr[4] ,\mem_addr[3] ,\mem_addr[2] ,\mem_addr[1] ,\mem_addr[0] ,\mem_wdata[31] ,\mem_wdata[30] ,\mem_wdata[29] ,\mem_wdata[28] ,\mem_wdata[27] ,\mem_wdata[26] ,\mem_wdata[25] ,\mem_wdata[24] ,\mem_wdata[23] ,\mem_wdata[22] ,\mem_wdata[21] ,\mem_wdata[20] ,\mem_wdata[19] ,\mem_wdata[18] ,\mem_wdata[17] ,\mem_wdata[16] ,\mem_wdata[15] ,\mem_wdata[14] ,\mem_wdata[13] ,\mem_wdata[12] ,\mem_wdata[11] ,\mem_wdata[10] ,\mem_wdata[9] ,\mem_wdata[8] ,\mem_wdata[7] ,\mem_wdata[6] ,\mem_wdata[5] ,\mem_wdata[4] ,\mem_wdata[3] ,\mem_wdata[2] ,\mem_wdata[1] ,\mem_wdata[0] ,\mem_wstrb[3] ,\mem_wstrb[2] ,\mem_wstrb[1] ,\mem_wstrb[0] ,\mem_rdata[31] ,\mem_rdata[30] ,\mem_rdata[29] ,\mem_rdata[28] ,\mem_rdata[27] ,\mem_rdata[26] ,\mem_rdata[25] ,\mem_rdata[24] ,\mem_rdata[23] ,\mem_rdata[22] ,\mem_rdata[21] ,\mem_rdata[20] ,\mem_rdata[19] ,\mem_rdata[18] ,\mem_rdata[17] ,\mem_rdata[16] ,\mem_rdata[15] ,\mem_rdata[14] ,\mem_rdata[13] ,\mem_rdata[12] ,\mem_rdata[11] ,\mem_rdata[10] ,\mem_rdata[9] ,\mem_rdata[8] ,\mem_rdata[7] ,\mem_rdata[6] ,\mem_rdata[5] ,\mem_rdata[4] ,\mem_rdata[3] ,\mem_rdata[2] ,\mem_rdata[1] ,\mem_rdata[0] ,mem_valid,mem_instr,mem_ready}),
    .clk_i(clk)
);

endmodule
