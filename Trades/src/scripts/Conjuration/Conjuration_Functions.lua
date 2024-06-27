function Conjure_Queue(item, num)
  if num == nil then num = 1 end
  if item == "mono" then
    item = "monolith"
  elseif item == "gem" then
    item = "negation"
  elseif item == "necklace" then
    item = "comprehension"
  elseif item == "mush" then
    item = "mushroom"
  elseif item == "dream" then
    item = "dreamcatcher"
  elseif item == "worry" or item == "stone" then
    item = "worrystone"
  end
  
  Legacy.Settings.Trades.Conjuration.Items = Legacy.Settings.Trades.Conjuration.Items or {}
for k,v in pairs(Legacy.Trades.Conjuration.Items[item:title()].Comms) do
  if math.floor(v * num) > Legacy.Rift.Commodities[k] then
    Legacy.echo("You do not have enough '<gold>"..k:title().."<white>' to make <gold>"..num.." "..item..".\n<DimGrey>(You need <gold>"..math.floor(v * num).." <white>"..k:title().."<DimGrey>, and only have <gold>"..Legacy.Rift.Commodities[k].."<DimGrey>)\n")
  end
end
  if Legacy.Settings.Trades.Conjuration.Items[item] then
    Legacy.Settings.Trades.Conjuration.Items[item] = {num = Legacy.Settings.Trades.Conjuration.Items[item].num , total = tonumber(num)}
    Legacy.echo("Adjusted <gold>"..item:title().."<white> total to <gold>"..num..".")
  else
    Legacy.Settings.Trades.Conjuration.Items[item] = {num = 0, total = tonumber(num)}
    Legacy.echo("Added <gold>"..num.." "..item:title().."<white> to your Conjuration queue.")
  end
end

function Conjure_Comms()
if Legacy.Settings.Trades.Conjuration.conjureFor == "" then return end
  local Comms = Legacy.Trades.Conjuration.Items[Legacy.Settings.Trades.Conjuration.conjureFor:title()].Comms
  for k,v in pairs(Comms) do
    send("outr "..v.." "..k)
    if v > 1 then
      send("put group "..k.." in "..Legacy.Settings.Trades.Conjuration.ouroboros1)
    else
      send("put "..k.." in "..Legacy.Settings.Trades.Conjuration.ouroboros1)
    end
  end
end



function Conjure_Item()
  if table.size(Legacy.Settings.Trades.Conjuration.Items) == 0 then
    Legacy.echo("There is nothing left to Conjure!")
    return
  else
    sendAll("outr 50 kola", "get 1 gold from pack")
    for k,v in pairs(Legacy.Settings.Trades.Conjuration.Items) do
      if v.num < v.total then
        Legacy.Settings.Trades.Conjuration.conjureFor = tostring(k)
        Legacy.Settings.Trades.Conjuration.currentaction = 1
      end 
    end
  end
local Items  = Legacy.Trades.Conjuration.Items
local item   = Legacy.Settings.Trades.Conjuration.conjureFor:title()
local action = Legacy.Settings.Trades.Conjuration.currentaction
local Steps  = Legacy.Settings.Trades.Conjuration.Steps

Conjure_Comms()
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

  send(Items[item].createsyntax)
  
  if Items[item].Actions[action] == "2" then
    send("queue addclear free "..Steps[Items[item].Actions[1]]..Legacy.Trades.Conjuration.ConjChant())
    Legacy.Settings.Trades.Conjuration.currentaction = Legacy.Settings.Trades.Conjuration.currentaction + 1
  else
    send("queue addclear free "..Steps[Items[item].Actions[1]])
    Legacy.Settings.Trades.Conjuration.currentaction = Legacy.Settings.Trades.Conjuration.currentaction + 1
  end
end