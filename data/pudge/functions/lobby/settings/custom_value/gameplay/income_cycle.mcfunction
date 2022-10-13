execute if score @s value matches ..0 run scoreboard players set @s value 1
scoreboard players operation $IncomeCycle shop = @s value
scoreboard players set $IncomeCycle.State lobbysigns -1
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Income cycle timer set to "},{"score":{"name":"$IncomeCycle","objective":"shop"},"color":"dark_green","bold": true},{"text":" seconds!"}]

tag @s remove editing
tag @s remove editing.IncomeCycle
scoreboard players reset @s customValueTimer
