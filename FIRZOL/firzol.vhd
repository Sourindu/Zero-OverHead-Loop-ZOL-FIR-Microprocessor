----
--DEVELOPER : SOURINDU CHATTERJEE
--ORGANISATION : FLORIDA STATE UNIVERSITY
--DATE : APRIL 16, 2016
--
--File             : firzol.vhd
--Project Name     : firzol
--Description      : This unit is a Zero Overhead Loop implemented MAC FIR processor unit.
--Tools            : Altera Quartus II 64-Bit Version  13.0.1 Build 232 06/12/2013 SP 1 SJ Web Edition for compilation
--Simulation Tool  : Altera ModelSim for simulation
--Family           : Cyclone IV E family
--Device           : EP4CE115F29C7
-- 
--Optimization Technique          Speed                    Balanced                        Area
--
--Total LE             :   1,597 / 114,480 ( 1 % )    1,504 / 114,480 ( 1 % )        1,507 / 114,480 ( 1 % )

--Total combinational  :   1,597 / 114,480 ( 1 % )    1,504 / 114,480 ( 1 % )        1,488 / 114,480 ( 1 % ) 
--functions

--Dedicated logic      :   184 / 114,480 ( < 1 % )    184 / 114,480 ( < 1 % )        184 / 114,480 ( < 1 % )
--registers

--Total registers      :            184                       184                            184
--Total pins           :      44 / 529 ( 8 % )          44 / 529 ( 8 % )                44 / 529 ( 8 % )

--Embedded Multiplier  :      1 / 532 ( < 1 % )         1 / 532 ( < 1 % )               1 / 532 ( < 1 % )

--clk
--Fmax                 :        58.98 MHz                 48.62 MHz                        52.36 MHz

--Restricted Fmax      :        58.98 MHz                 48.62 MHz                        52.36 MHz

--reset
--Fmax                 :        255.75 MHz                194.93 MHz                       266.45 MHz

--Restricted Fmax      :        250.0 MHz                 194.93 MHz                       250.0 MHz


--Design Library       : IEEE.STD_LOGIC_1164 - to use standard logic
--                       IEEE.STD_LOGIC_ARITH - to use arithmetic logic
--                       IEEE.STD_LOGIC_SIGNED - to use signed numerical computation
--                       IEEE_PROPOSED.FIXED_FLOAT_TYPES - Floating & Fixed Point conversion 
--                       IEEE_PROPOSED.FIXED_PKG - Fixed Point data type
--                       IEEE_PROPOSED.FLOAT_PKG - Floating Point Data type 

--**********************************************************************************--



PACKAGE n_bit_int IS -- User defined type
  SUBTYPE S15 IS INTEGER RANGE -2**14 TO 2**14-1;
	TYPE STATE_TYPE IS (start, trans, mac, done);
END n_bit_int;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;
LIBRARY IEEE_PROPOSED;
USE IEEE_PROPOSED.FIXED_FLOAT_TYPES.ALL;
USE IEEE_PROPOSED.FIXED_PKG.ALL;
USE IEEE_PROPOSED.FLOAT_PKG.ALL;


LIBRARY work;
USE work.n_bit_int.ALL;

ENTITY firzol IS
  GENERIC (W1 : INTEGER := 9; -- Input bit width
           W2 : INTEGER := 18;-- Multiplier bit width 2*W1
           W3 : INTEGER := 19;-- Adder width = W2+log2(L)-1
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