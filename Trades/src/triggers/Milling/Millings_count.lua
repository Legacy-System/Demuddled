if matches[2] == "a" then
Legacy.Settings.Trades.Milling.Inks[matches[3]].num = Legacy.Settings.Trades.Milling.Inks[matches[3]].num + 1
else
Legacy.Settings.Trades.Milling.Inks[matches[3]].num = Legacy.Settings.Trades.Milling.Inks[matches[3]].num + matches[2]
end
deleteFull()
raiseEvent("MillComplete")