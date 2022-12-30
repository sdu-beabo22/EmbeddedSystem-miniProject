-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_0_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_0_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111010", 1 => "11111100", 2 => "11001100", 3 => "11111111", 
    4 => "00000111", 5 => "00101110", 6 => "11101100", 7 => "00111110", 
    8 => "01010000", 9 => "00011110", 10 => "11110000", 11 => "00111000", 
    12 => "00100110", 13 => "00010101", 14 => "00001111", 15 => "11010110", 
    16 => "10111111", 17 => "11000011", 18 => "00100001", 19 => "11100110", 
    20 => "11011111", 21 => "00100100", 22 => "00101111", 23 => "11111111", 
    24 => "11111100", 25 => "11001100", 26 => "00011001", 27 => "01001101", 
    28 => "00000100", 29 => "11000001", 30 => "11011010", 31 => "00111011", 
    32 => "01010110", 33 => "11001011", 34 => "11100010", 35 => "00011010", 
    36 => "11111101", 37 => "00001100", 38 => "00010000", 39 => "01001110", 
    40 => "10100100", 41 => "01010101", 42 => "00010101", 43 => "01001111", 
    44 => "01001100", 45 => "11100000", 46 => "00010110", 47 => "00100100", 
    48 => "11011111", 49 => "00101101", 50 => "11110100", 51 => "11111111", 
    52 => "00101101", 53 => "00011011", 54 => "00001010", 55 => "00010101", 
    56 => "00000101", 57 => "01000100", 58 => "00001100", 59 => "00100111", 
    60 => "11101100", 61 => "10111101", 62 => "11100010", 63 => "11001111" );


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

entity nn_inference_layer2_weights_V_0 is
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

architecture arch of nn_inference_layer2_weights_V_0 is
    component nn_inference_layer2_weights_V_0_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_0_rom_U :  component nn_inference_layer2_weights_V_0_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


