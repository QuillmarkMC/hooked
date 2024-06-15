execute if score $HealCost shop matches 1.. run item replace entity @s enderchest.0 with potion

#set dynamic gold cost lore
scoreboard players operation $TempGoldDisplay shop = $HealCost shop

#set all item data
execute if score $HealCost shop matches 1.. run item modify entity @s enderchest.0 pudge:lore/shop/consumes/heal/0

#if item is disabled
execute if score $HealCost shop matches ..0 run item replace entity @s enderchest.0 with bedrock
execute if score $HealCost shop matches ..0 run item modify entity @s enderchest.0 pudge:lore/shop/unavailable
