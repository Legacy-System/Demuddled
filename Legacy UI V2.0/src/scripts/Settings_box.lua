  Legacy.UI.Settings = Adjustable.Container:new({
    name = "Settings",
    x=0, y=0,                
    width = 600, height= 400,
  })
 
 Legacy.UI.Settings.SettingsLabel = Geyser.Label:new({
    name = "SettingsLabel",
    x = "0%", y = "0%",
    width = "100%", height = "100%",
  },Legacy.UI.Settings)

  Legacy.UI.Settings.SettingsLabel:setStyleSheet([[
    background-color: black;
    border-width: 3px;
    border-style: solid;
    border-color: DimGrey;
    border-radius: 10px;
  ]])
  
 
 Legacy.UI.Settings.Console = Geyser.MiniConsole:new({
  name='Settings',
  color='DimGrey',
  x=4, y=5,
  width = '100%-10', height = '100%-10',
  fontSize = 10,
  scrollbar = true,
  font = "Bitstream Vera Sans Mono",
  autoWrap = false
 
 }, Legacy.UI.Settings.SettingsLabel)
 
 function Legacy.UI.Settings.Update()
  local Console = Legacy.UI.Settings.Console
  Console:clear()
  
 end