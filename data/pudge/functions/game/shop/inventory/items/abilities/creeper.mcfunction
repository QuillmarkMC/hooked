item replace entity @s enderchest.0 with bedrock

#set dynamic gold cost lore
scoreboard players operation $TempGoldDisplay shop = $CreeperCost shop

#set all item data based on purchase state
execute if score @s shopItem.Creeper matches 0 if score $CreeperCost shop matches 1.. run item modify entity @s enderchest.0 pudge:lore/shop/abilities/creeper/0
execute if score @s shopItem.Creeper matches 1 run item modify entity @s enderchest.0 pudge:lore/shop/abilities/creeper/1
execute if score @s shopItem.Creeper matches 2 run item modify entity @s enderchest.0 pudge:lore/shop/abilities/creeper/2
execute if score @s shopItem.Creeper matches 3 run item modify entity @s enderchest.0 pudge:lore/shop/abilities/creeper/3
execute if score @s shopItem.Creeper matches 4 run item modify entity @s enderchest.0 pudge:lore/shop/abilities/creeper/4
execute if score @s shopItem.Creeper matches 5.. run item modify entity @s enderchest.0 pudge:lore/shop/abilities/creeper/5

#if item is disabled
execute if score $CreeperCost shop matches ..0 run item modify entity @s enderchest.0 pudge:lore/shop/unavailable
