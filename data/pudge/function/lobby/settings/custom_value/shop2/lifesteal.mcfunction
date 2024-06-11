execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $LifestealCost shop = @s value
scoreboard players set $Lifesteal.State lobbysigns -1
execute unless score $LifestealCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Lifestealing cost set to "},{"score":{"name":"$LifestealCost","objective":"shop"},"color":"dark_green","bold": true},{"text":" gold","color": "gold"},{"text":"!"}]
execute if score $LifestealCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Lifestealing has been"},{"text":" disabled","color": "red"},{"text":"."}]

tag @s remove editing
tag @s remove editing.Lifesteal
scoreboard players reset @s customValueTimer
