if Legacy.Settings.Trades.Conjuration.ouroboros1 == nil then
  for k,v in pairs(gmcp.Char.Items.List.items) do
    if v.name == "a beguiling ouroboros" then
      Legacy.Settings.Trades.Conjuration.ouroboros1 = v.id
      break
    end
  end
end

if Legacy.Settings.Trades.Conjuration.ouroboros2 == nil then
  for k,v in pairs(gmcp.Char.Items.List.items) do
    if v.name == "a beguiling ouroboros" and v.id ~= Legacy.Settings.Trades.Conjuration.ouroboros1 then
      Legacy.Settings.Trades.Conjuration.ouroboros2 = v.id
      break
    end
  end
end

Conjure_Queue(matches[3], matches[2])