-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_19_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_19_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11101001", 1 => "11110111", 2 => "00010111", 3 => "11010010", 
    4 => "00001111", 5 => "11001111", 6 => "11001000", 7 => "00011110", 
    8 => "11111101", 9 => "11100111", 10 => "00001001", 11 => "11011110", 
    12 => "00110001", 13 => "00100110", 14 => "11110011", 15 => "11010011", 
    16 => "00111000", 17 => "00100100", 18 => "11111100", 19 => "11100010", 
    20 => "00101001", 21 => "11111111", 22 => "00111010", 23 => "00000010", 
    24 => "11111110", 25 => "00001000", 26 => "11010101", 27 => "00001100", 
    28 => "11110010", 29 => "00101110", 30 => "00010100", 31 => "00111001", 
    32 => "00001100", 33 => "11001000", 34 => "00100010", 35 => "00100100", 
    36 => "00111101", 37 => "00100000", 38 => "11111010", 39 => "11110011", 
    40 => "11001010", 41 => "11100111", 42 => "00100110", 43 => "11110001", 
    44 => "11011110", 45 => "01000010", 46 => "11010111", 47 => "11110110", 
    48 => "11100101", 49 => "10111100", 50 => "11011011", 51 => "00011000", 
    52 => "10111100", 53 => "11011000", 54 => "11100100", 55 => "11111011", 
    56 => "00101101", 57 => "11011010", 58 => "11110001", 59 => "11101010", 
    60 => "11100011", 61 => "00100111", 62 => "00001000", 63 => "11010010" );


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

entity nn_inference_layer2_weights_V_19 is
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

architecture arch of nn_inference_layer2_weights_V_19 is
    component nn_inference_layer2_weights_V_19_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_19_rom_U :  component nn_inference_layer2_weights_V_19_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


