Due to the vitis HLS being poorly made, you will have to upload the source and simulation files independently from the project that are located in the cpp file in this directory (to do it in Vitis HLS you navigate Project > add source/testbench and select the cpp and c files as source and the test file as testbench)

IF YOU WANT TO EXPORT in vitis hls, dont forget to set your system time back to e.g. 2021

Regarding the Vivado project, there is a tcl script that can be used to put everything in place, only the requirements - board and rtl files (also ips) are needed to be present. The files are located in the zip file within the directory.

The files for ROS are consisted of a node and a class file that (im not sure if it can detect or/and work with the bram).
