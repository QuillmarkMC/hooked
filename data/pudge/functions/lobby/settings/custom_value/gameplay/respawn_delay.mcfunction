execute if score @s value matches ..0 run scoreboard players set @s value 0
execute if score @s value matches 61.. run scoreboard players set @s value 60
scoreboard players operation $RespawnDelay var = @s value
scoreboard players set $RespawnDelay.State lobbysigns -1
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Respawn delay set to "},{"score":{"name":"$RespawnDelay","objective":"var"},"color":"dark_green","bold": true},{"text":" seconds!"}]

tag @s remove editing
tag @s remove editing.RespawnDelay
scoreboard players reset @s customValueTimer
