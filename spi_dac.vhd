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
    cs_out   : out std_logic;                         -- CS output
    dout     : out std_logic                          -- serial data out
    );
end spi_dac;

architecture RTL of spi_dac is
    signal idx : integer range 0 to nbits-1 := nbits-1;
    begin
        -- Update LDAC, CS output (asynchronous).
        -- It seems strange to leave these out LDAC from the implementation;
        -- it can be easy to forget these signals if you're not reminded that
        -- they exist. Here we are simply passing the input to the output. 
        -- The user can omit these entirely if they like, and either ground
        -- LDAC to immediately update, or deal with LDAC separately however
        -- they want.
        ldac_out <= ldac_in;
        cs_out <= cs;
  
        -- Counter Process to keep track of current data out bit. 
        counter_proc : process(sclk, cs)
        begin
            dout <= din(idx);
            if cs = '1' then
                idx <= nbits-1;
            elsif falling_edge(sclk) and cs = '0' then
                if (idx = 0) then
                    idx <= 0; -- don't decrement below 0
                else
                    idx <= idx-1;
                end if;
            end if;
            
                
--        begin
--            if rising_edge(sclk) then
--                if falling_edge(cs) then
--                    idx <= nbits-1; -- reset counter
--                else -- cs is '0'
--                    if (idx = 0) then
--                        idx <= 0; -- don't decrement below 0
--                    else
--                        idx <= idx-1;
--                    end if;
--                end if;
--            end if;
--        end process; -- counter_proc
        
--        begin
--            if (cs = '1') then
--                dout <= '0';
--            else
--                dout <= din(idx);    
--            end if;
--            if rising_edge(sclk) then
--                if falling_edge(cs) then
--                    idx <= nbits-1;
--                else
--                    if (idx = 0) then
--                        idx <= 0; -- don't decrement below 0
--                    else
--                        idx <= idx-1;
--                    end if;
--                end if;
--            end if;
        end process; -- counter_proc


        
--        serial_data_proc : process (sclk)
--        -- Update serial output (synchronous).
--        -- Here we assume that the DAC serial data is big-endian, MSB first.
----        variable idx : integer range 0 to nbits-1 := nbits-1;
--        begin
--            if rising_edge(sclk) then
--                if (cs = '0') then -- write next data bit
--                    dout <= din(idx);
--                end if;
--            end if;
--        end process serial_data_proc;
 end architecture RTL;
