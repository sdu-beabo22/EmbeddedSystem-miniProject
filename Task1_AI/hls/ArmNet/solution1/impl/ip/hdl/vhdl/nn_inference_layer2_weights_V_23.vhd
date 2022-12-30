-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_23_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_23_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "01010001", 1 => "00100010", 2 => "11010011", 3 => "11101101", 
    4 => "11101001", 5 => "11111100", 6 => "11110111", 7 => "00110010", 
    8 => "11111000", 9 => "11010001", 10 => "11111110", 11 => "11110000", 
    12 => "00010101", 13 => "11011111", 14 => "00001101", 15 => "10110010", 
    16 => "11110101", 17 => "11010011", 18 => "10100001", 19 => "11010101", 
    20 => "11111111", 21 => "00110000", 22 => "11110011", 23 => "00000011", 
    24 => "11011111", 25 => "11010001", 26 => "00010101", 27 => "00001001", 
    28 => "11101011", 29 => "00000001", 30 => "00000101", 31 => "00110110", 
    32 => "01100010", 33 => "11101101", 34 => "00010000", 35 => "00001011", 
    36 => "00001100", 37 => "11110001", 38 => "00100110", 39 => "11100111", 
    40 => "11110000", 41 => "11100101", 42 => "00001000", 43 => "11010001", 
    44 => "11110101", 45 => "00110011", 46 => "10110000", 47 => "11000101", 
    48 => "11100001", 49 => "11000110", 50 => "00000110", 51 => "11011100", 
    52 => "00001001", 53 => "11011001", 54 => "00011111", 55 => "01011100", 
    56 => "00010000", 57 => "11010101", 58 => "10110100", 59 => "00101000", 
    60 => "10110101", 61 => "11101011", 62 => "11100110", 63 => "11111011" );


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

entity nn_inference_layer2_weights_V_23 is
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

architecture arch of nn_inference_layer2_weights_V_23 is
    component nn_inference_layer2_weights_V_23_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_23_rom_U :  component nn_inference_layer2_weights_V_23_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


