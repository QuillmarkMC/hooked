execute if score @s cdTotem matches ..0 run item replace entity @s hotbar.6 with bedrock[item_model="totem_of_undying"]
execute if score @s cdTotem matches 1.. run item replace entity @s hotbar.6 with shears[item_model="totem_of_undying"]

#dynamic item lore
item modify entity @s hotbar.6 pudge:lore/totem/totem_name
item modify entity @s hotbar.6 pudge:lore/totem/totem_tooltip
item modify entity @s hotbar.6 pudge:lore/totem/totem_chance
scoreboard players operation $Num1 math = @s cdTotemCurrent
function pudge:general/math/convert_to_lore
item modify entity @s hotbar.6 pudge:lore/cooldown

execute if score @s cdTotem matches 1.. run function pudge:game/inventory/items/totem/display