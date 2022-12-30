-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_2_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "01101000", 1 => "01010010", 2 => "11101000", 3 => "10101110", 
    4 => "11100001", 5 => "11110011", 6 => "11111100", 7 => "01011101", 
    8 => "10111101", 9 => "10100110", 10 => "11110000", 11 => "00110001", 
    12 => "00100101", 13 => "00011011", 14 => "00110001", 15 => "11110001", 
    16 => "11010111", 17 => "11001000", 18 => "10101001", 19 => "10011110", 
    20 => "11100000", 21 => "11110101", 22 => "00110100", 23 => "10101101", 
    24 => "10110111", 25 => "11011110", 26 => "11010100", 27 => "01011000", 
    28 => "00100010", 29 => "11001101", 30 => "00000110", 31 => "00110000", 
    32 => "01101110", 33 => "11101000", 34 => "11001110", 35 => "10111101", 
    36 => "00011010", 37 => "11110001", 38 => "11110101", 39 => "10110000", 
    40 => "10101011", 41 => "11011001", 42 => "11010101", 43 => "11001110", 
    44 => "11101100", 45 => "00011010", 46 => "00000010", 47 => "10100110", 
    48 => "11110010", 49 => "11100000", 50 => "10110010", 51 => "00010001", 
    52 => "11011100", 53 => "10111101", 54 => "00101100", 55 => "00001000", 
    56 => "11101011", 57 => "00100000", 58 => "00011110", 59 => "00010010", 
    60 => "11011111", 61 => "11100010", 62 => "11111110", 63 => "00001101" );


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

entity nn_inference_layer2_weights_V_2 is
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

architecture arch of nn_inference_layer2_weights_V_2 is
    component nn_inference_layer2_weights_V_2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_2_rom_U :  component nn_inference_layer2_weights_V_2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


