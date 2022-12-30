-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_17_rom is 
    generic(
             DWIDTH     : integer := 8; 
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


architecture rtl of nn_inference_layer2_weights_V_17_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10110000", 1 => "11011001", 2 => "01010110", 3 => "00011011", 
    4 => "00100110", 5 => "00001011", 6 => "11001011", 7 => "11001010", 
    8 => "11100001", 9 => "00011001", 10 => "00010000", 11 => "11111110", 
    12 => "11010100", 13 to 14=> "11101000", 15 => "00110111", 16 => "11111111", 
    17 => "00111000", 18 => "10111111", 19 => "00000101", 20 => "00000011", 
    21 => "11100000", 22 => "10111100", 23 => "00011010", 24 => "11111010", 
    25 => "00100101", 26 => "11011101", 27 => "00000010", 28 => "11100111", 
    29 => "00001101", 30 => "00000101", 31 => "00011000", 32 => "10111110", 
    33 => "11011000", 34 => "11110110", 35 => "00100011", 36 => "11000010", 
    37 => "11001000", 38 => "00100111", 39 => "11010111", 40 => "00010101", 
    41 => "11110010", 42 => "00001011", 43 => "11000010", 44 => "11110100", 
    45 => "00010001", 46 => "00111010", 47 => "00000101", 48 => "00110000", 
    49 => "00001110", 50 => "00100001", 51 => "11111101", 52 => "11010100", 
    53 => "00010010", 54 => "11011110", 55 => "11101000", 56 => "11001011", 
    57 => "11111101", 58 => "11010000", 59 => "11111111", 60 => "11100101", 
    61 => "11101010", 62 => "00010010", 63 => "11011010" );


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

entity nn_inference_layer2_weights_V_17 is
    generic (
        DataWidth : INTEGER := 8;
        AddressRange : INTEGER := 64;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of nn_inference_layer2_weights_V_17 is
    component nn_inference_layer2_weights_V_17_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_17_rom_U :  component nn_inference_layer2_weights_V_17_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


