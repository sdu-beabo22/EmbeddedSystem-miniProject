-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_14_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_14_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11101111", 1 => "00000101", 2 => "11010101", 3 => "11010001", 
    4 => "00011100", 5 => "11011110", 6 => "00011010", 7 => "00001011", 
    8 => "00001111", 9 => "00001101", 10 => "11110011", 11 => "00111101", 
    12 => "01000000", 13 => "11010011", 14 => "11000101", 15 => "11101101", 
    16 => "11110110", 17 => "11001001", 18 => "11110111", 19 => "11011100", 
    20 => "11101110", 21 => "00011011", 22 => "11110010", 23 => "00101001", 
    24 => "00100101", 25 => "11000010", 26 => "00010000", 27 => "00011011", 
    28 => "11100110", 29 => "11101011", 30 => "00000101", 31 => "11111101", 
    32 => "00001100", 33 => "11011110", 34 => "00001011", 35 => "11110101", 
    36 => "00100111", 37 => "11101000", 38 => "11001101", 39 => "00110000", 
    40 => "10110010", 41 => "01001000", 42 => "11001011", 43 => "11111000", 
    44 => "00010100", 45 => "11100101", 46 => "00001000", 47 => "11001100", 
    48 => "11011100", 49 => "00110101", 50 => "00000110", 51 => "00000011", 
    52 => "00010101", 53 => "00000011", 54 => "00110111", 55 => "00100111", 
    56 => "00001110", 57 => "00101010", 58 => "00001010", 59 => "11100000", 
    60 => "11011001", 61 => "11101011", 62 => "11011001", 63 => "00101001" );


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

entity nn_inference_layer2_weights_V_14 is
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

architecture arch of nn_inference_layer2_weights_V_14 is
    component nn_inference_layer2_weights_V_14_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_14_rom_U :  component nn_inference_layer2_weights_V_14_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


