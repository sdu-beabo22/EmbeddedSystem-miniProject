-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_59_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_59_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 1=> "01001000", 2 => "10010110", 3 => "11101111", 4 => "11010010", 
    5 => "00111000", 6 => "10111001", 7 => "00100010", 8 => "10111101", 
    9 => "11101110", 10 => "01110110", 11 => "01110011", 12 => "01100111", 
    13 => "11101000", 14 => "11011000", 15 => "10110000", 16 => "11111111", 
    17 => "11110100", 18 => "11011111", 19 => "10011110", 20 => "11111000", 
    21 => "01100111", 22 => "11111110", 23 => "00000100", 24 => "11100110", 
    25 => "10011110", 26 => "00000111", 27 => "11010001", 28 => "11100001", 
    29 => "10100111", 30 => "11101001", 31 => "01010110", 32 => "00110110", 
    33 => "00010000", 34 => "00100110", 35 => "10100010", 36 => "00100011", 
    37 => "00111010", 38 => "00110100", 39 => "00111000", 40 => "11000001", 
    41 => "00010010", 42 => "10101001", 43 => "10101111", 44 => "00001101", 
    45 => "00001110", 46 => "10011111", 47 => "00100011", 48 => "10010110", 
    49 => "00001101", 50 => "10011111", 51 => "00110110", 52 => "11001110", 
    53 => "11011000", 54 => "00000010", 55 => "00110000", 56 => "01101110", 
    57 => "00111010", 58 => "01010100", 59 => "11000110", 60 => "01011101", 
    61 => "11110110", 62 => "10111011", 63 => "11101010" );


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

entity nn_inference_layer2_weights_V_59 is
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

architecture arch of nn_inference_layer2_weights_V_59 is
    component nn_inference_layer2_weights_V_59_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_59_rom_U :  component nn_inference_layer2_weights_V_59_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


