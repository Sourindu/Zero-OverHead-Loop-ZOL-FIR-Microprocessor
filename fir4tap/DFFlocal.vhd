library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DFFlocal is 
   port(
      Q : out STD_LOGIC_VECTOR(15 downto 0);      --output connected to the adder
      Clk :in std_logic;      -- Clock input
      D :in  STD_LOGIC_VECTOR(15 downto 0)      -- Data input from the MCM block.
   );
end DFFlocal;

architecture Behavioral of DFFlocal is 

signal qt : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');

begin 

Q <= qt;

process(Clk) 
begin 
  if ( rising_edge(Clk) ) then 
    qt <= D;
  end if;       
end process; 

end Behavioral;
