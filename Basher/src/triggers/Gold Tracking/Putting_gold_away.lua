--track by gold put away to avoid miscounting dropped gold if died
if Legacy.Settings.Basher.goldtrack == true and Legacy.Settings.Basher.gotGold == true then
  deleteLine()
  Legacy.Settings.Basher.Gold = Legacy.Settings.Basher.Gold + tonumber(matches[2])
  cecho("\n<b><white>Picked up <gold>"..math.reint(matches[2]).."<white> gold!<DimGrey> ( <gold>"..math.reint(Legacy.Settings.Basher.Gold).." Gold total<DimGrey> )")
  Legacy.Settings.Basher.gotGold = false
end