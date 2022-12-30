-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_28_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_28_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11101111", 1 => "00100001", 2 => "11110010", 3 => "01000011", 
    4 => "11001100", 5 to 6=> "00011011", 7 => "00100011", 8 => "11000101", 
    9 => "11100000", 10 => "00011110", 11 => "11101000", 12 => "11110011", 
    13 => "11000100", 14 => "00001101", 15 => "00101000", 16 => "00001000", 
    17 => "00101101", 18 => "00010001", 19 => "11111101", 20 => "00101010", 
    21 => "11001010", 22 => "11100010", 23 => "11011000", 24 => "11100111", 
    25 => "00000001", 26 => "00000111", 27 => "11100011", 28 => "00010100", 
    29 => "01000001", 30 => "00111110", 31 => "11011111", 32 => "11100111", 
    33 => "00000110", 34 => "00101110", 35 => "11111100", 36 => "11111110", 
    37 => "11000110", 38 => "11001001", 39 => "11101010", 40 => "01000010", 
    41 => "11110111", 42 => "11110011", 43 => "11100100", 44 => "11010100", 
    45 => "11010010", 46 => "00010010", 47 => "11111000", 48 => "00101101", 
    49 => "11010101", 50 => "00111011", 51 => "11100101", 52 => "11010001", 
    53 => "11110001", 54 => "10111111", 55 => "00100001", 56 => "00000110", 
    57 => "11101100", 58 => "00000110", 59 => "11101100", 60 => "00110100", 
    61 => "00010101", 62 => "00101000", 63 => "11101010" );


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

entity nn_inference_layer2_weights_V_28 is
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

architecture arch of nn_inference_layer2_weights_V_28 is
    component nn_inference_layer2_weights_V_28_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_28_rom_U :  component nn_inference_layer2_weights_V_28_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


