execute if score @s value matches ..0 run scoreboard players set @s value 0
execute if score @s value matches 61.. run scoreboard players set @s value 60
scoreboard players operation $RespawnDelaySeconds lobbysigns = @s value
scoreboard players set $RespawnDelay.State lobbysigns -1
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Respawn delay set to "},{"score":{"name":"$RespawnDelaySeconds","objective":"lobbysigns"},"color":"dark_green","bold": true},{"text":" seconds!"}]

function pudge:lobby/settings/actions/gameplay/respawn_delay/convert
tag @s remove editing
tag @s remove editing.RespawnDelay
scoreboard players reset @s customValueTimer
