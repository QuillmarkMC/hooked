item replace entity @s enderchest.2 with bedrock

#set dynamic gold cost lore
scoreboard players operation $TempGoldDisplay shop = $KnockbackCost shop

#set all item data based on purchase state
execute if score @s shopItem.Knockback matches 0 if score $KnockbackCost shop matches 1.. run item modify entity @s enderchest.2 pudge:lore/shop/abilities/knockback/0
execute if score @s shopItem.Knockback matches 1 run item modify entity @s enderchest.2 pudge:lore/shop/abilities/knockback/1
execute if score @s shopItem.Knockback matches 2 run item modify entity @s enderchest.2 pudge:lore/shop/abilities/knockback/2
execute if score @s shopItem.Knockback matches 3 run item modify entity @s enderchest.2 pudge:lore/shop/abilities/knockback/3
execute if score @s shopItem.Knockback matches 4 run item modify entity @s enderchest.2 pudge:lore/shop/abilities/knockback/4
execute if score @s shopItem.Knockback matches 5.. run item modify entity @s enderchest.2 pudge:lore/shop/abilities/knockback/5

#if item is disabled
execute if score $KnockbackCost shop matches ..0 run item modify entity @s enderchest.2 pudge:lore/shop/unavailable
