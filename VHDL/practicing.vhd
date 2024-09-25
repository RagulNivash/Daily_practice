library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity bp_register is

PORT(tdi,shift_dr,clkdr: in std_logic;
     Q: out std_logic);
end bp_register;


architecture structural of bp_register is

  signal d: std_logic;
component myAND port(a: in STD_LOGIC;
                     b: in std_logic;
                     y: out std_logic);
end component;

  begin
    andgate: myAND port map (shiftdr,tdi,d);

  process(clkdr)
  begin
    if rising_edge (clkdr) then
      Q<= d;
    endif;
  endprocess;


  
end structural;
-------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;


entity dff_all is
port(d:in std_logic; clk:in std_logic; q: out std_logic);
  end dff_all;


architecture structural of dff_all is
begin
  process(clk)

  begin
    if falling_edge(clk) then
      q<=d;
    end if;



  end process;
 end structural;

      
