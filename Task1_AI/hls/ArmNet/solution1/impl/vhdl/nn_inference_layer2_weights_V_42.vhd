-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_42_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_42_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11010001", 1 => "11100110", 2 => "00100101", 3 => "01000100", 
    4 => "11110010", 5 => "11111100", 6 => "00101100", 7 => "10111110", 
    8 => "11111000", 9 => "11100101", 10 => "00101011", 11 => "11011001", 
    12 => "11111100", 13 => "00011110", 14 => "11110111", 15 => "11101101", 
    16 => "00100011", 17 => "00110001", 18 => "11101100", 19 => "00010000", 
    20 => "11010101", 21 => "00010000", 22 => "10110100", 23 => "11110110", 
    24 => "11010010", 25 => "00000101", 26 => "11100101", 27 => "10101101", 
    28 => "00011011", 29 => "00110010", 30 => "00110001", 31 => "10111000", 
    32 => "10111100", 33 => "11011111", 34 => "01001111", 35 => "01000111", 
    36 => "11000111", 37 => "11010111", 38 => "00110011", 39 => "00001101", 
    40 => "00111010", 41 => "10101100", 42 => "00101010", 43 => "11011110", 
    44 => "10111000", 45 => "11000111", 46 => "00111001", 47 => "11100011", 
    48 => "00010010", 49 => "11111010", 50 => "00001110", 51 => "11010000", 
    52 => "00000011", 53 => "00110010", 54 => "10101111", 55 => "00110101", 
    56 => "11110010", 57 => "11101011", 58 => "00000111", 59 => "11011100", 
    60 => "11100111", 61 => "11101001", 62 => "00111100", 63 => "00011000" );


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

entity nn_inference_layer2_weights_V_42 is
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

architecture arch of nn_inference_layer2_weights_V_42 is
    component nn_inference_layer2_weights_V_42_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_42_rom_U :  component nn_inference_layer2_weights_V_42_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


