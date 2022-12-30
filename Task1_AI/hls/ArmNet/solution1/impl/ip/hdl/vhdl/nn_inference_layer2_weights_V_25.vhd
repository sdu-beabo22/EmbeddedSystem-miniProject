-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_25_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_25_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11100011", 1 => "00010010", 2 => "00100011", 3 => "11100000", 
    4 => "11101010", 5 => "11100001", 6 => "11111000", 7 => "11010001", 
    8 => "11001111", 9 => "11101000", 10 => "00000011", 11 => "11110000", 
    12 => "00110001", 13 => "00010011", 14 => "11010110", 15 => "00111001", 
    16 => "00010010", 17 => "11110101", 18 => "11001110", 19 => "00100111", 
    20 => "11010000", 21 => "11111000", 22 => "00101010", 23 => "00100110", 
    24 => "10110111", 25 => "00001111", 26 => "11101101", 27 => "11100111", 
    28 => "11010101", 29 => "11110000", 30 => "00111111", 31 => "00010011", 
    32 => "00101110", 33 => "11110101", 34 to 35=> "00000101", 36 => "11010111", 
    37 => "11101110", 38 => "11110101", 39 => "11110000", 40 => "00010110", 
    41 => "00000101", 42 => "00001010", 43 => "11000110", 44 => "11111011", 
    45 => "11100110", 46 => "11111001", 47 => "00100001", 48 => "11110100", 
    49 => "00000101", 50 => "00100110", 51 => "00000011", 52 => "10111011", 
    53 => "00100101", 54 => "00000001", 55 => "00100100", 56 => "11100101", 
    57 => "11111011", 58 => "00011111", 59 => "00000110", 60 => "00100011", 
    61 => "00100100", 62 => "11101110", 63 => "00011000" );


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

entity nn_inference_layer2_weights_V_25 is
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

architecture arch of nn_inference_layer2_weights_V_25 is
    component nn_inference_layer2_weights_V_25_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_25_rom_U :  component nn_inference_layer2_weights_V_25_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


