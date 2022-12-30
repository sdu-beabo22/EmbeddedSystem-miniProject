-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_3_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_3_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "01000000", 1 => "11011110", 2 => "11110111", 3 => "11100011", 
    4 => "00011110", 5 => "11110100", 6 => "00110011", 7 => "00110110", 
    8 => "00011110", 9 => "00110000", 10 => "00101111", 11 => "00000001", 
    12 => "11100101", 13 => "11101010", 14 => "00010100", 15 => "11101010", 
    16 => "11100000", 17 => "00000101", 18 => "00100000", 19 => "00100101", 
    20 => "11000111", 21 => "01001000", 22 => "01001011", 23 => "00011101", 
    24 => "00110011", 25 => "00011000", 26 => "11110101", 27 => "00111010", 
    28 => "11111001", 29 => "11000110", 30 => "11110011", 31 => "00110101", 
    32 => "00101000", 33 => "11101001", 34 => "00000111", 35 => "00000011", 
    36 => "11101001", 37 => "00010100", 38 => "11011010", 39 => "00111111", 
    40 => "11001101", 41 => "00100011", 42 => "10111011", 43 => "00110111", 
    44 => "01000001", 45 => "11001001", 46 => "11001111", 47 => "01000001", 
    48 => "11111011", 49 => "00100010", 50 => "00011000", 51 => "01000001", 
    52 => "00111010", 53 => "11000111", 54 => "00100011", 55 => "00001100", 
    56 => "11101011", 57 => "00011001", 58 => "01001001", 59 => "11010001", 
    60 => "00000010", 61 => "00100011", 62 => "11001100", 63 => "11101010" );


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

entity nn_inference_layer2_weights_V_3 is
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

architecture arch of nn_inference_layer2_weights_V_3 is
    component nn_inference_layer2_weights_V_3_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_3_rom_U :  component nn_inference_layer2_weights_V_3_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


