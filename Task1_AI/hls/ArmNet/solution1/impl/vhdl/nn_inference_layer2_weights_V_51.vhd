-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_51_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_51_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11111000", 1 => "00010100", 2 => "00001111", 3 => "11100100", 
    4 => "00110000", 5 => "00000100", 6 => "00101110", 7 => "00001001", 
    8 => "00110110", 9 => "00100111", 10 => "11011001", 11 => "11110001", 
    12 => "11101011", 13 => "00011101", 14 => "11111001", 15 => "00010010", 
    16 => "11001111", 17 => "00010101", 18 => "11111001", 19 => "11010110", 
    20 => "11001100", 21 => "00100011", 22 => "00001110", 23 => "01000011", 
    24 => "00010010", 25 => "11100000", 26 => "00010101", 27 => "00000001", 
    28 => "11110101", 29 => "11010110", 30 => "11010010", 31 => "00110000", 
    32 => "11110010", 33 => "00001111", 34 => "11011010", 35 => "00001100", 
    36 => "11110101", 37 => "00111010", 38 => "11011101", 39 => "11001110", 
    40 => "00010100", 41 => "00101110", 42 => "11101001", 43 => "00011001", 
    44 => "00101100", 45 => "11111010", 46 => "11001000", 47 => "00001100", 
    48 => "00011110", 49 => "00011100", 50 => "00000011", 51 => "00111001", 
    52 => "00110001", 53 => "00010011", 54 => "00000101", 55 => "11111010", 
    56 => "00101001", 57 => "00111000", 58 => "11100001", 59 => "00101111", 
    60 => "11110010", 61 => "00010010", 62 => "11110001", 63 => "11000100" );


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

entity nn_inference_layer2_weights_V_51 is
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

architecture arch of nn_inference_layer2_weights_V_51 is
    component nn_inference_layer2_weights_V_51_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_51_rom_U :  component nn_inference_layer2_weights_V_51_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


