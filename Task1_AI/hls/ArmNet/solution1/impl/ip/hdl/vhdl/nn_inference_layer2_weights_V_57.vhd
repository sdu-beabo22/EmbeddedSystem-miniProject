-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_57_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_57_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00010111", 1 => "11101111", 2 => "11110110", 3 => "11011000", 
    4 => "11000101", 5 => "11110010", 6 => "11100000", 7 => "00000010", 
    8 => "11011001", 9 => "00010001", 10 => "11000101", 11 => "11100011", 
    12 => "11111110", 13 => "00010010", 14 => "11001100", 15 => "00100011", 
    16 => "11010010", 17 => "11111101", 18 => "00011010", 19 => "00100101", 
    20 => "11110110", 21 => "00110010", 22 => "11101000", 23 => "00000111", 
    24 => "11100001", 25 => "11010000", 26 => "00011000", 27 => "01000010", 
    28 => "00001101", 29 => "11000000", 30 => "11101111", 31 => "00100100", 
    32 => "11110111", 33 => "00011010", 34 => "00011100", 35 => "00101000", 
    36 => "00000110", 37 => "01000011", 38 => "00010110", 39 => "11111101", 
    40 => "00000000", 41 => "00100001", 42 => "00101101", 43 => "00110101", 
    44 => "00001001", 45 to 46=> "11101011", 47 => "11101101", 48 => "00001111", 
    49 => "00000011", 50 => "11111111", 51 => "00100000", 52 => "00001110", 
    53 => "00011001", 54 => "00010000", 55 => "00111100", 56 => "00011010", 
    57 => "11011100", 58 => "00011000", 59 => "11110101", 60 => "11101111", 
    61 => "11000000", 62 => "11010011", 63 => "11011001" );


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

entity nn_inference_layer2_weights_V_57 is
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

architecture arch of nn_inference_layer2_weights_V_57 is
    component nn_inference_layer2_weights_V_57_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_57_rom_U :  component nn_inference_layer2_weights_V_57_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


