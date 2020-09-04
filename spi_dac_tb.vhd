------------------------------------------------------------------------------
--                                                                            
--                            spi_dac_tb.vhd
--                            
--                        spi_dac.vhd Test Bench                              
--                                                                            
------------------------------------------------------------------------------

library ieee;                                
use ieee.std_logic_1164.all;                 
use work.all;

entity spi_dac_tb is
generic(
    nbits : integer := 16
);
-- port();  -- no external interface
end spi_dac_tb;

architecture behavioral of spi_dac_tb is      

    constant delay :  time := 10.00 NS; -- defines the wait period.
	
    signal sclk_tb     : std_logic;                         
    signal cs_tb       : std_logic;                         
    signal din_tb      : std_logic_vector(nbits-1 downto 0);
    signal ldac_in_tb  : std_logic;                        
    signal ldac_out_tb : std_logic;                        
    signal dout_tb     : std_logic;                          

    signal sample	: std_logic; -- mark when comparisons are made

component spi_dac
port( 
    sclk     : in std_logic;                          -- clock input
    cs       : in std_logic;                          -- chip select, act. low
    din      : in std_logic_vector(nbits-1 downto 0); -- parallel data in
    ldac_in  : in std_logic;                          -- DAC latch in, act. low
    ldac_out : out std_logic;                         -- LDAC out, act. low
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
        sclk => sclk_tb,
        cs => cs_tb,
        din => din_tb,
        ldac_in => ldac_in_tb,
        ldac_out => ldac_out_tb,
        dout => dout_tb
        );  

----------------------------------------------------------------------
-- Test Stimulation
----------------------------------------------------------------------  

testClk : process
constant period : time := 100 ns; -- 10 MHz clock
begin
    sclk_tb <= '1';
    wait for period/2;
    sclk_tb <= '0';
    wait for period/2;
end process;
    
TestSpiDac: process                     
variable test_data : std_logic_vector(nbits-1 downto 0); 

constant period : time := 100 ns; -- 10 MHz clock
begin
    -- Initialize din, cs
    din_tb <= (others => '0');
    cs_tb <= '1'; 
    sample <= '0';
    wait for nbits*period; -- Dout should not update, should remain undefined
    cs_tb <= '0'; -- Now Dout should load 0's
    for I in 0 to nbits-1 loop
        wait for period/2; -- compare in the middle of period
        sample <= '1';
        assert dout_tb = din_tb(nbits-1-I) report "Mismatched output zeros" severity error;
        wait for period/2;
        sample <= '0';
    end loop;
    wait for nbits*period;
    cs_tb <= '1'; -- DAC updates
    wait for period;
    cs_tb <= '0';
    din_tb <= ('1', '0', '1', '1', '0', others => '1');
    for I in 0 to nbits-1 loop
        wait for period/2; -- compare in the middle of period
        sample <= '1';
        assert dout_tb = din_tb(nbits-1-I) report "Mismatched output" severity error;
        wait for period/2;
        sample <= '0';
    end loop;
     
    cs_tb <= '1'; -- DAC updates
    wait for period;

    report "This simulation is complete" ;                 
    
    wait;     -- wait forces End of Simulation
end process;

end behavioral; -- of spi_dac_tb