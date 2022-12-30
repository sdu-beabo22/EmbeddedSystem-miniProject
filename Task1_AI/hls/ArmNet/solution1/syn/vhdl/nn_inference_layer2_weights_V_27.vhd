-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_27_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_27_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11011011", 1 => "11111011", 2 => "00010011", 3 => "00100111", 
    4 => "00000110", 5 => "00001110", 6 => "00100001", 7 => "11000100", 
    8 => "11110101", 9 => "00110010", 10 => "11001101", 11 => "11111101", 
    12 => "11110000", 13 => "00101111", 14 => "00100001", 15 => "00110100", 
    16 => "00101000", 17 => "11111110", 18 => "01001101", 19 => "00010001", 
    20 => "00011100", 21 => "10110000", 22 => "11100011", 23 => "01000110", 
    24 => "00000101", 25 => "00110111", 26 => "00101101", 27 => "00010110", 
    28 => "01001100", 29 => "00011010", 30 => "00100001", 31 => "11010110", 
    32 => "00001111", 33 => "00010001", 34 => "11000100", 35 => "00100010", 
    36 => "00110010", 37 => "10110001", 38 => "11101010", 39 => "00000101", 
    40 => "01101010", 41 => "00010100", 42 => "00110110", 43 => "00100000", 
    44 => "10101111", 45 => "00100001", 46 => "00011110", 47 => "00101101", 
    48 => "01001001", 49 => "00011001", 50 => "01011010", 51 => "11100111", 
    52 => "00100000", 53 => "00001011", 54 => "11111000", 55 => "11001101", 
    56 => "10110101", 57 => "11111000", 58 => "11111010", 59 => "11100100", 
    60 => "11101011", 61 => "00101100", 62 => "00011001", 63 => "11111100" );


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

entity nn_inference_layer2_weights_V_27 is
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

architecture arch of nn_inference_layer2_weights_V_27 is
    component nn_inference_layer2_weights_V_27_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_27_rom_U :  component nn_inference_layer2_weights_V_27_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


