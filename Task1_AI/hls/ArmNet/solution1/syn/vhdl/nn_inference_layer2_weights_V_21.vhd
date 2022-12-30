-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_21_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_21_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 1=> "10111011", 2 => "00110101", 3 => "00001100", 4 => "11011100", 
    5 => "11110111", 6 => "00100011", 7 => "11111111", 8 => "00110110", 
    9 => "01001001", 10 => "11101011", 11 => "11001001", 12 => "11111001", 
    13 => "00000010", 14 => "11100111", 15 => "00110101", 16 => "00001011", 
    17 => "11110111", 18 => "00000001", 19 => "11101110", 20 => "11100010", 
    21 => "11110101", 22 => "10110001", 23 => "01000110", 24 => "00010110", 
    25 => "00011011", 26 => "11011001", 27 => "11110001", 28 => "00111001", 
    29 => "00000100", 30 => "00001100", 31 => "10110111", 32 => "10110011", 
    33 => "00010111", 34 => "11001111", 35 => "00111000", 36 => "10110100", 
    37 => "00000111", 38 => "00000000", 39 => "00111101", 40 => "00101001", 
    41 => "11101101", 42 => "00011100", 43 => "11110110", 44 => "10111010", 
    45 => "00000011", 46 => "00001010", 47 => "11101011", 48 => "00110101", 
    49 => "11100100", 50 => "00010101", 51 => "11000101", 52 => "00100010", 
    53 => "00011111", 54 => "00001111", 55 => "11110101", 56 => "11011010", 
    57 => "11111110", 58 => "11001000", 59 => "11100110", 60 => "00000110", 
    61 => "00111000", 62 => "00011111", 63 => "00010100" );


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

entity nn_inference_layer2_weights_V_21 is
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

architecture arch of nn_inference_layer2_weights_V_21 is
    component nn_inference_layer2_weights_V_21_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_21_rom_U :  component nn_inference_layer2_weights_V_21_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


