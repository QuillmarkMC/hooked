item replace entity @s enderchest.7 with bedrock

#set dynamic gold cost lore
scoreboard players operation $TempGoldDisplay shop = $GrabCost shop

#set all item data based on purchase state
execute if score @s shopItem.Grab matches 0 if score $GrabCost shop matches 1.. run item modify entity @s enderchest.7 pudge:lore/shop/abilities/grab/0
execute if score @s shopItem.Grab matches 1 run item modify entity @s enderchest.7 pudge:lore/shop/abilities/grab/1
execute if score @s shopItem.Grab matches 2 run item modify entity @s enderchest.7 pudge:lore/shop/abilities/grab/2
execute if score @s shopItem.Grab matches 3 run item modify entity @s enderchest.7 pudge:lore/shop/abilities/grab/3
execute if score @s shopItem.Grab matches 4 run item modify entity @s enderchest.7 pudge:lore/shop/abilities/grab/4
execute if score @s shopItem.Grab matches 5.. run item modify entity @s enderchest.7 pudge:lore/shop/abilities/grab/5

#if item is disabled
execute if score $GrabCost shop matches ..0 run item modify entity @s enderchest.7 pudge:lore/shop/unavailable
