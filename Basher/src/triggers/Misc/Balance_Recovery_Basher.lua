if Legacy then
if Legacy.Settings.Basher.status == true then
  Legacy.Settings.Basher.queued = false
  attacked = false
end
if table.size(Legacy.Settings.Basher.frenemies) > 0 then
cecho("\n<red>-------------<white>"..Legacy.Settings.Basher.desc:upper().." HAS FRIENDS<red>-------------")
cecho("\n"..table.concat(Legacy.Settings.Basher.frenemies, "\n<gold>"))
cecho("\n<red>-------------")
i = 0
while i < #Legacy.Settings.Basher.desc + 12 do
cecho("<red>-")
i = i + 1
end
cecho("<red>-------------")
end
Legacy.Settings.Basher.frenemies = {}
end