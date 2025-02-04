process (clk) begin
  if rising_edge(clk) then
    if rst = '1' then
      count <= 0;
    elsif enable = '1' then
      count <= count + 1;
    end if;
  end if;
end process;      

This code has a potential bug if the 'enable' signal is not properly synchronized with the clock. If 'enable' changes in the middle of a clock cycle, the counter may increment unexpectedly or not at all.  It is also susceptible to glitches if the 'enable' signal is not clean.