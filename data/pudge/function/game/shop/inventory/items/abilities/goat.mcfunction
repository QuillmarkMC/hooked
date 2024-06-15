item replace entity @s enderchest.5 with bedrock

#set dynamic gold cost lore
scoreboard players operation $TempGoldDisplay shop = $GoatCost shop

#set all item data based on purchase state
execute if score @s shopItem.Goat matches 0 if score $GoatCost shop matches 1.. run item modify entity @s enderchest.5 pudge:lore/shop/abilities/goat/0
execute if score @s shopItem.Goat matches 1 run item modify entity @s enderchest.5 pudge:lore/shop/abilities/goat/1
execute if score @s shopItem.Goat matches 2 run item modify entity @s enderchest.5 pudge:lore/shop/abilities/goat/2
execute if score @s shopItem.Goat matches 3 run item modify entity @s enderchest.5 pudge:lore/shop/abilities/goat/3
execute if score @s shopItem.Goat matches 4 run item modify entity @s enderchest.5 pudge:lore/shop/abilities/goat/4
execute if score @s shopItem.Goat matches 5.. run item modify entity @s enderchest.5 pudge:lore/shop/abilities/goat/5

#if item is disabled
execute if score $GoatCost shop matches ..0 run item modify entity @s enderchest.5 pudge:lore/shop/unavailable
