-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_62_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_62_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11111010", 1 => "11000101", 2 => "11011100", 3 => "01000110", 
    4 => "00011111", 5 => "11001000", 6 => "01100001", 7 => "11110110", 
    8 => "01101000", 9 => "00101101", 10 => "00000010", 11 => "11010100", 
    12 => "10100011", 13 => "00011100", 14 => "00001100", 15 => "00100111", 
    16 => "01100111", 17 => "11100110", 18 => "01110001", 19 => "01011111", 
    20 => "11001000", 21 => "10101110", 22 => "11001110", 23 => "00100000", 
    24 => "01000111", 25 => "00110011", 26 => "11010111", 27 => "11011001", 
    28 => "00101001", 29 => "01001111", 30 => "11011010", 31 => "10100000", 
    32 => "11101110", 33 => "00010110", 34 => "11101110", 35 => "01101100", 
    36 => "10101011", 37 => "11010010", 38 => "00010110", 39 => "00111000", 
    40 => "01101010", 41 => "10001011", 42 => "00110100", 43 => "01101110", 
    44 => "11010010", 45 => "11101001", 46 => "01001000", 47 => "01010110", 
    48 => "00011100", 49 => "00100111", 50 => "00101000", 51 => "10001101", 
    52 => "01000000", 53 => "00011111", 54 => "11001010", 55 => "00001111", 
    56 => "10101010", 57 => "10111101", 58 => "10111111", 59 => "00011100", 
    60 => "00011000", 61 => "11010111", 62 => "01000010", 63 => "00010011" );


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

entity nn_inference_layer2_weights_V_62 is
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

architecture arch of nn_inference_layer2_weights_V_62 is
    component nn_inference_layer2_weights_V_62_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_62_rom_U :  component nn_inference_layer2_weights_V_62_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


