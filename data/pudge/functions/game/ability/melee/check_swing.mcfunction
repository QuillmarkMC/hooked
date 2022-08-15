#check damage resisted to determine if fully charged attack or if crit
#execute if score @s resist matches 200..299 run scoreboard players set #Temp resist 1
#execute if score @s resist matches 300.. run scoreboard players set #Temp resist 2
#execute if score @s resist matches ..199 run scoreboard players set #Temp resist 0

execute if score @s resist matches 90..164 run scoreboard players set #Temp resist 1
execute if score @s resist matches 165.. run scoreboard players set #Temp resist 2
execute if score @s resist matches ..89 run scoreboard players set #Temp resist 0

execute if score #Temp resist matches 1.. run function pudge:game/ability/melee/damage