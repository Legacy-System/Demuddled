if Legacy.Settings.Basher.Group then
  if matches[2] == "add" then
    Legacy.Settings.Basher.Group[matches[3]:title()] = 0
    Legacy.Settings.Basher.Group[gmcp.Char.Status.name] = Legacy.Settings.Basher.Group[gmcp.Char.Status.name] or 0
    Legacy.echo("Added "..matches[3]:title().." to your hunting party.")
  elseif matches[2] == "remove" then
    Legacy.Settings.Basher.Group[matches[3]:title()] = nil
    Legacy.echo("<red>Removed "..matches[3]:title().." from your hunting party.")
  end
end