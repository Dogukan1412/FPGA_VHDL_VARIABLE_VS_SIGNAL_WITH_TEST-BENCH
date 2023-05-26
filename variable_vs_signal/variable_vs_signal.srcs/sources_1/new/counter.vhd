library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter is
  Port ( clk : in bit;
        count1,count2 : out integer range 0 to 9
        );
end counter;

architecture Behavioral of counter is
    signal temp1 : integer range 0 to 10;
begin

    with_sig: process(clk)
    begin
        if(clk'event and clk = '1') then
            temp1 <= temp1 + 1;
            if(temp1 = 10) then
                temp1 <= 0;
            end if;
        end if;
        count1 <= temp1;
    end process with_sig;
    
    
    with_var: process(clk)
    variable temp2 : integer range 0 to 10;
    begin
        if(clk'event and clk = '1') then
            temp2 := temp2 + 1;
            if(temp2 = 10) then
                temp2 := 0;
            end if;
        end if;
        count2 <= temp2;
    end process with_var;
    

end Behavioral;
