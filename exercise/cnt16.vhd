/*library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity cnt16 is 
port (reset,clk:in std_logic;
		data:out std_logic_vector(3 downto 0);
		count:out std_logic);
end entity;
architecture one of cnt16 is 
signal data1 : std_logic_vector(3 downto 0);
begin 
process (clk)
begin
if (clk'event and clk='1') then  
   if (data1="1111") then count<='1';
	else count<='0';
	end if;
   if (reset='1') then data1<="0000";
	else data1<=data1+1;
	end if;
end if;
data<=data1;

end process;

end architecture;*/



library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity cnt16 is 
port (reset,clk:in std_logic;
		data:out std_logic_vector(3 downto 0);
		count:out std_logic);
end entity;
architecture one of cnt16 is 
signal data1 : std_logic_vector(3 downto 0);
begin 
process (clk)
begin
if (clk'event and clk='1') then  
   
   if (reset='1') then data1<="0000";
	else data1<=data1+1;
	end if;
	if (data1="1111") then count<='1';
	else count<='0';
	end if;

end if;
data<=data1;
end process;

end architecture;
