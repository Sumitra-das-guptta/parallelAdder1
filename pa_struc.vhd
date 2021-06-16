library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pa_struc is
    Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
           B : in  STD_LOGIC_VECTOR(3 downto 0);
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR(3 downto 0);
           Cout : out  STD_LOGIC);
end pa_struc;

architecture Behavioral of pa_struc is
 component fa is
		Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Cout : out  STD_LOGIC);	
	end component;
	signal c1,c2,c3:std_logic;

begin
	fa1: fa port map(A=>A(0), B=>B(0), Cin=>Cin, Sum=>Sum(0), Cout=>c1);
	fa2: fa port map(A=>A(1), B=>B(1), Cin=>c1, Sum=>Sum(1), Cout=>c2);
	fa3: fa port map(A=>A(2), B=>B(2), Cin=>c2, Sum=>Sum(2), Cout=>c3);
	fa4: fa port map(A=>A(3), B=>B(3), Cin=>c3, Sum=>Sum(3), Cout=>Cout);

end Behavioral;

----------- Full Adder  -------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fa is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end fa;

architecture Behavioral of fa is

begin
	Sum<=A xor B xor Cin;
	Cout<=(A and B) or (A and Cin) or (B and Cin);

end Behavioral;