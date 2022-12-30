-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_29_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_29_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10101011", 1 => "11110010", 2 => "11111110", 3 => "11101111", 
    4 => "00100110", 5 => "11111001", 6 => "01001110", 7 => "11100110", 
    8 => "00000001", 9 => "01010111", 10 => "11101010", 11 => "11010000", 
    12 => "00001001", 13 => "00110100", 14 => "00000111", 15 => "00100010", 
    16 => "11111010", 17 => "00011101", 18 => "00010110", 19 => "01001100", 
    20 => "11111110", 21 => "11110000", 22 => "11010010", 23 => "11111111", 
    24 => "01000010", 25 => "01010001", 26 => "00001110", 27 => "11001001", 
    28 => "11011000", 29 => "01001110", 30 => "00101011", 31 => "10110010", 
    32 => "10110111", 33 => "11100010", 34 => "11000001", 35 => "00101100", 
    36 => "10111001", 37 => "11000010", 38 => "00100011", 39 => "11111000", 
    40 => "11101100", 41 => "11000111", 42 => "01000100", 43 => "00011101", 
    44 => "11001100", 45 => "00001100", 46 => "00100100", 47 => "00100101", 
    48 => "00010011", 49 => "01000000", 50 => "00011111", 51 => "00010001", 
    52 => "01001100", 53 => "00111011", 54 => "11010010", 55 => "10101011", 
    56 => "00000001", 57 => "11101110", 58 => "00011000", 59 => "11101010", 
    60 => "00110110", 61 => "00000100", 62 => "00101000", 63 => "11111001" );


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

entity nn_inference_layer2_weights_V_29 is
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

architecture arch of nn_inference_layer2_weights_V_29 is
    component nn_inference_layer2_weights_V_29_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_29_rom_U :  component nn_inference_layer2_weights_V_29_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


