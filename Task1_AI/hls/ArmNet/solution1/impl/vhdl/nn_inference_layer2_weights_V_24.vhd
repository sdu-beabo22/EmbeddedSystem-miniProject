-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_24_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_24_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00101111", 1 => "01000011", 2 => "11100010", 3 => "00011000", 
    4 => "00000000", 5 => "11101001", 6 => "00111001", 7 => "00010010", 
    8 => "01010110", 9 => "00000011", 10 => "00110000", 11 => "00010110", 
    12 => "00101010", 13 => "00101011", 14 => "11101001", 15 => "10111000", 
    16 => "11110101", 17 => "10101011", 18 => "00100011", 19 => "00000001", 
    20 => "11101110", 21 => "00101010", 22 => "01001011", 23 => "11110000", 
    24 => "01000111", 25 => "10111110", 26 => "00011011", 27 => "00111111", 
    28 => "00110011", 29 => "11010111", 30 => "11011100", 31 => "01010010", 
    32 => "01010001", 33 => "11100110", 34 => "11101001", 35 => "10111111", 
    36 => "00011010", 37 => "00010100", 38 => "11010111", 39 => "01011010", 
    40 => "00000011", 41 => "01000100", 42 => "11100011", 43 => "01110110", 
    44 => "00100010", 45 => "11110100", 46 => "10110101", 47 => "00110111", 
    48 => "10101111", 49 => "00100010", 50 => "11110101", 51 => "01001101", 
    52 => "00011110", 53 => "10110101", 54 => "00100000", 55 => "11111101", 
    56 => "01010001", 57 => "11110110", 58 => "01001000", 59 => "00001000", 
    60 => "00100101", 61 => "10110101", 62 => "10111111", 63 => "00101100" );


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

entity nn_inference_layer2_weights_V_24 is
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

architecture arch of nn_inference_layer2_weights_V_24 is
    component nn_inference_layer2_weights_V_24_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_24_rom_U :  component nn_inference_layer2_weights_V_24_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


