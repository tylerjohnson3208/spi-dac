-------------------------------------------------------------------------------
--
--
--                              spi_dac.vhd
--
--          A VHDL implementation for SPI/QSPI/Microwire DACs
--
-------------------------------------------------------------------------------
-- 
-- A VHDL module component for controlling DACs that use a SPI/QSPI/Microwire
-- inteface. Example: Maxim MAX541/542 16 bit DAC.
--
-- Provides the full 4-wire interface, though this can be reduced to two wires
-- depending on the application. 
--

library IEEE;
use IEEE.std_logic_1164.all;

entity spi_dac is 
generic(
    nbits : integer := 16 -- default 16 bit DAC
    );
port(
    sclk     : in std_logic;                          -- clock input
    cs       : in std_logic;                          -- chip select, act. low
    din      : in std_logic_vector(nbits-1 downto 0); -- parallel data in
    ldac_in  : in std_logic;                          -- DAC latch in, act. low
    ldac_out : out std_logic;                         -- LDAC out, act. low
    dout     : out std_logic                          -- serial data out
    );
end spi_dac;

architecture RTL of spi_dac is
    begin
        ldac_proc : process (ldac_in)
        -- Update LDAC output (asynchronous).
        -- It seems strange to leave out LDAC from the implementation; it
        -- can be easy to forget these signals if you're not reminded that
        -- they exist. Here we are simply passing the input to the output. 
        -- The user can omit this entirely if they like, and either ground
        -- LDAC to immediately update, or deal with LDAC separately however
        -- they want.
        begin
            if falling_edge(ldac_in) then
                ldac_out <= '0';
            elsif rising_edge(ldac_in) then
                ldac_out <= '1';
            end if;
	end process ldac_proc;

        serial_data_proc : process (sclk, cs)
        -- Update serial output (synchronous).
        -- Here we assume that the DAC serial data is big-endian, MSB first.
        variable idx : integer range 0 to nbits-1 := nbits-1;
        begin
	    if falling_edge(cs) then
                idx := nbits-1; -- reset idx
	    end if;
            if rising_edge(sclk) then
                if (cs = '0') then -- write next data bit
                    dout <= din(idx);
		    if (idx > 0) then
                        idx := idx-1;
                    end if;
                end if;
            end if;
        end process serial_data_proc;
 end architecture RTL;
