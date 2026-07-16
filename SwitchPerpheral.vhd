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

ARCHITECTURE And_Queue OF SwitchPerpheral IS
    SIGNAL CHIP_SELECT : STD_LOGIC;
    SIGNAL MASK        : STD_LOGIC_VECTOR(15 DOWNTO 0);
BEGIN


    CHIP_SELECT <= '1' WHEN (IO_ADDR = "00000000011") ELSE '0';
	Process(IO_ADDR

    PROCESS(CLOCK, RESETN)
    BEGIN
        IF RESETN = '0' THEN
            MASK <= (OTHERS => '0');
        ELSIF RISING_EDGE(CLOCK) THEN
            IF (CHIP_SELECT = '1') AND (IO_WRITE = '1') THEN
                MASK <= IO_DATA;
            END IF;
        END IF;
    END PROCESS;


    IO_DATA <= EXT_WIRES AND MASK WHEN (CHIP_SELECT = '1' AND IO_READ = '1')
               ELSE (OTHERS => 'Z');

END And_Queue;
ARCHITECTURE Or_Queue OF SwitchPerpheral IS
    SIGNAL CHIP_SELECT : STD_LOGIC;
    SIGNAL MASK        : STD_LOGIC_VECTOR(15 DOWNTO 0);
BEGIN


    CHIP_SELECT <= '1' WHEN (IO_ADDR = "000000000100") ELSE '0';


    PROCESS(CLOCK, RESETN)
    BEGIN
        IF RESETN = '0' THEN
            MASK <= (OTHERS => '0');
        ELSIF RISING_EDGE(CLOCK) THEN
            IF (CHIP_SELECT = '1') AND (IO_WRITE = '1') THEN
                MASK <= IO_DATA;
            END IF;
        END IF;
    END PROCESS;


    IO_DATA <= EXT_WIRES OR MASK WHEN (CHIP_SELECT = '1' AND IO_READ = '1')
               ELSE (OTHERS => 'Z');

END Or_Queue;
ARCHITECTURE Xor_Queue OF SwitchPerpheral IS
    SIGNAL CHIP_SELECT : STD_LOGIC;
    SIGNAL MASK        : STD_LOGIC_VECTOR(15 DOWNTO 0);
BEGIN


    CHIP_SELECT <= '1' WHEN (IO_ADDR = "00000000101") ELSE '0';


    PROCESS(CLOCK, RESETN)
    BEGIN
        IF RESETN = '0' THEN
            MASK <= (OTHERS => '0');
        ELSIF RISING_EDGE(CLOCK) THEN
            IF (CHIP_SELECT = '1') AND (IO_WRITE = '1') THEN
                MASK <= IO_DATA;
            END IF;
        END IF;
    END PROCESS;


    IO_DATA <= EXT_WIRES XOR MASK WHEN (CHIP_SELECT = '1' AND IO_READ = '1')
               ELSE (OTHERS => 'Z');

END Xor_Queue;