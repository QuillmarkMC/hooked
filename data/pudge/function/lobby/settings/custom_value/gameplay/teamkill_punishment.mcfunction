execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $TeamkillPunishment gold = @s value
scoreboard players set $TeamkillPunishment.State lobbysigns -1
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.teamkill.1"},{"score":{"name":"$TeamkillPunishment","objective":"gold"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.teamkill.2","color": "gold"}]

tag @s remove editing
tag @s remove editing.TeamkillPunishment
scoreboard players reset @s customValueTimer
