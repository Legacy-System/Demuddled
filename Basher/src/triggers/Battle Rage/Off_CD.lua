if Legacy.Settings.Basher.status == true then
  send("cq freestand")
    Legacy.Settings.Basher.queued = false

  for k,v in pairs(Legacy.Settings.Basher.Classes[gmcp.Char.Status.class]) do
    if k == matches[2]:lower() then
      v.available = true
    end
  end
end