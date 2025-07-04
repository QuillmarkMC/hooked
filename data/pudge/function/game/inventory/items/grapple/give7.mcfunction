execute unless entity @s[tag=PreventGrapple] if score @s cdGrapple matches ..0 run item replace entity @s hotbar.7 with crossbow[unbreakable={},item_model="pudge:ability/grapple_loaded",custom_data={Grapple:1},tooltip_display={hidden_components:["unbreakable","charged_projectiles"]},charged_projectiles=[{id:"minecraft:arrow",count:1}]]
execute if score @s cdGrapple matches 1.. run item replace entity @s hotbar.7 with shears[item_model="pudge:ability/grapple_unloaded"]
execute if entity @s[tag=PreventGrapple] if score @s cdGrapple matches ..0 run item replace entity @s hotbar.7 with shears[unbreakable={},item_model="pudge:ability/grapple_unloaded",tooltip_display={hidden_components:["unbreakable"]}]

#dynamic item lore
execute unless entity @s[tag=PreventGrapple] run item modify entity @s hotbar.7 pudge:lore/grapple/grapple_name
execute if entity @s[tag=PreventGrapple] run item modify entity @s hotbar.7 pudge:lore/grapple/grapple_name_unavailable
item modify entity @s hotbar.7 pudge:lore/grapple/grapple_tooltip
scoreboard players operation $Num1 math = @s cdGrappleCurrent
function pudge:general/math/convert_to_lore
item modify entity @s hotbar.7 pudge:lore/cooldown

execute if score @s cdGrapple matches 1.. run function pudge:game/inventory/items/grapple/display