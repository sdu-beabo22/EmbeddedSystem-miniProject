-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_56_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_56_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11000010", 1 => "11010111", 2 => "00010110", 3 => "00101110", 
    4 => "11101101", 5 => "11101111", 6 => "11110110", 7 => "10111110", 
    8 => "11101010", 9 => "00110101", 10 => "11010110", 11 => "11101000", 
    12 => "00010111", 13 => "11111101", 14 => "00011101", 15 => "11110100", 
    16 => "11101100", 17 => "00101000", 18 => "00101101", 19 => "00101001", 
    20 => "11111011", 21 => "11000100", 22 => "00001000", 23 => "00011110", 
    24 => "11100010", 25 => "01000110", 26 => "00001100", 27 => "11111100", 
    28 => "00110101", 29 => "00100100", 30 => "01000101", 31 => "11011011", 
    32 => "00000110", 33 => "11111011", 34 => "00101010", 35 => "11111101", 
    36 => "10110001", 37 => "10111101", 38 => "00001010", 39 => "11110110", 
    40 => "00011000", 41 => "10111011", 42 => "00110111", 43 => "11110000", 
    44 => "00000110", 45 => "11000110", 46 => "00101011", 47 => "00001000", 
    48 => "00011000", 49 => "00110010", 50 => "00011001", 51 => "11110001", 
    52 => "00110101", 53 => "00010011", 54 => "11010010", 55 => "00100001", 
    56 => "11111011", 57 => "11101101", 58 => "11011000", 59 => "00010000", 
    60 => "11000100", 61 => "00010010", 62 => "00011000", 63 => "11101101" );


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

entity nn_inference_layer2_weights_V_56 is
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

architecture arch of nn_inference_layer2_weights_V_56 is
    component nn_inference_layer2_weights_V_56_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_56_rom_U :  component nn_inference_layer2_weights_V_56_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


