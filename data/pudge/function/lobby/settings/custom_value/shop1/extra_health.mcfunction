execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $ExtraHealthCost shop = @s value
scoreboard players set $ExtraHealth.State lobbysigns -1
execute unless score $ExtraHealthCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.extra_health.set.1"},{"score":{"name":"$ExtraHealthCost","objective":"shop"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.extra_health.set.2","color": "gold"}]
execute if score $ExtraHealthCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.extra_health.disable.1"},{"translate":"text.lobby.settings.signs.custom.extra_health.disable.2","color": "red"}]

tag @s remove editing
tag @s remove editing.ExtraHealth
scoreboard players reset @s customValueTimer
