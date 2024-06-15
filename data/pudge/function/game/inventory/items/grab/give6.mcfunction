execute if entity @s[tag=!PreventGrab,tag=!holdingPlayer] if score @s cdGrab matches ..0 run item replace entity @s hotbar.6 with warped_fungus_on_a_stick[unbreakable={show_in_tooltip:false},custom_model_data=108,custom_data={Grab:1},hide_additional_tooltip={}]
execute if score @s cdGrab matches 1.. run item replace entity @s hotbar.6 with shears[custom_model_data=108,hide_additional_tooltip={}]
execute if entity @s[tag=PreventGrab,tag=!holdingPlayer] if score @s cdGrab matches ..0 run item replace entity @s hotbar.6 with shears[unbreakable={show_in_tooltip:false},custom_model_data=2,hide_additional_tooltip={}]
execute if entity @s[tag=holdingPlayer] if score @s cdGrab matches ..0 run item replace entity @s hotbar.6 with warped_fungus_on_a_stick[unbreakable={show_in_tooltip:false},custom_model_data=109,custom_data={GrabDrop:1},hide_additional_tooltip={}]

#dynamic item lore
execute if entity @s[tag=!PreventGrab,tag=!holdingPlayer] run item modify entity @s hotbar.6 pudge:lore/grab/grab_name
execute if entity @s[tag=PreventGrab,tag=!holdingPlayer] run item modify entity @s hotbar.6 pudge:lore/grab/grab_name_unavailable
execute if entity @s[tag=holdingPlayer] run item modify entity @s hotbar.6 pudge:lore/grab/drop_name
execute if entity @s[tag=!holdingPlayer] run item modify entity @s hotbar.6 pudge:lore/grab/grab_tooltip
execute if entity @s[tag=holdingPlayer] run item modify entity @s hotbar.6 pudge:lore/grab/drop_tooltip
scoreboard players operation $Num1 math = @s cdGrabCurrent
function pudge:general/math/convert_to_lore
execute if entity @s[tag=!holdingPlayer] run item modify entity @s hotbar.6 pudge:lore/cooldown

execute if score @s cdGrab matches 1.. run function pudge:game/inventory/items/grab/display