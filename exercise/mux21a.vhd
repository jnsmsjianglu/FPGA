library ieee;
use ieee.std_logic_1164.all;

entity mux21a is
port (s,a,b:in std_logic;
		y:out std_logic);
end entity;

architecture one of mux21a is 
begin
process(a,b,s)
begin
if (s='1') then  y<=a;
         else  y<=b;
end if;
end process;
end architecture;


