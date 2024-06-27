--deleteFull()
if Legacy.Settings.Basher.status == true then
  
  local str = string.gsub(gmcp.IRE.Target.Info.hpperc, "%%", "")
  local health = tonumber(str)
  if health <= 20 then
  Legacy.Settings.Basher.shield = true
    send("cq all")
  if Legacy.Settings.Basher.shield == true then
        for k,v  in pairs(Legacy.Settings.Basher.Classes[gmcp.Char.Status.class]) do
          if v.desc == "Shieldbreak" then
            if Legacy[gmcp.Char.Status.name].rage >= v.rage and Legacy.Settings.Basher.useRage == true then
              send("queue add freestand "..v.cmd)
              send("queue add freestand basher")
              Legacy.Settings.Basher.shield = false
              Legacy.Settings.Basher.queued = false
            elseif Legacy.Settings.Basher.Classes[gmcp.Char.Status.class].nrshieldbreak.cmd ~= "" then
              send("queue addclear freestand "..Legacy.Settings.Basher.Classes[gmcp.Char.Status.class].nrshieldbreak.cmd)
              Legacy.Settings.Basher.shield = false
            elseif Legacy.Settings.Basher.Classes[gmcp.Char.Status.class].nrshieldbreak.cmd == "" then
              tempTimer(2, [[Legacy.Settings.Basher.shield = false]])
            end
          end
        end
      end
  if matches[2] then
cecho("\n"..[[ 
<purple>---------------------------------------------------
      ]].."<gold>"..matches[2]:upper()..[[ SHIELDED!
<purple>---------------------------------------------------
         ]])
  end

  end
end