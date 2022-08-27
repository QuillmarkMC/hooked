execute if score @s cdCreeper matches ..0 run item replace entity @s hotbar.4 with snowball{CustomModelData:100,CreeperSnowball:1b,CustomSnowball:1b}
execute if score @s cdCreeper matches 1.. run item replace entity @s hotbar.4 with shears{CustomModelData:100}

#dynamic item lore
item modify entity @s hotbar.4 pudge:lore/creeper/creeper_name
item modify entity @s hotbar.4 pudge:lore/creeper/creeper_tooltip
scoreboard players operation $Num1 math = @s creeperDamage
function pudge:general/math/convert_to_lore
item modify entity @s hotbar.4 pudge:lore/damage
scoreboard players operation $Num1 math = @s cdCreeperCurrent
function pudge:general/math/convert_to_lore
item modify entity @s hotbar.4 pudge:lore/cooldown
item modify entity @s hotbar.4 pudge:lore/creeper/creeper_knockback

execute if score @s cdCreeper matches 1.. run function pudge:game/inventory/items/creeper/display