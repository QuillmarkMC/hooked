execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $HookCDCost shop = @s value
scoreboard players set $HookCD.State lobbysigns -1
execute unless score $HookCDCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Hookshot Cooldown upgrade cost set to "},{"score":{"name":"$HookCDCost","objective":"shop"},"color":"dark_green","bold": true},{"text":" gold","color": "gold"},{"text":"!"}]
execute if score $HookCDCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Hookshot Cooldown upgrade has been"},{"text":" disabled ","color": "red"},{"text":"."}]

tag @s remove editing
tag @s remove editing.HookCD
scoreboard players reset @s customValueTimer
