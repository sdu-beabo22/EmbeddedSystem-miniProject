-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_9_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_9_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00100111", 1 => "11100111", 2 => "11001101", 3 => "11101100", 
    4 => "00000101", 5 => "00010100", 6 => "11111001", 7 => "00010010", 
    8 => "00100110", 9 => "11100001", 10 => "00011111", 11 => "00111111", 
    12 => "00000111", 13 => "00001111", 14 => "00010100", 15 => "11101100", 
    16 => "00001001", 17 => "11010111", 18 to 19=> "00001100", 20 => "00001110", 
    21 => "00110000", 22 => "00100000", 23 => "11001111", 24 => "00001011", 
    25 => "11001110", 26 => "00011100", 27 => "00100011", 28 => "00000000", 
    29 => "11011011", 30 => "00100000", 31 => "00010001", 32 => "00110101", 
    33 => "00000000", 34 => "00000101", 35 => "11111101", 36 => "00100001", 
    37 => "11111000", 38 => "11111100", 39 => "00111000", 40 => "11111001", 
    41 => "00001010", 42 => "11110110", 43 => "00101001", 44 => "00100101", 
    45 => "00100110", 46 => "00100101", 47 => "00001110", 48 => "00001100", 
    49 => "00000000", 50 => "00010101", 51 => "00011010", 52 => "00001011", 
    53 => "11010101", 54 => "11101011", 55 => "11110010", 56 => "00101000", 
    57 => "11110100", 58 => "01000001", 59 => "11110111", 60 => "11100100", 
    61 => "00000000", 62 => "11011101", 63 => "11110101" );


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

entity nn_inference_layer2_weights_V_9 is
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

architecture arch of nn_inference_layer2_weights_V_9 is
    component nn_inference_layer2_weights_V_9_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_9_rom_U :  component nn_inference_layer2_weights_V_9_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


