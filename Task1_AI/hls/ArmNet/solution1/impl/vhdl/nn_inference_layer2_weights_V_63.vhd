-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_63_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_63_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11110001", 1 => "11100101", 2 => "00100111", 3 => "00000011", 
    4 => "00010011", 5 => "11101000", 6 => "00110110", 7 => "11110110", 
    8 => "00000001", 9 => "00101100", 10 => "00100001", 11 => "00001001", 
    12 => "00001111", 13 => "00101010", 14 => "11001100", 15 => "11101001", 
    16 => "11111001", 17 => "11111000", 18 => "11101101", 19 => "00101010", 
    20 => "00100001", 21 => "00101000", 22 => "11101001", 23 => "11111011", 
    24 => "00001000", 25 => "00001010", 26 => "11111101", 27 => "00010011", 
    28 => "11100101", 29 => "00010001", 30 => "11110010", 31 => "00011010", 
    32 => "11111000", 33 => "11101011", 34 => "00110101", 35 => "00101000", 
    36 => "11001010", 37 => "00100010", 38 => "00010111", 39 => "11011111", 
    40 => "11111111", 41 => "00001101", 42 => "11111110", 43 => "00110110", 
    44 => "00100111", 45 => "11010000", 46 => "00100111", 47 => "11001100", 
    48 => "00111101", 49 => "00000100", 50 => "00001000", 51 => "00110100", 
    52 => "11110000", 53 => "00111010", 54 => "11101000", 55 => "00011011", 
    56 => "11101000", 57 => "00001110", 58 => "00010101", 59 => "11011010", 
    60 => "01000011", 61 => "00001011", 62 => "00111100", 63 => "11100100" );


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

entity nn_inference_layer2_weights_V_63 is
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

architecture arch of nn_inference_layer2_weights_V_63 is
    component nn_inference_layer2_weights_V_63_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_63_rom_U :  component nn_inference_layer2_weights_V_63_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


