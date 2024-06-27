local str = matches[2]
local name_table = string.split(str, ", ")
  send("cq freestand")
  Legacy.Settings.Basher.queued = false

for _,v in pairs(name_table) do
  if Legacy.Settings.Basher.Classes[gmcp.Char.Status.class][v:lower()] then
    Legacy.Settings.Basher.Classes[gmcp.Char.Status.class][v:lower()].available = true
  end
end