LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_pa_struc IS
END tb_pa_struc;
 
ARCHITECTURE behavior OF tb_pa_struc IS 
 
    COMPONENT pa_struc
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         Sum : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := "0000";
   signal B : std_logic_vector(3 downto 0) := "0000";
   signal Cin : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
 
BEGIN
   uut: pa_struc PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Sum => Sum,
          Cout => Cout
        );

   stim_proc: process
   begin		
      A<="1001";
		B<="0101";
		Cin<='0';
      wait for 100 ns;
		A<="1001";
		B<="0101";
		Cin<='1';
      wait for 100 ns;
		A<="1001";
		B<="0001";
		Cin<='0';
      wait for 100 ns;
		A<="1001";
		B<="0000";
		Cin<='1';
      wait for 100 ns;
		
		end process;

END;
