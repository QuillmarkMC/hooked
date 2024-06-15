execute if score @s value matches ..0 run scoreboard players set @s value 1
scoreboard players operation $TotalTimeMinutes var = @s value
scoreboard players set $VictoryTime.State lobbysigns -1
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Time limit set to "},{"score":{"name":"$TotalTimeMinutes","objective":"var"},"color":"dark_green","bold": true},{"text":" minutes!"}]

tag @s remove editing
tag @s remove editing.VictoryTime
scoreboard players reset @s customValueTimer
