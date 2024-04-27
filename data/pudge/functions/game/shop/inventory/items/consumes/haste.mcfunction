execute if score $HasteCost shop matches 1.. run item replace entity @s enderchest.1 with potion

#set dynamic gold cost lore
scoreboard players operation $TempGoldDisplay shop = $HasteCost shop

#set all item data
execute if score $HasteCost shop matches 1.. run item modify entity @s enderchest.1 pudge:lore/shop/consumes/haste/0

#if item is disabled
execute if score $HasteCost shop matches ..0 run item replace entity @s enderchest.1 with bedrock
execute if score $HasteCost shop matches ..0 run item modify entity @s enderchest.1 pudge:lore/shop/unavailable
