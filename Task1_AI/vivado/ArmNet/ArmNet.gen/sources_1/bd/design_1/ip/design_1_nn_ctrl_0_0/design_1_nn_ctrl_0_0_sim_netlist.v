// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Dec 29 17:44:16 2022
// Host        : sdu-Standard-PC-Q35-ICH9-2009 running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/sdu/Documents/embeddedSystems/project/miniproject/vivado/ArmNet/ArmNet.gen/sources_1/bd/design_1/ip/design_1_nn_ctrl_0_0/design_1_nn_ctrl_0_0_sim_netlist.v
// Design      : design_1_nn_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_nn_ctrl_0_0,nn_ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "nn_ctrl,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_nn_ctrl_0_0
   (i_Clk,
    ap_ready,
    ap_start,
    ap_done,
    ap_idle,
    ap_rst,
    rstb_busy,
    led_ctrl1,
    led_ctrl2,
    led_ctrl3,
    led_ctrl4,
    i_BRAM_addr,
    i_BRAM_ce,
    o_BRAM_addr,
    o_BRAM_ce,
    o_BRAM_wr,
    o_BRAM_din,
    nn_res_in);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_Clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input i_Clk;
  input ap_ready;
  output ap_start;
  input ap_done;
  input ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output ap_rst;
  input rstb_busy;
  output led_ctrl1;
  output led_ctrl2;
  output led_ctrl3;
  output led_ctrl4;
  input [31:0]i_BRAM_addr;
  input i_BRAM_ce;
  output [31:0]o_BRAM_addr;
  output o_BRAM_ce;
  output [3:0]o_BRAM_wr;
  output [31:0]o_BRAM_din;
  input [31:0]nn_res_in;

  wire \<const1> ;
  wire ap_done;
  wire ap_idle;
  wire ap_start;
  wire [31:0]i_BRAM_addr;
  wire i_BRAM_ce;
  wire i_Clk;
  wire led_ctrl1;
  wire led_ctrl2;
  wire led_ctrl3;
  wire led_ctrl4;
  wire [31:0]nn_res_in;
  wire [31:0]o_BRAM_addr;
  wire o_BRAM_ce;
  wire rstb_busy;

  assign ap_rst = \<const1> ;
  assign o_BRAM_din[31:0] = nn_res_in;
  assign o_BRAM_wr[3] = ap_done;
  assign o_BRAM_wr[2] = ap_done;
  assign o_BRAM_wr[1] = ap_done;
  assign o_BRAM_wr[0] = ap_done;
  VCC VCC
       (.P(\<const1> ));
  design_1_nn_ctrl_0_0_nn_ctrl inst
       (.ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_start(ap_start),
        .i_BRAM_addr(i_BRAM_addr),
        .i_Clk(i_Clk),
        .led_ctrl1(led_ctrl1),
        .led_ctrl2(led_ctrl2),
        .led_ctrl3(led_ctrl3),
        .led_ctrl4(led_ctrl4),
        .nn_res_in(nn_res_in),
        .o_BRAM_addr(o_BRAM_addr),
        .rstb_busy(rstb_busy));
  LUT2 #(
    .INIT(4'hE)) 
    o_BRAM_ce_INST_0
       (.I0(ap_done),
        .I1(i_BRAM_ce),
        .O(o_BRAM_ce));
endmodule

(* ORIG_REF_NAME = "nn_ctrl" *) 
module design_1_nn_ctrl_0_0_nn_ctrl
   (ap_start,
    led_ctrl4,
    led_ctrl1,
    led_ctrl2,
    led_ctrl3,
    o_BRAM_addr,
    ap_done,
    ap_idle,
    rstb_busy,
    nn_res_in,
    i_Clk,
    i_BRAM_addr);
  output ap_start;
  output led_ctrl4;
  output led_ctrl1;
  output led_ctrl2;
  output led_ctrl3;
  output [31:0]o_BRAM_addr;
  input ap_done;
  input ap_idle;
  input rstb_busy;
  input [31:0]nn_res_in;
  input i_Clk;
  input [31:0]i_BRAM_addr;

  wire ap_done;
  wire ap_idle;
  wire ap_start;
  wire cnt0_carry__0_i_1_n_0;
  wire cnt0_carry__0_i_2_n_0;
  wire cnt0_carry__0_i_3_n_0;
  wire cnt0_carry__0_i_4_n_0;
  wire cnt0_carry__0_i_5_n_0;
  wire cnt0_carry__0_i_6_n_0;
  wire cnt0_carry__0_i_7_n_0;
  wire cnt0_carry__0_i_8_n_0;
  wire cnt0_carry__0_n_1;
  wire cnt0_carry__0_n_2;
  wire cnt0_carry__0_n_3;
  wire cnt0_carry__0_n_4;
  wire cnt0_carry__0_n_5;
  wire cnt0_carry__0_n_6;
  wire cnt0_carry__0_n_7;
  wire cnt0_carry_i_1_n_0;
  wire cnt0_carry_i_2_n_0;
  wire cnt0_carry_i_3_n_0;
  wire cnt0_carry_i_4_n_0;
  wire cnt0_carry_i_5_n_0;
  wire cnt0_carry_i_6_n_0;
  wire cnt0_carry_i_7_n_0;
  wire cnt0_carry_i_8_n_0;
  wire cnt0_carry_i_9_n_0;
  wire cnt0_carry_n_0;
  wire cnt0_carry_n_1;
  wire cnt0_carry_n_2;
  wire cnt0_carry_n_3;
  wire cnt0_carry_n_4;
  wire cnt0_carry_n_5;
  wire cnt0_carry_n_6;
  wire cnt0_carry_n_7;
  wire \cnt[0]_i_2_n_0 ;
  wire [31:0]cnt_reg;
  wire \cnt_reg[0]_i_1_n_0 ;
  wire \cnt_reg[0]_i_1_n_1 ;
  wire \cnt_reg[0]_i_1_n_10 ;
  wire \cnt_reg[0]_i_1_n_11 ;
  wire \cnt_reg[0]_i_1_n_12 ;
  wire \cnt_reg[0]_i_1_n_13 ;
  wire \cnt_reg[0]_i_1_n_14 ;
  wire \cnt_reg[0]_i_1_n_15 ;
  wire \cnt_reg[0]_i_1_n_2 ;
  wire \cnt_reg[0]_i_1_n_3 ;
  wire \cnt_reg[0]_i_1_n_4 ;
  wire \cnt_reg[0]_i_1_n_5 ;
  wire \cnt_reg[0]_i_1_n_6 ;
  wire \cnt_reg[0]_i_1_n_7 ;
  wire \cnt_reg[0]_i_1_n_8 ;
  wire \cnt_reg[0]_i_1_n_9 ;
  wire \cnt_reg[16]_i_1_n_0 ;
  wire \cnt_reg[16]_i_1_n_1 ;
  wire \cnt_reg[16]_i_1_n_10 ;
  wire \cnt_reg[16]_i_1_n_11 ;
  wire \cnt_reg[16]_i_1_n_12 ;
  wire \cnt_reg[16]_i_1_n_13 ;
  wire \cnt_reg[16]_i_1_n_14 ;
  wire \cnt_reg[16]_i_1_n_15 ;
  wire \cnt_reg[16]_i_1_n_2 ;
  wire \cnt_reg[16]_i_1_n_3 ;
  wire \cnt_reg[16]_i_1_n_4 ;
  wire \cnt_reg[16]_i_1_n_5 ;
  wire \cnt_reg[16]_i_1_n_6 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[16]_i_1_n_8 ;
  wire \cnt_reg[16]_i_1_n_9 ;
  wire \cnt_reg[24]_i_1_n_1 ;
  wire \cnt_reg[24]_i_1_n_10 ;
  wire \cnt_reg[24]_i_1_n_11 ;
  wire \cnt_reg[24]_i_1_n_12 ;
  wire \cnt_reg[24]_i_1_n_13 ;
  wire \cnt_reg[24]_i_1_n_14 ;
  wire \cnt_reg[24]_i_1_n_15 ;
  wire \cnt_reg[24]_i_1_n_2 ;
  wire \cnt_reg[24]_i_1_n_3 ;
  wire \cnt_reg[24]_i_1_n_4 ;
  wire \cnt_reg[24]_i_1_n_5 ;
  wire \cnt_reg[24]_i_1_n_6 ;
  wire \cnt_reg[24]_i_1_n_7 ;
  wire \cnt_reg[24]_i_1_n_8 ;
  wire \cnt_reg[24]_i_1_n_9 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_10 ;
  wire \cnt_reg[8]_i_1_n_11 ;
  wire \cnt_reg[8]_i_1_n_12 ;
  wire \cnt_reg[8]_i_1_n_13 ;
  wire \cnt_reg[8]_i_1_n_14 ;
  wire \cnt_reg[8]_i_1_n_15 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_8 ;
  wire \cnt_reg[8]_i_1_n_9 ;
  wire [31:0]i_BRAM_addr;
  wire i_Clk;
  wire led_ctrl1;
  wire led_ctrl1_INST_0_i_1_n_0;
  wire led_ctrl1_INST_0_i_2_n_0;
  wire led_ctrl1_INST_0_i_3_n_0;
  wire led_ctrl1_INST_0_i_4_n_0;
  wire led_ctrl1_INST_0_i_5_n_0;
  wire led_ctrl1_INST_0_i_6_n_0;
  wire led_ctrl1_INST_0_i_7_n_0;
  wire led_ctrl2;
  wire led_ctrl2_INST_0_i_1_n_0;
  wire led_ctrl2_INST_0_i_2_n_0;
  wire led_ctrl2_INST_0_i_3_n_0;
  wire led_ctrl2_INST_0_i_4_n_0;
  wire led_ctrl2_INST_0_i_5_n_0;
  wire led_ctrl2_INST_0_i_6_n_0;
  wire led_ctrl2_INST_0_i_7_n_0;
  wire led_ctrl2_INST_0_i_8_n_0;
  wire led_ctrl3;
  wire led_ctrl3_INST_0_i_1_n_0;
  wire led_ctrl3_INST_0_i_2_n_0;
  wire led_ctrl3_INST_0_i_3_n_0;
  wire led_ctrl3_INST_0_i_4_n_0;
  wire led_ctrl3_INST_0_i_5_n_0;
  wire led_ctrl3_INST_0_i_6_n_0;
  wire led_ctrl3_INST_0_i_7_n_0;
  wire led_ctrl3_INST_0_i_8_n_0;
  wire led_ctrl3_INST_0_i_9_n_0;
  wire led_ctrl4;
  wire led_ctrl4_INST_0_i_1_n_0;
  wire led_ctrl4_INST_0_i_2_n_0;
  wire led_ctrl4_INST_0_i_3_n_0;
  wire led_ctrl4_INST_0_i_4_n_0;
  wire led_ctrl4_INST_0_i_5_n_0;
  wire led_ctrl4_INST_0_i_6_n_0;
  wire led_ctrl4_INST_0_i_7_n_0;
  wire led_ctrl4_INST_0_i_8_n_0;
  wire [31:0]nn_res_in;
  wire [31:0]o_BRAM_addr;
  wire rstb_busy;
  wire sel;
  wire start_signal;
  wire start_signal1_carry__0_i_10_n_0;
  wire start_signal1_carry__0_i_11_n_0;
  wire start_signal1_carry__0_i_12_n_0;
  wire start_signal1_carry__0_i_13_n_0;
  wire start_signal1_carry__0_i_14_n_0;
  wire start_signal1_carry__0_i_15_n_0;
  wire start_signal1_carry__0_i_16_n_0;
  wire start_signal1_carry__0_i_1_n_0;
  wire start_signal1_carry__0_i_2_n_0;
  wire start_signal1_carry__0_i_3_n_0;
  wire start_signal1_carry__0_i_4_n_0;
  wire start_signal1_carry__0_i_5_n_0;
  wire start_signal1_carry__0_i_6_n_0;
  wire start_signal1_carry__0_i_7_n_0;
  wire start_signal1_carry__0_i_8_n_0;
  wire start_signal1_carry__0_i_9_n_0;
  wire start_signal1_carry__0_n_0;
  wire start_signal1_carry__0_n_1;
  wire start_signal1_carry__0_n_2;
  wire start_signal1_carry__0_n_3;
  wire start_signal1_carry__0_n_4;
  wire start_signal1_carry__0_n_5;
  wire start_signal1_carry__0_n_6;
  wire start_signal1_carry__0_n_7;
  wire start_signal1_carry_i_10_n_0;
  wire start_signal1_carry_i_11_n_0;
  wire start_signal1_carry_i_12_n_0;
  wire start_signal1_carry_i_13_n_0;
  wire start_signal1_carry_i_14_n_0;
  wire start_signal1_carry_i_15_n_0;
  wire start_signal1_carry_i_16_n_0;
  wire start_signal1_carry_i_1_n_0;
  wire start_signal1_carry_i_2_n_0;
  wire start_signal1_carry_i_3_n_0;
  wire start_signal1_carry_i_4_n_0;
  wire start_signal1_carry_i_5_n_0;
  wire start_signal1_carry_i_6_n_0;
  wire start_signal1_carry_i_7_n_0;
  wire start_signal1_carry_i_8_n_0;
  wire start_signal1_carry_i_9_n_0;
  wire start_signal1_carry_n_0;
  wire start_signal1_carry_n_1;
  wire start_signal1_carry_n_2;
  wire start_signal1_carry_n_3;
  wire start_signal1_carry_n_4;
  wire start_signal1_carry_n_5;
  wire start_signal1_carry_n_6;
  wire start_signal1_carry_n_7;
  wire start_signal_reg_i_1_n_0;
  wire [7:0]NLW_cnt0_carry_O_UNCONNECTED;
  wire [7:0]NLW_cnt0_carry__0_O_UNCONNECTED;
  wire [7:7]\NLW_cnt_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:0]NLW_start_signal1_carry_O_UNCONNECTED;
  wire [7:0]NLW_start_signal1_carry__0_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \/i_ 
       (.I0(start_signal1_carry__0_n_0),
        .I1(ap_done),
        .I2(ap_idle),
        .O(start_signal));
  (* COMPARATOR_THRESHOLD = "14" *) 
  CARRY8 cnt0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({cnt0_carry_n_0,cnt0_carry_n_1,cnt0_carry_n_2,cnt0_carry_n_3,cnt0_carry_n_4,cnt0_carry_n_5,cnt0_carry_n_6,cnt0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cnt0_carry_i_1_n_0}),
        .O(NLW_cnt0_carry_O_UNCONNECTED[7:0]),
        .S({cnt0_carry_i_2_n_0,cnt0_carry_i_3_n_0,cnt0_carry_i_4_n_0,cnt0_carry_i_5_n_0,cnt0_carry_i_6_n_0,cnt0_carry_i_7_n_0,cnt0_carry_i_8_n_0,cnt0_carry_i_9_n_0}));
  (* COMPARATOR_THRESHOLD = "14" *) 
  CARRY8 cnt0_carry__0
       (.CI(cnt0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({sel,cnt0_carry__0_n_1,cnt0_carry__0_n_2,cnt0_carry__0_n_3,cnt0_carry__0_n_4,cnt0_carry__0_n_5,cnt0_carry__0_n_6,cnt0_carry__0_n_7}),
        .DI({cnt_reg[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cnt0_carry__0_O_UNCONNECTED[7:0]),
        .S({cnt0_carry__0_i_1_n_0,cnt0_carry__0_i_2_n_0,cnt0_carry__0_i_3_n_0,cnt0_carry__0_i_4_n_0,cnt0_carry__0_i_5_n_0,cnt0_carry__0_i_6_n_0,cnt0_carry__0_i_7_n_0,cnt0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    cnt0_carry__0_i_1
       (.I0(cnt_reg[30]),
        .I1(cnt_reg[31]),
        .O(cnt0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt0_carry__0_i_2
       (.I0(cnt_reg[28]),
        .I1(cnt_reg[29]),
        .O(cnt0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt0_carry__0_i_3
       (.I0(cnt_reg[26]),
        .I1(cnt_reg[27]),
        .O(cnt0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt0_carry__0_i_4
       (.I0(cnt_reg[24]),
        .I1(cnt_reg[25]),
        .O(cnt0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt0_carry__0_i_5
       (.I0(cnt_reg[22]),
        .I1(cnt_reg[23]),
        .O(cnt0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt0_carry__0_i_6
       (.I0(cnt_reg[20]),
        .I1(cnt_reg[21]),
        .O(cnt0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt0_carry__0_i_7
       (.I0(cnt_reg[18]),
        .I1(cnt_reg[19]),
        .O(cnt0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt0_carry__0_i_8
       (.I0(cnt_reg[16]),
        .I1(cnt_reg[17]),
        .O(cnt0_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    cnt0_carry_i_1
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .O(cnt0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt0_carry_i_2
       (.I0(cnt_reg[14]),
        .I1(cnt_reg[15]),
        .O(cnt0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt0_carry_i_3
       (.I0(cnt_reg[12]),
        .I1(cnt_reg[13]),
        .O(cnt0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt0_carry_i_4
       (.I0(cnt_reg[10]),
        .I1(cnt_reg[11]),
        .O(cnt0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt0_carry_i_5
       (.I0(cnt_reg[8]),
        .I1(cnt_reg[9]),
        .O(cnt0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt0_carry_i_6
       (.I0(cnt_reg[6]),
        .I1(cnt_reg[7]),
        .O(cnt0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt0_carry_i_7
       (.I0(cnt_reg[4]),
        .I1(cnt_reg[5]),
        .O(cnt0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cnt0_carry_i_8
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[3]),
        .O(cnt0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt0_carry_i_9
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .O(cnt0_carry_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_2 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[0]_i_1_n_15 ),
        .Q(cnt_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\cnt_reg[0]_i_1_n_0 ,\cnt_reg[0]_i_1_n_1 ,\cnt_reg[0]_i_1_n_2 ,\cnt_reg[0]_i_1_n_3 ,\cnt_reg[0]_i_1_n_4 ,\cnt_reg[0]_i_1_n_5 ,\cnt_reg[0]_i_1_n_6 ,\cnt_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_1_n_8 ,\cnt_reg[0]_i_1_n_9 ,\cnt_reg[0]_i_1_n_10 ,\cnt_reg[0]_i_1_n_11 ,\cnt_reg[0]_i_1_n_12 ,\cnt_reg[0]_i_1_n_13 ,\cnt_reg[0]_i_1_n_14 ,\cnt_reg[0]_i_1_n_15 }),
        .S({cnt_reg[7:1],\cnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[8]_i_1_n_13 ),
        .Q(cnt_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[8]_i_1_n_12 ),
        .Q(cnt_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[8]_i_1_n_11 ),
        .Q(cnt_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[8]_i_1_n_10 ),
        .Q(cnt_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[8]_i_1_n_9 ),
        .Q(cnt_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[8]_i_1_n_8 ),
        .Q(cnt_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[16]_i_1_n_15 ),
        .Q(cnt_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\cnt_reg[16]_i_1_n_0 ,\cnt_reg[16]_i_1_n_1 ,\cnt_reg[16]_i_1_n_2 ,\cnt_reg[16]_i_1_n_3 ,\cnt_reg[16]_i_1_n_4 ,\cnt_reg[16]_i_1_n_5 ,\cnt_reg[16]_i_1_n_6 ,\cnt_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_1_n_8 ,\cnt_reg[16]_i_1_n_9 ,\cnt_reg[16]_i_1_n_10 ,\cnt_reg[16]_i_1_n_11 ,\cnt_reg[16]_i_1_n_12 ,\cnt_reg[16]_i_1_n_13 ,\cnt_reg[16]_i_1_n_14 ,\cnt_reg[16]_i_1_n_15 }),
        .S(cnt_reg[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[16]_i_1_n_14 ),
        .Q(cnt_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[16]_i_1_n_13 ),
        .Q(cnt_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[16]_i_1_n_12 ),
        .Q(cnt_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[0]_i_1_n_14 ),
        .Q(cnt_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[16]_i_1_n_11 ),
        .Q(cnt_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[16]_i_1_n_10 ),
        .Q(cnt_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[16]_i_1_n_9 ),
        .Q(cnt_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[16]_i_1_n_8 ),
        .Q(cnt_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[24] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[24]_i_1_n_15 ),
        .Q(cnt_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \cnt_reg[24]_i_1 
       (.CI(\cnt_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_cnt_reg[24]_i_1_CO_UNCONNECTED [7],\cnt_reg[24]_i_1_n_1 ,\cnt_reg[24]_i_1_n_2 ,\cnt_reg[24]_i_1_n_3 ,\cnt_reg[24]_i_1_n_4 ,\cnt_reg[24]_i_1_n_5 ,\cnt_reg[24]_i_1_n_6 ,\cnt_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[24]_i_1_n_8 ,\cnt_reg[24]_i_1_n_9 ,\cnt_reg[24]_i_1_n_10 ,\cnt_reg[24]_i_1_n_11 ,\cnt_reg[24]_i_1_n_12 ,\cnt_reg[24]_i_1_n_13 ,\cnt_reg[24]_i_1_n_14 ,\cnt_reg[24]_i_1_n_15 }),
        .S(cnt_reg[31:24]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[25] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[24]_i_1_n_14 ),
        .Q(cnt_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[26] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[24]_i_1_n_13 ),
        .Q(cnt_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[27] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[24]_i_1_n_12 ),
        .Q(cnt_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[28] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[24]_i_1_n_11 ),
        .Q(cnt_reg[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[29] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[24]_i_1_n_10 ),
        .Q(cnt_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[0]_i_1_n_13 ),
        .Q(cnt_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[30] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[24]_i_1_n_9 ),
        .Q(cnt_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[31] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[24]_i_1_n_8 ),
        .Q(cnt_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[0]_i_1_n_12 ),
        .Q(cnt_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[0]_i_1_n_11 ),
        .Q(cnt_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[0]_i_1_n_10 ),
        .Q(cnt_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[0]_i_1_n_9 ),
        .Q(cnt_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[0]_i_1_n_8 ),
        .Q(cnt_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[8]_i_1_n_15 ),
        .Q(cnt_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\cnt_reg[8]_i_1_n_0 ,\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 ,\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_8 ,\cnt_reg[8]_i_1_n_9 ,\cnt_reg[8]_i_1_n_10 ,\cnt_reg[8]_i_1_n_11 ,\cnt_reg[8]_i_1_n_12 ,\cnt_reg[8]_i_1_n_13 ,\cnt_reg[8]_i_1_n_14 ,\cnt_reg[8]_i_1_n_15 }),
        .S(cnt_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(i_Clk),
        .CE(sel),
        .D(\cnt_reg[8]_i_1_n_14 ),
        .Q(cnt_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000009F)) 
    led_ctrl1_INST_0
       (.I0(nn_res_in[1]),
        .I1(nn_res_in[2]),
        .I2(nn_res_in[3]),
        .I3(led_ctrl1_INST_0_i_1_n_0),
        .I4(led_ctrl1_INST_0_i_2_n_0),
        .I5(led_ctrl1_INST_0_i_3_n_0),
        .O(led_ctrl1));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    led_ctrl1_INST_0_i_1
       (.I0(nn_res_in[17]),
        .I1(nn_res_in[16]),
        .I2(nn_res_in[19]),
        .I3(nn_res_in[18]),
        .I4(led_ctrl1_INST_0_i_4_n_0),
        .O(led_ctrl1_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    led_ctrl1_INST_0_i_2
       (.I0(nn_res_in[9]),
        .I1(nn_res_in[8]),
        .I2(nn_res_in[11]),
        .I3(nn_res_in[10]),
        .I4(led_ctrl1_INST_0_i_5_n_0),
        .O(led_ctrl1_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    led_ctrl1_INST_0_i_3
       (.I0(led_ctrl1_INST_0_i_6_n_0),
        .I1(led_ctrl1_INST_0_i_7_n_0),
        .I2(nn_res_in[26]),
        .I3(nn_res_in[27]),
        .I4(nn_res_in[24]),
        .I5(nn_res_in[25]),
        .O(led_ctrl1_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    led_ctrl1_INST_0_i_4
       (.I0(nn_res_in[14]),
        .I1(nn_res_in[15]),
        .I2(nn_res_in[12]),
        .I3(nn_res_in[13]),
        .O(led_ctrl1_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    led_ctrl1_INST_0_i_5
       (.I0(nn_res_in[6]),
        .I1(nn_res_in[7]),
        .I2(nn_res_in[4]),
        .I3(nn_res_in[5]),
        .O(led_ctrl1_INST_0_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    led_ctrl1_INST_0_i_6
       (.I0(nn_res_in[0]),
        .I1(nn_res_in[29]),
        .I2(nn_res_in[28]),
        .I3(nn_res_in[30]),
        .I4(nn_res_in[31]),
        .O(led_ctrl1_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    led_ctrl1_INST_0_i_7
       (.I0(nn_res_in[22]),
        .I1(nn_res_in[23]),
        .I2(nn_res_in[20]),
        .I3(nn_res_in[21]),
        .O(led_ctrl1_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    led_ctrl2_INST_0
       (.I0(led_ctrl2_INST_0_i_1_n_0),
        .I1(led_ctrl2_INST_0_i_2_n_0),
        .I2(led_ctrl2_INST_0_i_3_n_0),
        .I3(led_ctrl2_INST_0_i_4_n_0),
        .O(led_ctrl2));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFE)) 
    led_ctrl2_INST_0_i_1
       (.I0(nn_res_in[21]),
        .I1(nn_res_in[22]),
        .I2(nn_res_in[23]),
        .I3(nn_res_in[24]),
        .I4(nn_res_in[25]),
        .I5(led_ctrl2_INST_0_i_5_n_0),
        .O(led_ctrl2_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFE)) 
    led_ctrl2_INST_0_i_2
       (.I0(nn_res_in[28]),
        .I1(nn_res_in[27]),
        .I2(led_ctrl2_INST_0_i_6_n_0),
        .I3(nn_res_in[29]),
        .I4(nn_res_in[30]),
        .I5(nn_res_in[31]),
        .O(led_ctrl2_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFE)) 
    led_ctrl2_INST_0_i_3
       (.I0(nn_res_in[5]),
        .I1(nn_res_in[6]),
        .I2(nn_res_in[7]),
        .I3(nn_res_in[8]),
        .I4(nn_res_in[9]),
        .I5(led_ctrl2_INST_0_i_7_n_0),
        .O(led_ctrl2_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFE)) 
    led_ctrl2_INST_0_i_4
       (.I0(nn_res_in[13]),
        .I1(nn_res_in[14]),
        .I2(nn_res_in[15]),
        .I3(nn_res_in[16]),
        .I4(nn_res_in[17]),
        .I5(led_ctrl2_INST_0_i_8_n_0),
        .O(led_ctrl2_INST_0_i_4_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    led_ctrl2_INST_0_i_5
       (.I0(nn_res_in[21]),
        .I1(nn_res_in[20]),
        .I2(nn_res_in[19]),
        .I3(nn_res_in[18]),
        .I4(nn_res_in[17]),
        .O(led_ctrl2_INST_0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7E)) 
    led_ctrl2_INST_0_i_6
       (.I0(nn_res_in[25]),
        .I1(nn_res_in[26]),
        .I2(nn_res_in[27]),
        .O(led_ctrl2_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'h7BFBFFFBFFFBFFFA)) 
    led_ctrl2_INST_0_i_7
       (.I0(nn_res_in[5]),
        .I1(nn_res_in[1]),
        .I2(nn_res_in[4]),
        .I3(nn_res_in[3]),
        .I4(nn_res_in[2]),
        .I5(nn_res_in[0]),
        .O(led_ctrl2_INST_0_i_7_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    led_ctrl2_INST_0_i_8
       (.I0(nn_res_in[13]),
        .I1(nn_res_in[12]),
        .I2(nn_res_in[11]),
        .I3(nn_res_in[10]),
        .I4(nn_res_in[9]),
        .O(led_ctrl2_INST_0_i_8_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    led_ctrl3_INST_0
       (.I0(led_ctrl3_INST_0_i_1_n_0),
        .I1(led_ctrl3_INST_0_i_2_n_0),
        .I2(led_ctrl3_INST_0_i_3_n_0),
        .O(led_ctrl3));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBEFF)) 
    led_ctrl3_INST_0_i_1
       (.I0(led_ctrl3_INST_0_i_4_n_0),
        .I1(nn_res_in[31]),
        .I2(nn_res_in[30]),
        .I3(nn_res_in[2]),
        .I4(led_ctrl3_INST_0_i_5_n_0),
        .I5(led_ctrl3_INST_0_i_6_n_0),
        .O(led_ctrl3_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hEFFFFFFE)) 
    led_ctrl3_INST_0_i_2
       (.I0(led_ctrl3_INST_0_i_7_n_0),
        .I1(led_ctrl3_INST_0_i_8_n_0),
        .I2(nn_res_in[26]),
        .I3(nn_res_in[27]),
        .I4(nn_res_in[28]),
        .O(led_ctrl3_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFE)) 
    led_ctrl3_INST_0_i_3
       (.I0(nn_res_in[12]),
        .I1(nn_res_in[13]),
        .I2(nn_res_in[14]),
        .I3(nn_res_in[15]),
        .I4(nn_res_in[16]),
        .I5(led_ctrl3_INST_0_i_9_n_0),
        .O(led_ctrl3_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h7EFFFFFFFFFFFF7E)) 
    led_ctrl3_INST_0_i_4
       (.I0(nn_res_in[30]),
        .I1(nn_res_in[29]),
        .I2(nn_res_in[28]),
        .I3(nn_res_in[26]),
        .I4(nn_res_in[25]),
        .I5(nn_res_in[24]),
        .O(led_ctrl3_INST_0_i_4_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    led_ctrl3_INST_0_i_5
       (.I0(nn_res_in[20]),
        .I1(nn_res_in[19]),
        .I2(nn_res_in[18]),
        .I3(nn_res_in[17]),
        .I4(nn_res_in[16]),
        .O(led_ctrl3_INST_0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    led_ctrl3_INST_0_i_6
       (.I0(nn_res_in[24]),
        .I1(nn_res_in[23]),
        .I2(nn_res_in[22]),
        .I3(nn_res_in[21]),
        .I4(nn_res_in[20]),
        .O(led_ctrl3_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    led_ctrl3_INST_0_i_7
       (.I0(nn_res_in[8]),
        .I1(nn_res_in[7]),
        .I2(nn_res_in[6]),
        .I3(nn_res_in[5]),
        .I4(nn_res_in[4]),
        .O(led_ctrl3_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'h7F70)) 
    led_ctrl3_INST_0_i_8
       (.I0(nn_res_in[0]),
        .I1(nn_res_in[1]),
        .I2(nn_res_in[3]),
        .I3(nn_res_in[4]),
        .O(led_ctrl3_INST_0_i_8_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    led_ctrl3_INST_0_i_9
       (.I0(nn_res_in[12]),
        .I1(nn_res_in[11]),
        .I2(nn_res_in[10]),
        .I3(nn_res_in[9]),
        .I4(nn_res_in[8]),
        .O(led_ctrl3_INST_0_i_9_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    led_ctrl4_INST_0
       (.I0(led_ctrl4_INST_0_i_1_n_0),
        .I1(led_ctrl4_INST_0_i_2_n_0),
        .I2(led_ctrl4_INST_0_i_3_n_0),
        .I3(led_ctrl4_INST_0_i_4_n_0),
        .I4(led_ctrl4_INST_0_i_5_n_0),
        .O(led_ctrl4));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFE)) 
    led_ctrl4_INST_0_i_1
       (.I0(nn_res_in[19]),
        .I1(nn_res_in[20]),
        .I2(nn_res_in[21]),
        .I3(nn_res_in[22]),
        .I4(nn_res_in[23]),
        .I5(led_ctrl4_INST_0_i_6_n_0),
        .O(led_ctrl4_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FF4)) 
    led_ctrl4_INST_0_i_2
       (.I0(nn_res_in[3]),
        .I1(nn_res_in[0]),
        .I2(nn_res_in[1]),
        .I3(nn_res_in[2]),
        .I4(led_ctrl4_INST_0_i_7_n_0),
        .O(led_ctrl4_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h7EFFFFFFFFFFFF7E)) 
    led_ctrl4_INST_0_i_3
       (.I0(nn_res_in[7]),
        .I1(nn_res_in[6]),
        .I2(nn_res_in[5]),
        .I3(nn_res_in[31]),
        .I4(nn_res_in[30]),
        .I5(nn_res_in[29]),
        .O(led_ctrl4_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h7EFFFF7EFFFFFF7E)) 
    led_ctrl4_INST_0_i_4
       (.I0(nn_res_in[29]),
        .I1(nn_res_in[28]),
        .I2(nn_res_in[27]),
        .I3(nn_res_in[5]),
        .I4(nn_res_in[4]),
        .I5(nn_res_in[2]),
        .O(led_ctrl4_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFE)) 
    led_ctrl4_INST_0_i_5
       (.I0(nn_res_in[11]),
        .I1(nn_res_in[12]),
        .I2(nn_res_in[13]),
        .I3(nn_res_in[14]),
        .I4(nn_res_in[15]),
        .I5(led_ctrl4_INST_0_i_8_n_0),
        .O(led_ctrl4_INST_0_i_5_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    led_ctrl4_INST_0_i_6
       (.I0(nn_res_in[19]),
        .I1(nn_res_in[18]),
        .I2(nn_res_in[17]),
        .I3(nn_res_in[16]),
        .I4(nn_res_in[15]),
        .O(led_ctrl4_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    led_ctrl4_INST_0_i_7
       (.I0(nn_res_in[27]),
        .I1(nn_res_in[26]),
        .I2(nn_res_in[25]),
        .I3(nn_res_in[24]),
        .I4(nn_res_in[23]),
        .O(led_ctrl4_INST_0_i_7_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    led_ctrl4_INST_0_i_8
       (.I0(nn_res_in[11]),
        .I1(nn_res_in[10]),
        .I2(nn_res_in[9]),
        .I3(nn_res_in[8]),
        .I4(nn_res_in[7]),
        .O(led_ctrl4_INST_0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[0]_INST_0 
       (.I0(i_BRAM_addr[0]),
        .I1(ap_done),
        .O(o_BRAM_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[10]_INST_0 
       (.I0(i_BRAM_addr[10]),
        .I1(ap_done),
        .O(o_BRAM_addr[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[11]_INST_0 
       (.I0(i_BRAM_addr[11]),
        .I1(ap_done),
        .O(o_BRAM_addr[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[12]_INST_0 
       (.I0(i_BRAM_addr[12]),
        .I1(ap_done),
        .O(o_BRAM_addr[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[13]_INST_0 
       (.I0(i_BRAM_addr[13]),
        .I1(ap_done),
        .O(o_BRAM_addr[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[14]_INST_0 
       (.I0(i_BRAM_addr[14]),
        .I1(ap_done),
        .O(o_BRAM_addr[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[15]_INST_0 
       (.I0(i_BRAM_addr[15]),
        .I1(ap_done),
        .O(o_BRAM_addr[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[16]_INST_0 
       (.I0(i_BRAM_addr[16]),
        .I1(ap_done),
        .O(o_BRAM_addr[16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[17]_INST_0 
       (.I0(i_BRAM_addr[17]),
        .I1(ap_done),
        .O(o_BRAM_addr[17]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[18]_INST_0 
       (.I0(i_BRAM_addr[18]),
        .I1(ap_done),
        .O(o_BRAM_addr[18]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[19]_INST_0 
       (.I0(i_BRAM_addr[19]),
        .I1(ap_done),
        .O(o_BRAM_addr[19]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[1]_INST_0 
       (.I0(i_BRAM_addr[1]),
        .I1(ap_done),
        .O(o_BRAM_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[20]_INST_0 
       (.I0(i_BRAM_addr[20]),
        .I1(ap_done),
        .O(o_BRAM_addr[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[21]_INST_0 
       (.I0(i_BRAM_addr[21]),
        .I1(ap_done),
        .O(o_BRAM_addr[21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[22]_INST_0 
       (.I0(i_BRAM_addr[22]),
        .I1(ap_done),
        .O(o_BRAM_addr[22]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[23]_INST_0 
       (.I0(i_BRAM_addr[23]),
        .I1(ap_done),
        .O(o_BRAM_addr[23]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[24]_INST_0 
       (.I0(i_BRAM_addr[24]),
        .I1(ap_done),
        .O(o_BRAM_addr[24]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[25]_INST_0 
       (.I0(i_BRAM_addr[25]),
        .I1(ap_done),
        .O(o_BRAM_addr[25]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[26]_INST_0 
       (.I0(i_BRAM_addr[26]),
        .I1(ap_done),
        .O(o_BRAM_addr[26]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[27]_INST_0 
       (.I0(i_BRAM_addr[27]),
        .I1(ap_done),
        .O(o_BRAM_addr[27]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[28]_INST_0 
       (.I0(i_BRAM_addr[28]),
        .I1(ap_done),
        .O(o_BRAM_addr[28]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[29]_INST_0 
       (.I0(i_BRAM_addr[29]),
        .I1(ap_done),
        .O(o_BRAM_addr[29]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[2]_INST_0 
       (.I0(i_BRAM_addr[2]),
        .I1(ap_done),
        .O(o_BRAM_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_BRAM_addr[30]_INST_0 
       (.I0(i_BRAM_addr[30]),
        .I1(ap_done),
        .O(o_BRAM_addr[30]));
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[31]_INST_0 
       (.I0(i_BRAM_addr[31]),
        .I1(ap_done),
        .O(o_BRAM_addr[31]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[3]_INST_0 
       (.I0(i_BRAM_addr[3]),
        .I1(ap_done),
        .O(o_BRAM_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[4]_INST_0 
       (.I0(i_BRAM_addr[4]),
        .I1(ap_done),
        .O(o_BRAM_addr[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[5]_INST_0 
       (.I0(i_BRAM_addr[5]),
        .I1(ap_done),
        .O(o_BRAM_addr[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[6]_INST_0 
       (.I0(i_BRAM_addr[6]),
        .I1(ap_done),
        .O(o_BRAM_addr[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[7]_INST_0 
       (.I0(i_BRAM_addr[7]),
        .I1(ap_done),
        .O(o_BRAM_addr[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_BRAM_addr[8]_INST_0 
       (.I0(i_BRAM_addr[8]),
        .I1(ap_done),
        .O(o_BRAM_addr[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_BRAM_addr[9]_INST_0 
       (.I0(i_BRAM_addr[9]),
        .I1(ap_done),
        .O(o_BRAM_addr[9]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 start_signal1_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({start_signal1_carry_n_0,start_signal1_carry_n_1,start_signal1_carry_n_2,start_signal1_carry_n_3,start_signal1_carry_n_4,start_signal1_carry_n_5,start_signal1_carry_n_6,start_signal1_carry_n_7}),
        .DI({start_signal1_carry_i_1_n_0,start_signal1_carry_i_2_n_0,start_signal1_carry_i_3_n_0,start_signal1_carry_i_4_n_0,start_signal1_carry_i_5_n_0,start_signal1_carry_i_6_n_0,start_signal1_carry_i_7_n_0,start_signal1_carry_i_8_n_0}),
        .O(NLW_start_signal1_carry_O_UNCONNECTED[7:0]),
        .S({start_signal1_carry_i_9_n_0,start_signal1_carry_i_10_n_0,start_signal1_carry_i_11_n_0,start_signal1_carry_i_12_n_0,start_signal1_carry_i_13_n_0,start_signal1_carry_i_14_n_0,start_signal1_carry_i_15_n_0,start_signal1_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 start_signal1_carry__0
       (.CI(start_signal1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({start_signal1_carry__0_n_0,start_signal1_carry__0_n_1,start_signal1_carry__0_n_2,start_signal1_carry__0_n_3,start_signal1_carry__0_n_4,start_signal1_carry__0_n_5,start_signal1_carry__0_n_6,start_signal1_carry__0_n_7}),
        .DI({start_signal1_carry__0_i_1_n_0,start_signal1_carry__0_i_2_n_0,start_signal1_carry__0_i_3_n_0,start_signal1_carry__0_i_4_n_0,start_signal1_carry__0_i_5_n_0,start_signal1_carry__0_i_6_n_0,start_signal1_carry__0_i_7_n_0,start_signal1_carry__0_i_8_n_0}),
        .O(NLW_start_signal1_carry__0_O_UNCONNECTED[7:0]),
        .S({start_signal1_carry__0_i_9_n_0,start_signal1_carry__0_i_10_n_0,start_signal1_carry__0_i_11_n_0,start_signal1_carry__0_i_12_n_0,start_signal1_carry__0_i_13_n_0,start_signal1_carry__0_i_14_n_0,start_signal1_carry__0_i_15_n_0,start_signal1_carry__0_i_16_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    start_signal1_carry__0_i_1
       (.I0(cnt_reg[30]),
        .I1(cnt_reg[31]),
        .O(start_signal1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_signal1_carry__0_i_10
       (.I0(cnt_reg[28]),
        .I1(cnt_reg[29]),
        .O(start_signal1_carry__0_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_signal1_carry__0_i_11
       (.I0(cnt_reg[26]),
        .I1(cnt_reg[27]),
        .O(start_signal1_carry__0_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_signal1_carry__0_i_12
       (.I0(cnt_reg[24]),
        .I1(cnt_reg[25]),
        .O(start_signal1_carry__0_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_signal1_carry__0_i_13
       (.I0(cnt_reg[22]),
        .I1(cnt_reg[23]),
        .O(start_signal1_carry__0_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_signal1_carry__0_i_14
       (.I0(cnt_reg[20]),
        .I1(cnt_reg[21]),
        .O(start_signal1_carry__0_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_signal1_carry__0_i_15
       (.I0(cnt_reg[18]),
        .I1(cnt_reg[19]),
        .O(start_signal1_carry__0_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_signal1_carry__0_i_16
       (.I0(cnt_reg[16]),
        .I1(cnt_reg[17]),
        .O(start_signal1_carry__0_i_16_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_signal1_carry__0_i_2
       (.I0(cnt_reg[28]),
        .I1(cnt_reg[29]),
        .O(start_signal1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_signal1_carry__0_i_3
       (.I0(cnt_reg[26]),
        .I1(cnt_reg[27]),
        .O(start_signal1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_signal1_carry__0_i_4
       (.I0(cnt_reg[24]),
        .I1(cnt_reg[25]),
        .O(start_signal1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_signal1_carry__0_i_5
       (.I0(cnt_reg[22]),
        .I1(cnt_reg[23]),
        .O(start_signal1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_signal1_carry__0_i_6
       (.I0(cnt_reg[20]),
        .I1(cnt_reg[21]),
        .O(start_signal1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_signal1_carry__0_i_7
       (.I0(cnt_reg[18]),
        .I1(cnt_reg[19]),
        .O(start_signal1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_signal1_carry__0_i_8
       (.I0(cnt_reg[16]),
        .I1(cnt_reg[17]),
        .O(start_signal1_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_signal1_carry__0_i_9
       (.I0(cnt_reg[30]),
        .I1(cnt_reg[31]),
        .O(start_signal1_carry__0_i_9_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_signal1_carry_i_1
       (.I0(cnt_reg[14]),
        .I1(cnt_reg[15]),
        .O(start_signal1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_signal1_carry_i_10
       (.I0(cnt_reg[12]),
        .I1(cnt_reg[13]),
        .O(start_signal1_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_signal1_carry_i_11
       (.I0(cnt_reg[10]),
        .I1(cnt_reg[11]),
        .O(start_signal1_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_signal1_carry_i_12
       (.I0(cnt_reg[8]),
        .I1(cnt_reg[9]),
        .O(start_signal1_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_signal1_carry_i_13
       (.I0(cnt_reg[6]),
        .I1(cnt_reg[7]),
        .O(start_signal1_carry_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_signal1_carry_i_14
       (.I0(cnt_reg[4]),
        .I1(cnt_reg[5]),
        .O(start_signal1_carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_signal1_carry_i_15
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[3]),
        .O(start_signal1_carry_i_15_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    start_signal1_carry_i_16
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .O(start_signal1_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_signal1_carry_i_2
       (.I0(cnt_reg[12]),
        .I1(cnt_reg[13]),
        .O(start_signal1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_signal1_carry_i_3
       (.I0(cnt_reg[10]),
        .I1(cnt_reg[11]),
        .O(start_signal1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_signal1_carry_i_4
       (.I0(cnt_reg[8]),
        .I1(cnt_reg[9]),
        .O(start_signal1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_signal1_carry_i_5
       (.I0(cnt_reg[6]),
        .I1(cnt_reg[7]),
        .O(start_signal1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_signal1_carry_i_6
       (.I0(cnt_reg[4]),
        .I1(cnt_reg[5]),
        .O(start_signal1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    start_signal1_carry_i_7
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[3]),
        .O(start_signal1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    start_signal1_carry_i_8
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .O(start_signal1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_signal1_carry_i_9
       (.I0(cnt_reg[14]),
        .I1(cnt_reg[15]),
        .O(start_signal1_carry_i_9_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    start_signal_reg
       (.CLR(1'b0),
        .D(start_signal_reg_i_1_n_0),
        .G(start_signal),
        .GE(1'b1),
        .Q(ap_start));
  LUT1 #(
    .INIT(2'h1)) 
    start_signal_reg_i_1
       (.I0(rstb_busy),
        .O(start_signal_reg_i_1_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
