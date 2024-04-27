item replace entity @s enderchest.1 with bedrock

#set dynamic gold cost lore
scoreboard players operation $TempGoldDisplay shop = $TotemCost shop

#set all item data based on purchase state
execute if score @s shopItem.Totem matches 0 if score $TotemCost shop matches 1.. run item modify entity @s enderchest.1 pudge:lore/shop/abilities/totem/0
execute if score @s shopItem.Totem matches 1 run item modify entity @s enderchest.1 pudge:lore/shop/abilities/totem/1
execute if score @s shopItem.Totem matches 2 run item modify entity @s enderchest.1 pudge:lore/shop/abilities/totem/2
execute if score @s shopItem.Totem matches 3 run item modify entity @s enderchest.1 pudge:lore/shop/abilities/totem/3
execute if score @s shopItem.Totem matches 4 run item modify entity @s enderchest.1 pudge:lore/shop/abilities/totem/4
execute if score @s shopItem.Totem matches 5.. run item modify entity @s enderchest.1 pudge:lore/shop/abilities/totem/5

#if item is disabled
execute if score $TotemCost shop matches ..0 run item modify entity @s enderchest.1 pudge:lore/shop/unavailable
