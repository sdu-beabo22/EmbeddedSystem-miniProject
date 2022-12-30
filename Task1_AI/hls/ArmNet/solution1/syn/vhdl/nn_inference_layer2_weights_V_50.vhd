-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_50_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_50_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00101010", 1 => "00001001", 2 => "00110010", 3 => "00011010", 
    4 => "11101100", 5 => "00101010", 6 => "11111000", 7 => "11100000", 
    8 => "00001100", 9 => "11011111", 10 => "00011110", 11 => "00011000", 
    12 => "00101011", 13 => "00110101", 14 => "00110000", 15 => "00010010", 
    16 => "00100110", 17 => "11010111", 18 => "11010100", 19 => "11011010", 
    20 => "00011010", 21 => "11001101", 22 => "00000110", 23 => "11111101", 
    24 => "10111101", 25 => "00111111", 26 => "00101011", 27 => "00001100", 
    28 => "00101100", 29 => "00011000", 30 => "11010110", 31 => "00001000", 
    32 => "11110011", 33 => "00110101", 34 => "11011000", 35 => "00000001", 
    36 => "11111111", 37 => "00000001", 38 => "11111011", 39 => "11110101", 
    40 => "11110110", 41 => "11101100", 42 => "00101101", 43 => "11101111", 
    44 => "00001001", 45 => "00001011", 46 => "11110111", 47 => "11111000", 
    48 => "00001100", 49 => "11100010", 50 to 51=> "00100010", 52 => "11101001", 
    53 => "00100111", 54 => "11000001", 55 => "11101000", 56 => "11001100", 
    57 => "00101101", 58 => "00010011", 59 => "00011001", 60 => "00000001", 
    61 => "11010101", 62 => "00100110", 63 => "00001010" );


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

entity nn_inference_layer2_weights_V_50 is
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

architecture arch of nn_inference_layer2_weights_V_50 is
    component nn_inference_layer2_weights_V_50_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_50_rom_U :  component nn_inference_layer2_weights_V_50_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


