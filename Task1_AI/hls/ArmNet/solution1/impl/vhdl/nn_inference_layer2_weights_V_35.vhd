-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_35_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_35_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00010011", 1 => "01110010", 2 => "11100010", 3 => "11000100", 
    4 => "00001000", 5 => "01000001", 6 => "00110010", 7 => "00011010", 
    8 => "00101100", 9 => "11111010", 10 => "01011001", 11 => "01001101", 
    12 => "01000100", 13 => "11101010", 14 => "11011000", 15 => "10100110", 
    16 => "10111100", 17 => "11101001", 18 => "10111110", 19 => "11010011", 
    20 => "11111101", 21 => "01011100", 22 => "11111110", 23 => "11001010", 
    24 => "00110100", 25 => "10101111", 26 => "00100111", 27 => "00001000", 
    28 => "11010001", 29 => "11001011", 30 => "10011111", 31 => "00011101", 
    32 => "11111011", 33 => "00011101", 34 => "00110011", 35 => "11100001", 
    36 => "00111011", 37 => "00110100", 38 => "11101000", 39 => "00101101", 
    40 => "10011010", 41 => "01100101", 42 => "10110001", 43 => "00011001", 
    44 => "00011101", 45 => "11001111", 46 => "11100000", 47 => "00101001", 
    48 => "10011101", 49 => "00100100", 50 => "11001101", 51 => "01100001", 
    52 => "11101011", 53 => "10011000", 54 => "00101100", 55 => "00110010", 
    56 => "00110110", 57 => "00010010", 58 => "11110111", 59 => "00001101", 
    60 => "00011111", 61 => "10101100", 62 => "10110100", 63 => "00100000" );


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

entity nn_inference_layer2_weights_V_35 is
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

architecture arch of nn_inference_layer2_weights_V_35 is
    component nn_inference_layer2_weights_V_35_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_35_rom_U :  component nn_inference_layer2_weights_V_35_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


