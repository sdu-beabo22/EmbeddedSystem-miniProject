-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_58_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_58_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10011010", 1 => "11100010", 2 => "01010101", 3 => "01000011", 
    4 => "11111011", 5 => "00001000", 6 => "00000100", 7 => "10111100", 
    8 => "01010000", 9 => "01101011", 10 => "10111110", 11 => "11001101", 
    12 => "10110111", 13 => "11011100", 14 => "00101110", 15 => "00111101", 
    16 => "01101111", 17 => "01110100", 18 => "01001001", 19 => "00111101", 
    20 => "11001010", 21 => "11010000", 22 => "11010100", 23 => "00011100", 
    24 => "01100010", 25 => "01110110", 26 => "00001010", 27 => "10001010", 
    28 => "11111010", 29 => "00100010", 30 => "00101110", 31 => "10101111", 
    32 => "10101010", 33 => "00110001", 34 => "10100110", 35 => "00101110", 
    36 => "11001011", 37 => "10010010", 38 => "11011011", 39 => "01000100", 
    40 => "00001111", 41 => "10100010", 42 => "00010101", 43 => "01000101", 
    44 => "11101101", 45 => "11010011", 46 => "00111011", 47 => "00111110", 
    48 => "01110110", 49 => "01010111", 50 => "00111010", 51 => "10010111", 
    52 => "11111100", 53 => "00110010", 54 => "11001001", 55 => "11010000", 
    56 => "10100101", 57 => "10110010", 58 => "11001110", 59 => "00001111", 
    60 => "11100101", 61 => "01000111", 62 => "00111001", 63 => "11101001" );


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

entity nn_inference_layer2_weights_V_58 is
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

architecture arch of nn_inference_layer2_weights_V_58 is
    component nn_inference_layer2_weights_V_58_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_58_rom_U :  component nn_inference_layer2_weights_V_58_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


