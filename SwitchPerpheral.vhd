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
    CONSTANT DEPTH : INTEGER := 8;
	
    TYPE QUEUE_ARRAY IS ARRAY(0 TO DEPTH-1) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL QUEUE : QUEUE_ARRAY;
 
    SIGNAL HEAD : INTEGER RANGE 0 TO 2*DEPTH-1;
    SIGNAL TAIL : INTEGER RANGE 0 TO 2*DEPTH-1;
 
    SIGNAL EMPTY : STD_LOGIC;
    SIGNAL FULL  : STD_LOGIC;
 
    SIGNAL AND_MASK : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL OR_MASK  : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL XOR_MASK : STD_LOGIC_VECTOR(15 DOWNTO 0);
 
    SIGNAL CS_AND : STD_LOGIC;
    SIGNAL CS_OR  : STD_LOGIC;
    SIGNAL CS_XOR : STD_LOGIC;
    SIGNAL CS_ENQ : STD_LOGIC;
    SIGNAL CS_DEQ : STD_LOGIC;
 
    SIGNAL FRONT    : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL OUT_DATA : STD_LOGIC_VECTOR(15 DOWNTO 0);
 
    -- Detectors for if the enque or deque are finished
    SIGNAL ENQ_DONE      : STD_LOGIC;
    SIGNAL DEQ_READ      : STD_LOGIC;
    SIGNAL DEQ_READ_PREV : STD_LOGIC;
BEGIN
 
    -- Chip select for diffrence function
    CS_AND <= '1' WHEN (IO_ADDR = "00000000011") ELSE '0';  -- 0x03
    CS_OR  <= '1' WHEN (IO_ADDR = "00000000100") ELSE '0';  -- 0x04
    CS_XOR <= '1' WHEN (IO_ADDR = "00000000101") ELSE '0';  -- 0x05
    CS_ENQ <= '1' WHEN (IO_ADDR = "00000000110") ELSE '0';  -- 0x06
    CS_DEQ <= '1' WHEN (IO_ADDR = "00000000111") ELSE '0';  -- 0x07
	--
    EMPTY <= '1' WHEN (HEAD = TAIL) ELSE '0';
    FULL  <= '1' WHEN (((TAIL - HEAD) MOD (2*DEPTH)) = DEPTH) ELSE '0';
 
    -- Maintains front signal for easy access
    FRONT <= QUEUE(HEAD MOD DEPTH) WHEN (EMPTY = '0') ELSE (OTHERS => '0');
 
    -- Sets the mask on IO_WRITE
    PROCESS(CLOCK, RESETN)
    BEGIN
        IF RESETN = '0' THEN
            AND_MASK <= (OTHERS => '0');
            OR_MASK  <= (OTHERS => '0');
            XOR_MASK <= (OTHERS => '0');
        ELSIF RISING_EDGE(CLOCK) THEN
            IF (IO_WRITE = '1') THEN
                IF (CS_AND = '1') THEN AND_MASK <= IO_DATA; END IF;
                IF (CS_OR  = '1') THEN OR_MASK  <= IO_DATA; END IF;
                IF (CS_XOR = '1') THEN XOR_MASK <= IO_DATA; END IF;
            END IF;
        END IF;
    END PROCESS;
 
    ------------------------------------------------------------------
    -- ENQUEUE process: owns TAIL and the queue memory.
    -- An IN from the enqueue address samples EXT_WIRES into the queue
    -- (and the bus drives EXT_WIRES back so AC gets the enqueued value).
    -- ENQ_DONE keeps it a one-shot if IO_READ is held for many clocks.
    ------------------------------------------------------------------
    PROCESS(CLOCK, RESETN)
    BEGIN
        IF RESETN = '0' THEN
            TAIL     <= 0;
            ENQ_DONE <= '0';
            QUEUE    <= (OTHERS => (OTHERS => '0'));  -- queue starts all zeros
        ELSIF RISING_EDGE(CLOCK) THEN
            IF (CS_ENQ = '1') AND (IO_READ = '1') THEN
                IF (ENQ_DONE = '0') AND (FULL = '0') THEN
                    QUEUE(TAIL MOD DEPTH) <= EXT_WIRES;
                    TAIL <= (TAIL + 1) MOD (2*DEPTH);
                END IF;
                ENQ_DONE <= '1';
            ELSE
                ENQ_DONE <= '0';
            END IF;
 
            -- Clear a slot back to zero when the dequeue process pops it.
            -- (The clear lives here because only this process may drive
            -- QUEUE -- two processes writing the same signal is illegal.)
            IF (DEQ_READ = '0') AND (DEQ_READ_PREV = '1') AND (EMPTY = '0') THEN
                QUEUE(HEAD MOD DEPTH) <= (OTHERS => '0');
            END IF;
        END IF;
    END PROCESS;
 
    ------------------------------------------------------------------
    -- DEQUEUE process: owns HEAD.
    -- The pop happens when the read strobe ends, so the value driven
    -- onto IO_DATA stays stable for the whole IN cycle.
    ------------------------------------------------------------------
    DEQ_READ <= CS_DEQ AND IO_READ;
 
    PROCESS(CLOCK, RESETN)
    BEGIN
        IF RESETN = '0' THEN
            HEAD          <= 0;
            DEQ_READ_PREV <= '0';
        ELSIF RISING_EDGE(CLOCK) THEN
            DEQ_READ_PREV <= DEQ_READ;
            IF (DEQ_READ = '0') AND (DEQ_READ_PREV = '1') THEN
                IF (EMPTY = '0') THEN
                    HEAD <= (HEAD + 1) MOD (2*DEPTH);
                END IF;
            END IF;
        END IF;
    END PROCESS;
 
    --Decides the value of Data depedent on chipselect
    OUT_DATA <= EXT_WIRES  WHEN (CS_ENQ = '1') ELSE  -- AC gets value that was just enqueed
                (FRONT AND AND_MASK) WHEN (CS_AND = '1') ELSE
                (FRONT OR  OR_MASK ) WHEN (CS_OR  = '1') ELSE
                (FRONT XOR XOR_MASK) WHEN (CS_XOR = '1') ELSE
                 FRONT WHEN (CS_DEQ = '1');
		-- Drives IO_DATA depedent on chip select.
    IO_DATA <= OUT_DATA WHEN (IO_READ = '1' AND
                              (CS_AND = '1' OR CS_OR = '1' OR
                               CS_XOR = '1' OR CS_DEQ = '1' OR
                               CS_ENQ = '1'))
               ELSE (OTHERS => 'Z');
 
END Masked_Queue;