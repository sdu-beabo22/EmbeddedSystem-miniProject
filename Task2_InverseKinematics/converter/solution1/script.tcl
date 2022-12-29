############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project converter
set_top converter
add_files cpp/conversionmodule/converter.cpp
add_files cpp/conversionmodule/converter.h
add_files -tb cpp/conversionmodule/converter_tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-i}
create_clock -period 10 -name default
source "./converter/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl vhdl -format ip_catalog -output /home/gabris/Music/converter.zip
