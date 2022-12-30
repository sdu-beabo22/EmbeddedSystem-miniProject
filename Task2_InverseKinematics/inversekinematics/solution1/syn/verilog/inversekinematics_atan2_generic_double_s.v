// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module inversekinematics_atan2_generic_double_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        y_in,
        x_in,
        ap_return
);

parameter    ap_ST_fsm_state1 = 27'd1;
parameter    ap_ST_fsm_pp0_stage0 = 27'd2;
parameter    ap_ST_fsm_state4 = 27'd4;
parameter    ap_ST_fsm_state5 = 27'd8;
parameter    ap_ST_fsm_state6 = 27'd16;
parameter    ap_ST_fsm_state7 = 27'd32;
parameter    ap_ST_fsm_state8 = 27'd64;
parameter    ap_ST_fsm_state9 = 27'd128;
parameter    ap_ST_fsm_state10 = 27'd256;
parameter    ap_ST_fsm_state11 = 27'd512;
parameter    ap_ST_fsm_state12 = 27'd1024;
parameter    ap_ST_fsm_state13 = 27'd2048;
parameter    ap_ST_fsm_state14 = 27'd4096;
parameter    ap_ST_fsm_state15 = 27'd8192;
parameter    ap_ST_fsm_state16 = 27'd16384;
parameter    ap_ST_fsm_state17 = 27'd32768;
parameter    ap_ST_fsm_state18 = 27'd65536;
parameter    ap_ST_fsm_state19 = 27'd131072;
parameter    ap_ST_fsm_state20 = 27'd262144;
parameter    ap_ST_fsm_state21 = 27'd524288;
parameter    ap_ST_fsm_state22 = 27'd1048576;
parameter    ap_ST_fsm_state23 = 27'd2097152;
parameter    ap_ST_fsm_state24 = 27'd4194304;
parameter    ap_ST_fsm_state25 = 27'd8388608;
parameter    ap_ST_fsm_state26 = 27'd16777216;
parameter    ap_ST_fsm_state27 = 27'd33554432;
parameter    ap_ST_fsm_state28 = 27'd67108864;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] y_in;
input  [63:0] x_in;
output  [63:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[63:0] ap_return;

(* fsm_encoding = "none" *) reg   [26:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] cordic_ctab_table_128_V_address0;
reg    cordic_ctab_table_128_V_ce0;
wire   [125:0] cordic_ctab_table_128_V_q0;
reg   [6:0] k_reg_161;
reg   [88:0] p_Val2_21_reg_172;
reg   [88:0] x_V_1_reg_181;
reg   [85:0] z_V_reg_190;
wire   [0:0] icmp_ln832_fu_266_p2;
reg   [0:0] icmp_ln832_reg_851;
wire   [0:0] icmp_ln824_fu_272_p2;
wire   [88:0] zext_ln710_fu_298_p1;
wire   [88:0] r_V_53_fu_362_p3;
wire   [6:0] add_ln167_fu_370_p2;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln167_fu_376_p2;
reg   [0:0] icmp_ln167_reg_874;
wire   [0:0] p_Result_27_fu_387_p3;
reg   [0:0] p_Result_27_reg_878;
wire   [88:0] x_V_2_fu_417_p3;
wire   [88:0] y_V_3_fu_443_p3;
wire   [85:0] z_V_1_fu_495_p3;
reg    ap_enable_reg_pp0_iter1;
wire   [85:0] tmp_V_fu_508_p2;
reg   [85:0] tmp_V_reg_906;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln839_fu_502_p2;
wire   [0:0] p_Result_28_fu_514_p3;
reg   [0:0] p_Result_28_reg_911;
wire    ap_CS_fsm_state5;
wire   [85:0] tmp_V_4_fu_522_p3;
reg   [85:0] tmp_V_4_reg_916;
wire   [31:0] sub_ln848_fu_595_p2;
reg   [31:0] sub_ln848_reg_922;
wire   [0:0] icmp_ln858_fu_693_p2;
reg   [0:0] icmp_ln858_reg_928;
wire   [0:0] select_ln858_fu_713_p3;
reg   [0:0] select_ln858_reg_933;
wire   [10:0] trunc_ln847_fu_721_p1;
reg   [10:0] trunc_ln847_reg_938;
wire   [63:0] bitcast_ln688_fu_837_p1;
wire    ap_CS_fsm_state6;
wire   [63:0] grp_fu_218_p2;
reg   [63:0] div_i_reg_948;
wire    ap_CS_fsm_state27;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_flush_enable;
reg   [63:0] ap_phi_mux_retval_0_phi_fu_206_p8;
reg   [63:0] retval_0_reg_202;
wire    ap_CS_fsm_state28;
wire   [63:0] k_cast_fu_382_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] data_V_fu_224_p1;
wire   [63:0] data_V_1_fu_238_p1;
wire   [10:0] tmp_49_fu_242_p4;
wire   [11:0] zext_ln1300_fu_252_p1;
wire   [10:0] tmp_48_fu_228_p4;
wire   [11:0] ret_fu_256_p2;
wire   [11:0] zext_ln832_fu_262_p1;
wire   [51:0] p_Result_25_fu_284_p1;
wire   [85:0] x_V_fu_288_p4;
wire   [51:0] p_Result_26_fu_302_p1;
wire   [85:0] y_V_fu_306_p4;
wire   [11:0] ret_6_fu_278_p2;
wire   [0:0] isNeg_fu_320_p3;
wire   [11:0] sub_ln1321_fu_328_p2;
wire   [11:0] ush_fu_334_p3;
wire  signed [31:0] sh_prom_i_i_i_cast_cast_cast_fu_342_p1;
wire   [88:0] zext_ln710_1_fu_316_p1;
wire   [88:0] sh_prom_i_i_i_cast_cast_cast_cast_fu_346_p1;
wire   [88:0] r_V_fu_350_p2;
wire   [88:0] r_V_49_fu_356_p2;
wire   [88:0] zext_ln1287_fu_395_p1;
wire   [88:0] r_V_54_fu_399_p2;
wire   [88:0] sub_ln130_fu_405_p2;
wire   [88:0] add_ln130_fu_411_p2;
wire   [88:0] r_V_55_fu_425_p2;
wire   [88:0] add_ln130_1_fu_437_p2;
wire   [88:0] sub_ln130_1_fu_431_p2;
wire   [0:0] tmp_43_fu_461_p3;
wire   [84:0] zext_ln369_fu_469_p1;
wire   [84:0] trunc_ln_fu_451_p4;
wire   [84:0] add_ln369_fu_473_p2;
wire   [85:0] zext_ln193_fu_479_p1;
wire   [85:0] sub_ln130_2_fu_483_p2;
wire   [85:0] add_ln130_2_fu_489_p2;
wire   [63:0] t_fu_529_p4;
reg   [63:0] tmp_fu_539_p3;
wire   [21:0] trunc_ln1026_fu_557_p1;
wire   [63:0] p_Result_29_fu_561_p3;
reg   [63:0] tmp_s_fu_569_p3;
wire   [31:0] trunc_ln1028_fu_577_p1;
wire   [31:0] NZeros_fu_547_p1;
wire   [0:0] hitNonZero_fu_551_p2;
wire   [31:0] NZeros_4_fu_581_p2;
wire   [31:0] NZeros_6_fu_587_p3;
wire   [31:0] lsb_index_fu_601_p2;
wire   [30:0] tmp_45_fu_607_p4;
wire   [6:0] trunc_ln851_fu_623_p1;
wire   [6:0] sub_ln851_fu_627_p2;
wire   [85:0] zext_ln851_fu_633_p1;
wire   [85:0] zext_ln853_fu_643_p1;
wire   [85:0] lshr_ln851_fu_637_p2;
wire   [85:0] shl_ln853_fu_647_p2;
wire   [85:0] or_ln853_2_fu_653_p2;
wire   [85:0] and_ln853_fu_659_p2;
wire   [0:0] tmp_46_fu_671_p3;
wire   [0:0] p_Result_30_fu_685_p3;
wire   [0:0] xor_ln853_fu_679_p2;
wire   [0:0] icmp_ln850_fu_617_p2;
wire   [0:0] icmp_ln853_fu_665_p2;
wire   [0:0] select_ln850_fu_705_p3;
wire   [0:0] and_ln853_1_fu_699_p2;
wire   [31:0] sub_ln859_fu_725_p2;
wire   [85:0] zext_ln859_fu_730_p1;
wire   [31:0] add_ln858_fu_739_p2;
wire   [85:0] zext_ln858_fu_744_p1;
wire   [85:0] lshr_ln858_fu_748_p2;
wire   [85:0] shl_ln859_fu_734_p2;
wire   [63:0] trunc_ln859_fu_753_p1;
wire   [63:0] trunc_ln859_2_fu_757_p1;
wire   [63:0] m_fu_761_p3;
wire   [63:0] zext_ln865_fu_768_p1;
wire   [63:0] m_5_fu_771_p2;
wire   [62:0] m_7_fu_777_p4;
wire   [0:0] p_Result_s_fu_791_p3;
wire   [10:0] sub_ln869_fu_807_p2;
wire   [10:0] select_ln847_fu_799_p3;
wire   [10:0] add_ln869_fu_812_p2;
wire   [63:0] zext_ln866_fu_787_p1;
wire   [11:0] tmp_5_fu_818_p3;
wire   [63:0] p_Result_31_fu_825_p5;
reg   [63:0] ap_return_preg;
reg   [26:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 27'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_return_preg = 64'd0;
end

inversekinematics_generic_asin_double_s_cordic_apfixed_circ_table_arctan_128_V #(
    .DataWidth( 126 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
cordic_ctab_table_128_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(cordic_ctab_table_128_V_address0),
    .ce0(cordic_ctab_table_128_V_ce0),
    .q0(cordic_ctab_table_128_V_q0)
);

inversekinematics_ddiv_64ns_64ns_64_22_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 22 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_22_no_dsp_1_U46(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(y_in),
    .din1(x_in),
    .ce(1'b1),
    .dout(grp_fu_218_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_pp0_flush_enable)) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((icmp_ln824_fu_272_p2 == 1'd0) & (icmp_ln832_fu_266_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((icmp_ln824_fu_272_p2 == 1'd0) & (icmp_ln832_fu_266_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 64'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state28)) begin
            ap_return_preg <= ap_phi_mux_retval_0_phi_fu_206_p8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln167_fu_376_p2 == 1'd0))) begin
        k_reg_161 <= add_ln167_fu_370_p2;
    end else if (((icmp_ln824_fu_272_p2 == 1'd0) & (icmp_ln832_fu_266_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        k_reg_161 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln167_fu_376_p2 == 1'd0))) begin
        p_Val2_21_reg_172 <= y_V_3_fu_443_p3;
    end else if (((icmp_ln824_fu_272_p2 == 1'd0) & (icmp_ln832_fu_266_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_Val2_21_reg_172 <= r_V_53_fu_362_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln824_fu_272_p2 == 1'd1) & (icmp_ln832_fu_266_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state4) & (icmp_ln839_fu_502_p2 == 1'd1)))) begin
        retval_0_reg_202 <= 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        retval_0_reg_202 <= bitcast_ln688_fu_837_p1;
    end else if (((icmp_ln832_reg_851 == 1'd1) & (1'b1 == ap_CS_fsm_state28))) begin
        retval_0_reg_202 <= div_i_reg_948;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln167_fu_376_p2 == 1'd0))) begin
        x_V_1_reg_181 <= x_V_2_fu_417_p3;
    end else if (((icmp_ln824_fu_272_p2 == 1'd0) & (icmp_ln832_fu_266_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        x_V_1_reg_181 <= zext_ln710_fu_298_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln167_reg_874 == 1'd0))) begin
        z_V_reg_190 <= z_V_1_fu_495_p3;
    end else if (((icmp_ln824_fu_272_p2 == 1'd0) & (icmp_ln832_fu_266_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        z_V_reg_190 <= 86'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        div_i_reg_948 <= grp_fu_218_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln167_reg_874 <= icmp_ln167_fu_376_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        icmp_ln832_reg_851 <= icmp_ln832_fu_266_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        icmp_ln858_reg_928 <= icmp_ln858_fu_693_p2;
        p_Result_28_reg_911 <= z_V_reg_190[32'd85];
        select_ln858_reg_933 <= select_ln858_fu_713_p3;
        sub_ln848_reg_922 <= sub_ln848_fu_595_p2;
        tmp_V_4_reg_916 <= tmp_V_4_fu_522_p3;
        trunc_ln847_reg_938 <= trunc_ln847_fu_721_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln167_fu_376_p2 == 1'd0))) begin
        p_Result_27_reg_878 <= p_Val2_21_reg_172[32'd88];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln839_fu_502_p2 == 1'd0))) begin
        tmp_V_reg_906 <= tmp_V_fu_508_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln167_fu_376_p2 == 1'd1))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state28) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln832_reg_851 == 1'd1) & (1'b1 == ap_CS_fsm_state28))) begin
        ap_phi_mux_retval_0_phi_fu_206_p8 = div_i_reg_948;
    end else begin
        ap_phi_mux_retval_0_phi_fu_206_p8 = retval_0_reg_202;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        ap_return = ap_phi_mux_retval_0_phi_fu_206_p8;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cordic_ctab_table_128_V_ce0 = 1'b1;
    end else begin
        cordic_ctab_table_128_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln824_fu_272_p2 == 1'd0) & (icmp_ln832_fu_266_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln824_fu_272_p2 == 1'd1) & (icmp_ln832_fu_266_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state28;
            end else if (((icmp_ln832_fu_266_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln839_fu_502_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign NZeros_4_fu_581_p2 = (trunc_ln1028_fu_577_p1 + NZeros_fu_547_p1);

assign NZeros_6_fu_587_p3 = ((hitNonZero_fu_551_p2[0:0] == 1'b1) ? NZeros_4_fu_581_p2 : NZeros_fu_547_p1);

assign NZeros_fu_547_p1 = tmp_fu_539_p3[31:0];

assign add_ln130_1_fu_437_p2 = (r_V_55_fu_425_p2 + p_Val2_21_reg_172);

assign add_ln130_2_fu_489_p2 = (zext_ln193_fu_479_p1 + z_V_reg_190);

assign add_ln130_fu_411_p2 = (r_V_54_fu_399_p2 + x_V_1_reg_181);

assign add_ln167_fu_370_p2 = (k_reg_161 + 7'd1);

assign add_ln369_fu_473_p2 = (zext_ln369_fu_469_p1 + trunc_ln_fu_451_p4);

assign add_ln858_fu_739_p2 = ($signed(sub_ln848_reg_922) + $signed(32'd4294967242));

assign add_ln869_fu_812_p2 = (sub_ln869_fu_807_p2 + select_ln847_fu_799_p3);

assign and_ln853_1_fu_699_p2 = (xor_ln853_fu_679_p2 & p_Result_30_fu_685_p3);

assign and_ln853_fu_659_p2 = (tmp_V_4_fu_522_p3 & or_ln853_2_fu_653_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state27 = ap_CS_fsm[32'd25];

assign ap_CS_fsm_state28 = ap_CS_fsm[32'd26];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd4];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign bitcast_ln688_fu_837_p1 = p_Result_31_fu_825_p5;

assign cordic_ctab_table_128_V_address0 = k_cast_fu_382_p1;

assign data_V_1_fu_238_p1 = y_in;

assign data_V_fu_224_p1 = x_in;

assign hitNonZero_fu_551_p2 = ((t_fu_529_p4 == 64'd0) ? 1'b1 : 1'b0);

assign icmp_ln167_fu_376_p2 = ((k_reg_161 == 7'd88) ? 1'b1 : 1'b0);

assign icmp_ln824_fu_272_p2 = ((tmp_49_fu_242_p4 == 11'd0) ? 1'b1 : 1'b0);

assign icmp_ln832_fu_266_p2 = ((ret_fu_256_p2 < zext_ln832_fu_262_p1) ? 1'b1 : 1'b0);

assign icmp_ln839_fu_502_p2 = ((z_V_reg_190 == 86'd0) ? 1'b1 : 1'b0);

assign icmp_ln850_fu_617_p2 = (($signed(tmp_45_fu_607_p4) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign icmp_ln853_fu_665_p2 = ((and_ln853_fu_659_p2 != 86'd0) ? 1'b1 : 1'b0);

assign icmp_ln858_fu_693_p2 = (($signed(lsb_index_fu_601_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign isNeg_fu_320_p3 = ret_6_fu_278_p2[32'd11];

assign k_cast_fu_382_p1 = k_reg_161;

assign lsb_index_fu_601_p2 = ($signed(sub_ln848_fu_595_p2) + $signed(32'd4294967243));

assign lshr_ln851_fu_637_p2 = 86'd77371252455336267181195263 >> zext_ln851_fu_633_p1;

assign lshr_ln858_fu_748_p2 = tmp_V_4_reg_916 >> zext_ln858_fu_744_p1;

assign m_5_fu_771_p2 = (m_fu_761_p3 + zext_ln865_fu_768_p1);

assign m_7_fu_777_p4 = {{m_5_fu_771_p2[63:1]}};

assign m_fu_761_p3 = ((icmp_ln858_reg_928[0:0] == 1'b1) ? trunc_ln859_fu_753_p1 : trunc_ln859_2_fu_757_p1);

assign or_ln853_2_fu_653_p2 = (shl_ln853_fu_647_p2 | lshr_ln851_fu_637_p2);

assign p_Result_25_fu_284_p1 = data_V_fu_224_p1[51:0];

assign p_Result_26_fu_302_p1 = data_V_1_fu_238_p1[51:0];

assign p_Result_27_fu_387_p3 = p_Val2_21_reg_172[32'd88];

assign p_Result_28_fu_514_p3 = z_V_reg_190[32'd85];

assign p_Result_29_fu_561_p3 = {{trunc_ln1026_fu_557_p1}, {42'd4398046511103}};

assign p_Result_30_fu_685_p3 = tmp_V_4_fu_522_p3[lsb_index_fu_601_p2];

assign p_Result_31_fu_825_p5 = {{tmp_5_fu_818_p3}, {zext_ln866_fu_787_p1[51:0]}};

assign p_Result_s_fu_791_p3 = m_5_fu_771_p2[32'd54];

assign r_V_49_fu_356_p2 = zext_ln710_1_fu_316_p1 >> sh_prom_i_i_i_cast_cast_cast_cast_fu_346_p1;

assign r_V_53_fu_362_p3 = ((isNeg_fu_320_p3[0:0] == 1'b1) ? r_V_fu_350_p2 : r_V_49_fu_356_p2);

assign r_V_54_fu_399_p2 = $signed(p_Val2_21_reg_172) >>> zext_ln1287_fu_395_p1;

assign r_V_55_fu_425_p2 = $signed(x_V_1_reg_181) >>> zext_ln1287_fu_395_p1;

assign r_V_fu_350_p2 = zext_ln710_1_fu_316_p1 << sh_prom_i_i_i_cast_cast_cast_cast_fu_346_p1;

assign ret_6_fu_278_p2 = (zext_ln832_fu_262_p1 - zext_ln1300_fu_252_p1);

assign ret_fu_256_p2 = (zext_ln1300_fu_252_p1 + 12'd27);

assign select_ln847_fu_799_p3 = ((p_Result_s_fu_791_p3[0:0] == 1'b1) ? 11'd1023 : 11'd1022);

assign select_ln850_fu_705_p3 = ((icmp_ln850_fu_617_p2[0:0] == 1'b1) ? icmp_ln853_fu_665_p2 : p_Result_30_fu_685_p3);

assign select_ln858_fu_713_p3 = ((icmp_ln858_fu_693_p2[0:0] == 1'b1) ? select_ln850_fu_705_p3 : and_ln853_1_fu_699_p2);

assign sh_prom_i_i_i_cast_cast_cast_cast_fu_346_p1 = $unsigned(sh_prom_i_i_i_cast_cast_cast_fu_342_p1);

assign sh_prom_i_i_i_cast_cast_cast_fu_342_p1 = $signed(ush_fu_334_p3);

assign shl_ln853_fu_647_p2 = 86'd1 << zext_ln853_fu_643_p1;

assign shl_ln859_fu_734_p2 = tmp_V_4_reg_916 << zext_ln859_fu_730_p1;

assign sub_ln130_1_fu_431_p2 = (p_Val2_21_reg_172 - r_V_55_fu_425_p2);

assign sub_ln130_2_fu_483_p2 = (z_V_reg_190 - zext_ln193_fu_479_p1);

assign sub_ln130_fu_405_p2 = (x_V_1_reg_181 - r_V_54_fu_399_p2);

assign sub_ln1321_fu_328_p2 = (12'd0 - ret_6_fu_278_p2);

assign sub_ln848_fu_595_p2 = (32'd86 - NZeros_6_fu_587_p3);

assign sub_ln851_fu_627_p2 = (7'd12 - trunc_ln851_fu_623_p1);

assign sub_ln859_fu_725_p2 = (32'd54 - sub_ln848_reg_922);

assign sub_ln869_fu_807_p2 = (11'd1 - trunc_ln847_reg_938);

assign t_fu_529_p4 = {{tmp_V_4_fu_522_p3[85:22]}};

assign tmp_43_fu_461_p3 = cordic_ctab_table_128_V_q0[32'd40];

assign tmp_45_fu_607_p4 = {{lsb_index_fu_601_p2[31:1]}};

assign tmp_46_fu_671_p3 = lsb_index_fu_601_p2[32'd31];

assign tmp_48_fu_228_p4 = {{data_V_fu_224_p1[62:52]}};

assign tmp_49_fu_242_p4 = {{data_V_1_fu_238_p1[62:52]}};

assign tmp_5_fu_818_p3 = {{p_Result_28_reg_911}, {add_ln869_fu_812_p2}};

assign tmp_V_4_fu_522_p3 = ((p_Result_28_fu_514_p3[0:0] == 1'b1) ? tmp_V_reg_906 : z_V_reg_190);

assign tmp_V_fu_508_p2 = (86'd0 - z_V_reg_190);

always @ (t_fu_529_p4) begin
    if (t_fu_529_p4[63] == 1'b1) begin
        tmp_fu_539_p3 = 64'd0;
    end else if (t_fu_529_p4[62] == 1'b1) begin
        tmp_fu_539_p3 = 64'd1;
    end else if (t_fu_529_p4[61] == 1'b1) begin
        tmp_fu_539_p3 = 64'd2;
    end else if (t_fu_529_p4[60] == 1'b1) begin
        tmp_fu_539_p3 = 64'd3;
    end else if (t_fu_529_p4[59] == 1'b1) begin
        tmp_fu_539_p3 = 64'd4;
    end else if (t_fu_529_p4[58] == 1'b1) begin
        tmp_fu_539_p3 = 64'd5;
    end else if (t_fu_529_p4[57] == 1'b1) begin
        tmp_fu_539_p3 = 64'd6;
    end else if (t_fu_529_p4[56] == 1'b1) begin
        tmp_fu_539_p3 = 64'd7;
    end else if (t_fu_529_p4[55] == 1'b1) begin
        tmp_fu_539_p3 = 64'd8;
    end else if (t_fu_529_p4[54] == 1'b1) begin
        tmp_fu_539_p3 = 64'd9;
    end else if (t_fu_529_p4[53] == 1'b1) begin
        tmp_fu_539_p3 = 64'd10;
    end else if (t_fu_529_p4[52] == 1'b1) begin
        tmp_fu_539_p3 = 64'd11;
    end else if (t_fu_529_p4[51] == 1'b1) begin
        tmp_fu_539_p3 = 64'd12;
    end else if (t_fu_529_p4[50] == 1'b1) begin
        tmp_fu_539_p3 = 64'd13;
    end else if (t_fu_529_p4[49] == 1'b1) begin
        tmp_fu_539_p3 = 64'd14;
    end else if (t_fu_529_p4[48] == 1'b1) begin
        tmp_fu_539_p3 = 64'd15;
    end else if (t_fu_529_p4[47] == 1'b1) begin
        tmp_fu_539_p3 = 64'd16;
    end else if (t_fu_529_p4[46] == 1'b1) begin
        tmp_fu_539_p3 = 64'd17;
    end else if (t_fu_529_p4[45] == 1'b1) begin
        tmp_fu_539_p3 = 64'd18;
    end else if (t_fu_529_p4[44] == 1'b1) begin
        tmp_fu_539_p3 = 64'd19;
    end else if (t_fu_529_p4[43] == 1'b1) begin
        tmp_fu_539_p3 = 64'd20;
    end else if (t_fu_529_p4[42] == 1'b1) begin
        tmp_fu_539_p3 = 64'd21;
    end else if (t_fu_529_p4[41] == 1'b1) begin
        tmp_fu_539_p3 = 64'd22;
    end else if (t_fu_529_p4[40] == 1'b1) begin
        tmp_fu_539_p3 = 64'd23;
    end else if (t_fu_529_p4[39] == 1'b1) begin
        tmp_fu_539_p3 = 64'd24;
    end else if (t_fu_529_p4[38] == 1'b1) begin
        tmp_fu_539_p3 = 64'd25;
    end else if (t_fu_529_p4[37] == 1'b1) begin
        tmp_fu_539_p3 = 64'd26;
    end else if (t_fu_529_p4[36] == 1'b1) begin
        tmp_fu_539_p3 = 64'd27;
    end else if (t_fu_529_p4[35] == 1'b1) begin
        tmp_fu_539_p3 = 64'd28;
    end else if (t_fu_529_p4[34] == 1'b1) begin
        tmp_fu_539_p3 = 64'd29;
    end else if (t_fu_529_p4[33] == 1'b1) begin
        tmp_fu_539_p3 = 64'd30;
    end else if (t_fu_529_p4[32] == 1'b1) begin
        tmp_fu_539_p3 = 64'd31;
    end else if (t_fu_529_p4[31] == 1'b1) begin
        tmp_fu_539_p3 = 64'd32;
    end else if (t_fu_529_p4[30] == 1'b1) begin
        tmp_fu_539_p3 = 64'd33;
    end else if (t_fu_529_p4[29] == 1'b1) begin
        tmp_fu_539_p3 = 64'd34;
    end else if (t_fu_529_p4[28] == 1'b1) begin
        tmp_fu_539_p3 = 64'd35;
    end else if (t_fu_529_p4[27] == 1'b1) begin
        tmp_fu_539_p3 = 64'd36;
    end else if (t_fu_529_p4[26] == 1'b1) begin
        tmp_fu_539_p3 = 64'd37;
    end else if (t_fu_529_p4[25] == 1'b1) begin
        tmp_fu_539_p3 = 64'd38;
    end else if (t_fu_529_p4[24] == 1'b1) begin
        tmp_fu_539_p3 = 64'd39;
    end else if (t_fu_529_p4[23] == 1'b1) begin
        tmp_fu_539_p3 = 64'd40;
    end else if (t_fu_529_p4[22] == 1'b1) begin
        tmp_fu_539_p3 = 64'd41;
    end else if (t_fu_529_p4[21] == 1'b1) begin
        tmp_fu_539_p3 = 64'd42;
    end else if (t_fu_529_p4[20] == 1'b1) begin
        tmp_fu_539_p3 = 64'd43;
    end else if (t_fu_529_p4[19] == 1'b1) begin
        tmp_fu_539_p3 = 64'd44;
    end else if (t_fu_529_p4[18] == 1'b1) begin
        tmp_fu_539_p3 = 64'd45;
    end else if (t_fu_529_p4[17] == 1'b1) begin
        tmp_fu_539_p3 = 64'd46;
    end else if (t_fu_529_p4[16] == 1'b1) begin
        tmp_fu_539_p3 = 64'd47;
    end else if (t_fu_529_p4[15] == 1'b1) begin
        tmp_fu_539_p3 = 64'd48;
    end else if (t_fu_529_p4[14] == 1'b1) begin
        tmp_fu_539_p3 = 64'd49;
    end else if (t_fu_529_p4[13] == 1'b1) begin
        tmp_fu_539_p3 = 64'd50;
    end else if (t_fu_529_p4[12] == 1'b1) begin
        tmp_fu_539_p3 = 64'd51;
    end else if (t_fu_529_p4[11] == 1'b1) begin
        tmp_fu_539_p3 = 64'd52;
    end else if (t_fu_529_p4[10] == 1'b1) begin
        tmp_fu_539_p3 = 64'd53;
    end else if (t_fu_529_p4[9] == 1'b1) begin
        tmp_fu_539_p3 = 64'd54;
    end else if (t_fu_529_p4[8] == 1'b1) begin
        tmp_fu_539_p3 = 64'd55;
    end else if (t_fu_529_p4[7] == 1'b1) begin
        tmp_fu_539_p3 = 64'd56;
    end else if (t_fu_529_p4[6] == 1'b1) begin
        tmp_fu_539_p3 = 64'd57;
    end else if (t_fu_529_p4[5] == 1'b1) begin
        tmp_fu_539_p3 = 64'd58;
    end else if (t_fu_529_p4[4] == 1'b1) begin
        tmp_fu_539_p3 = 64'd59;
    end else if (t_fu_529_p4[3] == 1'b1) begin
        tmp_fu_539_p3 = 64'd60;
    end else if (t_fu_529_p4[2] == 1'b1) begin
        tmp_fu_539_p3 = 64'd61;
    end else if (t_fu_529_p4[1] == 1'b1) begin
        tmp_fu_539_p3 = 64'd62;
    end else if (t_fu_529_p4[0] == 1'b1) begin
        tmp_fu_539_p3 = 64'd63;
    end else begin
        tmp_fu_539_p3 = 64'd64;
    end
end

always @ (p_Result_29_fu_561_p3) begin
    if (p_Result_29_fu_561_p3[63] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd0;
    end else if (p_Result_29_fu_561_p3[62] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd1;
    end else if (p_Result_29_fu_561_p3[61] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd2;
    end else if (p_Result_29_fu_561_p3[60] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd3;
    end else if (p_Result_29_fu_561_p3[59] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd4;
    end else if (p_Result_29_fu_561_p3[58] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd5;
    end else if (p_Result_29_fu_561_p3[57] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd6;
    end else if (p_Result_29_fu_561_p3[56] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd7;
    end else if (p_Result_29_fu_561_p3[55] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd8;
    end else if (p_Result_29_fu_561_p3[54] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd9;
    end else if (p_Result_29_fu_561_p3[53] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd10;
    end else if (p_Result_29_fu_561_p3[52] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd11;
    end else if (p_Result_29_fu_561_p3[51] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd12;
    end else if (p_Result_29_fu_561_p3[50] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd13;
    end else if (p_Result_29_fu_561_p3[49] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd14;
    end else if (p_Result_29_fu_561_p3[48] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd15;
    end else if (p_Result_29_fu_561_p3[47] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd16;
    end else if (p_Result_29_fu_561_p3[46] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd17;
    end else if (p_Result_29_fu_561_p3[45] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd18;
    end else if (p_Result_29_fu_561_p3[44] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd19;
    end else if (p_Result_29_fu_561_p3[43] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd20;
    end else if (p_Result_29_fu_561_p3[42] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd21;
    end else if (p_Result_29_fu_561_p3[41] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd22;
    end else if (p_Result_29_fu_561_p3[40] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd23;
    end else if (p_Result_29_fu_561_p3[39] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd24;
    end else if (p_Result_29_fu_561_p3[38] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd25;
    end else if (p_Result_29_fu_561_p3[37] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd26;
    end else if (p_Result_29_fu_561_p3[36] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd27;
    end else if (p_Result_29_fu_561_p3[35] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd28;
    end else if (p_Result_29_fu_561_p3[34] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd29;
    end else if (p_Result_29_fu_561_p3[33] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd30;
    end else if (p_Result_29_fu_561_p3[32] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd31;
    end else if (p_Result_29_fu_561_p3[31] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd32;
    end else if (p_Result_29_fu_561_p3[30] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd33;
    end else if (p_Result_29_fu_561_p3[29] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd34;
    end else if (p_Result_29_fu_561_p3[28] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd35;
    end else if (p_Result_29_fu_561_p3[27] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd36;
    end else if (p_Result_29_fu_561_p3[26] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd37;
    end else if (p_Result_29_fu_561_p3[25] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd38;
    end else if (p_Result_29_fu_561_p3[24] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd39;
    end else if (p_Result_29_fu_561_p3[23] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd40;
    end else if (p_Result_29_fu_561_p3[22] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd41;
    end else if (p_Result_29_fu_561_p3[21] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd42;
    end else if (p_Result_29_fu_561_p3[20] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd43;
    end else if (p_Result_29_fu_561_p3[19] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd44;
    end else if (p_Result_29_fu_561_p3[18] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd45;
    end else if (p_Result_29_fu_561_p3[17] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd46;
    end else if (p_Result_29_fu_561_p3[16] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd47;
    end else if (p_Result_29_fu_561_p3[15] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd48;
    end else if (p_Result_29_fu_561_p3[14] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd49;
    end else if (p_Result_29_fu_561_p3[13] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd50;
    end else if (p_Result_29_fu_561_p3[12] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd51;
    end else if (p_Result_29_fu_561_p3[11] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd52;
    end else if (p_Result_29_fu_561_p3[10] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd53;
    end else if (p_Result_29_fu_561_p3[9] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd54;
    end else if (p_Result_29_fu_561_p3[8] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd55;
    end else if (p_Result_29_fu_561_p3[7] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd56;
    end else if (p_Result_29_fu_561_p3[6] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd57;
    end else if (p_Result_29_fu_561_p3[5] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd58;
    end else if (p_Result_29_fu_561_p3[4] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd59;
    end else if (p_Result_29_fu_561_p3[3] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd60;
    end else if (p_Result_29_fu_561_p3[2] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd61;
    end else if (p_Result_29_fu_561_p3[1] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd62;
    end else if (p_Result_29_fu_561_p3[0] == 1'b1) begin
        tmp_s_fu_569_p3 = 64'd63;
    end else begin
        tmp_s_fu_569_p3 = 64'd64;
    end
end

assign trunc_ln1026_fu_557_p1 = tmp_V_4_fu_522_p3[21:0];

assign trunc_ln1028_fu_577_p1 = tmp_s_fu_569_p3[31:0];

assign trunc_ln847_fu_721_p1 = NZeros_6_fu_587_p3[10:0];

assign trunc_ln851_fu_623_p1 = sub_ln848_fu_595_p2[6:0];

assign trunc_ln859_2_fu_757_p1 = shl_ln859_fu_734_p2[63:0];

assign trunc_ln859_fu_753_p1 = lshr_ln858_fu_748_p2[63:0];

assign trunc_ln_fu_451_p4 = {{cordic_ctab_table_128_V_q0[125:41]}};

assign ush_fu_334_p3 = ((isNeg_fu_320_p3[0:0] == 1'b1) ? sub_ln1321_fu_328_p2 : ret_6_fu_278_p2);

assign x_V_2_fu_417_p3 = ((p_Result_27_fu_387_p3[0:0] == 1'b1) ? sub_ln130_fu_405_p2 : add_ln130_fu_411_p2);

assign x_V_fu_288_p4 = {{{{1'd1}, {p_Result_25_fu_284_p1}}}, {33'd0}};

assign xor_ln853_fu_679_p2 = (tmp_46_fu_671_p3 ^ 1'd1);

assign y_V_3_fu_443_p3 = ((p_Result_27_fu_387_p3[0:0] == 1'b1) ? add_ln130_1_fu_437_p2 : sub_ln130_1_fu_431_p2);

assign y_V_fu_306_p4 = {{{{1'd1}, {p_Result_26_fu_302_p1}}}, {33'd0}};

assign z_V_1_fu_495_p3 = ((p_Result_27_reg_878[0:0] == 1'b1) ? sub_ln130_2_fu_483_p2 : add_ln130_2_fu_489_p2);

assign zext_ln1287_fu_395_p1 = k_reg_161;

assign zext_ln1300_fu_252_p1 = tmp_49_fu_242_p4;

assign zext_ln193_fu_479_p1 = add_ln369_fu_473_p2;

assign zext_ln369_fu_469_p1 = tmp_43_fu_461_p3;

assign zext_ln710_1_fu_316_p1 = y_V_fu_306_p4;

assign zext_ln710_fu_298_p1 = x_V_fu_288_p4;

assign zext_ln832_fu_262_p1 = tmp_48_fu_228_p4;

assign zext_ln851_fu_633_p1 = sub_ln851_fu_627_p2;

assign zext_ln853_fu_643_p1 = lsb_index_fu_601_p2;

assign zext_ln858_fu_744_p1 = add_ln858_fu_739_p2;

assign zext_ln859_fu_730_p1 = sub_ln859_fu_725_p2;

assign zext_ln865_fu_768_p1 = select_ln858_reg_933;

assign zext_ln866_fu_787_p1 = m_7_fu_777_p4;

endmodule //inversekinematics_atan2_generic_double_s