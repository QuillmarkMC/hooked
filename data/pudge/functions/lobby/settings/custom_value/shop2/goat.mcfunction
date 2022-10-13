execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $GoatCost shop = @s value
scoreboard players set $Goat.State lobbysigns -1
execute unless score $GoatCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"The Lion Horn of Stormwind cost set to "},{"score":{"name":"$GoatCost","objective":"shop"},"color":"dark_green","bold": true},{"text":" gold","color": "gold"},{"text":"!"}]
execute if score $GoatCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"The Lion Horn of Stormwind has been"},{"text":" disabled","color": "red"},{"text":"."}]

tag @s remove editing
tag @s remove editing.Goat
scoreboard players reset @s customValueTimer
