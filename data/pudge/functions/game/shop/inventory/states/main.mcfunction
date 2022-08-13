#update the state of all items in the ender chest inventory for @s (player)
#execute unless slot is correct run function reset_slot (repeat for every item in shop)
item replace entity @s enderchest.0 with air
item replace entity @s enderchest.1 with air
item replace entity @s enderchest.2 with air
item replace entity @s enderchest.3 with air
item replace entity @s enderchest.4 with air
item replace entity @s enderchest.5 with air
item replace entity @s enderchest.6 with air
item replace entity @s enderchest.7 with air
item replace entity @s enderchest.8 with air
item replace entity @s enderchest.9 with air
item replace entity @s enderchest.10 with air
execute unless data entity @s EnderItems[{Slot:11b,id:"minecraft:book",tag:{Stats:1}}] run item replace entity @s enderchest.11 with book{Stats:1,Shop:1,display:{Name:'{"text":"Stat Upgrades","color":"light_purple","bold":true,"italic":false}',Lore:['{"text":"Upgrade your player or hook stats.","color":"gray","italic":false}']},HideFlags:127}
item replace entity @s enderchest.12 with air
execute unless data entity @s EnderItems[{Slot:13b,id:"minecraft:sculk",tag:{Abilities:1}}] run item replace entity @s enderchest.13 with sculk{Abilities:1,Shop:1,display:{Name:'{"text":"Purchase Abilities","color":"aqua","bold":true,"italic":false}',Lore:['{"text":"Get new active or passive","color":"gray","italic":false}','{"text":"abilities to use.","color":"gray","italic":false}']},HideFlags:127}
item replace entity @s enderchest.14 with air
execute unless data entity @s EnderItems[{Slot:15b,id:"minecraft:golden_apple",tag:{Consumes:1}}] run item replace entity @s enderchest.15 with golden_apple{Consumes:1,Shop:1,display:{Name:'{"text":"Consumable Items","color":"aqua","bold":true,"italic":false}',Lore:['{"text":"Purchase instant or single","color":"gray","italic":false}','{"text":"use effects.","color":"gray","italic":false}']},HideFlags:127}
item replace entity @s enderchest.16 with air
item replace entity @s enderchest.17 with air
item replace entity @s enderchest.18 with air
item replace entity @s enderchest.19 with air
item replace entity @s enderchest.20 with air
item replace entity @s enderchest.21 with air
item replace entity @s enderchest.22 with air
item replace entity @s enderchest.23 with air
item replace entity @s enderchest.24 with air
item replace entity @s enderchest.25 with air
item replace entity @s enderchest.26 with air

scoreboard players set @s enderClick 0
scoreboard players set @s shopState 0