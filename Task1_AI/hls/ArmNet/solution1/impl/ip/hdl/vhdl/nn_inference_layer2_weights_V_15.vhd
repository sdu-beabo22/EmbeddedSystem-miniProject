-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_15_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_15_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "01000100", 1 => "00011001", 2 => "11100010", 3 => "11001010", 
    4 => "11111011", 5 => "00010011", 6 => "10101101", 7 => "01010011", 
    8 => "10110100", 9 => "11110000", 10 => "01001001", 11 => "00100100", 
    12 => "01011101", 13 => "00001101", 14 => "11110110", 15 => "10101100", 
    16 => "11011000", 17 => "10101100", 18 => "10110101", 19 => "11001000", 
    20 => "11001100", 21 => "01011010", 22 => "01011111", 23 => "00001111", 
    24 => "10111111", 25 => "10100001", 26 => "11000101", 27 => "00101100", 
    28 => "11010100", 29 => "11100001", 30 => "11011110", 31 => "00011001", 
    32 => "00111111", 33 => "11100000", 34 => "11111011", 35 => "10000111", 
    36 => "11111100", 37 to 38=> "00011100", 39 => "00100010", 40 => "10110011", 
    41 => "00011001", 42 => "10111010", 43 => "11010000", 44 => "11111010", 
    45 => "01010111", 46 => "11011100", 47 => "00001100", 48 => "10110010", 
    49 => "11001011", 50 => "11001100", 51 => "00011111", 52 => "10111110", 
    53 => "11011011", 54 => "01011111", 55 => "01000101", 56 => "01100001", 
    57 => "00011111", 58 => "00011010", 59 => "11001001", 60 => "01000100", 
    61 => "10100011", 62 => "11100100", 63 => "11101100" );


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

entity nn_inference_layer2_weights_V_15 is
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

architecture arch of nn_inference_layer2_weights_V_15 is
    component nn_inference_layer2_weights_V_15_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_15_rom_U :  component nn_inference_layer2_weights_V_15_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


