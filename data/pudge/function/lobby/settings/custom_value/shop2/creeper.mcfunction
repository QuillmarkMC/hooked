execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $CreeperCost shop = @s value
scoreboard players set $Creeper.State lobbysigns -1
execute unless score $CreeperCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Throwable Creeper cost set to "},{"score":{"name":"$CreeperCost","objective":"shop"},"color":"dark_green","bold": true},{"text":" gold","color": "gold"},{"text":"!"}]
execute if score $CreeperCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Throwable Creeper has been"},{"text":" disabled","color": "red"},{"text":"."}]

tag @s remove editing
tag @s remove editing.Creeper
scoreboard players reset @s customValueTimer
