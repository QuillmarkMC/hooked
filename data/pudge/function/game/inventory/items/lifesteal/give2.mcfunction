item replace entity @s hotbar.2 with bedrock[item_model="redstone"]

#dynamic item lore
item modify entity @s hotbar.2 pudge:lore/lifesteal/lifesteal_name
item modify entity @s hotbar.2 pudge:lore/lifesteal/lifesteal_tooltip
scoreboard players operation $Num1 math = @s lifestealAmount
function pudge:general/math/convert_to_lore
item modify entity @s hotbar.2 pudge:lore/lifesteal/lifesteal_hit
scoreboard players operation $Num1 math = @s lifestealRegen
function pudge:general/math/convert_to_lore
item modify entity @s hotbar.2 pudge:lore/lifesteal/lifesteal_kill