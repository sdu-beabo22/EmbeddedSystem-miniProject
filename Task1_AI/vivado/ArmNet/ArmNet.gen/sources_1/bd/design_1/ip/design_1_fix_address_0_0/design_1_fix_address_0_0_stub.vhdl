-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Dec 29 17:38:26 2022
-- Host        : sdu-Standard-PC-Q35-ICH9-2009 running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/sdu/Documents/embeddedSystems/project/miniproject/vivado/ArmNet/ArmNet.gen/sources_1/bd/design_1/ip/design_1_fix_address_0_0/design_1_fix_address_0_0_stub.vhdl
-- Design      : design_1_fix_address_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_fix_address_0_0 is
  Port ( 
    addr_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    addr_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_fix_address_0_0;

architecture stub of design_1_fix_address_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "addr_in[6:0],addr_out[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fix_address,Vivado 2020.2";
begin
end;
