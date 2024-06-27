
if Legacy.Settings.Trades.Conjuration.conjureFor == "stasis" then
  send("queue addclear free get bag from "..Legacy.Settings.Trades.Conjuration.ouroboros2)
else
  send("queue addclear free get "..Legacy.Settings.Trades.Conjuration.conjureFor.." from "..Legacy.Settings.Trades.Conjuration.ouroboros2)
end

Legacy.Settings.Trades.Conjuration.Items[Legacy.Settings.Trades.Conjuration.conjurFor].num = Legacy.Settings.Trades.Conjuration.Items[Legacy.Settings.Trades.Conjuration.conjurFor].num + 1

if Legacy.Settings.Trades.Conjuration.Items[Legacy.Settings.Trades.Conjuration.conjurFor].num == Legacy.Settings.Trades.Conjuration.Items[Legacy.Settings.Trades.Conjuration.conjurFor].total then
  Legacy.Settings.Trades.Conjuration.Items[Legacy.Settings.Trades.Conjuration.conjurFor] = nil
end

Conjure_Item()