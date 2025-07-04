execute if score @s knockbackLevel matches 2 run item replace entity @s hotbar.7 with bedrock[item_model="stick",enchantments={knockback:2},tooltip_display={hidden_components:["enchantments"]}]
execute if score @s knockbackLevel matches 3 run item replace entity @s hotbar.7 with bedrock[item_model="stick",enchantments={knockback:3},tooltip_display={hidden_components:["enchantments"]}]
execute if score @s knockbackLevel matches 4 run item replace entity @s hotbar.7 with bedrock[item_model="stick",enchantments={knockback:4},tooltip_display={hidden_components:["enchantments"]}]
execute if score @s knockbackLevel matches 5 run item replace entity @s hotbar.7 with bedrock[item_model="stick",enchantments={knockback:5},tooltip_display={hidden_components:["enchantments"]}]
execute if score @s knockbackLevel matches 6.. run item replace entity @s hotbar.7 with bedrock[item_model="stick",enchantments={knockback:6},tooltip_display={hidden_components:["enchantments"]}]

#dynamic item lore
item modify entity @s hotbar.7 pudge:lore/knockback/knockback_name
item modify entity @s hotbar.7 pudge:lore/knockback/knockback_tooltip
item modify entity @s hotbar.7 pudge:lore/knockback/knockback_level