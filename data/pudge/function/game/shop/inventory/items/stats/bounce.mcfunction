item replace entity @s enderchest.2 with bedrock

#set dynamic gold cost lore
scoreboard players operation $TempGoldDisplay shop = $BounceCost shop

#set all item data based on purchase state
execute if score @s shopItem.Bounce matches 0 if score $BounceCost shop matches 1.. run item modify entity @s enderchest.2 pudge:lore/shop/stats/bounce/0
execute if score @s shopItem.Bounce matches 1 run item modify entity @s enderchest.2 pudge:lore/shop/stats/bounce/1
execute if score @s shopItem.Bounce matches 2 run item modify entity @s enderchest.2 pudge:lore/shop/stats/bounce/2
execute if score @s shopItem.Bounce matches 3 run item modify entity @s enderchest.2 pudge:lore/shop/stats/bounce/3
execute if score @s shopItem.Bounce matches 4 run item modify entity @s enderchest.2 pudge:lore/shop/stats/bounce/4
execute if score @s shopItem.Bounce matches 5.. run item modify entity @s enderchest.2 pudge:lore/shop/stats/bounce/5

#if item is disabled
execute if score $BounceCost shop matches ..0 run item modify entity @s enderchest.2 pudge:lore/shop/unavailable
