-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_47_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_47_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "110111100", 1 => "110011001", 2 => "001100101", 3 => "000111100", 
    4 => "001111100", 5 => "111010111", 6 => "000110100", 7 => "101111011", 
    8 => "001110000", 9 => "000110010", 10 => "111000111", 11 => "110011001", 
    12 => "110100000", 13 => "001011110", 14 => "111001100", 15 => "010000001", 
    16 => "010000111", 17 => "001011101", 18 => "001011001", 19 => "001110000", 
    20 => "111001011", 21 => "111010000", 22 => "110111000", 23 => "001100111", 
    24 => "001111001", 25 => "001000101", 26 => "000010011", 27 => "111011100", 
    28 => "110101101", 29 => "001100111", 30 => "000110000", 31 => "111001010", 
    32 => "110001111", 33 => "111011001", 34 => "111100110", 35 => "000111000", 
    36 => "111100011", 37 => "101110110", 38 => "000011010", 39 => "001111010", 
    40 => "001101011", 41 => "111010010", 42 => "001000110", 43 => "001001011", 
    44 => "110010101", 45 => "110111001", 46 => "000101111", 47 => "001000001", 
    48 => "001010011", 49 => "010000011", 50 => "010000100", 51 => "110010110", 
    52 => "010000011", 53 => "001001111", 54 => "111011101", 55 => "111000101", 
    56 => "110110010", 57 => "110000101", 58 => "111011100", 59 => "111011001", 
    60 => "110101111", 61 => "001000100", 62 => "001111000", 63 => "111011100" );


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

entity nn_inference_layer2_weights_V_47 is
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

architecture arch of nn_inference_layer2_weights_V_47 is
    component nn_inference_layer2_weights_V_47_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_47_rom_U :  component nn_inference_layer2_weights_V_47_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


