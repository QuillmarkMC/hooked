#called after every kill to check if victory conditions are met
execute if score $RedScore var = $TotalRequiredKills var run function pudge:game/postgame/red_win
execute if score $BlueScore var = $TotalRequiredKills var run function pudge:game/postgame/blue_win