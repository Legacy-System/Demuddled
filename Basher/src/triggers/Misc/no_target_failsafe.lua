deleteFull()
nothingCount = nothingCount or 0

nothingCount = nothingCount + 1

if nothingCount >= 2 and Legacy.Settings.Basher.status and gmcp.IRE.Target.Set ~= "" then
  send("st "..gmcp.IRE.Target.Set)
  nothingCount = 0
  Legacy.Basher.Target()
end