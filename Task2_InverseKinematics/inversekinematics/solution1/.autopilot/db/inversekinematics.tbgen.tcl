set moduleName inversekinematics
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {inversekinematics}
set C_modelType { void 0 }
set C_modelArgList {
	{ din int 32 regular {array 2048 { 1 3 } 1 1 }  }
	{ dout int 32 regular {array 2048 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "din", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "din","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dout", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dout","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ din_address0 sc_out sc_lv 11 signal 0 } 
	{ din_ce0 sc_out sc_logic 1 signal 0 } 
	{ din_q0 sc_in sc_lv 32 signal 0 } 
	{ dout_address0 sc_out sc_lv 11 signal 1 } 
	{ dout_ce0 sc_out sc_logic 1 signal 1 } 
	{ dout_we0 sc_out sc_logic 1 signal 1 } 
	{ dout_d0 sc_out sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "din_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "din", "role": "address0" }} , 
 	{ "name": "din_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "din", "role": "ce0" }} , 
 	{ "name": "din_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "din", "role": "q0" }} , 
 	{ "name": "dout_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "dout", "role": "address0" }} , 
 	{ "name": "dout_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout", "role": "ce0" }} , 
 	{ "name": "dout_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout", "role": "we0" }} , 
 	{ "name": "dout_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dout", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "29", "57", "62", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74"],
		"CDFG" : "inversekinematics",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "142", "EstimateLatencyMax" : "339",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "din", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dout", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_pow_generic_double_s_fu_198", "Port" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V"},
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_169", "Port" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log0_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_double_0_5_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_pow_generic_double_s_fu_198", "Port" : "pow_reduce_anonymous_namespace_log0_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_double_0_5_64_array_V"},
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_169", "Port" : "pow_reduce_anonymous_namespace_log0_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_double_0_5_64_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_4_4_16_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_pow_generic_double_s_fu_198", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_4_4_16_array_V"},
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_169", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_4_4_16_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_7_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_pow_generic_double_s_fu_198", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_7_6_64_array_V"},
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_169", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_7_6_64_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_12_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_pow_generic_double_s_fu_198", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_12_6_64_array_V"},
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_169", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_12_6_64_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_17_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_pow_generic_double_s_fu_198", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_17_6_64_array_V"},
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_169", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_17_6_64_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_22_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_pow_generic_double_s_fu_198", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_22_6_64_array_V"},
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_169", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_22_6_64_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_27_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_pow_generic_double_s_fu_198", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_27_6_64_array_V"},
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_169", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_27_6_64_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_32_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_pow_generic_double_s_fu_198", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_32_6_64_array_V"},
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_169", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_32_6_64_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_pow_generic_double_s_fu_198", "Port" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"},
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_169", "Port" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_pow_generic_double_s_fu_198", "Port" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"},
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_169", "Port" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_pow_generic_double_s_fu_198", "Port" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"},
					{"ID" : "1", "SubInstance" : "grp_pow_generic_double_s_fu_169", "Port" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V"}]},
			{"Name" : "cordic_apfixed_circ_table_arctan_128_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_generic_asin_double_s_fu_235", "Port" : "cordic_apfixed_circ_table_arctan_128_V"}]},
			{"Name" : "cordic_ctab_table_128_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_atan2_cordic_double_s_fu_227", "Port" : "cordic_ctab_table_128_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28"],
		"CDFG" : "pow_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "23", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "base_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log0_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_double_0_5_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_4_4_16_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_7_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_12_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_17_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_22_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_27_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_32_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.pow_reduce_anonymous_namespace_log0_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_double_0_5_64_array_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_4_4_16_array_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_7_6_64_array_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_12_6_64_array_V_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_17_6_64_array_V_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_22_6_64_array_V_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_27_6_64_array_V_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_32_6_64_array_V_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.mul_54s_6ns_54_1_1_U1", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.mul_71ns_4ns_75_1_1_U2", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.mul_73ns_6ns_79_1_1_U3", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.mul_83ns_6ns_89_1_1_U4", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.mul_92ns_6ns_98_1_1_U5", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.mul_87ns_6ns_93_1_1_U6", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.mul_82ns_6ns_88_1_1_U7", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.mul_77ns_6ns_83_1_1_U8", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.mul_12s_80ns_90_1_1_U9", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.mul_40ns_40ns_80_1_1_U10", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.mul_13s_71s_71_1_1_U11", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.mul_43ns_36ns_79_1_1_U12", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.mul_49ns_44ns_93_1_1_U13", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.mul_50ns_50ns_100_1_1_U14", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_169.mac_muladd_16s_16ns_19s_31_4_1_U15", "Parent" : "1"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198", "Parent" : "0", "Child" : ["30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56"],
		"CDFG" : "pow_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "23", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "base_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log0_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_double_0_5_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_4_4_16_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_7_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_12_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_17_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_22_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_27_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_32_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.pow_reduce_anonymous_namespace_log0_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_double_0_5_64_array_V_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_4_4_16_array_V_U", "Parent" : "29"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_7_6_64_array_V_U", "Parent" : "29"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_12_6_64_array_V_U", "Parent" : "29"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_17_6_64_array_V_U", "Parent" : "29"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_22_6_64_array_V_U", "Parent" : "29"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_27_6_64_array_V_U", "Parent" : "29"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_32_6_64_array_V_U", "Parent" : "29"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "29"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "29"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V_U", "Parent" : "29"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.mul_54s_6ns_54_1_1_U1", "Parent" : "29"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.mul_71ns_4ns_75_1_1_U2", "Parent" : "29"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.mul_73ns_6ns_79_1_1_U3", "Parent" : "29"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.mul_83ns_6ns_89_1_1_U4", "Parent" : "29"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.mul_92ns_6ns_98_1_1_U5", "Parent" : "29"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.mul_87ns_6ns_93_1_1_U6", "Parent" : "29"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.mul_82ns_6ns_88_1_1_U7", "Parent" : "29"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.mul_77ns_6ns_83_1_1_U8", "Parent" : "29"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.mul_12s_80ns_90_1_1_U9", "Parent" : "29"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.mul_40ns_40ns_80_1_1_U10", "Parent" : "29"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.mul_13s_71s_71_1_1_U11", "Parent" : "29"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.mul_43ns_36ns_79_1_1_U12", "Parent" : "29"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.mul_49ns_44ns_93_1_1_U13", "Parent" : "29"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.mul_50ns_50ns_100_1_1_U14", "Parent" : "29"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pow_generic_double_s_fu_198.mac_muladd_16s_16ns_19s_31_4_1_U15", "Parent" : "29"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_double_s_fu_227", "Parent" : "0", "Child" : ["58", "61"],
		"CDFG" : "atan2_cordic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "109",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "cordic_ctab_table_128_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_atan2_generic_double_s_fu_163", "Port" : "cordic_ctab_table_128_V"}]}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_double_s_fu_227.grp_atan2_generic_double_s_fu_163", "Parent" : "57", "Child" : ["59", "60"],
		"CDFG" : "atan2_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "94",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "cordic_ctab_table_128_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_double_s_fu_227.grp_atan2_generic_double_s_fu_163.cordic_ctab_table_128_V_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_double_s_fu_227.grp_atan2_generic_double_s_fu_163.ddiv_64ns_64ns_64_22_no_dsp_1_U46", "Parent" : "58"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_atan2_cordic_double_s_fu_227.dcmp_64ns_64ns_1_2_no_dsp_1_U51", "Parent" : "57"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_generic_asin_double_s_fu_235", "Parent" : "0", "Child" : ["63"],
		"CDFG" : "generic_asin_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "90",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "cordic_apfixed_circ_table_arctan_128_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_asin_double_s_fu_235.cordic_apfixed_circ_table_arctan_128_V_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U56", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U57", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U58", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fptrunc_64ns_32_2_no_dsp_1_U59", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U60", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U61", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadddsub_64ns_64ns_64_5_full_dsp_1_U62", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_5_full_dsp_1_U63", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_6_max_dsp_1_U64", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_22_no_dsp_1_U65", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsqrt_64ns_64ns_64_30_no_dsp_1_U66", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	inversekinematics {
		din {Type I LastRead 1 FirstWrite -1}
		dout {Type O LastRead -1 FirstWrite 132}
		pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log0_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_double_0_5_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_4_4_16_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_7_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_12_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_17_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_22_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_27_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_32_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		cordic_apfixed_circ_table_arctan_128_V {Type I LastRead -1 FirstWrite -1}
		cordic_ctab_table_128_V {Type I LastRead -1 FirstWrite -1}}
	pow_generic_double_s {
		base_r {Type I LastRead 0 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log0_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_double_0_5_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_4_4_16_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_7_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_12_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_17_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_22_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_27_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_32_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}}
	pow_generic_double_s {
		base_r {Type I LastRead 0 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log0_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_double_0_5_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_4_4_16_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_7_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_12_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_17_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_22_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_27_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_121_12_ap_q_mode_5_ap_o_mode_3_0_32_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_V {Type I LastRead -1 FirstWrite -1}}
	atan2_cordic_double_s {
		y_in {Type I LastRead 0 FirstWrite -1}
		x_in {Type I LastRead 0 FirstWrite -1}
		cordic_ctab_table_128_V {Type I LastRead -1 FirstWrite -1}}
	atan2_generic_double_s {
		y_in {Type I LastRead 0 FirstWrite -1}
		x_in {Type I LastRead 0 FirstWrite -1}
		cordic_ctab_table_128_V {Type I LastRead -1 FirstWrite -1}}
	generic_asin_double_s {
		in_r {Type I LastRead 0 FirstWrite -1}
		cordic_apfixed_circ_table_arctan_128_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "142", "Max" : "339"}
	, {"Name" : "Interval", "Min" : "143", "Max" : "340"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	din { ap_memory {  { din_address0 mem_address 1 11 }  { din_ce0 mem_ce 1 1 }  { din_q0 mem_dout 0 32 } } }
	dout { ap_memory {  { dout_address0 mem_address 1 11 }  { dout_ce0 mem_ce 1 1 }  { dout_we0 mem_we 1 1 }  { dout_d0 mem_din 1 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
