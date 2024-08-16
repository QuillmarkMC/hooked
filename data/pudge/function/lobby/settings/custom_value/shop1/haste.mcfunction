execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $HasteCost shop = @s value
scoreboard players set $Haste.State lobbysigns -1
execute unless score $HasteCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.haste.set.1"},{"score":{"name":"$HasteCost","objective":"shop"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.haste.set.2","color": "gold"}]
execute if score $HasteCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.haste.disable.1"},{"translate":"text.lobby.settings.signs.custom.haste.disable.2","color": "red"}]

tag @s remove editing
tag @s remove editing.Haste
scoreboard players reset @s customValueTimer
