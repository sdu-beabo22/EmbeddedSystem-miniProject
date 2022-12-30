-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_52_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_52_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00101011", 1 => "11010001", 2 => "00011011", 3 => "00010001", 
    4 => "11100101", 5 => "00100000", 6 => "11011110", 7 => "11110100", 
    8 => "00011010", 9 => "00101111", 10 => "00011110", 11 => "00100111", 
    12 => "11010010", 13 => "00010111", 14 => "00101111", 15 => "11100000", 
    16 => "11110101", 17 => "00010100", 18 => "00000111", 19 => "00001001", 
    20 => "11110110", 21 => "11010001", 22 => "11101111", 23 => "11101010", 
    24 => "00000000", 25 => "00010110", 26 => "11011110", 27 => "11110000", 
    28 => "11000100", 29 => "00101001", 30 => "00001101", 31 => "11110101", 
    32 => "11101100", 33 => "00101110", 34 => "00110011", 35 => "11110010", 
    36 => "00010101", 37 => "11110000", 38 => "11011000", 39 => "11011010", 
    40 => "00010101", 41 => "00000011", 42 => "11100100", 43 => "11110001", 
    44 => "11111010", 45 => "11011101", 46 => "11111011", 47 => "00000111", 
    48 => "00100110", 49 => "00000110", 50 => "00011000", 51 => "11011111", 
    52 => "00010101", 53 => "00110000", 54 => "10111100", 55 => "11100001", 
    56 => "11010011", 57 => "00010001", 58 => "11001101", 59 => "11101000", 
    60 => "11101010", 61 => "11110111", 62 => "00011011", 63 => "11100110" );


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

entity nn_inference_layer2_weights_V_52 is
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

architecture arch of nn_inference_layer2_weights_V_52 is
    component nn_inference_layer2_weights_V_52_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_52_rom_U :  component nn_inference_layer2_weights_V_52_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


