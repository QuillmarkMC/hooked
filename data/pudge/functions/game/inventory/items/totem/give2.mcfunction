execute if score @s cdTotem matches ..0 run item replace entity @s hotbar.2 with bedrock{CustomModelData:105}
execute if score @s cdTotem matches 1.. run item replace entity @s hotbar.2 with shears{CustomModelData:105}

#dynamic item lore
item modify entity @s hotbar.2 pudge:lore/totem/totem_name
item modify entity @s hotbar.2 pudge:lore/totem/totem_tooltip
item modify entity @s hotbar.2 pudge:lore/totem/totem_chance
scoreboard players operation $Num1 math = @s cdTotemCurrent
function pudge:general/math/convert_to_lore
item modify entity @s hotbar.2 pudge:lore/cooldown

execute if score @s cdTotem matches 1.. run function pudge:game/inventory/items/totem/display