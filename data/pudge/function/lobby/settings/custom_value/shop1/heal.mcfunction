execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $HealCost shop = @s value
scoreboard players set $Heal.State lobbysigns -1
execute unless score $HealCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Instant Health potion cost set to "},{"score":{"name":"$HealCost","objective":"shop"},"color":"dark_green","bold": true},{"text":" gold","color": "gold"},{"text":"!"}]
execute if score $HealCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Instant Health potion has been"},{"text":" disabled","color": "red"},{"text":"."}]

tag @s remove editing
tag @s remove editing.Heal
scoreboard players reset @s customValueTimer
