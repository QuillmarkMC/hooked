execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $HasteCost shop = @s value
scoreboard players set $Haste.State lobbysigns -1
execute unless score $HasteCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Speed potion cost set to "},{"score":{"name":"$HasteCost","objective":"shop"},"color":"dark_green","bold": true},{"text":" gold","color": "gold"},{"text":"!"}]
execute if score $HasteCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Speed potion has been"},{"text":" disabled","color": "red"},{"text":"."}]

tag @s remove editing
tag @s remove editing.Haste
scoreboard players reset @s customValueTimer
