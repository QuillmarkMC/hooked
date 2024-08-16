execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $GrappleCost shop = @s value
scoreboard players set $Grapple.State lobbysigns -1
execute unless score $GrappleCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.grapple.set.1"},{"score":{"name":"$GrappleCost","objective":"shop"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.grapple.set.2","color": "gold"}]
execute if score $GrappleCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.grapple.disable.1"},{"translate":"text.lobby.settings.signs.custom.grapple.disable.2","color": "red"}]

tag @s remove editing
tag @s remove editing.Grapple
scoreboard players reset @s customValueTimer
