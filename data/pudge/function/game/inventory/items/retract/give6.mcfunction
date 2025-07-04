item replace entity @s hotbar.6 with bedrock[item_model="chain"]

#dynamic item lore
item modify entity @s hotbar.6 pudge:lore/retract/retract_name
item modify entity @s hotbar.6 pudge:lore/retract/retract_tooltip
scoreboard players set $Num1 math 10
scoreboard players set $Num2 math 2
scoreboard players operation $Num2 math *= @s shopItem.Retract
scoreboard players operation $Num1 math += $Num2 math
item modify entity @s hotbar.6 pudge:lore/retract/retract_speed