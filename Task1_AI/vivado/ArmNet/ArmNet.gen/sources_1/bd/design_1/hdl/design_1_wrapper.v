//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Thu Dec 29 17:56:06 2022
//Host        : sdu-Standard-PC-Q35-ICH9-2009 running 64-bit Ubuntu 20.04.5 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (led_ctrl1_0,
    led_ctrl2_0,
    led_ctrl3_0,
    led_ctrl4_0);
  output led_ctrl1_0;
  output led_ctrl2_0;
  output led_ctrl3_0;
  output led_ctrl4_0;

  wire led_ctrl1_0;
  wire led_ctrl2_0;
  wire led_ctrl3_0;
  wire led_ctrl4_0;

  design_1 design_1_i
       (.led_ctrl1_0(led_ctrl1_0),
        .led_ctrl2_0(led_ctrl2_0),
        .led_ctrl3_0(led_ctrl3_0),
        .led_ctrl4_0(led_ctrl4_0));
endmodule
