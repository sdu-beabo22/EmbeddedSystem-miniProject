-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_26_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_26_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00000000", 1 => "11100111", 2 => "11011000", 3 => "00100101", 
    4 => "11110010", 5 => "11100001", 6 => "11101110", 7 => "00011000", 
    8 => "11111000", 9 => "00111010", 10 => "11111101", 11 => "01001001", 
    12 => "11101010", 13 => "00011011", 14 => "00001111", 15 => "00111010", 
    16 => "00101101", 17 => "00110001", 18 => "01000011", 19 => "00001110", 
    20 => "11101010", 21 => "11101111", 22 => "00010010", 23 => "11101101", 
    24 => "01000110", 25 => "00010001", 26 => "00100011", 27 => "11101011", 
    28 => "00111001", 29 => "00110011", 30 => "00101100", 31 => "11011000", 
    32 => "11101100", 33 => "00010000", 34 => "11110001", 35 => "00000101", 
    36 => "11011111", 37 => "11000111", 38 => "11101011", 39 => "01001000", 
    40 => "00010000", 41 => "11011000", 42 => "00111100", 43 => "01001110", 
    44 => "11111001", 45 => "00100011", 46 => "00110001", 47 => "00111101", 
    48 => "11110100", 49 => "01001001", 50 => "00111011", 51 => "00001011", 
    52 => "00011011", 53 => "11110111", 54 => "00000101", 55 => "11001110", 
    56 => "11100011", 57 => "00000000", 58 => "00100111", 59 => "10111111", 
    60 to 61=> "11011110", 62 => "11111101", 63 => "00010111" );


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

entity nn_inference_layer2_weights_V_26 is
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

architecture arch of nn_inference_layer2_weights_V_26 is
    component nn_inference_layer2_weights_V_26_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_26_rom_U :  component nn_inference_layer2_weights_V_26_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


