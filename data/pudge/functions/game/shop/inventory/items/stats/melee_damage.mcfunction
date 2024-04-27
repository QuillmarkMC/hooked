item replace entity @s enderchest.3 with bedrock

#set dynamic gold cost lore
scoreboard players operation $TempGoldDisplay shop = $MeleeDamageCost shop

#set all item data based on purchase state
execute if score @s shopItem.Melee.Damage matches 0 if score $MeleeDamageCost shop matches 1.. run item modify entity @s enderchest.3 pudge:lore/shop/stats/melee_damage/0
execute if score @s shopItem.Melee.Damage matches 1 run item modify entity @s enderchest.3 pudge:lore/shop/stats/melee_damage/1
execute if score @s shopItem.Melee.Damage matches 2 run item modify entity @s enderchest.3 pudge:lore/shop/stats/melee_damage/2
execute if score @s shopItem.Melee.Damage matches 3 run item modify entity @s enderchest.3 pudge:lore/shop/stats/melee_damage/3
execute if score @s shopItem.Melee.Damage matches 4 run item modify entity @s enderchest.3 pudge:lore/shop/stats/melee_damage/4
execute if score @s shopItem.Melee.Damage matches 5.. run item modify entity @s enderchest.3 pudge:lore/shop/stats/melee_damage/5

#if item is disabled
execute if score $MeleeDamageCost shop matches ..0 run item modify entity @s enderchest.3 pudge:lore/shop/unavailable
