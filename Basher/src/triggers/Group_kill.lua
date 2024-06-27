if Legacy.Settings.Basher.status == true then
  Legacy.Settings.Basher.lastTar = Legacy.Settings.Basher.currentTar
  Legacy.Settings.Basher.currentTar = ""
  Legacy.Settings.Basher.shield = false
  Legacy.Settings.Basher.desc = ""
  send('ql')
  Legacy.Basher.Target()
end
  