execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $BounceCost shop = @s value
scoreboard players set $Bounce.State lobbysigns -1
execute unless score $BounceCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.bounce.set.1"},{"score":{"name":"$BounceCost","objective":"shop"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.bounce.set.2","color": "gold"}]
execute if score $BounceCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.bounce.disable.1"},{"translate":"text.lobby.settings.signs.custom.bounce.disable.2","color": "red"}]

tag @s remove editing
tag @s remove editing.Bounce
scoreboard players reset @s customValueTimer
