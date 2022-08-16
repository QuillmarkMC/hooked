scoreboard players remove @s comboTimer 1
execute if score @s comboTimer matches 0 run scoreboard players set @s combo 0
execute if score @s comboTimer matches 0 run scoreboard players set @s comboTimer -1