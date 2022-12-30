-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_30_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_30_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111000", 1 => "00011101", 2 => "10111110", 3 => "11110011", 
    4 => "00110101", 5 => "11010111", 6 => "00110011", 7 => "11100110", 
    8 => "00100001", 9 => "11100100", 10 => "10101001", 11 => "00111001", 
    12 => "11011110", 13 => "11100010", 14 => "00101100", 15 => "11111110", 
    16 => "00110001", 17 => "11011011", 18 => "11111110", 19 => "00001011", 
    20 => "00000011", 21 => "00001010", 22 => "11101000", 23 => "00011111", 
    24 => "00000011", 25 => "11100001", 26 => "11010011", 27 => "00100011", 
    28 => "11101010", 29 => "11011100", 30 => "00011011", 31 => "00000110", 
    32 => "00100011", 33 => "00001110", 34 => "10110110", 35 => "11010000", 
    36 => "00011100", 37 => "00001111", 38 => "00110000", 39 => "00101000", 
    40 => "00101111", 41 => "00000101", 42 => "00011001", 43 => "00101011", 
    44 => "00001010", 45 => "00000010", 46 => "11001001", 47 => "01001010", 
    48 => "11010000", 49 => "01000001", 50 => "11111010", 51 => "00011110", 
    52 => "00010000", 53 => "11100001", 54 => "00010010", 55 => "00110100", 
    56 => "11110100", 57 => "01000001", 58 => "00100010", 59 => "00001010", 
    60 => "11000111", 61 => "11101110", 62 => "00001100", 63 => "11110001" );


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

entity nn_inference_layer2_weights_V_30 is
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

architecture arch of nn_inference_layer2_weights_V_30 is
    component nn_inference_layer2_weights_V_30_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_30_rom_U :  component nn_inference_layer2_weights_V_30_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


