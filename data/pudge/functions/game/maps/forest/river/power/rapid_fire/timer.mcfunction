execute if score @s rapidFireTimer matches 0.. run scoreboard players operation #Temp rapidFireTimer = @s rapidFireTimer
execute if score @s rapidFireTimer matches 0.. run scoreboard players operation #Temp rapidFireTimer %= #2 math
execute if score @s rapidFireTimer matches 0.. if score #Temp rapidFireTimer matches 0 at @s run function pudge:game/maps/forest/river/power/rapid_fire/arrow

scoreboard players remove @s rapidFireTimer 1
execute if score @s rapidFireTimer matches 0 run scoreboard players set @s rapidFireTimer -1