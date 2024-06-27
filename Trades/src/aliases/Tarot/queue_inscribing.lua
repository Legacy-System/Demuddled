Legacy.Trades.Tarot = Legacy.Trades.Tarot or {}
Legacy.Settings.Trades.Tarot = Legacy.Settings.Trades.Tarot or {}
Legacy.Settings.Trades.Tarot.Cards = Legacy.Settings.Trades.Tarot.Cards or {}
Legacy.Settings.Trades.Tarot.Cards[matches[3]] = {num = 0, total = tonumber(matches[2])}
if Legacy.Settings.Trades.Tarot.Cards[matches[3]] then
Legacy.echo("Adjusted your <gold>"..matches[3]:title().."<white> cards to <gold>"..matches[2].."<white> in your Inscribing queue.")

else
Legacy.echo("Added <gold>"..matches[2].." "..matches[3]:title().."<white> cards to your Inscribing queue.")
end