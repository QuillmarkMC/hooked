execute if score $RedScore var > $BlueScore var unless score $Winner cutscene matches 1.. run function pudge:game/postgame/red_win
execute if score $BlueScore var > $RedScore var unless score $Winner cutscene matches 1.. run function pudge:game/postgame/blue_win
execute if score $BlueScore var = $RedScore var unless score $Winner cutscene matches 1.. run function pudge:game/postgame/tie_win