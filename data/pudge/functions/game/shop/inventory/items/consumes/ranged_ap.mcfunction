execute if score $RangedAPCost shop matches 1.. run item replace entity @s enderchest.2 with potion

#set dynamic gold cost lore
scoreboard players operation $TempGoldDisplay shop = $RangedAPCost shop

#set all item data
execute if score $RangedAPCost shop matches 1.. run item modify entity @s enderchest.2 pudge:lore/shop/consumes/ranged_ap/0

#if item is disabled
execute if score $RangedAPCost shop matches ..0 run item replace entity @s enderchest.2 with bedrock
execute if score $RangedAPCost shop matches ..0 run item modify entity @s enderchest.2 pudge:lore/shop/unavailable
