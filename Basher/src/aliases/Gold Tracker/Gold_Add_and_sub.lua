if Legacy.Settings.Basher.Gold == nil then
    Legacy.Settings.Basher.Gold = 0
end

if matches[2] == "gadd" then
   Legacy.Settings.Basher.Gold = Legacy.Settings.Basher.Gold + tonumber(matches[3]) 
   Legacy.echo("Added '<gold>"..matches[3].."<white>' to your total making it <gold>"..Legacy.Settings.Basher.Gold.."<white> gold.")
elseif matches[2] == "gsub" then
   Legacy.Settings.Basher.Gold = Legacy.Settings.Basher.Gold - tonumber(matches[3]) 
   Legacy.echo("<red>Subtracted '<gold>"..matches[3].."<red>' to your total making it <gold>"..Legacy.Settings.Basher.Gold.."<red> gold.")
end