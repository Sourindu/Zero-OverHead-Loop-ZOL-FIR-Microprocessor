PACKAGE n_bit_int IS               -- User defined type
  SUBTYPE S15 IS INTEGER RANGE -2**14 TO 2**14-1;
	TYPE STATE_TYPE IS 
                 (start,mac, done);
  TYPE OP_TYPE IS (load, rst,nop);
END n_bit_int;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_signed.ALL;
--USE ieee.numeric_std.ALL;



LIBRARY work;
USE work.n_bit_int.ALL;

ENTITY firzol IS
  GENERIC (W1 : INTEGER := 9; -- Input bit width
           W2 : INTEGER := 18;-- Multiplier bit width 2*W1
           W3 : INTEGER := 19;-- Adder width = W2+log2(L)-1
           W4 : INTEGER := 11;-- Output bit width
           L  : INTEGER := 5  -- Filter length 
           );
	PORT (clk   : IN STD_LOGIC;   -- System clock
        reset : IN STD_LOGIC;   -- Asynchronous reset
				Load_x : IN  STD_LOGIC;    -- Load/run switch
				Load_c : IN  STD_LOGIC;
				L_in  : IN INTEGER RANGE 1 TO 100; --The actual number of coefficients
        x_in   : IN  STD_LOGIC_VECTOR(W1-1 DOWNTO 0);
                                  -- System input
        c_in   : IN  STD_LOGIC_VECTOR(W1-1 DOWNTO 0);
                                  -- Coefficient data input 
        --y_out  : OUT STD_LOGIC_VECTOR(W4-1 DOWNTO 0));
				y_out  : OUT STD_LOGIC_VECTOR(W3-1 DOWNTO 0));
--        x_in  : IN  S15;        -- System input
--				c_in  : IN  S15;
--        y_out : OUT S15);       -- Output result
END firzol;

ARCHITECTURE fpga OF firzol IS

	SIGNAL count : INTEGER;
	SIGNAL bount : INTEGER;
	SIGNAL aount : INTEGER;
	
	SUBTYPE SLVW1 IS STD_LOGIC_VECTOR(W1-1 DOWNTO 0);
  SUBTYPE SLVW2 IS STD_LOGIC_VECTOR(W2-1 DOWNTO 0);
  SUBTYPE SLVW3 IS STD_LOGIC_VECTOR(W3-1 DOWNTO 0);
  TYPE A0_L1SLVW1 IS ARRAY (0 TO L-1) OF SLVW1;
  TYPE A0_L1SLVW2 IS ARRAY (0 TO L-1) OF SLVW2;
  TYPE A0_L1SLVW3 IS ARRAY (0 TO L-1) OF SLVW3;


	SIGNAL  x  :  SLVW1;
  SIGNAL  y  :  SLVW3;
	SIGNAL  x_ar  :  A0_L1SLVW1 ;
  SIGNAL  c  :  A0_L1SLVW1 ; -- Coefficient array 
  SIGNAL  p  :  A0_L1SLVW2 ; -- Product array 
  SIGNAL  a_ar  :  A0_L1SLVW3 ; -- Adder array
	SIGNAL  a_ar2  :  A0_L1SLVW3 ;
	SIGNAL  a  :  SLVW3 ;
	SIGNAL  a_temp  :  SLVW3 ;
                                                        
BEGIN

  Load: PROCESS(clk, reset, c_in, x_in, Load_x, Load_c, count, bount)            
  BEGIN                   ------> Load data or coefficients
    IF reset = '1' THEN -- clear data and coefficients reg.
      x <= (OTHERS => '0');
			count <= 0;
			bount <= 0;
      FOR K IN 0 TO L-1 LOOP
				EXIT WHEN K = L_in;
        c(K) <= (OTHERS => '0');
				x_ar(K) <= (OTHERS => '0');
      END LOOP; 
    ELSIF rising_edge(clk) THEN  
			IF Load_c = '1' THEN
				IF count = L_in-1 THEN
					count <= 0;
				ELSE
					count <= count+1;
				END IF;
				c(count) <= c_in;      -- Store coefficient in register
			END IF;
			IF Load_x = '1' THEN
				IF bount = L_in-1 THEN
					bount <= 0;
				ELSE
					bount <= bount+1;
				END IF;
				x <= x_in;           -- Get one data sample at a time
				x_ar(bount) <= x_in;
			END IF;
    END IF;
  END PROCESS Load;


  SOP: PROCESS (clk, reset, a, p, Load_c,bount, L_in,aount)-- Compute sum-of-products
  BEGIN
    IF reset = '1' THEN -- clear tap registers
      FOR K IN 0 TO L-1 LOOP
				EXIT WHEN K = L_in;
        p(K) <= (OTHERS => '0');
				a_ar(K) <= (OTHERS => '0');
				a_ar2(K) <= (OTHERS => '0');
      END LOOP;
			aount <= 0;
			a <= (OTHERS => '0');
    ELSIF rising_edge(clk) THEN
			IF Load_c /= '1' THEN
				FOR I IN 0 TO L-1  LOOP      
					EXIT WHEN I = L_in;
					p(I) <= (c(I) * x_ar(I)); -- filter adds
					--a_ar2(I) <= a_ar2(I) + P(I);
					a <= a + p(I);
				END LOOP;
				FOR I IN 0 TO L-1  LOOP      
					EXIT WHEN I = L_in;
					FOR k IN 0 TO L-1  LOOP 
						EXIT WHEN K = L_in;
						a_ar(I) <= a_ar(I) + p(k); -- filter adds
					END LOOP;
				END LOOP; 
			END IF;
    END IF;                              -- only a register
    --y <= a(0);
  END PROCESS SOP;

--  -- Instantiate L multipliers 
--  MulGen: FOR I IN 0 TO L-1 GENERATE  
--    p(i) <= c(i) * x;
--  END GENERATE;

  --y_out <= a_ar(0)(18 DOWNTO 8); 
	y_out <= a;

END fpga;

