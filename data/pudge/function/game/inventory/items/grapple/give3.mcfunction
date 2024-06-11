execute unless entity @s[tag=PreventGrapple] if score @s cdGrapple matches ..0 run item replace entity @s hotbar.3 with crossbow[unbreakable={show_in_tooltip:false},custom_model_data=2,custom_data={Grapple:1},hide_additional_tooltip={},charged_projectiles=[{id:"minecraft:arrow",count:1}]]
execute if score @s cdGrapple matches 1.. run item replace entity @s hotbar.3 with shears[custom_model_data=1,hide_additional_tooltip={}]
execute if entity @s[tag=PreventGrapple] if score @s cdGrapple matches ..0 run item replace entity @s hotbar.3 with shears[unbreakable={show_in_tooltip:false},custom_model_data=1,hide_additional_tooltip={}]

#dynamic item lore
execute unless entity @s[tag=PreventGrapple] run item modify entity @s hotbar.3 pudge:lore/grapple/grapple_name
execute if entity @s[tag=PreventGrapple] run item modify entity @s hotbar.3 pudge:lore/grapple/grapple_name_unavailable
item modify entity @s hotbar.3 pudge:lore/grapple/grapple_tooltip
scoreboard players operation $Num1 math = @s cdGrappleCurrent
function pudge:general/math/convert_to_lore
item modify entity @s hotbar.3 pudge:lore/cooldown

execute if score @s cdGrapple matches 1.. run function pudge:game/inventory/items/grapple/display