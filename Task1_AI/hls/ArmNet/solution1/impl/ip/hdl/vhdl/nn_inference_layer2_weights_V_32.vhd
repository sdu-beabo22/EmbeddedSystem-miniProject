-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_32_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_32_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11001010", 1 => "11101001", 2 => "00011011", 3 => "00101100", 
    4 => "00011100", 5 => "11101111", 6 => "00101001", 7 => "11111011", 
    8 => "11100110", 9 to 10=> "00100011", 11 => "11010100", 12 => "00010010", 
    13 => "11011100", 14 => "11011001", 15 => "00110111", 16 => "00110000", 
    17 => "11011110", 18 => "11100100", 19 => "11101111", 20 => "00011101", 
    21 => "11111011", 22 => "11001000", 23 => "00011011", 24 => "11111010", 
    25 => "00100101", 26 => "01000011", 27 => "11100100", 28 => "00000010", 
    29 => "11110100", 30 => "11101001", 31 => "11011000", 32 => "10011100", 
    33 => "11100101", 34 => "00001100", 35 => "00111010", 36 => "11011110", 
    37 => "11011000", 38 => "11011011", 39 => "11101100", 40 => "00010000", 
    41 => "11000101", 42 => "00010111", 43 => "10111000", 44 => "10101101", 
    45 => "00010101", 46 => "11111010", 47 => "11010010", 48 => "00100100", 
    49 => "11101111", 50 => "00110100", 51 => "11101100", 52 => "00001010", 
    53 => "00100100", 54 => "00000101", 55 => "11010111", 56 => "00001011", 
    57 => "11001000", 58 => "11111100", 59 => "11110100", 60 => "11101100", 
    61 => "00101000", 62 => "11101110", 63 => "11111101" );


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

entity nn_inference_layer2_weights_V_32 is
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

architecture arch of nn_inference_layer2_weights_V_32 is
    component nn_inference_layer2_weights_V_32_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_32_rom_U :  component nn_inference_layer2_weights_V_32_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


