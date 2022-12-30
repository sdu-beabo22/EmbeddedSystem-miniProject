-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_22_rom is 
    generic(
             DWIDTH     : integer := 9; 
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


architecture rtl of nn_inference_layer2_weights_V_22_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111111011", 1 => "001100100", 2 => "111010000", 3 => "111000011", 
    4 => "000011010", 5 => "010000000", 6 => "111010000", 7 => "000001000", 
    8 => "111101000", 9 => "111100101", 10 => "001010110", 11 => "001101010", 
    12 => "000010110", 13 => "111111111", 14 => "111001110", 15 => "111010010", 
    16 => "111000000", 17 => "110111110", 18 => "000100101", 19 => "110100001", 
    20 => "111110001", 21 => "000001001", 22 => "000110001", 23 => "000000100", 
    24 => "000000011", 25 => "110001110", 26 => "111110001", 27 => "111111011", 
    28 => "000010100", 29 => "110111000", 30 => "110111100", 31 => "001010100", 
    32 => "001100000", 33 => "111011001", 34 => "000000110", 35 => "111000011", 
    36 => "000000001", 37 => "000010110", 38 => "111110110", 39 => "111110010", 
    40 => "111000100", 41 => "001011110", 42 => "111111110", 43 => "110111110", 
    44 => "000101110", 45 => "000001111", 46 => "111101110", 47 => "111111100", 
    48 => "110011010", 49 => "111011101", 50 => "110111011", 51 => "000011011", 
    52 => "110100110", 53 => "110011110", 54 => "111111101", 55 => "000101110", 
    56 => "000010000", 57 => "000110111", 58 => "000110001", 59 => "111010011", 
    60 => "000010101", 61 => "110110010", 62 => "111001001", 63 => "000000111" );


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

entity nn_inference_layer2_weights_V_22 is
    generic (
        DataWidth : INTEGER := 9;
        AddressRange : INTEGER := 64;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of nn_inference_layer2_weights_V_22 is
    component nn_inference_layer2_weights_V_22_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_22_rom_U :  component nn_inference_layer2_weights_V_22_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


