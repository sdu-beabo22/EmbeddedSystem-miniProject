-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_41_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_41_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "01000011", 1 => "01000001", 2 => "10100000", 3 => "00000011", 
    4 => "00010011", 5 => "00110100", 6 => "00011111", 7 => "00101010", 
    8 => "00111111", 9 => "00001100", 10 => "11101110", 11 => "01001111", 
    12 => "00010010", 13 => "00011110", 14 => "00010000", 15 => "11001100", 
    16 => "11100000", 17 => "10111011", 18 => "00111111", 19 => "10110101", 
    20 => "11010001", 21 => "01100001", 22 => "11111100", 23 => "11100011", 
    24 => "00100001", 25 => "11001000", 26 => "11110110", 27 => "01101011", 
    28 => "00011111", 29 => "10110011", 30 => "10101001", 31 => "00101101", 
    32 => "01110000", 33 => "00110100", 34 => "11010110", 35 => "10101110", 
    36 => "11111100", 37 => "00100100", 38 => "11100011", 39 => "00001000", 
    40 => "11011100", 41 => "00111000", 42 => "10110110", 43 => "00000000", 
    44 => "01001010", 45 => "00111011", 46 => "10110110", 47 => "01010001", 
    48 => "10101001", 49 => "01000100", 50 => "11001101", 51 => "01011101", 
    52 => "01001100", 53 => "10101100", 54 => "01000110", 55 => "01100010", 
    56 => "01010101", 57 => "01101000", 58 => "00110000", 59 => "00001011", 
    60 => "10111101", 61 => "10110010", 62 => "10100011", 63 => "11101000" );


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

entity nn_inference_layer2_weights_V_41 is
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

architecture arch of nn_inference_layer2_weights_V_41 is
    component nn_inference_layer2_weights_V_41_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_41_rom_U :  component nn_inference_layer2_weights_V_41_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


