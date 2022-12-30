-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_37_rom is 
    generic(
             DWIDTH     : integer := 9; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 64
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of nn_inference_layer2_weights_V_37_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000101111", 1 => "000110100", 2 => "101111001", 3 => "110010110", 
    4 => "000001110", 5 => "000101010", 6 => "111011011", 7 => "000011100", 
    8 => "111100111", 9 => "111101110", 10 => "000000100", 11 => "000100011", 
    12 => "001011110", 13 => "111101000", 14 => "000110010", 15 => "110101101", 
    16 => "110101010", 17 => "111101010", 18 => "111001110", 19 => "111110100", 
    20 => "111011000", 21 => "000101001", 22 => "000010101", 23 => "111010001", 
    24 => "000011011", 25 => "111010110", 26 => "000111111", 27 => "001010000", 
    28 => "000110000", 29 => "110111001", 30 => "110101100", 31 => "000101000", 
    32 => "001011001", 33 => "111110111", 34 => "001011110", 35 => "111011001", 
    36 => "000100100", 37 => "111110011", 38 => "000011011", 39 => "111111010", 
    40 => "110001010", 41 => "000100001", 42 => "110110100", 43 => "111000010", 
    44 => "000000010", 45 => "001101101", 46 => "101110111", 47 => "111011011", 
    48 => "110110011", 49 => "111001111", 50 => "101110101", 51 => "000011100", 
    52 => "000001100", 53 => "110001010", 54 => "001101001", 55 => "001000101", 
    56 => "001101111", 57 => "000010111", 58 => "000001000", 59 => "000011110", 
    60 => "111111101", 61 => "111011011", 62 => "110010010", 63 => "000001011" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity nn_inference_layer2_weights_V_37 is
    generic (
        DataWidth : INTEGER := 9;
        AddressRange : INTEGER := 64;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of nn_inference_layer2_weights_V_37 is
    component nn_inference_layer2_weights_V_37_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_37_rom_U :  component nn_inference_layer2_weights_V_37_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


