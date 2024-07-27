execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $CreeperCost shop = @s value
scoreboard players set $Creeper.State lobbysigns -1
execute unless score $CreeperCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.creeper.set.1"},{"score":{"name":"$CreeperCost","objective":"shop"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.creeper.set.2","color": "gold"}]
execute if score $CreeperCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.creeper.disable.1"},{"translate":"text.lobby.settings.signs.custom.creeper.disable.2","color": "red"}]

tag @s remove editing
tag @s remove editing.Creeper
scoreboard players reset @s customValueTimer
