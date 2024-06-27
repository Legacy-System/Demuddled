if Legacy.Settings.Basher.goldtrack == false then return end
Legacy.Settings.Basher.Group = Legacy.Settings.Basher.Group or {}
--add leader of group
if Legacy.Settings.Basher.Group[matches[2]:title()] == nil then
  Legacy.Settings.Basher.Group[matches[2]:title()] = 0 
end
--check to add self to group
if Legacy.Settings.Basher.Group[gmcp.Char.Status.name] == nil then
  Legacy.Settings.Basher.Group[gmcp.Char.Status.name] = 0
end