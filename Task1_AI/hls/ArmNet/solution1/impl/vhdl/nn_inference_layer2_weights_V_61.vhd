-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_61_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_61_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0110011", 1 => "1101011", 2 => "1111000", 3 => "1101001", 
    4 => "1001010", 5 => "0100111", 6 => "1001111", 7 => "0111101", 
    8 => "0100001", 9 => "1100101", 10 => "1110000", 11 => "1111011", 
    12 => "0001010", 13 => "1111101", 14 => "1011010", 15 => "0010111", 
    16 => "1111110", 17 => "0101101", 18 => "0011100", 19 => "0001000", 
    20 => "1111011", 21 => "0111000", 22 => "0001110", 23 => "0101110", 
    24 => "0011001", 25 => "1100000", 26 => "1100110", 27 => "0100111", 
    28 => "1110010", 29 => "0000011", 30 => "1001110", 31 => "1100111", 
    32 => "1111000", 33 => "1111100", 34 => "0001010", 35 => "0000111", 
    36 => "0011100", 37 => "0110000", 38 => "1100010", 39 => "1111110", 
    40 => "0101011", 41 => "0000110", 42 => "0110011", 43 => "1111100", 
    44 => "0001011", 45 => "0100110", 46 => "0111110", 47 => "1100000", 
    48 => "1110001", 49 => "0010000", 50 => "1100010", 51 => "0111001", 
    52 => "1101010", 53 => "0010011", 54 => "1101100", 55 => "1100011", 
    56 => "0101001", 57 => "0110010", 58 => "1111001", 59 => "0000010", 
    60 => "1100110", 61 => "0001010", 62 => "0110100", 63 => "0100010" );


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

entity nn_inference_layer2_weights_V_61 is
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

architecture arch of nn_inference_layer2_weights_V_61 is
    component nn_inference_layer2_weights_V_61_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_61_rom_U :  component nn_inference_layer2_weights_V_61_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


