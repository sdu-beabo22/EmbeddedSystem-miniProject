-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_34_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_34_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11100110", 1 => "11101101", 2 => "11101010", 3 => "11110010", 
    4 => "00100001", 5 => "00101100", 6 => "00110001", 7 => "11110001", 
    8 => "00100011", 9 => "11011010", 10 => "00101100", 11 => "00001010", 
    12 => "11110110", 13 => "11011010", 14 => "00101110", 15 => "11110111", 
    16 => "11101010", 17 => "11110011", 18 => "11111111", 19 => "00001001", 
    20 => "11100001", 21 => "00101100", 22 => "00101110", 23 => "00100110", 
    24 => "11110011", 25 => "11110111", 26 => "00001000", 27 => "00111001", 
    28 => "01000010", 29 => "00001011", 30 => "00101110", 31 => "00010000", 
    32 => "11011001", 33 => "11001010", 34 => "11111011", 35 => "11111111", 
    36 => "11101101", 37 => "11110000", 38 => "00011011", 39 => "00010000", 
    40 => "00000010", 41 => "00010111", 42 => "11001011", 43 => "00010111", 
    44 => "11100011", 45 => "11110010", 46 => "11110100", 47 => "00100110", 
    48 => "11111011", 49 => "00010100", 50 => "00010101", 51 => "11101010", 
    52 => "11111101", 53 => "11110101", 54 => "11101101", 55 => "11111001", 
    56 => "00011111", 57 => "00011010", 58 => "11010010", 59 => "11101101", 
    60 => "00110110", 61 => "00100101", 62 => "11010111", 63 => "11101100" );


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

entity nn_inference_layer2_weights_V_34 is
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

architecture arch of nn_inference_layer2_weights_V_34 is
    component nn_inference_layer2_weights_V_34_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_34_rom_U :  component nn_inference_layer2_weights_V_34_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


