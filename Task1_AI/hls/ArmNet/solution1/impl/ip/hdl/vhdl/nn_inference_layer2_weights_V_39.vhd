-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_39_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_39_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00010001", 1 => "00110110", 2 => "00000101", 3 => "00010110", 
    4 => "11111111", 5 => "11111100", 6 => "11110011", 7 => "00000010", 
    8 => "11001010", 9 => "00011110", 10 => "00011000", 11 => "11001110", 
    12 => "00011001", 13 => "00101101", 14 => "11101100", 15 => "11000111", 
    16 => "11000100", 17 => "00100000", 18 => "00010111", 19 => "00110010", 
    20 => "11001110", 21 => "00100110", 22 => "00000111", 23 => "11110011", 
    24 => "00101100", 25 => "00010010", 26 => "00000110", 27 => "00000101", 
    28 => "00101010", 29 => "00000000", 30 => "00001100", 31 => "00010010", 
    32 => "11111000", 33 => "11011111", 34 => "11100011", 35 => "00110100", 
    36 => "00101110", 37 => "00001011", 38 => "00000010", 39 => "11010000", 
    40 => "11011011", 41 => "00110101", 42 => "11000011", 43 => "11111111", 
    44 => "11010001", 45 => "01001111", 46 => "00101011", 47 => "00000101", 
    48 => "00101111", 49 => "00101001", 50 => "11110101", 51 => "11010101", 
    52 => "00100110", 53 => "00100101", 54 => "00011010", 55 => "00001111", 
    56 => "00000101", 57 => "00010001", 58 => "00111011", 59 => "11100011", 
    60 => "11101110", 61 => "11010001", 62 => "00100100", 63 => "00101000" );


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

entity nn_inference_layer2_weights_V_39 is
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

architecture arch of nn_inference_layer2_weights_V_39 is
    component nn_inference_layer2_weights_V_39_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_39_rom_U :  component nn_inference_layer2_weights_V_39_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


