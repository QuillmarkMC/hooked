execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $HookDamageCost shop = @s value
scoreboard players set $HookDamage.State lobbysigns -1
execute unless score $HookDamageCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Hookshot Damage upgrade cost set to "},{"score":{"name":"$HookDamageCost","objective":"shop"},"color":"dark_green","bold": true},{"text":" gold","color": "gold"},{"text":"!"}]
execute if score $HookDamageCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Hookshot Damage upgrade has been"},{"text":" disabled ","color": "red"},{"text":"."}]

tag @s remove editing
tag @s remove editing.HookDamage
scoreboard players reset @s customValueTimer
