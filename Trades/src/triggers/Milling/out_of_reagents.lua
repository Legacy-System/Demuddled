local reagents = {"lumic", "bladder", "chitin", "clay", "flakes", "horn", "scales", "tongue", "tooth"}

for k,v in pairs(reagents) do
  send("get 10 "..v.." from mill")
end
tempTimer(2,function()
Legacy.echo("You do not have enough reagents to make "..Legacy.Settings.Trades.Milling.millFor:title().." Inks!")
Legacy.Settings.Trades.Milling.Inks[Legacy.Settings.Trades.Milling.millFor] = nil
Legacy.Settings.Trades.Milling.millFor = nil
Legacy.Trades.Milling.Mill()
end)