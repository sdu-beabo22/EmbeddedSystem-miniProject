-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_46_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_46_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11101110", 1 => "11011011", 2 => "00101000", 3 => "00001110", 
    4 => "00010001", 5 => "11010011", 6 => "11001000", 7 => "10110010", 
    8 => "00111000", 9 => "01001010", 10 => "00000011", 11 => "11100001", 
    12 => "10111111", 13 => "00001001", 14 => "00100101", 15 => "00001101", 
    16 => "01011111", 17 => "11011110", 18 => "00111111", 19 => "11100100", 
    20 => "11111000", 21 => "11110110", 22 => "11001000", 23 => "01000110", 
    24 => "01001001", 25 => "01000000", 26 => "00010000", 27 => "11000010", 
    28 => "00100101", 29 => "11110101", 30 => "00010110", 31 => "11000011", 
    32 => "10110000", 33 => "11101111", 34 => "00010010", 35 => "00011001", 
    36 => "11110001", 37 => "11000010", 38 => "00011010", 39 => "01001100", 
    40 => "00100101", 41 => "11110101", 42 => "00001000", 43 => "00011000", 
    44 => "11110010", 45 => "11110101", 46 => "00000001", 47 => "00111110", 
    48 => "00101110", 49 => "00011110", 50 => "00001011", 51 => "11010111", 
    52 => "00100110", 53 => "01000101", 54 => "11101110", 55 => "10110010", 
    56 => "10111010", 57 => "11101110", 58 => "00000010", 59 => "11110111", 
    60 => "10110110", 61 => "11100100", 62 => "01010101", 63 => "00101110" );


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

entity nn_inference_layer2_weights_V_46 is
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

architecture arch of nn_inference_layer2_weights_V_46 is
    component nn_inference_layer2_weights_V_46_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_46_rom_U :  component nn_inference_layer2_weights_V_46_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


