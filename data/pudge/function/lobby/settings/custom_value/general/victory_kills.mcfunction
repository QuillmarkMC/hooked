execute if score @s value matches ..0 run scoreboard players set @s value 1
scoreboard players operation $TotalRequiredKills var = @s value
scoreboard players set $VictoryKills.State lobbysigns -1
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Kills to win set to "},{"score":{"name":"$TotalRequiredKills","objective":"var"},"color":"dark_green","bold": true},{"text":"!"}]

tag @s remove editing
tag @s remove editing.VictoryKills
scoreboard players reset @s customValueTimer
