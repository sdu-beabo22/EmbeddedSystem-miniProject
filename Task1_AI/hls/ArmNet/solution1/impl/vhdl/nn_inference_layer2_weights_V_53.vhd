-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_53_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_53_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00100010", 1 => "00011111", 2 => "11111100", 3 => "11111010", 
    4 => "00000111", 5 => "11010100", 6 => "11100000", 7 => "00101000", 
    8 => "10110111", 9 => "00001011", 10 => "11100101", 11 => "00010111", 
    12 => "00011111", 13 => "11001000", 14 => "00101001", 15 => "11110100", 
    16 => "11111100", 17 => "00101011", 18 => "00001100", 19 => "00101001", 
    20 => "11111000", 21 => "00101011", 22 => "11010110", 23 => "00011010", 
    24 => "11110111", 25 => "00010111", 26 => "00001010", 27 => "11110001", 
    28 => "11001101", 29 => "00100101", 30 => "00011110", 31 => "00110101", 
    32 => "00111000", 33 => "00110010", 34 => "00010010", 35 => "00000110", 
    36 => "11100100", 37 => "00101110", 38 => "11111101", 39 => "11101000", 
    40 to 41=> "00101010", 42 => "11111010", 43 => "11010100", 44 => "00110111", 
    45 => "00100010", 46 => "11101111", 47 => "00011100", 48 => "11111010", 
    49 => "00100000", 50 => "11100011", 51 => "11011110", 52 => "00011110", 
    53 => "11001110", 54 => "00010000", 55 => "00001010", 56 => "00011101", 
    57 => "00110110", 58 => "00111010", 59 => "00110000", 60 => "00011000", 
    61 => "00100001", 62 => "00001010", 63 => "11010110" );


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

entity nn_inference_layer2_weights_V_53 is
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

architecture arch of nn_inference_layer2_weights_V_53 is
    component nn_inference_layer2_weights_V_53_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_53_rom_U :  component nn_inference_layer2_weights_V_53_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


