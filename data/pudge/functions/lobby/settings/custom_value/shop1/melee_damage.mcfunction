execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $MeleeDamageCost shop = @s value
scoreboard players set $MeleeDamage.State lobbysigns -1
execute unless score $MeleeDamageCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Melee Damage upgrade cost set to "},{"score":{"name":"$MeleeDamageCost","objective":"shop"},"color":"dark_green","bold": true},{"text":" gold","color": "gold"},{"text":"!"}]
execute if score $MeleeDamageCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Melee Damage upgrade has been"},{"text":" disabled","color": "red"},{"text":"."}]

tag @s remove editing
tag @s remove editing.MeleeDamage
scoreboard players reset @s customValueTimer
