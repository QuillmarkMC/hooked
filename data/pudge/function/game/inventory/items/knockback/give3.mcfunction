execute if score @s knockbackLevel matches 2 run item replace entity @s hotbar.3 with bedrock[custom_model_data=102,enchantments={levels:{"minecraft:knockback":2},show_in_tooltip:false},hide_additional_tooltip={}]
execute if score @s knockbackLevel matches 3 run item replace entity @s hotbar.3 with bedrock[custom_model_data=102,enchantments={levels:{"minecraft:knockback":3},show_in_tooltip:false},hide_additional_tooltip={}]
execute if score @s knockbackLevel matches 4 run item replace entity @s hotbar.3 with bedrock[custom_model_data=102,enchantments={levels:{"minecraft:knockback":4},show_in_tooltip:false},hide_additional_tooltip={}]
execute if score @s knockbackLevel matches 5 run item replace entity @s hotbar.3 with bedrock[custom_model_data=102,enchantments={levels:{"minecraft:knockback":5},show_in_tooltip:false},hide_additional_tooltip={}]
execute if score @s knockbackLevel matches 6.. run item replace entity @s hotbar.3 with bedrock[custom_model_data=102,enchantments={levels:{"minecraft:knockback":6},show_in_tooltip:false},hide_additional_tooltip={}]

#dynamic item lore
item modify entity @s hotbar.3 pudge:lore/knockback/knockback_name
item modify entity @s hotbar.3 pudge:lore/knockback/knockback_tooltip
item modify entity @s hotbar.3 pudge:lore/knockback/knockback_level