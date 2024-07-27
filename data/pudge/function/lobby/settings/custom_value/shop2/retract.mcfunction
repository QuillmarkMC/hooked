execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $RetractCost shop = @s value
scoreboard players set $Retract.State lobbysigns -1
execute unless score $RetractCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.retract.set.1"},{"score":{"name":"$RetractCost","objective":"shop"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.retract.set.2","color": "gold"}]
execute if score $RetractCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.retract.disable.1"},{"translate":"text.lobby.settings.signs.custom.retract.disable.2","color": "red"}]

tag @s remove editing
tag @s remove editing.Retract
scoreboard players reset @s customValueTimer
