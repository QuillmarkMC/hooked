execute if score @s knockbackLevel matches 2 run item replace entity @s hotbar.2 with bedrock{CustomModelData:102,Enchantments:[{id:"knockback",lvl:2}],HideFlags:127}
execute if score @s knockbackLevel matches 3 run item replace entity @s hotbar.2 with bedrock{CustomModelData:102,Enchantments:[{id:"knockback",lvl:3}],HideFlags:127}
execute if score @s knockbackLevel matches 4 run item replace entity @s hotbar.2 with bedrock{CustomModelData:102,Enchantments:[{id:"knockback",lvl:4}],HideFlags:127}
execute if score @s knockbackLevel matches 5 run item replace entity @s hotbar.2 with bedrock{CustomModelData:102,Enchantments:[{id:"knockback",lvl:5}],HideFlags:127}
execute if score @s knockbackLevel matches 6.. run item replace entity @s hotbar.2 with bedrock{CustomModelData:102,Enchantments:[{id:"knockback",lvl:6}],HideFlags:127}

#dynamic item lore
item modify entity @s hotbar.2 pudge:lore/knockback/knockback_name
item modify entity @s hotbar.2 pudge:lore/knockback/knockback_tooltip
item modify entity @s hotbar.2 pudge:lore/knockback/knockback_level