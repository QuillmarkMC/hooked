execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $BounceCost shop = @s value
scoreboard players set $Bounce.State lobbysigns -1
execute unless score $BounceCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Ricochet Arrows cost set to "},{"score":{"name":"$BounceCost","objective":"shop"},"color":"dark_green","bold": true},{"text":" gold","color": "gold"},{"text":"!"}]
execute if score $BounceCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Ricochet Arrows have been"},{"text":" disabled ","color": "red"},{"text":"."}]

tag @s remove editing
tag @s remove editing.Bounce
scoreboard players reset @s customValueTimer
