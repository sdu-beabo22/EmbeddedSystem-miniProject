-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_16_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_16_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110", 1 => "00111011", 2 => "00000100", 3 => "00000110", 
    4 => "00011001", 5 => "11101011", 6 => "11111000", 7 => "00101011", 
    8 => "00000110", 9 => "11110111", 10 => "00000110", 11 => "11110110", 
    12 => "11110000", 13 => "00001110", 14 => "00011010", 15 to 16=> "11110101", 
    17 => "11001101", 18 => "11110001", 19 => "11011010", 20 => "00100010", 
    21 => "00100111", 22 => "00101111", 23 => "10111010", 24 => "00001100", 
    25 => "00010110", 26 => "00110000", 27 => "00010110", 28 => "11001101", 
    29 => "11100101", 30 to 31=> "00010010", 32 => "00110110", 33 => "11011011", 
    34 => "11100101", 35 => "11110011", 36 => "11101101", 37 => "11111001", 
    38 => "11111000", 39 => "11111111", 40 => "11000110", 41 => "01000011", 
    42 => "00100000", 43 => "11011110", 44 => "00111100", 45 => "00000111", 
    46 => "00100111", 47 => "00001111", 48 => "00101011", 49 => "11100000", 
    50 => "11100100", 51 => "11111011", 52 => "11100111", 53 => "00001011", 
    54 => "00000000", 55 => "00100000", 56 => "00010011", 57 => "00110110", 
    58 => "01000000", 59 => "11101011", 60 => "11100110", 61 => "11110100", 
    62 => "00101011", 63 => "00001000" );


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

entity nn_inference_layer2_weights_V_16 is
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

architecture arch of nn_inference_layer2_weights_V_16 is
    component nn_inference_layer2_weights_V_16_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_16_rom_U :  component nn_inference_layer2_weights_V_16_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


