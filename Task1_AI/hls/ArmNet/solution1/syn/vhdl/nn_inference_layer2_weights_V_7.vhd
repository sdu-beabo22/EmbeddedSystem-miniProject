-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_7_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_7_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11000000", 1 => "11111101", 2 => "00110111", 3 => "01000100", 
    4 => "11100001", 5 => "11101100", 6 => "00100101", 7 => "11111010", 
    8 => "01000101", 9 => "00011100", 10 => "11110001", 11 => "11101001", 
    12 => "11001001", 13 => "00011111", 14 => "11101110", 15 => "00000100", 
    16 => "11111110", 17 => "11111011", 18 => "01000010", 19 => "00111011", 
    20 => "00000110", 21 => "10110000", 22 => "10111100", 23 => "01101001", 
    24 => "00010000", 25 => "00011101", 26 => "00111110", 27 => "10111010", 
    28 => "11100001", 29 to 30=> "11101111", 31 => "11111110", 32 => "11111100", 
    33 => "00001100", 34 => "00011001", 35 => "00111001", 36 => "11010010", 
    37 => "00010001", 38 => "11101110", 39 => "01010100", 40 => "01011111", 
    41 => "11001010", 42 => "01001110", 43 => "00110101", 44 => "11001111", 
    45 => "10000101", 46 => "01100011", 47 => "01011010", 48 => "01001001", 
    49 => "00100100", 50 => "00100011", 51 => "11100101", 52 => "01000011", 
    53 => "00111111", 54 => "11001111", 55 => "11000010", 56 => "10101100", 
    57 => "00000000", 58 => "10111001", 59 => "11011111", 60 => "11100100", 
    61 => "00110000", 62 => "00110111", 63 => "11000011" );


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

entity nn_inference_layer2_weights_V_7 is
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

architecture arch of nn_inference_layer2_weights_V_7 is
    component nn_inference_layer2_weights_V_7_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_7_rom_U :  component nn_inference_layer2_weights_V_7_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


