-------------------------------------------------------------------------------
-- system_bram_block_1_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library bram_block_1_elaborate_v1_00_a;
use bram_block_1_elaborate_v1_00_a.all;

entity system_bram_block_1_wrapper is
  port (
    BRAM_Rst_A : in std_logic;
    BRAM_Clk_A : in std_logic;
    BRAM_EN_A : in std_logic;
    BRAM_WEN_A : in std_logic_vector(0 to 3);
    BRAM_Addr_A : in std_logic_vector(0 to 31);
    BRAM_Din_A : out std_logic_vector(0 to 31);
    BRAM_Dout_A : in std_logic_vector(0 to 31);
    BRAM_Rst_B : in std_logic;
    BRAM_Clk_B : in std_logic;
    BRAM_EN_B : in std_logic;
    BRAM_WEN_B : in std_logic_vector(0 to 3);
    BRAM_Addr_B : in std_logic_vector(0 to 31);
    BRAM_Din_B : out std_logic_vector(0 to 31);
    BRAM_Dout_B : in std_logic_vector(0 to 31)
  );
end system_bram_block_1_wrapper;

architecture STRUCTURE of system_bram_block_1_wrapper is

  component bram_block_1_elaborate is
    generic (
      C_MEMSIZE : integer;
      C_PORT_DWIDTH : integer;
      C_PORT_AWIDTH : integer;
      C_NUM_WE : integer;
      C_FAMILY : string
    );
    port (
      BRAM_Rst_A : in std_logic;
      BRAM_Clk_A : in std_logic;
      BRAM_EN_A : in std_logic;
      BRAM_WEN_A : in std_logic_vector(0 to C_NUM_WE-1);
      BRAM_Addr_A : in std_logic_vector(0 to C_PORT_AWIDTH-1);
      BRAM_Din_A : out std_logic_vector(0 to C_PORT_DWIDTH-1);
      BRAM_Dout_A : in std_logic_vector(0 to C_PORT_DWIDTH-1);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to C_NUM_WE-1);
      BRAM_Addr_B : in std_logic_vector(0 to C_PORT_AWIDTH-1);
      BRAM_Din_B : out std_logic_vector(0 to C_PORT_DWIDTH-1);
      BRAM_Dout_B : in std_logic_vector(0 to C_PORT_DWIDTH-1)
    );
  end component;

begin

  bram_block_1 : bram_block_1_elaborate
    generic map (
      C_MEMSIZE => 16#10000#,
      C_PORT_DWIDTH => 32,
      C_PORT_AWIDTH => 32,
      C_NUM_WE => 4,
      C_FAMILY => "spartan6"
    )
    port map (
      BRAM_Rst_A => BRAM_Rst_A,
      BRAM_Clk_A => BRAM_Clk_A,
      BRAM_EN_A => BRAM_EN_A,
      BRAM_WEN_A => BRAM_WEN_A,
      BRAM_Addr_A => BRAM_Addr_A,
      BRAM_Din_A => BRAM_Din_A,
      BRAM_Dout_A => BRAM_Dout_A,
      BRAM_Rst_B => BRAM_Rst_B,
      BRAM_Clk_B => BRAM_Clk_B,
      BRAM_EN_B => BRAM_EN_B,
      BRAM_WEN_B => BRAM_WEN_B,
      BRAM_Addr_B => BRAM_Addr_B,
      BRAM_Din_B => BRAM_Din_B,
      BRAM_Dout_B => BRAM_Dout_B
    );

end architecture STRUCTURE;
