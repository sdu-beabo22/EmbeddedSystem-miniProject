-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_8_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_8_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11101110", 1 => "11101001", 2 => "00100111", 3 => "00101111", 
    4 => "00001100", 5 => "00110000", 6 => "00010000", 7 => "00010001", 
    8 => "00001111", 9 => "11111111", 10 => "00000010", 11 => "11101110", 
    12 => "11101010", 13 => "00100001", 14 => "00011111", 15 => "01000110", 
    16 => "00000101", 17 => "00000100", 18 => "11010110", 19 => "00101000", 
    20 => "11110111", 21 => "11010010", 22 => "00010010", 23 => "11011101", 
    24 => "00110101", 25 => "00011111", 26 => "11010101", 27 => "00011110", 
    28 => "00010001", 29 => "00111011", 30 => "00010111", 31 => "11110011", 
    32 => "00110011", 33 => "11001110", 34 => "10111001", 35 => "00011110", 
    36 => "00001110", 37 => "11100010", 38 => "11110011", 39 => "00011101", 
    40 => "11011100", 41 => "00011010", 42 => "11110001", 43 => "00101110", 
    44 => "11001100", 45 => "00011000", 46 => "00100101", 47 => "11010000", 
    48 => "11110110", 49 => "11101111", 50 => "00000101", 51 => "11101001", 
    52 => "11110011", 53 => "01000010", 54 => "00100101", 55 => "00101101", 
    56 => "11111100", 57 => "11100001", 58 => "00000010", 59 => "11000100", 
    60 => "11000000", 61 => "11010101", 62 => "01001000", 63 => "11001101" );


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

entity nn_inference_layer2_weights_V_8 is
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

architecture arch of nn_inference_layer2_weights_V_8 is
    component nn_inference_layer2_weights_V_8_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_8_rom_U :  component nn_inference_layer2_weights_V_8_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


