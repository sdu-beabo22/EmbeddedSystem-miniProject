-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_1_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_1_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11101100", 1 => "10011010", 2 => "10111111", 3 => "01110101", 
    4 => "01000110", 5 => "10110111", 6 => "00011011", 7 => "11000111", 
    8 => "00010101", 9 => "00001100", 10 => "11010001", 11 => "11101111", 
    12 => "11100110", 13 => "01011111", 14 => "10111110", 15 => "01111001", 
    16 => "00110010", 17 => "11101001", 18 => "01011010", 19 => "00101100", 
    20 => "00101001", 21 => "10010000", 22 => "11000010", 23 => "01011011", 
    24 => "00110111", 25 => "00010000", 26 => "00100111", 27 => "10110011", 
    28 => "00001010", 29 => "11101101", 30 => "11101000", 31 => "11010000", 
    32 => "11001001", 33 => "11001100", 34 => "00100000", 35 => "00011010", 
    36 => "10100001", 37 => "10100110", 38 => "11100000", 39 => "01000001", 
    40 => "01001000", 41 => "10101101", 42 => "01011101", 43 => "01001101", 
    44 => "10011000", 45 => "11001011", 46 => "00010011", 47 => "00110111", 
    48 => "01000110", 49 => "00101010", 50 => "00110110", 51 => "10011000", 
    52 => "01011001", 53 => "01001000", 54 => "10010000", 55 => "11011110", 
    56 => "11000010", 57 => "11101110", 58 => "10101011", 59 => "11011010", 
    60 => "10110110", 61 => "11101000", 62 => "01000000", 63 => "11000100" );


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

entity nn_inference_layer2_weights_V_1 is
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

architecture arch of nn_inference_layer2_weights_V_1 is
    component nn_inference_layer2_weights_V_1_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_1_rom_U :  component nn_inference_layer2_weights_V_1_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


