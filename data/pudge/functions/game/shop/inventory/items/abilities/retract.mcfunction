item replace entity @s enderchest.6 with bedrock

#set dynamic gold cost lore
scoreboard players operation $TempGoldDisplay shop = $RetractCost shop

#set all item data based on purchase state
execute if score @s shopItem.Retract matches 0 if score $RetractCost shop matches 1.. run item modify entity @s enderchest.6 pudge:lore/shop/abilities/retract/0
execute if score @s shopItem.Retract matches 1 run item modify entity @s enderchest.6 pudge:lore/shop/abilities/retract/1
execute if score @s shopItem.Retract matches 2 run item modify entity @s enderchest.6 pudge:lore/shop/abilities/retract/2
execute if score @s shopItem.Retract matches 3 run item modify entity @s enderchest.6 pudge:lore/shop/abilities/retract/3
execute if score @s shopItem.Retract matches 4 run item modify entity @s enderchest.6 pudge:lore/shop/abilities/retract/4
execute if score @s shopItem.Retract matches 5.. run item modify entity @s enderchest.6 pudge:lore/shop/abilities/retract/5

#if item is disabled
execute if score $RetractCost shop matches ..0 run item modify entity @s enderchest.6 pudge:lore/shop/unavailable
