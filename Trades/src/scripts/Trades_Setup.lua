function Trades_Setup()
if not gmcp.Char then
  tempTimer(3, Trades_Setup())
  return
end
  Legacy.Trades = Legacy.Trades or {}
  Legacy.Settings.Trades = Legacy.Settings.Trades or {}
  
  --Milling
  Legacy.Trades.Milling = Legacy.Trades.Milling or {}
  Legacy.Settings.Trades.Milling = Legacy.Settings.Trades.Milling or {}
  Legacy.Settings.Trades.Milling.Inks = {}
  
  --Tarot
  Legacy.Trades.Tarot = Legacy.Trades.Tarot or {}
  Legacy.Settings.Trades.Tarot = Legacy.Settings.Trades.Tarot or {}
  Legacy.Settings.Trades.Tarot.Cards = Legacy.Settings.Trades.Tarot.Cards or {}
  
  --Augmentation
  Legacy.Trades.Augmentation = Legacy.Trades.Augmentation or {}
  Legacy.Settings.Trades.Augmentation = Legacy.Settings.Trades.Augmentation or {}
  Legacy.Settings.Trades.Augmentation.status = false
  Legacy.Settings.Trades.Augmentation.Items = {}
  Legacy.Settings.Trades.Augmentation.itemID = ""
  Legacy.Settings.Trades.Augmentation.augmentFor = Legacy.Settings.Trades.Augmentation.augmentFor or ""
  Legacy.Settings.Trades.Augmentation.currentaction = 1
  Legacy.Trades.Augmentation.AugChant = function()
    if Legacy.Settings.Trades.Augmentation.augmentFor == "" then return "" end
    if Legacy.Settings.Trades.Augmentation.augmentFor then
      if Legacy.Settings.Trades.Augmentation.augmentFor == "firelash" then
        return "fo icti re eschle lok ast suh hrat"
      elseif Legacy.Settings.Trades.Augmentation.augmentFor == "flame" then
        return "flet lhar abe minlo eec"
      elseif Legacy.Settings.Trades.Augmentation.augmentFor == "key" then
        return "krolop escit yall"
      elseif Legacy.Settings.Trades.Augmentation.augmentFor == "knife" then
        return "Keef nitash idca feef enla"
      elseif Legacy.Settings.Trades.Augmentation.augmentFor == "mushroom" then
        return "mil usra shal hract reed oom oon mez"
      elseif Legacy.Settings.Trades.Augmentation.augmentFor == "concealment" then
        return "aisyalam"
      elseif Legacy.Settings.Trades.Augmentation.augmentFor == "bauble" then
        return "disei stalla rapwah cosoth tu"
      elseif Legacy.Settings.Trades.Augmentation.augmentFor == "monolith" then
        return "me ol nok oloth lilo ib te het"
      elseif Legacy.Settings.Trades.Augmentation.augmentFor == "negation" then
        return "zool ekilthia requi oben"
      elseif Legacy.Settings.Trades.Augmentation.augmentFor == "cube" then
        return "Dara acti me prishna eni not"
      elseif Legacy.Settings.Trades.Augmentation.augmentFor == "stasis" then
        return "stasis statorium"
      elseif Legacy.Settings.Trades.Augmentation.augmentFor == "orb" then
        return "solip preena het epi re enla"
      else
        return ""
      end
    end
  end
  
  Legacy.Settings.Trades.Augmentation.Steps = {
    ["1"] = "RING BELL",
    ["2"] = "CHANT ",
    ["3"] = "BANG DRUM",
    ["4"] = "SPIN AROUND THRICE",
    ["5"] = "LIGHT CANDLE",
    ["6"] = "CLAP HANDS",
    ["7"] = "BURN THE POLYGON",
    ["8"] = "POINT SWORD",
    ["9"] = "BURN INCENSE",
    ["10"] = "PLAY HORN",
    ["11"] = "STRUM LUTE",
    ["12"] = "FLIPCOIN",
    ["13"] = "ROLL DICE",
    ["14"] = "WAVE ARMS",
    ["15"] = "CRUSH KOLA",
    ["16"] = "WAVE FEATHER",
    ["17"] = "SQUARE THE CIRCLE",
    ["18"] = "chant mortis troy tenkla",
    ["19"] = "chant mortis troy tenklu",
    ["20"] = "chant mortis troy tenkli", 
  }
  
  Legacy.Trades.Augmentation.Items = {
    ["firelash"] = {Actions = {"3", "6", "9", "8", "5", "2", "1", "4", "7", "13", "13", "13" }, Comms = {["gold"] = 1, ["silver"] = 1, ["dust"] = 2}, createsyntax = "BEGIN ENCHANTMENT OF "..Legacy.Settings.Trades.Augmentation.itemID.." WITH FIRELASH",},
    }
    
  
  --Conjuration
  Legacy.Trades.Conjuration = Legacy.Trades.Conjuration or {}
  Legacy.Settings.Trades.Conjuration = Legacy.Settings.Trades.Conjuration or {}
  Legacy.Settings.Trades.Conjuration.status = false
  Legacy.Settings.Trades.Conjuration.Items = {}
  Legacy.Settings.Trades.Conjuration.conjureFor = Legacy.Settings.Trades.Conjuration.conjurFor or ""
  Legacy.Settings.Trades.Conjuration.currentaction = 1
  Legacy.Trades.Conjuration.ConjChant = function()
    if Legacy.Settings.Trades.Conjuration.conjureFor == "" then return "" end
    if Legacy.Settings.Trades.Conjuration.conjureFor then
      if Legacy.Settings.Trades.Conjuration.conjureFor == "fist" then
        return "fartak ishla spooz tran"
      elseif Legacy.Settings.Trades.Conjuration.conjureFor == "flame" then
        return "flet lhar abe minlo eec"
      elseif Legacy.Settings.Trades.Conjuration.conjureFor == "key" then
        return "krolop escit yall"
      elseif Legacy.Settings.Trades.Conjuration.conjureFor == "knife" then
        return "Keef nitash idca feef enla"
      elseif Legacy.Settings.Trades.Conjuration.conjureFor == "mushroom" then
        return "mil usra shal hract reed oom oon mez"
      elseif Legacy.Settings.Trades.Conjuration.conjureFor == "concealment" then
        return "aisyalam"
      elseif Legacy.Settings.Trades.Conjuration.conjureFor == "bauble" then
        return "disei stalla rapwah cosoth tu"
      elseif Legacy.Settings.Trades.Conjuration.conjureFor == "monolith" then
        return "me ol nok oloth lilo ib te het"
      elseif Legacy.Settings.Trades.Conjuration.conjureFor == "negation" then
        return "zool ekilthia requi oben"
      elseif Legacy.Settings.Trades.Conjuration.conjureFor == "cube" then
        return "Dara acti me prishna eni not"
      elseif Legacy.Settings.Trades.Conjuration.conjureFor == "stasis" then
        return "stasis statorium"
      elseif Legacy.Settings.Trades.Conjuration.conjureFor == "orb" then
        return "solip preena het epi re enla"
      else
        return ""
      end
    end
  end
  
  Legacy.Settings.Trades.Conjuration.Steps = {
    ["1"] = "RING BELL",
    ["2"] = "CHANT ",
    ["3"] = "BANG DRUM",
    ["4"] = "SPIN AROUND THRICE",
    ["5"] = "LIGHT CANDLE",
    ["6"] = "CLAP HANDS",
    ["7"] = "BURN THE POLYGON",
    ["8"] = "POINT SWORD",
    ["9"] = "BURN INCENSE",
    ["10"] = "PLAY HORN",
    ["11"] = "STRUM LUTE",
    ["12"] = "FLIPCOIN",
    ["13"] = "ROLL DICE",
    ["14"] = "WAVE ARMS",
    ["15"] = "CRUSH KOLA",
    ["16"] = "WAVE FEATHER",
    ["17"] = "SQUARE THE CIRCLE",
    ["18"] = "chant mortis troy tenkla",
    ["19"] = "chant mortis troy tenklu",
    ["20"] = "chant mortis troy tenkli", 
  }
  
  Legacy.Trades.Conjuration.Items = {
    ["Worrystone"] = {Actions = {"13", "13", "13", "13", "13", "12", "12", "12", "12", "12", "4", "16", "17"}, Comms = {["ice"] = 1, ["goldbar"] = 1, ["silver"] = 1, ["horn"] = 1, ["dust"] = 1}, createsyntax = "BEGIN CREATION OF WORRYSTONE",},
    ["Fist"] = {Actions = {"2", "2", "2", "1"}, Comms = {["silver"] = 1, ["horn"] = 2}, createsyntax = "BEGIN CREATION OF FIST SIGIL"},
    ["Flame"] = {Actions = {"2", "2", "2", "1"}, Comms = {["silver"] = 1}, createsyntax = "BEGIN CREATION OF FLAME SIGIL"},
    ["Brooch"] = {Actions = {"18", "19", "20", "6", "6", "6"}, Comms = {["ice"] = 1, ["dust"] = 2, ["horn"] = 1, ["silver"] = 2}, createsyntax = "BEGIN CREATION OF BROOCH OF THOTH"},
    ["Key"] = {Actions = {"2", "2", "2", "1"}, Comms = {["goldbar"] = 1}, createsyntax = "BEGIN CREATION OF KEY SIGIL"},
    ["Eye"] = {Actions = {"17", "1"}, Comms = {["obsidian"] = 1}, createsyntax = "BEGIN CREATION OF EYE SIGIL"},
    ["Knife"] = {Actions = {"2", "2", "2", "1"}, Comms = {["silver"] = 1}, createsyntax = "BEGIN CREATION OF KNIFE SIGIL"},
    ["Comprehension"] = {Actions = {"10", "10", "10", "9", "16", "1", "13", "13", "4", "9", "15"}, Comms = {["ice"] = 2, ["goldbar"] = 3, ["silver"] = 4, ["horn"] = 3}, createsyntax = "BEGIN CREATION OF NECKLACE OF COMPREHENSION"},
    ["Mushroom"] = {Actions = {"2", "2", "2", "1"}, Comms = {["ice"] = 1}, createsyntax = "BEGIN CREATION OF MUSHROOM SIGIL"},
    ["Whirlwind"] = {Actions = {"4", "4", "4", "4", "16", "9", "4", "4", "4", "4"}, Comms = {["silver"] = 1, ["dust"] = 1, ["horn"] = 1}, createsyntax = "BEGIN CREATION OF WHIRLWIND OF VASTAR"},
    ["Concealment"] = {Actions = {"16", "14", "12", "10", "8", "6", "4", "2", "4", "6", "8", "10", "12", "14", "16"}, Comms = {["silver"] = 5, ["goldbar"] = 1}, createsyntax = "BEGIN CREATION OF ORB OF CONCEALMENT"},
    ["Bauble"] = {Actions = {"15", "7", "6", "17", "2" }, Comms = {["dust"] = 1}, createsyntax = "BEGIN CREATION OF BAUBLE"},
    ["Monolith"] = {Actions = {"2", "2", "2", "1"}, Comms = {["goldbar"] = 1, ["silver"] = 1}, createsyntax = "BEGIN CREATION OF MONOLITH SIGIL"},
    ["Dreamcatcher"] = {Actions = {"14", "9", "17", "5", "11", "11", "11", "1", "1", "1", "8", "8", "11", "11", "11"}, Comms = {["goldbar"] = 2, ["silver"] = 2, ["horn"] = 1}, createsyntax = "BEGIN CREATION OF DREAMCATCHER"},
    ["Star"] = {Actions = {"11", "1"}, Comms = {["dust"] = 1, ["silver"] = 1}, createsyntax = "BEGIN CREATION OF STAR SIGIL"},
    ["Negation"] = {Actions = {"1", "1", "1", "5", "15", "7", "8", "2"}, Comms = {["goldbar"] = 1}, createsyntax = "BEGIN CREATION OF GEM OF NEGATION"},
    ["Cube"] = {Actions = {"2", "2", "2", "1"}, Comms = {["silver"] = 2}, createsyntax = "BEGIN CREATION OF CUBE SIGIL"},
    ["Pestilence"] = {Actions = {"11", "12", "3", "14", "17", "16", "9", "8", "7", "7", "7", "10", "10", "10", "1", "1", "1", "3", "17", "11"}, Comms = {["silver"] = 2, ["horn"] = 1, ["goldbar"] = 1}, createsyntax = "BEGIN CREATION OF RING OF PESTILENCE"},
    ["Stasis"] = {Actions = {"16", "16", "3", "4", "5", "1", "2", "4", "6", "6", "17", "17", "17", "16", "13", "13", "13", "13", "13", "13", "15", "15"}, Comms = {["goldbar"] = 4, ["ice"] = 3, ["horn"] = 3, ["dust"] = 2, ["silver"] = 1}, createsyntax = "BEGIN CREATION OF BAG OF STASIS"},
    ["Orb"] = {Actions = {"2", "2", "2", "1"}, Comms = {["dust"] = 1}, createsyntax = "BEGIN CREATION OF ORB SIGIL"}, 
  }
  
  
  --Remedies
  Legacy.Trades.Remedies = Legacy.Trades.Remedies or {}
  Legacy.Settings.Trades.Remedies = Legacy.Settings.Trades.Remedies or {}
  
  --Transmutation
  Legacy.Trades.Transmutation = Legacy.Trades.Transmutation or {}
  Legacy.Settings.Trades.Transmutation = Legacy.Settings.Trades.Transmutation or {}
  Legacy.Settings.Trades.Transmutation.status = false
  
  function Legacy.Trades.Transmutation.extracting()
    local area = gmcp.Room.Info.area
    local minerals = {
      ["Moghedu"] = "bisemutum",
      ["the Southern Vashnar Mountains"] = "malachite",
    }
    
    return minerals[area] 
  end
  
  --Gathering
  Legacy.Trades.Gathering = Legacy.Trades.Gathering or {}
  Legacy.Settings.Trades.Gathering = Legacy.Settings.Trades.Gathering or {}
  
  --Harvesting
  Legacy.Trades.Harvesting = Legacy.Trades.Harvesting or {}
  Legacy.Settings.Trades.Harvesting = Legacy.Settings.Trades.Harvesting or {}
  
  --Toxicology
  Legacy.Trades.Toxicology = Legacy.Trades.Toxicology or {}
  Legacy.Settings.Trades.Toxicology = Legacy.Settings.Trades.Toxicology or {}
  
  --Shipfitting
  Legacy.Trades.Shipfitting = Legacy.Trades.Shipfitting or {}
  Legacy.Settings.Trades.Shipfitting = Legacy.Settings.Trades.Shipfitting or {}
  
  local relevantSkills = {}
  for k,v in pairs(gmcp.Char.Skills.Groups) do
    if Legacy.Trades[v.name] then
      table.insert(relevantSkills, "<gold>"..v.name)
    end
  end

  Legacy.echo("Trades loaded successfully!")
  Legacy.echo("Relevant Skills: "..table.concat(relevantSkills, "<white>, ").."\n")

end

registerAnonymousEventHandler("LegacyLoaded", "Trades_Setup")