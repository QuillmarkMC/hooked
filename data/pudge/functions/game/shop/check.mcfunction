#called every tick in game/tick.mcfunction by all players in range of a shop
scoreboard players set $Temp shop 0

execute store success score $Temp shop run clear @s #pudge:shop_items{Shop:1} 0
execute if score $Temp shop matches 1.. run tag @s add shopInteractDetect