-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_6_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11000010", 1 => "11101001", 2 => "00010000", 3 => "00100001", 
    4 => "11001110", 5 => "00100101", 6 => "11000110", 7 => "11101101", 
    8 => "00101000", 9 => "11000111", 10 => "11000100", 11 => "11101110", 
    12 => "11001000", 13 => "00011011", 14 => "00100101", 15 => "00110101", 
    16 => "00101110", 17 => "11100001", 18 => "00001001", 19 => "00100000", 
    20 => "00101100", 21 => "00110000", 22 => "00011010", 23 => "00100011", 
    24 => "11111010", 25 => "11100001", 26 => "11010110", 27 => "11110001", 
    28 => "00110101", 29 => "00010101", 30 => "00101111", 31 => "00001111", 
    32 => "11100110", 33 => "00010111", 34 => "11110110", 35 => "11111101", 
    36 => "11010100", 37 => "11010011", 38 => "11101100", 39 => "11110111", 
    40 => "01000011", 41 => "11110001", 42 => "00010101", 43 => "00010110", 
    44 => "11110111", 45 => "11110001", 46 => "00001011", 47 => "00000011", 
    48 => "00101001", 49 => "00011111", 50 => "00111110", 51 => "11101000", 
    52 => "11110110", 53 => "00110010", 54 => "11110100", 55 => "11100010", 
    56 => "11100111", 57 => "11011001", 58 => "11010111", 59 => "11101100", 
    60 => "11010111", 61 => "00001001", 62 => "11100001", 63 => "00010110" );


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

entity nn_inference_layer2_weights_V_6 is
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

architecture arch of nn_inference_layer2_weights_V_6 is
    component nn_inference_layer2_weights_V_6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_6_rom_U :  component nn_inference_layer2_weights_V_6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


