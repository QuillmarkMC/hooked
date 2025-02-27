execute if entity @s[tag=!PreventGrab,tag=!holdingPlayer] if score @s cdGrab matches ..0 run item replace entity @s hotbar.4 with warped_fungus_on_a_stick[unbreakable={show_in_tooltip:false},item_model="pudge:ability/anchor_arms",custom_data={Grab:1},hide_additional_tooltip={}]
execute if score @s cdGrab matches 1.. run item replace entity @s hotbar.4 with shears[item_model="pudge:ability/anchor_arms",hide_additional_tooltip={}]
execute if entity @s[tag=PreventGrab,tag=!holdingPlayer] if score @s cdGrab matches ..0 run item replace entity @s hotbar.4 with shears[unbreakable={show_in_tooltip:false},item_model="pudge:general/hidden",hide_additional_tooltip={}]
execute if entity @s[tag=holdingPlayer] if score @s cdGrab matches ..0 run item replace entity @s hotbar.4 with warped_fungus_on_a_stick[unbreakable={show_in_tooltip:false},item_model="pudge:ability/aa_cancel",custom_data={GrabDrop:1},hide_additional_tooltip={}]

#dynamic item lore
execute if entity @s[tag=!PreventGrab,tag=!holdingPlayer] run item modify entity @s hotbar.4 pudge:lore/grab/grab_name
execute if entity @s[tag=PreventGrab,tag=!holdingPlayer] run item modify entity @s hotbar.4 pudge:lore/grab/grab_name_unavailable
execute if entity @s[tag=holdingPlayer] run item modify entity @s hotbar.4 pudge:lore/grab/drop_name
execute if entity @s[tag=!holdingPlayer] run item modify entity @s hotbar.4 pudge:lore/grab/grab_tooltip
execute if entity @s[tag=holdingPlayer] run item modify entity @s hotbar.4 pudge:lore/grab/drop_tooltip
scoreboard players operation $Num1 math = @s cdGrabCurrent
function pudge:general/math/convert_to_lore
execute if entity @s[tag=!holdingPlayer] run item modify entity @s hotbar.4 pudge:lore/cooldown

execute if score @s cdGrab matches 1.. run function pudge:game/inventory/items/grab/display