item replace entity @s enderchest.1 with bedrock

#set dynamic gold cost lore
scoreboard players operation $TempGoldDisplay shop = $HookDamageCost shop

#set all item data based on purchase state
execute if score @s shopItem.Hook.Damage matches 0 if score $HookDamageCost shop matches 1.. run item modify entity @s enderchest.1 pudge:lore/shop/stats/hook_damage/0
execute if score @s shopItem.Hook.Damage matches 1 run item modify entity @s enderchest.1 pudge:lore/shop/stats/hook_damage/1
execute if score @s shopItem.Hook.Damage matches 2 run item modify entity @s enderchest.1 pudge:lore/shop/stats/hook_damage/2
execute if score @s shopItem.Hook.Damage matches 3 run item modify entity @s enderchest.1 pudge:lore/shop/stats/hook_damage/3
execute if score @s shopItem.Hook.Damage matches 4 run item modify entity @s enderchest.1 pudge:lore/shop/stats/hook_damage/4
execute if score @s shopItem.Hook.Damage matches 5.. run item modify entity @s enderchest.1 pudge:lore/shop/stats/hook_damage/5

#if item is disabled
execute if score $HookDamageCost shop matches ..0 run item modify entity @s enderchest.1 pudge:lore/shop/unavailable
