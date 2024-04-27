item replace entity @s enderchest.4 with bedrock

#set dynamic gold cost lore
scoreboard players operation $TempGoldDisplay shop = $LifestealCost shop

#set all item data based on purchase state
execute if score @s shopItem.Lifesteal matches 0 if score $LifestealCost shop matches 1.. run item modify entity @s enderchest.4 pudge:lore/shop/abilities/lifesteal/0
execute if score @s shopItem.Lifesteal matches 1 run item modify entity @s enderchest.4 pudge:lore/shop/abilities/lifesteal/1
execute if score @s shopItem.Lifesteal matches 2 run item modify entity @s enderchest.4 pudge:lore/shop/abilities/lifesteal/2
execute if score @s shopItem.Lifesteal matches 3 run item modify entity @s enderchest.4 pudge:lore/shop/abilities/lifesteal/3
execute if score @s shopItem.Lifesteal matches 4 run item modify entity @s enderchest.4 pudge:lore/shop/abilities/lifesteal/4
execute if score @s shopItem.Lifesteal matches 5.. run item modify entity @s enderchest.4 pudge:lore/shop/abilities/lifesteal/5

#if item is disabled
execute if score $LifestealCost shop matches ..0 run item modify entity @s enderchest.4 pudge:lore/shop/unavailable
