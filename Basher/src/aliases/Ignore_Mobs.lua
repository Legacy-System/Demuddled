if not table.contains(Legacy.Settings.Basher.Ignore, matches[2]:lower()) then
  table.insert(Legacy.Settings.Basher.Ignore, matches[2]:lower())
  Legacy.echo("<red>No longer looking for '<gold>"..matches[2].."<red>' as a target.")
end