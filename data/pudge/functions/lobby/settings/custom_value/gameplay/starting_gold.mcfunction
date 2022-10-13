execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $StartingGold gold = @s value
scoreboard players set $StartingGold.State lobbysigns -1
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Starting gold amount set to "},{"score":{"name":"$StartingGold","objective":"gold"},"color":"dark_green","bold": true},{"text":" gold","color": "gold"},{"text":"!"}]

tag @s remove editing
tag @s remove editing.StartingGold
scoreboard players reset @s customValueTimer
