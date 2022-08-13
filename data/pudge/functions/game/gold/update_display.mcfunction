#called by a player who just gained or lost gold
#recursively call this function until xp level matches gold objective
execute store result score #Temp gold run xp query @s levels

execute if score #Temp gold < @s gold run xp add @s 1 levels
execute if score #Temp gold > @s gold run xp add @s -1 levels

execute unless score #Temp gold = @s gold run function pudge:game/gold/update_display