
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity test_bench is
end test_bench;

architecture Behavioral of test_bench is
    signal clk_tb : bit := '0';
begin
    DUT: entity work.counter
        port map(
            clk => clk_tb
        );
        
process begin
    wait for 5ns;
    clk_tb <= '1';
    wait for 10ns;
    clk_tb <= '0';
    wait for 15ns;
    clk_tb <= '1';
    wait for 20ns;
    clk_tb <= '0';
    wait for 25ns;
    clk_tb <= '1';
    wait;
end process;

end Behavioral;
