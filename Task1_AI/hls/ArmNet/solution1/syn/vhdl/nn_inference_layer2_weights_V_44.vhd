-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_44_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_44_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11011001", 1 => "00100100", 2 => "00011010", 3 => "11110111", 
    4 => "11101100", 5 => "00100001", 6 => "00010111", 7 => "00000101", 
    8 => "11101101", 9 => "11111000", 10 => "00010111", 11 => "00000010", 
    12 => "11111100", 13 => "11010100", 14 => "11010011", 15 => "00110010", 
    16 => "00110101", 17 => "00011001", 18 => "11101000", 19 => "00101110", 
    20 => "11001011", 21 => "11011000", 22 => "11111100", 23 => "11110011", 
    24 => "11000011", 25 => "11111010", 26 => "11011001", 27 => "11101010", 
    28 => "00011010", 29 => "00101111", 30 => "11111000", 31 => "11100110", 
    32 => "11100101", 33 => "11011101", 34 => "11011010", 35 => "00001000", 
    36 => "00011111", 37 => "11110100", 38 => "00000001", 39 => "11100001", 
    40 => "00100100", 41 => "00010001", 42 => "11010011", 43 => "11100011", 
    44 => "11101011", 45 => "00011010", 46 => "00110000", 47 => "11100011", 
    48 => "00100001", 49 => "11011010", 50 => "00011100", 51 => "00011111", 
    52 => "10111000", 53 => "00110011", 54 => "00110100", 55 => "11010100", 
    56 => "00001011", 57 => "11100111", 58 => "11100110", 59 => "11101110", 
    60 => "00101011", 61 => "00101111", 62 => "11100100", 63 => "00010000" );


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

entity nn_inference_layer2_weights_V_44 is
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

architecture arch of nn_inference_layer2_weights_V_44 is
    component nn_inference_layer2_weights_V_44_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_44_rom_U :  component nn_inference_layer2_weights_V_44_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


