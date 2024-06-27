local total = Legacy.Settings.Basher.Gold
local splitammount = math.floor(Legacy.Settings.Basher.Gold / table.size(Legacy.Settings.Basher.Group))
if Legacy.Settings.Basher.goldContainer == nil then
  Legacy.echo("<red>Gold Container not set please do '<gold>gpack <packID><red>' to set where to get your gold from.")
else
  Legacy.echo("Splitting <gold>"..total.." gold between "..table.size(Legacy.Settings.Basher.Group).." people.")
  send("get "..total.." gold from "..Legacy.Settings.Basher.goldContainer)

  for k,v in pairs(Legacy.Settings.Basher.Group) do
    Legacy.Settings.Basher.Group[k] = splitammount
    send("give "..splitammount.." gold to "..tostring(k))
  end

end