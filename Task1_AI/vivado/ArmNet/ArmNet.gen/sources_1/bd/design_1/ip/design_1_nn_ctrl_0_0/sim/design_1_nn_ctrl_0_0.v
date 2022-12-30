// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:nn_ctrl:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_nn_ctrl_0_0 (
  i_Clk,
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
  nn_res_in
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_Clk CLK" *)
input wire i_Clk;
input wire ap_ready;
output wire ap_start;
input wire ap_done;
input wire ap_idle;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *)
output wire ap_rst;
input wire rstb_busy;
output wire led_ctrl1;
output wire led_ctrl2;
output wire led_ctrl3;
output wire led_ctrl4;
input wire [31 : 0] i_BRAM_addr;
input wire i_BRAM_ce;
output wire [31 : 0] o_BRAM_addr;
output wire o_BRAM_ce;
output wire [3 : 0] o_BRAM_wr;
output wire [31 : 0] o_BRAM_din;
input wire [31 : 0] nn_res_in;

  nn_ctrl inst (
    .i_Clk(i_Clk),
    .ap_ready(ap_ready),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_rst(ap_rst),
    .rstb_busy(rstb_busy),
    .led_ctrl1(led_ctrl1),
    .led_ctrl2(led_ctrl2),
    .led_ctrl3(led_ctrl3),
    .led_ctrl4(led_ctrl4),
    .i_BRAM_addr(i_BRAM_addr),
    .i_BRAM_ce(i_BRAM_ce),
    .o_BRAM_addr(o_BRAM_addr),
    .o_BRAM_ce(o_BRAM_ce),
    .o_BRAM_wr(o_BRAM_wr),
    .o_BRAM_din(o_BRAM_din),
    .nn_res_in(nn_res_in)
  );
endmodule
