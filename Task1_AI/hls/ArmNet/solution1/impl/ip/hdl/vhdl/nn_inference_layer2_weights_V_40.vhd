-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_40_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_40_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11101010", 1 => "10111110", 2 => "00100100", 3 => "01000001", 
    4 => "00001011", 5 => "11101001", 6 => "00101100", 7 => "10100010", 
    8 => "00001000", 9 => "00001101", 10 => "00101000", 11 => "11010011", 
    12 => "11001001", 13 => "01001001", 14 => "00011010", 15 => "00100011", 
    16 => "00011111", 17 => "00001111", 18 => "00111110", 19 => "00000000", 
    20 => "11010001", 21 => "10100100", 22 => "10101101", 23 => "00011011", 
    24 => "01001010", 25 => "00000111", 26 to 27=> "11111111", 28 => "11000010", 
    29 => "11100000", 30 => "11000001", 31 => "11110110", 32 => "11000001", 
    33 => "11001001", 34 => "11011011", 35 => "00011111", 36 => "00000011", 
    37 => "10111111", 38 => "11110100", 39 => "00101110", 40 => "01010100", 
    41 => "10111000", 42 => "00110010", 43 => "01101001", 44 => "10111001", 
    45 => "10110011", 46 => "00011101", 47 => "00100001", 48 => "00010011", 
    49 => "01010010", 50 => "11011010", 51 => "11011011", 52 => "01000000", 
    53 => "00000011", 54 => "10011101", 55 => "00010001", 56 => "10100000", 
    57 => "11101001", 58 => "11010000", 59 => "11101110", 60 => "11100010", 
    61 => "11101100", 62 => "00011011", 63 => "00000000" );


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

entity nn_inference_layer2_weights_V_40 is
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

architecture arch of nn_inference_layer2_weights_V_40 is
    component nn_inference_layer2_weights_V_40_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_40_rom_U :  component nn_inference_layer2_weights_V_40_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


