if Legacy then
    
  function Legacy.Trades.Milling.Ingredients(ink)
    RiftCheck()
    local redReagents = {"red clay", "red chitin"}
    local blueReagents = {"ink bladder", "lumic"}
    local yellowReagents = {"yellow chitin"}
    local goldReagents = {"gold flakes"}
    local commonReagents = {"fish scales"}
    local uncommonReagents = {"buffalo horn"}
    local scarceReagents = {"shark tooth"}
    local rareReagents = {"wyrm tongue"}
    local ret = ""
    
    if Legacy.Settings.Trades.Milling.Inks[ink].total > 5 then
      if math.floor(Legacy.Settings.Trades.Milling.Inks[ink].total - Legacy.Settings.Trades.Milling.Inks[ink].num) < 5 then
         Legacy.Trades.Milling.amount = math.floor(Legacy.Settings.Trades.Milling.Inks[ink].total - Legacy.Settings.Trades.Milling.Inks[ink].num)
      else
        Legacy.Trades.Milling.amount = 5
      end
    else
     Legacy.Trades.Milling.amount = Legacy.Settings.Trades.Milling.Inks[ink].total
    end
    
    if ink == "red" then
      for _,v in pairs(redReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= Legacy.Trades.Milling.amount then
          ret = ret.."/outr "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").."/put "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").." in mill"
          break
        else
          Legacy.echo("You do not have any "..v:title().." for Red ink")
        end
      end
      for _,v in pairs(commonReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= Legacy.Trades.Milling.amount then
          ret = ret.."/outr "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").."/put "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").." in mill"
        end
      end
    elseif ink == "green" then
      for _,v in pairs(blueReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= math.floor(Legacy.Trades.Milling.amount*2) then
          ret = ret.."/outr "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").."/put "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").." in mill"
          break
        else
          Legacy.echo("You do not have any "..v:title().." for Green ink")
        end
      end
      for _,v in pairs(yellowReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= Legacy.Trades.Milling.amount then
          ret = ret.."/outr "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").."/put "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").." in mill"
        end
      end
      for _,v in pairs(uncommonReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= math.floor(Legacy.Trades.Milling.amount*2) then
          ret = ret.."/outr "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").."/put "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").." in mill"
        end
      end
      for _,v in pairs(scarceReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= Legacy.Trades.Milling.amount then
          ret = ret.."/outr "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").."/put "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").." in mill"
        end
      end
      
    elseif ink == "black" then
      for _,v in pairs(blueReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= math.floor(Legacy.Trades.Milling.amount*2) then
          ret = ret.."/outr "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").."/put "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").." in mill"
          break
        else
          Legacy.echo("You do not have any "..v:title().." for Green ink")
        end
      end
      for _,v in pairs(yellowReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= Legacy.Trades.Milling.amount then
          ret = ret.."/outr "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").."/put "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").." in mill"
        end
      end
      for _,v in pairs(uncommonReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= math.floor(Legacy.Trades.Milling.amount*2) then
          ret = ret.."/outr "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").."/put "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").." in mill"
        end
      end
      for _,v in pairs(scarceReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= math.floor(Legacy.Trades.Milling.amount*2) then
          ret = ret.."/outr "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").."/put "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").." in mill"
        end
      end
      for _,v in pairs(commonReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= math.floor(Legacy.Trades.Milling.amount*2) then
          ret = ret.."/outr "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").."/put "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").." in mill"
        end
      end
      
    elseif ink == "blue" then
      for _,v in pairs(uncommonReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= Legacy.Trades.Milling.amount then
          ret = ret.."/outr "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").."/put "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").." in mill"
        end
      end
      for _,v in pairs(blueReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= Legacy.Trades.Milling.amount then
          ret = ret.."/outr "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").."/put "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").." in mill"
          break
        else
          Legacy.echo("You do not have any "..v:title().." for Blue ink")
        end
      end
      
    elseif ink == "yellow" then
      for _,v in pairs(yellowReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= Legacy.Trades.Milling.amount then
          ret = ret.."/outr "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").."/put "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").." in mill"
        end
      end
      for _,v in pairs(scarceReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= Legacy.Trades.Milling.amount then
          ret = ret.."/outr "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").."/put "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").." in mill"
        end
      end
      
    elseif ink == "gold" then
      for _,v in pairs(goldReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= Legacy.Trades.Milling.amount then
          ret = ret.."/outr "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").."/put "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").." in mill"
        end
      end
      for _,v in pairs(commonReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= math.floor(Legacy.Trades.Milling.amount*2) then
          ret = ret.."/outr "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").."/put "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").." in mill"
        end
      end
      for _,v in pairs(uncommonReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= math.floor(Legacy.Trades.Milling.amount*2) then
          ret = ret.."/outr "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").."/put "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").." in mill"
        end
      end
      for _,v in pairs(scarceReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= math.floor(Legacy.Trades.Milling.amount*2) then
          ret = ret.."/outr "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").."/put "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").." in mill"
        end
      end
      for _,v in pairs(rareReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= Legacy.Trades.Milling.amount then
          ret = ret.."/outr "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").."/put "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").." in mill"
        end
      end
      
    elseif ink == "purple" then
      for _,v in pairs(redReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= math.floor(Legacy.Trades.Milling.amount*2) then
          ret = ret.."/outr "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").."/put "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").." in mill"
          break
        else
          Legacy.echo("You do not have any "..v:title().." for Purple ink")
        end
      end
      for _,v in pairs(blueReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= math.floor(Legacy.Trades.Milling.amount*2) then
          ret = ret.."/outr "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").."/put "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").." in mill"
        end
        break
      end
      for _,v in pairs(commonReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= math.floor(Legacy.Trades.Milling.amount*2) then
          ret = ret.."/outr "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").."/put "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").." in mill"
        end
      end
      for _,v in pairs(uncommonReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= math.floor(Legacy.Trades.Milling.amount*2) then
          ret = ret.."/outr "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").."/put "..math.floor(Legacy.Trades.Milling.amount*2).." "..v:gsub(" ", "").." in mill"
        end
      end
      for _,v in pairs(rareReagents) do
        if table.contains(Legacy.Rift.Reagents, v) and Legacy.Rift.Reagents[v] >= Legacy.Trades.Milling.amount then
          ret = ret.."/outr "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").."/put "..Legacy.Trades.Milling.amount.." "..v:gsub(" ", "").." in mill"
        end
      end
    end 
      
      
    send("setalias milling "..ret)
    send("queue add free milling")
  end
    
    function Legacy.Trades.Milling.Mill()
      if table.size(Legacy.Settings.Trades.Milling.Inks) == 0 then
        Legacy.echo("<red>No Inks are currently queued.")
      end
        for k,v in pairs(Legacy.Settings.Trades.Milling.Inks) do
          if v.num < v.total then
            Legacy.Settings.Trades.Milling.status = true
            Legacy.Settings.Trades.Milling.millFor = tostring(k)
            Legacy.Trades.Milling.Ingredients(Legacy.Settings.Trades.Milling.millFor)
            if k == "red" or k == "blue" or k == "yellow" then
              tempTimer(2.2,[[send("queue add eqbal mill for "..Legacy.Trades.Milling.amount.." "..Legacy.Settings.Trades.Milling.millFor)]])
            elseif k == "green" or k == "purple" or k == "gold" then
              tempTimer(5, [[send("queue add eqbal mill for "..Legacy.Trades.Milling.amount.." "..Legacy.Settings.Trades.Milling.millFor)]])
            elseif k == "black" then
              tempTimer(10, [[send("queue add eqbal mill for "..Legacy.Trades.Milling.amount.." "..Legacy.Settings.Trades.Milling.millFor)]])
            end
            Legacy.echo("<white>You have milled <orange>"..v.num.."<white> of <green>"..v.total.."<white> "..tostring(k).." inks.\n") 
            break
          else
            Legacy.Settings.Trades.Milling.millFor = nil
            Legacy.echo("Finished milling "..tostring(k):title().." inks.")
            Legacy.Settings.Trades.Milling.Inks[k] = nil
            
          end
        end
    end
    registerAnonymousEventHandler("MillComplete", "Legacy.Trades.Milling.Mill")
    Legacy.Trades.Milling.Mill()
  end