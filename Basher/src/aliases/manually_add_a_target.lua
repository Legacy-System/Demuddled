if table.contains(gmcp.Char.Items.List.items, gmcp.IRE.Target.Set) then
  for k,v in pairs(gmcp.Char.Items.List.items) do
    if v.id == gmcp.IRE.Target.Set then
      if not table.contains(Legacy.Basher.Targets[gmcp.Room.Info.area], v.name:lower()) then
        table.insert(Legacy.Basher.Targets[gmcp.Room.Info.area], v.name:lower())
        Legacy.echo("Added '<gold>"..v.name.."<white>' to hunting targets in <gold>"..gmcp.Room.Info.area)
      end
    end
  end
end