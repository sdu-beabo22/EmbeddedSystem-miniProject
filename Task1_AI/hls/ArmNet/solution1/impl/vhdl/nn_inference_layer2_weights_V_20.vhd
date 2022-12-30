-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_20_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_20_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00100001", 1 => "01000001", 2 => "11111001", 3 => "11001111", 
    4 => "11110110", 5 => "11010001", 6 => "00100011", 7 => "00011001", 
    8 => "00000110", 9 => "11110100", 10 => "00001001", 11 => "00100000", 
    12 => "00110010", 13 => "11110111", 14 => "11100000", 15 => "11101110", 
    16 => "10111011", 17 => "10111100", 18 => "11100001", 19 => "11010111", 
    20 => "11110110", 21 => "00010011", 22 => "00111100", 23 => "00001010", 
    24 => "00110010", 25 => "11000000", 26 => "11010000", 27 => "00100010", 
    28 => "11111101", 29 => "11011100", 30 => "10110100", 31 => "00111000", 
    32 => "00000111", 33 => "00000010", 34 => "00011011", 35 => "11001100", 
    36 => "00011011", 37 => "11111011", 38 => "11010010", 39 => "11100010", 
    40 => "11011111", 41 => "00111010", 42 => "10110010", 43 => "00011100", 
    44 => "00100101", 45 => "01011011", 46 => "11010100", 47 => "11011110", 
    48 => "00001101", 49 => "00011111", 50 => "11011001", 51 => "00101101", 
    52 => "01000001", 53 => "11000100", 54 => "00010111", 55 => "01010100", 
    56 => "00110000", 57 => "11110100", 58 => "00110010", 59 => "00001001", 
    60 => "11110010", 61 => "11001001", 62 => "11010101", 63 => "00000010" );


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

entity nn_inference_layer2_weights_V_20 is
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

architecture arch of nn_inference_layer2_weights_V_20 is
    component nn_inference_layer2_weights_V_20_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_20_rom_U :  component nn_inference_layer2_weights_V_20_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


