Legacy.echo("Set your bashing attack in <gold>"..gmcp.Char.Status.class.." <white>to <gold>"..matches[2]..".")
if Legacy.Settings.Basher.Classes[gmcp.Char.Status.class] == nil then
      Legacy.Settings.Basher.Classes[gmcp.Char.Status.class] = {
        attack      = "",
        pre         = "",
      }
    end
sendCount = 0
Legacy.Settings.Basher.Rage()
Legacy.Settings.Basher.Classes[gmcp.Char.Status.class].attack = matches[2]
send("setalias basher "..Legacy.Settings.Basher.Classes[gmcp.Char.Status.class].pre.."/"..Legacy.Settings.Basher.Classes[gmcp.Char.Status.class].attack.." "..gmcp.IRE.Target.Set)
