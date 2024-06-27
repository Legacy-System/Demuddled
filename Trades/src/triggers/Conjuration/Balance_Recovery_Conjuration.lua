local Items  = Legacy.Trades.Conjuration.Items
local item   = Legacy.Settings.Trades.Conjuration.conjureFor:title()
local action = Legacy.Settings.Trades.Conjuration.currentaction
local Steps  = Legacy.Settings.Trades.Conjuration.Steps

if Legacy.Settings.Trades.Conjuration.status == true then
if table.size(Legacy.Settings.Trades.Conjuration.Items) > 0 then
  if action <= #Items[item].Actions then
    if Items[item].Actions[action] == "2" then
      send("queue addclear free "..Steps[Items[item].Actions[action]]..Legacy.Trades.Conjuration.ConjChant())
      Legacy.Settings.Trades.Conjuration.currentaction = Legacy.Settings.Trades.Conjuration.currentaction + 1
    else
      send("queue addclear free "..Steps[Items[item].Actions[action]])
      Legacy.Settings.Trades.Conjuration.currentaction = Legacy.Settings.Trades.Conjuration.currentaction + 1
    end
  else
    send("queue addclear free end ritual")
  end
end
end

