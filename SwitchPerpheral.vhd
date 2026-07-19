LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
 
ENTITY SwitchPerpheral IS
    PORT(
        RESETN     : IN  STD_LOGIC;
        CLOCK      : IN  STD_LOGIC;
        IO_ADDR    : IN  STD_LOGIC_VECTOR(10 DOWNTO 0);
        IO_READ    : IN  STD_LOGIC;
        EXT_WIRES  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
        IO_WRITE   : IN  STD_LOGIC;
        IO_DATA    : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
END SwitchPerpheral;
 
ARCHITECTURE Masked_Queue OF SwitchPerpheral IS
	-- Length of Queue
    CONSTANT LENGTH : INTEGER := 8;
	
    TYPE QUEUE_ARRAY IS ARRAY(0 TO LENGTH-1) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL QUEUE : QUEUE_ARRAY;
 
    SIGNAL HEAD : INTEGER RANGE 0 TO 2*LENGTH-1;
    SIGNAL TAIL : INTEGER RANGE 0 TO 2*LENGTH-1;
 
    SIGNAL EMPTY : STD_LOGIC;
    SIGNAL FULL  : STD_LOGIC;
 
    SIGNAL AND_MASK : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL OR_MASK  : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL XOR_MASK : STD_LOGIC_VECTOR(15 DOWNTO 0);
 
    SIGNAL CSEL_AND : STD_LOGIC;
    SIGNAL CSEL_OR  : STD_LOGIC;
    SIGNAL CSEL_XOR : STD_LOGIC;
    SIGNAL CSEL_ENQ : STD_LOGIC;
    SIGNAL CSEL_DEQ : STD_LOGIC;
 
    SIGNAL FRONT    : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL OUT_DATA : STD_LOGIC_VECTOR(15 DOWNTO 0);
 
    -- Detectors for if the enque or deque are finished
    SIGNAL ENQ_FIN      : STD_LOGIC;
    SIGNAL DEQ_READ      : STD_LOGIC;
    SIGNAL DEQ_READ_PREV : STD_LOGIC;
BEGIN
 
    -- Chip select for diffrence function
    CSEL_AND <= '1' WHEN (IO_ADDR = "00000000011") ELSE '0';  -- 0x03
    CSEL_OR  <= '1' WHEN (IO_ADDR = "00000000100") ELSE '0';  -- 0x04
    CSEL_XOR <= '1' WHEN (IO_ADDR = "00000000101") ELSE '0';  -- 0x05
    CSEL_ENQ <= '1' WHEN (IO_ADDR = "00000000110") ELSE '0';  -- 0x06
    CSEL_DEQ <= '1' WHEN (IO_ADDR = "00000000111") ELSE '0';  -- 0x07
	--
    EMPTY <= '1' WHEN (HEAD = TAIL) ELSE '0';
    FULL  <= '1' WHEN (((TAIL - HEAD) MOD (2*LENGTH)) = LENGTH) ELSE '0';
 
    -- Maintains front signal for easy access
    FRONT <= QUEUE(HEAD MOD LENGTH) WHEN (EMPTY = '0') ELSE (OTHERS => '0');
 
    -- Sets the mask on IO_WRITE
    PROCESS(CLOCK, RESETN)
    BEGIN
        IF RESETN = '0' THEN
            AND_MASK <= (OTHERS => '0');
            OR_MASK  <= (OTHERS => '0');
            XOR_MASK <= (OTHERS => '0');
        ELSIF RISING_EDGE(CLOCK) THEN
            IF (IO_WRITE = '1') THEN
                IF (CSEL_AND = '1') THEN AND_MASK <= IO_DATA; END IF;
                IF (CSEL_OR  = '1') THEN OR_MASK  <= IO_DATA; END IF;
                IF (CSEL_XOR = '1') THEN XOR_MASK <= IO_DATA; END IF;
            END IF;
        END IF;
    END PROCESS;
 
    --ENQUE logic here 
    PROCESS(CLOCK, RESETN)
    BEGIN
        IF RESETN = '0' THEN
            TAIL     <= 0;
            ENQ_FIN <= '0';
            QUEUE    <= (OTHERS => (OTHERS => '0'));  -- queue starts all zeros
        ELSIF RISING_EDGE(CLOCK) THEN
            IF (CSEL_ENQ = '1') AND (IO_READ = '1') THEN
                IF (ENQ_FIN = '0') THEN -- ENQUE not done
                    IF (FULL = '0') THEN -- QUEUE not full
                        -- normal enqueue
                        QUEUE(TAIL MOD LENGTH) <= EXT_WIRES;
                        TAIL <= (TAIL + 1) MOD (2*LENGTH);
                    ELSE
                        -- Overwrite newest entry with newest value
                        IF (TAIL = 0) THEN
                            QUEUE(LENGTH - 1) <= EXT_WIRES;
                        ELSE
                            QUEUE((TAIL - 1) MOD LENGTH) <= EXT_WIRES;
                        END IF;
                    END IF;
                END IF;
					 -- Set Enqueu as finished for that IO_Read pulse
                ENQ_FIN <= '1';
            ELSE
                ENQ_FIN <= '0';
            END IF;
 
            
        END IF;
    END PROCESS;
 
    --Dequeue logic
    DEQ_READ <= CSEL_DEQ AND IO_READ;
 
    PROCESS(CLOCK, RESETN)
    BEGIN
        IF RESETN = '0' THEN
            HEAD          <= 0;
            DEQ_READ_PREV <= '0';
        ELSIF RISING_EDGE(CLOCK) THEN
            DEQ_READ_PREV <= DEQ_READ;
            IF (DEQ_READ = '0') AND (DEQ_READ_PREV = '1') AND (EMPTY = '0') THEN
						HEAD <= (HEAD + 1) MOD (2*LENGTH);
				END IF;
        END IF;
    END PROCESS;
 
    --Decides the value of IO_Data depedent on chipselect
    IO_DATA <= (OTHERS => 'Z')      WHEN (IO_READ = '0')  ELSE
               EXT_WIRES            WHEN (CSEL_ENQ = '1') ELSE  -- AC gets the enqueued value
               (FRONT AND AND_MASK) WHEN (CSEL_AND = '1') ELSE
               (FRONT OR  OR_MASK ) WHEN (CSEL_OR  = '1') ELSE
               (FRONT XOR XOR_MASK) WHEN (CSEL_XOR = '1') ELSE
               FRONT                WHEN (CSEL_DEQ = '1') ELSE
               (OTHERS => 'Z');
END Masked_Queue;