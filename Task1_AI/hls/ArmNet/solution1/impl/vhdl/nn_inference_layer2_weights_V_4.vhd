-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_layer2_weights_V_4_rom is 
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


architecture rtl of nn_inference_layer2_weights_V_4_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0001010", 1 => "1111000", 2 => "0010010", 3 => "0100100", 
    4 => "0011001", 5 => "1001110", 6 => "0100011", 7 => "1101101", 
    8 => "1010001", 9 => "1001011", 10 => "1101100", 11 => "0100001", 
    12 => "1100100", 13 => "0110011", 14 => "0100000", 15 => "1111101", 
    16 => "1100011", 17 => "0101001", 18 => "1010010", 19 => "1010100", 
    20 => "1101000", 21 => "0011101", 22 => "0001101", 23 => "1011110", 
    24 => "0011011", 25 => "0011111", 26 => "0010100", 27 => "0000000", 
    28 => "0101011", 29 => "1011001", 30 => "1100010", 31 => "1001001", 
    32 => "0010010", 33 => "1011011", 34 => "0111000", 35 => "1101011", 
    36 => "1111010", 37 to 38=> "1011001", 39 => "1100000", 40 => "1101000", 
    41 => "0100110", 42 => "1110111", 43 => "1101100", 44 => "1011101", 
    45 => "0011011", 46 => "1011110", 47 => "0011001", 48 => "1100000", 
    49 => "0110100", 50 => "0010110", 51 => "0011101", 52 => "0100100", 
    53 => "0100010", 54 => "1010101", 55 => "0010010", 56 => "0001111", 
    57 => "1011001", 58 => "0001001", 59 => "1111011", 60 => "1101110", 
    61 => "0101010", 62 => "0001111", 63 => "0011110" );


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

entity nn_inference_layer2_weights_V_4 is
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

architecture arch of nn_inference_layer2_weights_V_4 is
    component nn_inference_layer2_weights_V_4_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_layer2_weights_V_4_rom_U :  component nn_inference_layer2_weights_V_4_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


