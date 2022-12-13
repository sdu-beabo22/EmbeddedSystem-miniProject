############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project inversekinematics
set_top inversekinematics
add_files ../cpp/inversekinematics.cpp
add_files ../cpp/inversekinematics.h
add_files -tb ../cpp/inversekinematics_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-i}
create_clock -period 10 -name default
#source "./inversekinematics/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
