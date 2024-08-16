execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $TotemCost shop = @s value
scoreboard players set $Totem.State lobbysigns -1
execute unless score $TotemCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.totem.set.1"},{"score":{"name":"$TotemCost","objective":"shop"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.totem.set.2","color": "gold"}]
execute if score $TotemCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.totem.disable.1"},{"translate":"text.lobby.settings.signs.custom.totem.disable.2","color": "red"}]

tag @s remove editing
tag @s remove editing.Totem
scoreboard players reset @s customValueTimer
