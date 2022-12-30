-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_12_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_12_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00101101", 1 => "00111001", 2 => "11101011", 3 => "11010100", 
    4 => "11011111", 5 => "00100110", 6 => "00101000", 7 => "00001011", 
    8 => "01010010", 9 => "01000000", 10 => "11110001", 11 => "00000101", 
    12 => "01000001", 13 => "11101100", 14 => "00110011", 15 => "00000100", 
    16 => "11101110", 17 => "00001101", 18 => "11111110", 19 => "10111010", 
    20 => "11101010", 21 => "11110100", 22 => "00000110", 23 => "00001100", 
    24 => "01010010", 25 => "00001100", 26 => "00001010", 27 => "00000010", 
    28 => "00111101", 29 => "11010100", 30 => "10111110", 31 => "11100011", 
    32 => "01010100", 33 => "00110000", 34 => "11010011", 35 => "11001001", 
    36 => "11100011", 37 => "11110000", 38 => "11011010", 39 => "00100011", 
    40 => "00001001", 41 => "00010101", 42 => "00000011", 43 => "00010011", 
    44 => "00111110", 45 => "00111001", 46 => "11000101", 47 => "01001001", 
    48 => "11111110", 49 => "01001000", 50 => "11101010", 51 => "00100010", 
    52 => "00001101", 53 => "00100111", 54 => "01001110", 55 => "00000011", 
    56 => "00001111", 57 => "00001010", 58 => "11111101", 59 => "11111001", 
    60 => "00100010", 61 => "10101010", 62 => "00011101", 63 => "00001001" );


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

entity nn_inference_layer2_weights_V_12 is
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

architecture arch of nn_inference_layer2_weights_V_12 is
    component nn_inference_layer2_weights_V_12_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_12_rom_U :  component nn_inference_layer2_weights_V_12_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


