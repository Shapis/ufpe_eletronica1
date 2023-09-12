LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY debouncer IS
	GENERIC (
		counter_size : INTEGER := 19); --counter size (19 bits dá 10.5 ms com clock de 50 MHz)
	PORT(
		clk, button: IN std_logic;
		result: OUT std_logic);
END debouncer;

ARCHITECTURE logic OF debouncer IS
	--VARIABLE counter_size : INTEGER := 19; --counter size (19 bits dá 10.5 ms com clock de 50 MHz)
	SIGNAL flipflops : std_logic_vector (1 DOWNTO 0);
	SIGNAL counter_set : std_logic;
	SIGNAL counter_out : std_logic_vector (counter_size DOWNTO 0) := (OTHERS => '0');
BEGIN

	counter_set <= flipflops(0) xor flipflops(1);
	
	PROCESS(clk)
	BEGIN
		IF(clk'EVENT and clk = '1') THEN
			flipflops(0) <= not button;
			flipflops(1) <= flipflops(0);
			IF (counter_set = '1') THEN
				counter_out <= (OTHERS => '0');
			ELSIF (counter_out(counter_size) = '0') THEN
				counter_out <= counter_out + 1;
			ELSE 
				result <= flipflops(1);
			END IF;
		END IF;
	END PROCESS;
END logic;