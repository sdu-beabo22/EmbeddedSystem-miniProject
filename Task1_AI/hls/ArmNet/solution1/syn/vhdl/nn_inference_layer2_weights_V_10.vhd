-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_10_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_10_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111011", 1 => "01001010", 2 => "11001011", 3 => "00110101", 
    4 => "11111101", 5 => "00100001", 6 => "00100011", 7 => "00001101", 
    8 => "11111011", 9 => "00000111", 10 => "11110001", 11 => "00110111", 
    12 => "00001111", 13 => "00110000", 14 => "11000101", 15 => "11111111", 
    16 => "00101001", 17 => "00011111", 18 => "11100101", 19 => "00101101", 
    20 => "11100011", 21 => "11100100", 22 => "11110100", 23 => "11011111", 
    24 => "00001101", 25 => "00011100", 26 => "00011010", 27 => "00000101", 
    28 => "00011001", 29 => "00001001", 30 => "11110001", 31 => "00111000", 
    32 => "00000010", 33 => "11111000", 34 => "11001010", 35 => "00010011", 
    36 => "00011110", 37 => "11111001", 38 => "11000101", 39 => "00000011", 
    40 => "11100111", 41 => "00001011", 42 => "11000011", 43 => "00011100", 
    44 => "11011011", 45 => "11111010", 46 => "11011101", 47 => "11101001", 
    48 => "11011110", 49 => "11110100", 50 => "11100011", 51 => "11110001", 
    52 => "00100000", 53 => "00010111", 54 => "00001111", 55 => "00100101", 
    56 => "11100100", 57 => "11011000", 58 => "11011001", 59 => "11010101", 
    60 => "11000111", 61 => "11101001", 62 => "11011100", 63 => "11110100" );


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

entity nn_inference_layer2_weights_V_10 is
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

architecture arch of nn_inference_layer2_weights_V_10 is
    component nn_inference_layer2_weights_V_10_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_10_rom_U :  component nn_inference_layer2_weights_V_10_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


