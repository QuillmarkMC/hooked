#called by a player who just gained or lost gold
#lower bound for gold value
execute if score @s gold matches ..-1 run scoreboard players set @s gold 0
#recursively call this function until xp level matches gold objective
execute store result score #TempXP gold run xp query @s levels

execute if score #TempXP gold < @s gold run xp add @s 1 levels
execute if score #TempXP gold > @s gold run xp add @s -1 levels

execute if score #TempXP gold < @s gold run scoreboard players add @s totalGold 1

execute unless score #TempXP gold = @s gold run function pudge:game/gold/update_display