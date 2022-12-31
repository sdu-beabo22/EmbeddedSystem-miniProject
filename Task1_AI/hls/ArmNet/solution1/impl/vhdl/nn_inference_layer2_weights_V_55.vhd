-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_55_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_55_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00100111", 1 => "00000001", 2 => "11000100", 3 => "11111100", 
    4 => "00001000", 5 => "11100001", 6 => "11101111", 7 => "11100110", 
    8 => "11010111", 9 => "11110111", 10 => "10111101", 11 => "00001011", 
    12 => "11111100", 13 => "11110101", 14 => "11100001", 15 => "00000010", 
    16 => "11100001", 17 => "11100100", 18 => "11010011", 19 => "00110000", 
    20 => "11111010", 21 => "00101100", 22 => "00000111", 23 => "00001011", 
    24 => "11101100", 25 => "11111110", 26 => "11111000", 27 => "00001101", 
    28 => "10111111", 29 => "11110100", 30 => "11101010", 31 => "00111110", 
    32 => "11111000", 33 => "00000111", 34 => "11000011", 35 => "11011000", 
    36 => "01000010", 37 => "00100010", 38 => "11010110", 39 => "00001010", 
    40 => "11101000", 41 => "00011010", 42 => "00110011", 43 => "11110011", 
    44 => "00000101", 45 => "00111011", 46 => "00011100", 47 => "00100111", 
    48 => "11100111", 49 => "11010000", 50 => "00100011", 51 => "00001011", 
    52 => "11100101", 53 => "11011101", 54 => "01000001", 55 => "11010111", 
    56 => "11111000", 57 => "00101110", 58 => "11100000", 59 => "11000010", 
    60 => "11110001", 61 => "00101001", 62 => "11110101", 63 => "11100111" );


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

entity nn_inference_layer2_weights_V_55 is
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

architecture arch of nn_inference_layer2_weights_V_55 is
    component nn_inference_layer2_weights_V_55_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_55_rom_U :  component nn_inference_layer2_weights_V_55_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

