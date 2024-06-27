if Legacy.Settings.Basher.goldtrack == false then return end
local str = matches[2]..", "..matches[3]
local name_table = string.split(str, ", ")

Legacy.Settings.Basher.Group = Legacy.Settings.Basher.Group or {}
--check to add self to group since leading
if Legacy.Settings.Basher.Group[gmcp.Char.Status.name] == nil then
  Legacy.Settings.Basher.Group[gmcp.Char.Status.name] = 0
end
--add group of people following
for _,v in pairs(name_table) do
  if Legacy.Settings.Basher.Group[v:title()] == nil and v ~= "" then
    Legacy.Settings.Basher.Group[v:title()] = 0
  end
end

