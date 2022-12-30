-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_33_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_33_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11111011", 1 => "11101100", 2 => "00010100", 3 => "11111010", 
    4 => "00001110", 5 => "00111011", 6 => "00000010", 7 => "00111101", 
    8 => "00111001", 9 => "11101110", 10 => "00100110", 11 => "11100000", 
    12 => "00111101", 13 => "00110111", 14 => "11000101", 15 => "11111011", 
    16 => "00110001", 17 => "11010011", 18 => "11100101", 19 => "11111110", 
    20 => "11100001", 21 => "11110101", 22 => "00101000", 23 => "00111011", 
    24 => "11011100", 25 to 26=> "11110100", 27 => "11110000", 28 => "11011101", 
    29 => "11110100", 30 => "11100100", 31 => "11100111", 32 => "11111100", 
    33 => "11110111", 34 => "11010100", 35 => "11110011", 36 => "01001101", 
    37 => "00101100", 38 => "11011100", 39 => "11001100", 40 => "00000010", 
    41 => "00010001", 42 => "00000100", 43 => "00011100", 44 => "01001011", 
    45 => "00111001", 46 => "11110100", 47 => "11001101", 48 => "00011111", 
    49 => "11101000", 50 => "10111111", 51 => "00010010", 52 => "00000010", 
    53 => "11001000", 54 => "00100001", 55 => "11111001", 56 => "11101111", 
    57 => "00011000", 58 => "00001011", 59 => "11000110", 60 => "11100011", 
    61 => "11001010", 62 => "11110100", 63 => "11000011" );


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

entity nn_inference_layer2_weights_V_33 is
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

architecture arch of nn_inference_layer2_weights_V_33 is
    component nn_inference_layer2_weights_V_33_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_33_rom_U :  component nn_inference_layer2_weights_V_33_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


