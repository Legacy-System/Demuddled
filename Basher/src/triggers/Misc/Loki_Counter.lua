Legacy.Settings.Basher.lokiCount = Legacy.Settings.Basher.lokiCount or 0

Legacy.Settings.Basher.lokiCount = Legacy.Settings.Basher.lokiCount + 1

if (tonumber(gmcp.Char.Vitals.hp) == tonumber(gmcp.Char.Vitals.maxhp) and tonumber(gmcp.Char.Vitals.mp) == tonumber(gmcp.Char.Vitals.maxmp)) and Legacy.Settings.Basher.status == true and Legacy.Settings.Basher.lokiCount >= 1 and Legacy.Settings.Basher.Predictions.recklessness == false then send("curing predict recklessness") Legacy.Settings.Bsaher.Predictions.recklessness = true end


if Legacy.Settings.Basher.lokiCount >= 3 then
  send("cq all")
  send("queue addclear free diagnose")
  Legacy.Settings.Basher.lokiCount = 0
end

if lokiTimer then 
  killTimer(lokiTimer) 
  lokiTimer = tempTimer(30, [[Legacy.Settings.Basher.lokiCount = 0]]) 
else 
  lokiTimer = tempTimer(30, [[Legacy.Settings.Basher.lokiCount = 0]]) 
end

tempTimer(4, [[if (Legacy.Aranos.Vitals.Health == Legacy.Aranos.Vitals.MaxHP and Legacy.Aranos.Vitals.Mana == Legacy.Aranos.Vitals.MaxMP then send("curing predict recklessness") end]])