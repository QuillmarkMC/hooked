item replace entity @s enderchest.0 with bedrock

#set dynamic gold cost lore
scoreboard players operation $TempGoldDisplay shop = $HookCDCost shop

#set all item data based on purchase state
execute if score @s shopItem.Hook.CD matches 0 if score $HookCDCost shop matches 1.. run item modify entity @s enderchest.0 pudge:lore/shop/stats/hook_cd/0
execute if score @s shopItem.Hook.CD matches 1 run item modify entity @s enderchest.0 pudge:lore/shop/stats/hook_cd/1
execute if score @s shopItem.Hook.CD matches 2 run item modify entity @s enderchest.0 pudge:lore/shop/stats/hook_cd/2
execute if score @s shopItem.Hook.CD matches 3 run item modify entity @s enderchest.0 pudge:lore/shop/stats/hook_cd/3
execute if score @s shopItem.Hook.CD matches 4 run item modify entity @s enderchest.0 pudge:lore/shop/stats/hook_cd/4
execute if score @s shopItem.Hook.CD matches 5.. run item modify entity @s enderchest.0 pudge:lore/shop/stats/hook_cd/5

#if item is disabled
execute if score $HookCDCost shop matches ..0 run item modify entity @s enderchest.0 pudge:lore/shop/unavailable
