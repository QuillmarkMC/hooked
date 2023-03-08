execute if entity @s[tag=!PreventGrab,tag=!holdingPlayer] if score @s cdGrab matches ..0 run item replace entity @s hotbar.3 with warped_fungus_on_a_stick{CustomModelData:108,HideFlags:127,Unbreakable:true,Grab:1}
execute if score @s cdGrab matches 1.. run item replace entity @s hotbar.3 with shears{CustomModelData:108,HideFlags:127,Unbreakable:false}
execute if entity @s[tag=PreventGrab,tag=!holdingPlayer] if score @s cdGrab matches ..0 run item replace entity @s hotbar.3 with shears{CustomModelData:108,HideFlags:127,Unbreakable:true}
execute if entity @s[tag=holdingPlayer] if score @s cdGrab matches ..0 run item replace entity @s hotbar.3 with warped_fungus_on_a_stick{CustomModelData:109,HideFlags:127,Unbreakable:true,GrabDrop:1}

#dynamic item lore
execute if entity @s[tag=!PreventGrab,tag=!holdingPlayer] run item modify entity @s hotbar.3 pudge:lore/grab/grab_name
execute if entity @s[tag=PreventGrab,tag=!holdingPlayer] run item modify entity @s hotbar.3 pudge:lore/grab/grab_name_unavailable
execute if entity @s[tag=holdingPlayer] run item modify entity @s hotbar.3 pudge:lore/grab/drop_name
execute if entity @s[tag=!holdingPlayer] run item modify entity @s hotbar.3 pudge:lore/grab/grab_tooltip
execute if entity @s[tag=holdingPlayer] run item modify entity @s hotbar.3 pudge:lore/grab/drop_tooltip
scoreboard players operation $Num1 math = @s cdGrabCurrent
function pudge:general/math/convert_to_lore
execute if entity @s[tag=!holdingPlayer] run item modify entity @s hotbar.3 pudge:lore/cooldown

execute if score @s cdGrab matches 1.. run function pudge:game/inventory/items/grab/display