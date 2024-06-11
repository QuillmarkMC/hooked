execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $TotemCost shop = @s value
scoreboard players set $Totem.State lobbysigns -1
execute unless score $TotemCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Totem of Protection cost set to "},{"score":{"name":"$TotemCost","objective":"shop"},"color":"dark_green","bold": true},{"text":" gold","color": "gold"},{"text":"!"}]
execute if score $TotemCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Totem of Protection has been"},{"text":" disabled","color": "red"},{"text":"."}]

tag @s remove editing
tag @s remove editing.Totem
scoreboard players reset @s customValueTimer
