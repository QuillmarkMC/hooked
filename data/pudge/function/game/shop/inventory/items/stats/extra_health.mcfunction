item replace entity @s enderchest.4 with bedrock

#set dynamic gold cost lore
scoreboard players operation $TempGoldDisplay shop = $ExtraHealthCost shop

#set all item data based on purchase state
execute if score @s shopItem.ExtraHealth matches 0 if score $ExtraHealthCost shop matches 1.. run item modify entity @s enderchest.4 pudge:lore/shop/stats/extra_health/0
execute if score @s shopItem.ExtraHealth matches 1 run item modify entity @s enderchest.4 pudge:lore/shop/stats/extra_health/1
execute if score @s shopItem.ExtraHealth matches 2 run item modify entity @s enderchest.4 pudge:lore/shop/stats/extra_health/2
execute if score @s shopItem.ExtraHealth matches 3 run item modify entity @s enderchest.4 pudge:lore/shop/stats/extra_health/3
execute if score @s shopItem.ExtraHealth matches 4 run item modify entity @s enderchest.4 pudge:lore/shop/stats/extra_health/4
execute if score @s shopItem.ExtraHealth matches 5.. run item modify entity @s enderchest.4 pudge:lore/shop/stats/extra_health/5

#if item is disabled
execute if score $ExtraHealthCost shop matches ..0 run item modify entity @s enderchest.4 pudge:lore/shop/unavailable
