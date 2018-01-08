PACKAGE n_bit_int IS -- User defined type
  SUBTYPE S15 IS INTEGER RANGE -2**14 TO 2**14-1;
	TYPE STATE_TYPE IS (start, trans, mac, done);
END n_bit_int;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_signed.ALL;
LIBRARY ieee_proposed;
USE ieee_proposed.fixed_float_types.ALL;
USE ieee_proposed.fixed_pkg.ALL;
USE ieee_proposed.float_pkg.ALL;


LIBRARY work;
USE work.n_bit_int.ALL;

ENTITY firzol IS
  GENERIC (W1 : INTEGER := 9; -- Input bit width
           W2 : INTEGER := 18;-- Multiplier bit width 2*W1
           W3 : INTEGER := 19;-- Adder width = W2+log2(L)-1
           W4 : INTEGER := 11;-- Output bit width
           L  : INTEGER := 7  -- Filter length 
           );
	PORT(
		clk    : IN STD_LOGIC;   -- System clock
    reset  : IN STD_LOGIC;   -- Asynchronous reset
		Load_x : IN  STD_LOGIC;  -- data input/loading switch
		Load_c : IN  STD_LOGIC;  -- coefficients input switch
		L_in   : IN INTEGER RANGE 1 TO L; --The actual number of coefficients
    x_in   : IN  STD_LOGIC_VECTOR(W1-1 DOWNTO 0);-- System input
    c_in   : IN  STD_LOGIC_VECTOR(W1-1 DOWNTO 0);-- Coefficient data input 
		y_out  : OUT STD_LOGIC_VECTOR(W3-1 DOWNTO 0));--System Output result
END firzol;

ARCHITECTURE fpga OF firzol IS

	SUBTYPE SLVW1 IS STD_LOGIC_VECTOR(W1-1 DOWNTO 0);
  SUBTYPE SLVW2 IS STD_LOGIC_VECTOR(W2-1 DOWNTO 0);
  SUBTYPE SLVW3 IS STD_LOGIC_VECTOR(W3-1 DOWNTO 0);
  TYPE A0_L1SLVW1 IS ARRAY (0 TO L-1) OF SLVW1;
  TYPE A0_L1SLVW2 IS ARRAY (0 TO L-1) OF SLVW2;
  TYPE A0_L1SLVW3 IS ARRAY (0 TO L-1) OF SLVW3;

	SIGNAL  x_count_ini :  INTEGER  RANGE -1 TO L := 0; -- counting register for input data array
	SIGNAL  d_out       :  S15 := 0; -- temporary accumulator result in each cycle
	SIGNAL  a_temp      :  SLVW3; -- final result of the accumulator variable
	SIGNAL  x_ar_out       :  A0_L1SLVW1 ; -- array for data input
  SIGNAL  c_ar        :  A0_L1SLVW1 ; -- Coefficient array 
  SIGNAL  p           :  A0_L1SLVW2 ; -- Product array 
	SIGNAL  state       :  STATE_TYPE; --state type variable
	SIGNAL  rst         :  STD_LOGIC := '0'; --Internal reset
                                                        
BEGIN

  St : PROCESS(clk, reset, c_in, x_in, Load_x, Load_c, state, p, L_in, rst)
	
	VARIABLE L_current   : INTEGER := L_in; -- actual number of coefficients
	VARIABLE d           : INTEGER := 0;  -- temporary accumulator result in each cycle
	VARIABLE x_ar        : A0_L1SLVW1; -- array for data input
	VARIABLE x,c         : SLVW1; -- Just to make the Multipliction.
	VARIABLE c_count     : INTEGER RANGE -1 TO L := 0; -- counting variable for coefficient array.
	VARIABLE count       : INTEGER  RANGE -1 TO L := 0; -- counting variable for MAC state.
	VARIABLE x_count_ini : INTEGER  RANGE -1 TO L := 0; -- counting variable for data input array.
	--VARIABLE rst         :  STD_LOGIC := '0'; --internal reset.
	
  BEGIN ------> Load data or coefficients
    IF reset = '1' OR rst = '1' THEN
			rst <= '0';
      L_current := L_in;
			x := (OTHERS => '0');
			c := (OTHERS => '0');
			count := 0;
			c_count := 0;
			x_count_ini := L_current-1;
			state <= start;
      FOR K IN 0 TO L-1 LOOP
				EXIT WHEN K = L_current;
        c_ar(K) <= (OTHERS => '0');
				x_ar(K) := (OTHERS => '0');
      END LOOP; 
    ELSIF rising_edge(clk) THEN 
			CASE state IS
--start state
			WHEN start =>
				IF Load_c = '1' THEN
					c_ar(c_count) <= c_in;  -- Store coefficient in register.
					IF c_count = L_current-1 THEN
						c_count := 0;
					ELSE
						c_count := c_count+1;
					END IF;
				END IF;
				IF Load_x = '1' THEN
					IF x_count_ini = -1 THEN
						x_count_ini := L_current-1;
					END IF;
					x_ar(x_count_ini) := x_in; -- Get one data sample at a time.
					x_count_ini := x_count_ini-1;
				END IF;
				IF L_current /= L_in THEN
					L_current := L_in;
					rst <= '1';
					state <= start;
				ELSIF Load_x = '0' AND Load_c = '0' THEN
					x_count_ini := L_current-1;
					state <= trans;
				END IF;
				x_ar_out <= x_ar; -- Store input data in register.
--trans state
			WHEN trans =>
				IF Load_x = '1' THEN
					-- Get one data sample at a time
					FOR K IN 0 TO L-2 LOOP
						EXIT WHEN K = L_current-1;
						x_ar(x_count_ini-K) := x_ar(x_count_ini-K-1);
					END LOOP;
					x_ar(0) := x_in;	
				END IF;
				x_ar_out <= x_ar;
				IF L_current /= L_in THEN
					L_current := L_in;
					rst <= '1';
					state <= start;
				ELSE
					d := 0;
					state <= mac;
				END IF;
--MAC state
			WHEN mac =>
				x :=  x_ar(count);
				c := c_ar(count);
				d := d + CONV_INTEGER(c*x);
				count := count+1;
				d_out <= d;
				IF count = L_current THEN
					a_temp <= CONV_STD_LOGIC_VECTOR(d,19);
					d := 0;
					count := 0;
					IF L_current /= L_in OR Load_c = '1' THEN
						L_current := L_in;
						rst <= '1';
						state <= start;
					ELSIF Load_x = '1' THEN
						x_count_ini := L_current-1;
						state <= trans;
					ELSE
						state <= done;
					END IF;
				ELSE
					state <= mac;
				END IF;
--done state
			WHEN done =>
				IF L_current /= L_in OR Load_c = '1' THEN
					L_current := L_in;
					rst <= '1';
					state <= start;
				ELSIF Load_x = '1' THEN
					x_count_ini := L_current-1;
					state <= trans;
				END IF;
				x_ar_out <= x_ar;
			END CASE;
		END IF;
  END PROCESS St;
	y_out <= a_temp;

END fpga;