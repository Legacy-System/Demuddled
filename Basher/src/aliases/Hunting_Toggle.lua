if Legacy.Settings.Basher.status == false then
  Legacy.Settings.Basher.status = true
  if Legacy.Settings.Basher.Classes[gmcp.Char.Status.class] == nil then
      Legacy.Settings.Basher.Classes[gmcp.Char.Status.class] = {
        attack      = "",
        pre         = "",
      }
      Legacy.Settings.Basher.Rage()
    end
  if Legacy.Settings.Basher.Classes[gmcp.Char.Status.class].attack == "" then
    Legacy.Settings.Basher.Classes[gmcp.Char.Status.class].attack = "kill"
  end
  send("setalias basher "..Legacy.Settings.Basher.Classes[gmcp.Char.Status.class].pre.."/"..Legacy.Settings.Basher.Classes[gmcp.Char.Status.class].attack)
  Legacy.echo("<green>Bashing Activated.")
  Legacy.Settings.Basher.queued = false 
  sendCount = 0
  Legacy.Basher.Target()
else
  Legacy.Settings.Basher.status = false
  send("cq all")
  Legacy.echo("<red>Bashing Deactivated.")
  sendCount = 0
end