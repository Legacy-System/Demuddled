if Legacy then
  
  if Legacy.Settings.Trades.Milling.Inks[matches[3]] then
    if matches[3] == "blue" then
    Legacy.echo("Adjusted your milling queue to <gold>"..matches[2].." <cyan>"..matches[3])
    elseif matches[3] ~= "black" then
    Legacy.echo("Adjusted your milling queue to <gold>"..matches[2].." <"..matches[3]..">"..matches[3])
    else
    Legacy.echo("Adjusted Adjusted your milling queue to <gold>"..matches[2].." <white>"..matches[3])
    end
  else
    if matches[3] == "blue" then
      Legacy.echo("Added <gold>"..matches[2].." <cyan>"..matches[3].."<white> to your milling queue")
    elseif matches[3] ~= "black" then
      Legacy.echo("Added <gold>"..matches[2].." <"..matches[3]..">"..matches[3].."<white> to your milling queue")
    else
      Legacy.echo("Added <gold>"..matches[2].." <white>"..matches[3].." to your miilling queue")
    end
  end
  Legacy.Settings.Trades.Milling.Inks[matches[3]] = {["num"] = 0, ["total"] = tonumber(matches[2])}
end