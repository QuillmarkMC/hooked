execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $RangedAPCost shop = @s value
scoreboard players set $RangedAP.State lobbysigns -1
execute unless score $RangedAPCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Ranged Attack Power potion cost set to "},{"score":{"name":"$RangedAPCost","objective":"shop"},"color":"dark_green","bold": true},{"text":" gold","color": "gold"},{"text":"!"}]
execute if score $RangedAPCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Ranged Attack Power potion has been"},{"text":" disabled ","color": "red"},{"text":"."}]

tag @s remove editing
tag @s remove editing.RangedAP
scoreboard players reset @s customValueTimer
