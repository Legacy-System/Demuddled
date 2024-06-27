if Legacy then
  if Legacy.Settings.Trades.Tarot.status == false or Legacy.Settings.Trades.Tarot.status == nil then
    Legacy.Settings.Trades.Tarot.status = true
    function Legacy.Trades.Tarot.inker()
      if table.size(Legacy.Settings.Trades.Tarot.Cards) == 0 then Legacy.echo("<red>You have no current cards queued for inscribing.") Legacy.Settings.Trades.Tarot.status = false return end
      for k,v in pairs(Legacy.Settings.Trades.Tarot.Cards) do
        if v.num < v.total then
          Legacy.Settings.Trades.Tarot.inscribeFor = tostring(k)
          send("queue add freestand curing off")
          send("queue add freestand inscribe blank with 20 "..Legacy.Settings.Trades.Tarot.inscribeFor)
          break
        elseif v.num >= v.total then
          Legacy.echo("Finished inking <gold>"..v.total.." "..k:title().."<white> cards.")
          Legacy.Settings.Trades.Tarot.Cards[k] = nil
        end
      end
    end
    Legacy.Trades.Tarot.inker()
  else
    Legacy.Settings.Trades.Tarot.status = false
    Legacy.Settings.Trades.Tarot.Cards = {}
    Legacy.echo("<red>Stopped inscribing new cards.")
    Legacy.echo("<red>Cleared your current Inscribing queue.")
  end 
end