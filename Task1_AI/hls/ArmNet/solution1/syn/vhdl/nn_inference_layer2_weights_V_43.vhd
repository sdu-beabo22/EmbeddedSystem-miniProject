-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_43_rom is 
    generic(
             DWIDTH     : integer := 7; 
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


architecture rtl of nn_inference_layer2_weights_V_43_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0100010", 1 => "0110101", 2 => "1111100", 3 => "0010100", 
    4 => "0100100", 5 => "1100011", 6 => "1111110", 7 => "1111000", 
    8 => "1110110", 9 => "1011010", 10 => "1010010", 11 => "0000001", 
    12 => "0110100", 13 => "1011001", 14 => "1111000", 15 => "1111110", 
    16 => "1100001", 17 => "0100010", 18 => "1110011", 19 => "1011110", 
    20 => "0001100", 21 => "0110110", 22 => "0011100", 23 => "1010110", 
    24 => "0011100", 25 => "0011000", 26 => "1101001", 27 => "0101111", 
    28 => "0000000", 29 => "0010100", 30 => "0000111", 31 => "0001100", 
    32 => "0111001", 33 => "1010101", 34 => "0011000", 35 => "0110010", 
    36 => "0110110", 37 => "0110100", 38 => "1110110", 39 => "0000100", 
    40 => "1110111", 41 to 42=> "1101110", 43 => "1101000", 44 => "1110100", 
    45 => "0010101", 46 => "1001110", 47 => "1100010", 48 => "0101011", 
    49 => "1101110", 50 => "0010001", 51 => "0001010", 52 => "1111000", 
    53 => "1010101", 54 => "0101000", 55 => "1010001", 56 => "0010110", 
    57 => "0001001", 58 => "0110000", 59 => "1111000", 60 => "0101111", 
    61 => "1111001", 62 => "0011101", 63 => "1110101" );


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

entity nn_inference_layer2_weights_V_43 is
    generic (
        DataWidth : INTEGER := 7;
        AddressRange : INTEGER := 64;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of nn_inference_layer2_weights_V_43 is
    component nn_inference_layer2_weights_V_43_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_43_rom_U :  component nn_inference_layer2_weights_V_43_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


