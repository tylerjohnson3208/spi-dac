------------------------------------------------------------------------------
--                                                                            
--                           example_dac_MAX542_top.vhd
--                            
--                    Maxim Integrated MAX542 DAC test project                              
--                                                                            
------------------------------------------------------------------------------
-- Description: Test project for the Maxim Integrated MAX542 DAC. Outputs a 
-- sawtooth wave from the DAC. 

library ieee;                                
use ieee.std_logic_1164.all;    
use ieee.numeric_std.all; 
--use ieee.std_logic_unsigned.all;            
--use work.all;

entity example_dac_MAX542_top is
generic(
    nbits : integer := 16; 
    nlsb  : integer := 10  -- Number of LSB to increase output per clock cycle
);
port(
    sclk_top : in std_logic; -- clock input
    ldac_out_top : out std_logic;
    cs_out_top   : out std_logic;
    dout_top     : out std_logic;
    sclk_out_top : out std_logic; -- clock output
    led_1      : out std_logic;
    led_2        : out std_logic;
    led_3        : out std_logic
    );
end entity example_dac_MAX542_top;

architecture behavioral of example_dac_MAX542_top is      
	
--    signal sclk_top     : std_logic;                         
--    signal ldac_out_top : std_logic;                        
--    signal dout_top     : std_logic;
    signal cs_top       : std_logic := '1';
    signal din_top      : std_logic_vector(nbits-1 downto 0) := (others => '0');
    signal ldac_in_top  : std_logic;          

    signal count        : integer range 0 to nbits := 0; --nbits+1; -- Signal for managing
                                                      -- CS, LDAC, and DIN
--    signal data         : std_logic_vector(nbits-1 downto 0) := (others => '0'); -- DAC code
    signal data         : integer range 0 to 2**nbits - 1 := 0;
    signal iclk         : integer range 0 to 49;
    signal sig_sclk_out : std_logic; -- signal to pass DAC clock

component spi_dac
port( 
    sclk     : in std_logic;                          -- clock input
    cs       : in std_logic;                          -- chip select, act. low
    din      : in std_logic_vector(nbits-1 downto 0); -- parallel data in
    ldac_in  : in std_logic;                          -- DAC latch in, act. low
    ldac_out : out std_logic;                         -- LDAC out, act. low
    cs_out   : out std_logic;                         -- CS out
    dout     : out std_logic                          -- serial data out
    );
end component;

begin
 ----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- spi_dac
spi_dac_test : spi_dac
    port map( 
		--Inputs
        sclk => sig_sclk_out,
        cs => cs_top,
        din => din_top,
        ldac_in => ldac_in_top,
        ldac_out => ldac_out_top,
        cs_out => cs_out_top,
        dout => dout_top
        );  

----------------------------------------------------------------------
-- Processes
----------------------------------------------------------------------  

Clock_div : process (sclk_top) -- divide 50MHz input clock to 1MHz for DAC
begin
    if rising_edge(sclk_top) then
        iclk <= iclk+1;
        if iclk = 24 then
            sclk_out_top <= '1';
            sig_sclk_out <= '1';
        end if;
        if iclk = 49 then
            sclk_out_top <= '0';
            sig_sclk_out <= '0';
            iclk <= 0;
        end if;
    end if;
end process; -- Clock_div


Sawtooth: process(sig_sclk_out)                     
begin
    if rising_edge(sig_sclk_out) then
        if (count = 0) then -- end of data; write to DAC, update data
            cs_top <= '1';
            ldac_in_top <= '0';
            count <= nbits;
            led_1 <= '1';
            led_2 <= '0';
            led_3 <= '0';
            data <= data + nlsb;
            din_top <= std_logic_vector(to_unsigned(data, din_top'length)); --std_logic_vector(to_unsigned(data, din_top'length));
        else -- if ((0 < count) AND (count < nbits-1)) then -- decrement while spi_dac writes data
            cs_top <= '0';
            ldac_in_top <= '1';
            count <= count - 1;
            led_1 <= '0';
            led_2 <= '1';
            led_3 <= '0';

--        else -- count = nbits-1, so load new data
--            cs_top <= '1';
--            ldac_in_top <= '1';
--            data <= std_logic_vector(unsigned(data) + nlsb);
--            din_top <= data;
--            led_1 <= '0';
--            led_2 <= '0';
--            led_3 <= '1';
        end if;
    end if;
end process; -- Sawtooth

end behavioral; -- of example_dac_MAX542_top