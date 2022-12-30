-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_48_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_48_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11011011", 1 => "11010010", 2 => "11100111", 3 => "00101101", 
    4 => "00010010", 5 => "00011111", 6 to 7=> "11010011", 8 => "00010111", 
    9 => "11000011", 10 => "00111101", 11 => "00110111", 12 => "11000100", 
    13 => "00001101", 14 => "11010010", 15 => "11110101", 16 => "00010110", 
    17 => "00100011", 18 => "00010010", 19 => "00111100", 20 => "11110111", 
    21 => "00000010", 22 => "11100011", 23 => "00000011", 24 => "00011010", 
    25 => "00101101", 26 => "11101111", 27 => "11010000", 28 => "11100110", 
    29 => "00111100", 30 => "11101110", 31 => "00011010", 32 => "11111100", 
    33 => "11011000", 34 => "00100100", 35 => "11011100", 36 => "11101110", 
    37 => "00001011", 38 => "11001011", 39 => "11100110", 40 => "00100011", 
    41 => "00010100", 42 => "00000101", 43 => "11011110", 44 => "11100100", 
    45 => "10111111", 46 to 47=> "00011110", 48 => "01001001", 49 => "11001000", 
    50 => "00111101", 51 => "11011110", 52 => "11101001", 53 => "00011000", 
    54 => "11000110", 55 => "00010110", 56 => "00000000", 57 => "11001111", 
    58 => "11100110", 59 => "00100101", 60 => "00010001", 61 => "11011001", 
    62 => "00110010", 63 => "00001011" );


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

entity nn_inference_layer2_weights_V_48 is
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

architecture arch of nn_inference_layer2_weights_V_48 is
    component nn_inference_layer2_weights_V_48_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_48_rom_U :  component nn_inference_layer2_weights_V_48_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


