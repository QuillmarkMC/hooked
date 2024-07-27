execute if score @s value matches ..0 run scoreboard players set @s value 0
execute if score @s value matches 61.. run scoreboard players set @s value 60
scoreboard players operation $RespawnDelaySeconds lobbysigns = @s value
scoreboard players set $RespawnDelay.State lobbysigns -1
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.respawn.1"},{"score":{"name":"$RespawnDelaySeconds","objective":"lobbysigns"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.respawn.2"}]

function pudge:lobby/settings/actions/gameplay/respawn_delay/convert
tag @s remove editing
tag @s remove editing.RespawnDelay
scoreboard players reset @s customValueTimer
