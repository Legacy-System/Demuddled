if Legacy.Settings.Trades.Transmutation.status ~= true then
  Legacy.Settings.Trades.Transmutation.status = true
  Legacy.echo("Extracting now!")
else
  Legacy.Settings.Trades.Transmutation.status = false
  Legacy.echo("Extracting not!")
end