execute unless entity @s[tag=PreventGrapple] if score @s cdGrapple matches ..0 run item replace entity @s hotbar.3 with crossbow{CustomModelData:2,Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],HideFlags:127,Unbreakable:true,Grapple:1}
execute if score @s cdGrapple matches 1.. run item replace entity @s hotbar.3 with shears{CustomModelData:1,HideFlags:127,Unbreakable:false}
execute if entity @s[tag=PreventGrapple] if score @s cdGrapple matches ..0 run item replace entity @s hotbar.3 with shears{CustomModelData:1,HideFlags:127,Unbreakable:true}

#dynamic item lore
execute unless entity @s[tag=PreventGrapple] run item modify entity @s hotbar.3 pudge:lore/grapple/grapple_name
execute if entity @s[tag=PreventGrapple] run item modify entity @s hotbar.3 pudge:lore/grapple/grapple_name_unavailable
item modify entity @s hotbar.3 pudge:lore/grapple/grapple_tooltip
scoreboard players operation $Num1 math = @s cdGrappleCurrent
function pudge:general/math/convert_to_lore
item modify entity @s hotbar.3 pudge:lore/cooldown

execute if score @s cdGrapple matches 1.. run function pudge:game/inventory/items/grapple/display