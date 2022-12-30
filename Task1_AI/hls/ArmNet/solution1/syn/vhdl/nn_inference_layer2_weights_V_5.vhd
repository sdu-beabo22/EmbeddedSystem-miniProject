-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_5_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_5_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111001", 1 => "11100000", 2 => "11100101", 3 => "00101101", 
    4 => "00101100", 5 => "11000101", 6 => "01001101", 7 => "10011111", 
    8 => "01000100", 9 => "01100000", 10 => "00100101", 11 => "10100011", 
    12 => "11001110", 13 => "11111010", 14 => "11101000", 15 => "00111100", 
    16 => "00001000", 17 => "00110110", 18 => "00001101", 19 => "00111110", 
    20 => "00001100", 21 => "10110110", 22 => "00001110", 23 => "01111001", 
    24 => "11110110", 25 => "01011001", 26 => "00001101", 27 => "11111011", 
    28 => "00110101", 29 => "00010101", 30 => "00011000", 31 => "11000010", 
    32 => "10011110", 33 => "11100101", 34 => "00000101", 35 => "01001111", 
    36 => "10011000", 37 => "11110010", 38 => "11001001", 39 => "00110001", 
    40 => "00101100", 41 => "10111011", 42 => "00001110", 43 => "00111110", 
    44 => "11100010", 45 => "11110110", 46 => "00001110", 47 => "00010000", 
    48 => "01101000", 49 => "00100101", 50 => "00001000", 51 => "10110101", 
    52 => "00111111", 53 => "00000010", 54 => "10100111", 55 to 56=> "11101000", 
    57 => "10011011", 58 => "11010101", 59 => "00101110", 60 => "11011001", 
    61 => "11010000", 62 => "11111100", 63 => "11111110" );


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

entity nn_inference_layer2_weights_V_5 is
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

architecture arch of nn_inference_layer2_weights_V_5 is
    component nn_inference_layer2_weights_V_5_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_5_rom_U :  component nn_inference_layer2_weights_V_5_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


