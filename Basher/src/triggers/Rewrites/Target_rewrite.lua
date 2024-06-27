if Legacy.Settings.Basher.status == true and Legacy.Settings.Basher.desc ~= "" and matches[2] ~= Legacy.Settings.Basher.lastTar then
  deleteFull()
  cecho("\n"..[[
<ansiLightBlue>---------------------------------------------------------
    ]].."<spring_green>Targeting ==> <gold>"..Legacy.Settings.Basher.desc:upper().." <DimGrey>(<gold>"..matches[2].."<DimGrey>)"..[[ 
<ansiLightBlue>---------------------------------------------------------]])
if tarcall then
  send("pt Target: "..gmcp.IRE.Target.Info.id)
  end
elseif matches[2] == Legacy.Settings.Basher.lastTar then
  deleteFull()
else
deleteFull()
  cecho("\n"..[[
<ansiLightBlue>---------------------------------------------------------
    ]].."<spring_green>Targeting ==> <gold>"..matches[2]..[[ 
<ansiLightBlue>---------------------------------------------------------]])
end
Legacy.Settings.Basher.lastTar = matches[2]