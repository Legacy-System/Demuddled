if Legacy.Basher.Target == nil then
    Basher_Setup()
  end

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