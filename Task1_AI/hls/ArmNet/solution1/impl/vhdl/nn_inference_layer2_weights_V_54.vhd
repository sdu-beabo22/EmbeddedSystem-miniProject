-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_54_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_54_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "01011011", 1 => "01011010", 2 => "11000101", 3 => "10011011", 
    4 => "00011111", 5 => "01101010", 6 => "11101111", 7 => "00111110", 
    8 => "11111000", 9 => "11010100", 10 => "01001001", 11 => "01100110", 
    12 => "00100010", 13 => "11101001", 14 => "00011100", 15 => "10011111", 
    16 => "11101001", 17 => "11011100", 18 => "00011011", 19 => "10100011", 
    20 => "00011110", 21 => "00010001", 22 => "00000100", 23 => "11101000", 
    24 => "11111110", 25 => "10011010", 26 => "11001010", 27 => "01011101", 
    28 => "00001001", 29 => "10010100", 30 => "10100001", 31 => "01010110", 
    32 => "00001101", 33 => "00100101", 34 => "01000000", 35 => "10001011", 
    36 => "00100001", 37 => "01010110", 38 => "00101000", 39 => "00011011", 
    40 => "10111001", 41 => "01001111", 42 => "10011111", 43 => "00010001", 
    44 => "00010011", 45 => "01000001", 46 => "10001111", 47 => "11101111", 
    48 => "11001110", 49 => "11101001", 50 => "10110111", 51 => "00111101", 
    52 => "11111010", 53 => "10001101", 54 => "00101011", 55 => "01010011", 
    56 => "00101000", 57 => "01101010", 58 => "01011011", 59 => "11101001", 
    60 => "00000101", 61 => "11000111", 62 => "10010011", 63 => "00001001" );


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

entity nn_inference_layer2_weights_V_54 is
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

architecture arch of nn_inference_layer2_weights_V_54 is
    component nn_inference_layer2_weights_V_54_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_54_rom_U :  component nn_inference_layer2_weights_V_54_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


