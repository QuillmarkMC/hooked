item replace entity @s hotbar.4 with bedrock[custom_model_data=104]

#dynamic item lore
item modify entity @s hotbar.4 pudge:lore/lifesteal/lifesteal_name
item modify entity @s hotbar.4 pudge:lore/lifesteal/lifesteal_tooltip
scoreboard players operation $Num1 math = @s lifestealAmount
function pudge:general/math/convert_to_lore
item modify entity @s hotbar.4 pudge:lore/lifesteal/lifesteal_hit
scoreboard players operation $Num1 math = @s lifestealRegen
function pudge:general/math/convert_to_lore
item modify entity @s hotbar.4 pudge:lore/lifesteal/lifesteal_kill