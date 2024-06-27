
cecho("\n<orange>Hunting Priority for <white>\""..gmcp.Room.Info.area.."\"")
for prio , mob in pairs(Legacy.Basher.Targets[gmcp.Room.Info.area]) do
  if prio < 10 then
  cecho("\n<DimGrey>[<orange>0"..prio.."<DimGrey>] <white>"..mob)
  local str = #mob
  local i = 0
  while i < (40 - str) do
    echo(" ")
    i = i + 1
  end
  cechoLink("<green>++   ", function()
    if prio == 1 then
      Legacy.echo("<red>You cannot increase the priority beyond 1.")
    else
    table.remove(Legacy.Basher.Targets[gmcp.Room.Info.area], table.index_of(Legacy.Basher.Targets[gmcp.Room.Info.area], mob)) table.insert(Legacy.Basher.Targets[gmcp.Room.Info.area], prio - 1, mob)
    expandAlias("huntprio")
    Legacy.echo("Moved <gold>"..mob.." <white>to the <gold>"..(prio - 1).."<white> position.")
    end
   end, "Click to increase priority of "..mob:upper(), true)
  cechoLink("<red>--   ", function() 
    table.remove(Legacy.Basher.Targets[gmcp.Room.Info.area], table.index_of(Legacy.Basher.Targets[gmcp.Room.Info.area], mob)) table.insert(Legacy.Basher.Targets[gmcp.Room.Info.area], prio + 1, mob)
    expandAlias("huntprio")
    Legacy.echo("Moved <gold>"..mob.." <white>to the <gold>"..(prio + 1).."<white> position.")
  
  end, "Click to decrease priority of "..mob:upper(), true)
  cechoLink("<ansi_red>XX",function() table.remove(Legacy.Basher.Targets[gmcp.Room.Info.area], table.index_of(Legacy.Basher.Targets[gmcp.Room.Info.area], mob)) 
  expandAlias("huntprio")
  Legacy.echo("<red>Deleted <gold>"..mob:upper().."<red> from your hunting targets.")
  end, "", true) 
  else
  cecho("\n<DimGrey>[<orange>"..prio.."<DimGrey>] <white>"..mob)
  local str = #mob
  local i = 0
  while i < (40 - str) do
    echo(" ")
    i = i + 1
  end
  cechoLink("<green>++   ", function()
    table.remove(Legacy.Basher.Targets[gmcp.Room.Info.area], table.index_of(Legacy.Basher.Targets[gmcp.Room.Info.area], mob)) table.insert(Legacy.Basher.Targets[gmcp.Room.Info.area], prio - 1, mob)
    expandAlias("huntprio")
    Legacy.echo("Moved <gold>"..mob.." <white>to the <gold>"..(prio - 1).."<white> position.")
   end, "Click to increase priority of "..mob:upper(), true)
  cechoLink("<red>--   ", function() 
    table.remove(Legacy.Basher.Targets[gmcp.Room.Info.area], table.index_of(Legacy.Basher.Targets[gmcp.Room.Info.area], mob)) table.insert(Legacy.Basher.Targets[gmcp.Room.Info.area], prio + 1, mob)
    expandAlias("huntprio")
    Legacy.echo("Moved <gold>"..mob.." <white>to the <gold>"..(prio + 1).."<white> position.")
  end, "Click to decrease priority of "..mob:upper(), true)
  cechoLink("<ansi_red>XX",function() table.remove(Legacy.Basher.Targets[gmcp.Room.Info.area], table.index_of(Legacy.Basher.Targets[gmcp.Room.Info.area], mob)) 
  expandAlias("huntprio")
  Legacy.echo("<red>Deleted <gold>"..mob:upper().."<red> from your hunting targets.")
  end, "", true) 
end
end