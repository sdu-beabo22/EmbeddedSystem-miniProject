-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Dec 29 17:42:36 2022
-- Host        : sdu-Standard-PC-Q35-ICH9-2009 running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/sdu/Documents/embeddedSystems/project/miniproject/vivado/ArmNet/ArmNet.gen/sources_1/bd/design_1/ip/design_1_not_gate_0_0/design_1_not_gate_0_0_sim_netlist.vhdl
-- Design      : design_1_not_gate_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_not_gate_0_0 is
  port (
    i_in : in STD_LOGIC;
    o_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_not_gate_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_not_gate_0_0 : entity is "design_1_not_gate_0_0,not_gate,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_not_gate_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_not_gate_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_not_gate_0_0 : entity is "not_gate,Vivado 2020.2";
end design_1_not_gate_0_0;

architecture STRUCTURE of design_1_not_gate_0_0 is
begin
o_out_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_in,
      O => o_out
    );
end STRUCTURE;
