-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_38_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_38_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11000000", 1 => "00000000", 2 => "11111011", 3 => "01001110", 
    4 => "01000111", 5 => "00101110", 6 => "00110101", 7 => "11101000", 
    8 => "00101001", 9 => "00101101", 10 => "11100010", 11 => "11100101", 
    12 => "11111010", 13 => "00101011", 14 => "11001110", 15 => "01010010", 
    16 => "00111010", 17 => "11110100", 18 => "00101001", 19 => "00011111", 
    20 => "11001001", 21 => "10110111", 22 => "11000101", 23 => "01010100", 
    24 => "11111011", 25 => "00110001", 26 => "11111110", 27 => "11110111", 
    28 => "11001110", 29 => "00101111", 30 => "11100011", 31 => "11101111", 
    32 => "11010001", 33 => "11010111", 34 => "11111001", 35 => "00110000", 
    36 => "11111110", 37 => "11111101", 38 => "11101001", 39 => "11110110", 
    40 => "00010101", 41 => "11101111", 42 => "00100101", 43 => "01000101", 
    44 => "10100001", 45 => "11101100", 46 => "00110100", 47 => "01100000", 
    48 => "01001100", 49 => "01001101", 50 => "11110010", 51 => "11000100", 
    52 => "01010000", 53 => "01010011", 54 => "11011000", 55 => "00011101", 
    56 => "10101000", 57 => "10011001", 58 => "11100011", 59 => "00011100", 
    60 => "00001001", 61 => "11000011", 62 => "00101111", 63 => "11010111" );


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

entity nn_inference_layer2_weights_V_38 is
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

architecture arch of nn_inference_layer2_weights_V_38 is
    component nn_inference_layer2_weights_V_38_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_38_rom_U :  component nn_inference_layer2_weights_V_38_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


