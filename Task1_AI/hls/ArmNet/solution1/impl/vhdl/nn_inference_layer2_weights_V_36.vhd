-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_36_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_36_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00100001", 1 => "00111111", 2 => "11111110", 3 => "11101001", 
    4 => "00011111", 5 => "00010010", 6 => "11000110", 7 => "00010100", 
    8 => "11111011", 9 => "00101100", 10 => "00000100", 11 => "11110111", 
    12 => "00001010", 13 => "11010011", 14 => "00101101", 15 => "11000000", 
    16 => "11101110", 17 => "11111000", 18 => "00001110", 19 => "11101010", 
    20 => "11001100", 21 => "00001011", 22 => "00111101", 23 => "11001010", 
    24 => "11011000", 25 => "00001011", 26 => "00101000", 27 => "00111110", 
    28 => "00011001", 29 => "00000110", 30 => "00010100", 31 => "11100100", 
    32 => "01001001", 33 => "11010010", 34 to 35=> "11110111", 36 => "00111000", 
    37 => "11100110", 38 => "11111111", 39 => "00010100", 40 => "11100101", 
    41 => "00101010", 42 => "10111011", 43 => "00001110", 44 => "00010110", 
    45 => "01001010", 46 => "00001100", 47 => "11011000", 48 => "11001110", 
    49 => "00000111", 50 => "10111100", 51 => "00001010", 52 => "11101100", 
    53 => "11010100", 54 => "00000101", 55 => "00011101", 56 => "00100011", 
    57 => "11011101", 58 => "00010110", 59 => "11111001", 60 => "01000001", 
    61 => "11110100", 62 => "11001100", 63 => "11111100" );


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

entity nn_inference_layer2_weights_V_36 is
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

architecture arch of nn_inference_layer2_weights_V_36 is
    component nn_inference_layer2_weights_V_36_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_36_rom_U :  component nn_inference_layer2_weights_V_36_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


