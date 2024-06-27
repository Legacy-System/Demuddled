if table.contains(gmcp.Char.Items.List.items, "a beguiling ouroboros") then
  if Legacy.Settings.Trades.Conjuration.status == false or Legacy.Settings.Trades.Conjuration.status == nil or table.size(Legacy.Settings.Trades.Conjuration.Items) > 0 then
    Conjure_Item()
    Legacy.Settings.Trades.Conjuration.status = true
  elseif table.size(Legacy.Settings.Trades.Conjuration.Items) > 0 then
    Conjure_Item()
  else 
    Legacy.Settings.Trades.Conjuration.status = false
    Legacy.echo("Cleared the Conjuring Queue, all done!")
    Legacy.Settings.Trades.Conjuration.Items = {}
  end

else
  Legacy.echo("<red>You must be in the proper area to conjure anything.")    
end
