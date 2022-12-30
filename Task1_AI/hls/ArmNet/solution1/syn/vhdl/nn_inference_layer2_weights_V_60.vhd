-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_60_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_60_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111101", 1 => "0111100", 2 => "0110001", 3 => "0010011", 
    4 => "0011111", 5 => "1010111", 6 => "1111000", 7 => "1101010", 
    8 => "1100100", 9 => "1101100", 10 => "1101000", 11 => "1111001", 
    12 => "0000110", 13 => "1001111", 14 => "1010101", 15 => "0101110", 
    16 => "1111010", 17 => "0010110", 18 => "0001000", 19 => "0101000", 
    20 => "1011010", 21 => "1100101", 22 => "1100011", 23 to 24=> "1001111", 
    25 => "0100001", 26 => "1011111", 27 => "1001110", 28 => "1101110", 
    29 => "1111100", 30 => "0011101", 31 => "0011011", 32 => "1100000", 
    33 => "0000101", 34 => "1100011", 35 => "1011111", 36 => "1001011", 
    37 => "0101101", 38 => "1101010", 39 => "1010010", 40 => "0010010", 
    41 => "1001100", 42 => "0101001", 43 => "1110000", 44 => "0101010", 
    45 => "1001101", 46 => "1100101", 47 => "1100011", 48 => "0010011", 
    49 => "1111111", 50 => "1011000", 51 => "1001110", 52 to 53=> "0111001", 
    54 => "0000100", 55 => "0001000", 56 => "0000101", 57 => "1000101", 
    58 => "1010101", 59 => "1111111", 60 => "1110000", 61 => "0011011", 
    62 => "0100000", 63 => "1011001" );


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

entity nn_inference_layer2_weights_V_60 is
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

architecture arch of nn_inference_layer2_weights_V_60 is
    component nn_inference_layer2_weights_V_60_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_60_rom_U :  component nn_inference_layer2_weights_V_60_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


