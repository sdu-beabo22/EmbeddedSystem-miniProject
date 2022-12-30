-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_31_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_31_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1011110", 1 => "1101000", 2 => "0000110", 3 => "0001001", 
    4 => "0101101", 5 => "0100111", 6 => "0001111", 7 => "1110001", 
    8 => "0100001", 9 => "0100100", 10 => "0100111", 11 => "0001010", 
    12 => "0111110", 13 => "0000010", 14 => "1110101", 15 => "1001001", 
    16 => "1101110", 17 => "0000000", 18 => "0100000", 19 => "0000011", 
    20 => "1101110", 21 to 22=> "0101100", 23 => "0010111", 24 => "0011101", 
    25 => "1100000", 26 => "0110110", 27 => "0110100", 28 => "1110100", 
    29 => "1110001", 30 => "1011111", 31 => "0101101", 32 => "0110000", 
    33 => "1101111", 34 => "0110001", 35 => "0100010", 36 => "0111111", 
    37 => "1111000", 38 => "1010111", 39 => "1011011", 40 => "1111001", 
    41 => "0101101", 42 => "0000101", 43 => "1011100", 44 => "1111010", 
    45 => "1000101", 46 => "1011101", 47 => "1011010", 48 => "1000101", 
    49 => "0001001", 50 => "1001101", 51 => "0110010", 52 => "0100111", 
    53 => "0011100", 54 => "0000110", 55 => "1111111", 56 => "0110011", 
    57 => "0100111", 58 => "0101010", 59 => "1101111", 60 => "0111011", 
    61 => "0100101", 62 => "1100011", 63 => "1001101" );


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

entity nn_inference_layer2_weights_V_31 is
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

architecture arch of nn_inference_layer2_weights_V_31 is
    component nn_inference_layer2_weights_V_31_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_31_rom_U :  component nn_inference_layer2_weights_V_31_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


