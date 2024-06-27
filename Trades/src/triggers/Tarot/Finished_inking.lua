deleteFull()
Legacy.Settings.Trades.Tarot.Cards[Legacy.Settings.Trades.Tarot.inscribeFor].num = Legacy.Settings.Trades.Tarot.Cards[Legacy.Settings.Trades.Tarot.inscribeFor].num + 20
send("queue add freestand ind "..Legacy.Settings.Trades.Tarot.inscribeFor)
send("queue add freestand curing on")
tempTimer(5, [[Legacy.Trades.Tarot.inker()]])