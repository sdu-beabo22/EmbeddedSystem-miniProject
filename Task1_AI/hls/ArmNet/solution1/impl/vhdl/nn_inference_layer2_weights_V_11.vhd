-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_11_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_11_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00010100", 1 => "01010011", 2 => "11100000", 3 => "00001011", 
    4 => "00011101", 5 => "00111101", 6 => "00011100", 7 => "01000010", 
    8 => "00001111", 9 => "11110100", 10 => "11011001", 11 => "00100001", 
    12 => "11101011", 13 => "00111000", 14 => "11101110", 15 => "10110001", 
    16 => "00000101", 17 => "11010101", 18 => "01000101", 19 => "10110000", 
    20 => "11010001", 21 => "00010111", 22 => "00010000", 23 => "00101101", 
    24 => "00011001", 25 => "11101010", 26 => "11110100", 27 => "00111111", 
    28 => "11110110", 29 => "11001001", 30 => "10101001", 31 => "00110010", 
    32 => "01010011", 33 => "11101110", 34 => "00011011", 35 => "00000100", 
    36 => "00011001", 37 => "01000000", 38 => "00011011", 39 => "00100100", 
    40 => "00001000", 41 => "00010101", 42 => "11110010", 43 => "11101110", 
    44 => "00011100", 45 => "01010000", 46 => "10111001", 47 => "00101010", 
    48 => "11111111", 49 => "11011001", 50 => "10111111", 51 => "00101110", 
    52 => "01000000", 53 => "00001010", 54 => "00011001", 55 => "00001100", 
    56 => "00011100", 57 => "01001010", 58 => "00100100", 59 => "10111101", 
    60 => "01010001", 61 => "10101101", 62 => "11111011", 63 => "11100010" );


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

entity nn_inference_layer2_weights_V_11 is
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

architecture arch of nn_inference_layer2_weights_V_11 is
    component nn_inference_layer2_weights_V_11_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_11_rom_U :  component nn_inference_layer2_weights_V_11_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


