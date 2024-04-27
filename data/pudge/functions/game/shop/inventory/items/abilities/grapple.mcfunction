item replace entity @s enderchest.3 with bedrock

#set dynamic gold cost lore
scoreboard players operation $TempGoldDisplay shop = $GrappleCost shop

#set all item data based on purchase state
execute if score @s shopItem.Grapple matches 0 if score $GrappleCost shop matches 1.. run item modify entity @s enderchest.3 pudge:lore/shop/abilities/grapple/0
execute if score @s shopItem.Grapple matches 1 run item modify entity @s enderchest.3 pudge:lore/shop/abilities/grapple/1
execute if score @s shopItem.Grapple matches 2 run item modify entity @s enderchest.3 pudge:lore/shop/abilities/grapple/2
execute if score @s shopItem.Grapple matches 3 run item modify entity @s enderchest.3 pudge:lore/shop/abilities/grapple/3
execute if score @s shopItem.Grapple matches 4 run item modify entity @s enderchest.3 pudge:lore/shop/abilities/grapple/4
execute if score @s shopItem.Grapple matches 5.. run item modify entity @s enderchest.3 pudge:lore/shop/abilities/grapple/5

#if item is disabled
execute if score $GrappleCost shop matches ..0 run item modify entity @s enderchest.3 pudge:lore/shop/unavailable
