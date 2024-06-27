deleteFull()
local aff = matches[2]:lower()
cecho("\n<white>[<gold>Predicted<white>]: <green>"..matches[2]:upper())
Legacy.Settings.Basher.Predictions = Legacy.Settings.Basher.Predictions or {}

Legacy.Settings.Basher.Predictions[aff:lower()] = true

tempTimer(10, function() Legacy.Settings.Basher.Predictions[aff:lower()] = false end)