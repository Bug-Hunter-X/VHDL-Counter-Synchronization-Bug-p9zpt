process (clk) begin
  if rising_edge(clk) then
    if rst = '1' then
      count <= 0;
      enable_reg <= '0';
    else
      enable_reg <= enable;
      if enable_reg = '1' then
        count <= count + 1;
      end if;
    end if;
  end if;
end process;

signal enable_reg : std_logic := '0';

This solution introduces a register ('enable_reg') to synchronize the 'enable' signal with the clock.  Now, the counter only increments when the synchronized 'enable_reg' is high, eliminating the synchronization and glitch issues.