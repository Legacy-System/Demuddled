
if matches[2] then
    if tonumber(matches[2]) > 70 then
      Legacy.echo("<red>Flee health can not be set higher than 70%")
      Legacy.echo("<green>Set Auto-flee health percent to: <gold>70% HP")
      Legacy.Settings.Basher.fleeAt = 70
    else
      Legacy.echo("<green>Set Auto-flee health percent to: <gold>"..matches[2].."% HP")
      Legacy.Settings.Basher.fleeAt = tonumber(matches[2])
    end
else
  if Legacy.Settings.Basher.flee == false then
    Legacy.Settings.Basher.flee = true
    Legacy.echo("Will now flee at <gold>"..Legacy.Settings.Basher.fleeAt.."%<white> HP")
  else
    Legacy.Settings.Basher.flee = false
    Legacy.echo("Courage Activated! No longer running from things!")
  end
end