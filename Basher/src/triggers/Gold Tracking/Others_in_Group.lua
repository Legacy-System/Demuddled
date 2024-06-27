if Legacy.Settings.Basher.goldtrack == false then return end
local str = matches[2]..", "..matches[3]
local name_table = string.split(str, ", ")

Legacy.Settings.Basher.Group = Legacy.Settings.Basher.Group or {}

--Add remainder of group when following a leader
for _,v in pairs(name_table) do
  if Legacy.Settings.Basher.Group[v:title()] == nil then
    Legacy.Settings.Basher.Group[v:title()] = 0
  end
end
