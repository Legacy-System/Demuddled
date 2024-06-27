Legacy.Settings.Basher.Classes[gmcp.Char.Status.class].pre = matches[2]
Legacy.echo("Basher Prealias set to: <gold>"..Legacy.Settings.Basher.Classes[gmcp.Char.Status.class].pre)
Legacy.Settings.Basher.Rage()
send("setalias basher "..Legacy.Settings.Basher.Classes[gmcp.Char.Status.class].pre.."/"..Legacy.Settings.Basher.Classes[gmcp.Char.Status.class].attack)
