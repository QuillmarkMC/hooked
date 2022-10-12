execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $ExtraHealthCost shop = @s value
scoreboard players set $ExtraHealth.State lobbysigns -1
execute unless score $ExtraHealthCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Max Health upgrade cost set to "},{"score":{"name":"$ExtraHealthCost","objective":"shop"},"color":"dark_green","bold": true},{"text":" gold","color": "gold"},{"text":"!"}]
execute if score $ExtraHealthCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Max Health upgrade has been"},{"text":" disabled ","color": "red"},{"text":"."}]

tag @s remove editing
tag @s remove editing.ExtraHealth
scoreboard players reset @s customValueTimer
