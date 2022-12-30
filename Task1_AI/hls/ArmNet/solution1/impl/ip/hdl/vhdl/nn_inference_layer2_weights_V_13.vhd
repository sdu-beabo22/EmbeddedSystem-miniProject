-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_13_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_13_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101", 1 => "11011111", 2 => "00011111", 3 => "00101100", 
    4 => "00011100", 5 => "11011101", 6 => "00011010", 7 => "10011100", 
    8 => "01001101", 9 => "00011001", 10 => "00100111", 11 => "10011111", 
    12 => "11011100", 13 => "00010010", 14 => "11110100", 15 => "00110100", 
    16 => "00001110", 17 => "11011111", 18 => "01101111", 19 => "00110011", 
    20 => "00000001", 21 => "10000011", 22 => "11111100", 23 => "01101101", 
    24 => "01000111", 25 => "00110101", 26 => "00111101", 27 => "11111100", 
    28 => "11011100", 29 => "11111110", 30 => "00010011", 31 => "10110010", 
    32 => "11011110", 33 => "00001000", 34 => "00010101", 35 => "01100001", 
    36 => "11001010", 37 => "11011000", 38 => "00011000", 39 => "00101111", 
    40 => "00001000", 41 => "10011011", 42 => "00001001", 43 => "01000011", 
    44 => "11011011", 45 => "10100000", 46 => "00100111", 47 => "01011111", 
    48 => "00100101", 49 => "01000110", 50 => "00010100", 51 => "11001010", 
    52 => "01011001", 53 => "00111001", 54 => "10100110", 55 => "11100000", 
    56 => "10111101", 57 => "10010010", 58 => "11001000", 59 => "11010010", 
    60 => "00001110", 61 => "00101111", 62 => "00001001", 63 => "11010010" );


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

entity nn_inference_layer2_weights_V_13 is
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

architecture arch of nn_inference_layer2_weights_V_13 is
    component nn_inference_layer2_weights_V_13_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_13_rom_U :  component nn_inference_layer2_weights_V_13_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


