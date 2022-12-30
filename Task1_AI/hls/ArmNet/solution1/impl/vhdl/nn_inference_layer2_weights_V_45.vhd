-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_45_rom is 
    generic(
             DWIDTH     : integer := 7; 
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


architecture rtl of nn_inference_layer2_weights_V_45_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010111", 1 => "1110110", 2 => "0100111", 3 => "0000111", 
    4 => "1110010", 5 => "0100011", 6 => "1000111", 7 => "0100000", 
    8 => "1011111", 9 => "1011101", 10 => "0011000", 11 => "1011010", 
    12 => "0000100", 13 => "1010101", 14 => "0010000", 15 => "1011000", 
    16 => "0010111", 17 => "1111101", 18 => "1010110", 19 => "1100000", 
    20 => "0101011", 21 => "1100010", 22 => "1010101", 23 => "1001100", 
    24 => "1001101", 25 => "0101110", 26 => "0001010", 27 => "1100110", 
    28 => "1001011", 29 => "1110011", 30 => "1100101", 31 => "1010100", 
    32 => "0000101", 33 => "1010000", 34 => "0000110", 35 => "1111110", 
    36 => "0001101", 37 => "1011101", 38 => "0011001", 39 => "1001100", 
    40 => "0010101", 41 => "0010100", 42 => "1011011", 43 => "1101101", 
    44 => "0000111", 45 => "1011000", 46 => "1101010", 47 => "0001010", 
    48 => "1100100", 49 => "0010011", 50 => "0100000", 51 => "0101100", 
    52 => "0011111", 53 => "0110110", 54 => "0001100", 55 => "0010001", 
    56 => "0111001", 57 => "0101011", 58 => "0100010", 59 => "1001010", 
    60 => "0101101", 61 => "0101111", 62 => "1100001", 63 => "0001111" );


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

entity nn_inference_layer2_weights_V_45 is
    generic (
        DataWidth : INTEGER := 7;
        AddressRange : INTEGER := 64;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of nn_inference_layer2_weights_V_45 is
    component nn_inference_layer2_weights_V_45_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_45_rom_U :  component nn_inference_layer2_weights_V_45_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


