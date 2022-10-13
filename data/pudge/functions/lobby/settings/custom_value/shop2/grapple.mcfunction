execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $GrappleCost shop = @s value
scoreboard players set $Grapple.State lobbysigns -1
execute unless score $GrappleCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Grappling Hook cost set to "},{"score":{"name":"$GrappleCost","objective":"shop"},"color":"dark_green","bold": true},{"text":" gold","color": "gold"},{"text":"!"}]
execute if score $GrappleCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Grappling Hook has been"},{"text":" disabled","color": "red"},{"text":"."}]

tag @s remove editing
tag @s remove editing.Grapple
scoreboard players reset @s customValueTimer
