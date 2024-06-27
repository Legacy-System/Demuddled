if Legacy.Settings.Basher.status == true then
  Legacy.Settings.Basher.lastTar = Legacy.Settings.Basher.currentTar
  Legacy.Settings.Basher.currentTar = ""
  Legacy.Settings.Basher.shield = false
  Legacy.Settings.Basher.desc = ""
  send('ql')
  if Legacy.Basher.Targets[gmcp.Room.Info.area] then
    if not table.contains(Legacy.Basher.Targets[gmcp.Room.Info.area], matches[2]:lower()) then
      table.insert(Legacy.Basher.Targets[gmcp.Room.Info.area], matches[2]:lower())
      Legacy.echo("Added '<gold>"..matches[2].."<white>' to hunting targets in <gold>"..gmcp.Room.Info.area)
    end
  else
    Legacy.Basher.Targets[gmcp.Room.Info.area] = {}
    table.insert(Legacy.Basher.Target[gmcp.Room.Info.area], matches[2]:lower())
  end
  
  Legacy.Basher.Target()
end
  