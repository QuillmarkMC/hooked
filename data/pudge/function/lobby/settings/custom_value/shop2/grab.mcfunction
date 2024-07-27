execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $GrabCost shop = @s value
scoreboard players set $Grab.State lobbysigns -1
execute unless score $GrabCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.grab.set.1"},{"score":{"name":"$GrabCost","objective":"shop"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.grab.set.2","color": "gold"}]
execute if score $GrabCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.grab.disable.1"},{"translate":"text.lobby.settings.signs.custom.grab.disable.2","color": "red"}]

tag @s remove editing
tag @s remove editing.Grab
scoreboard players reset @s customValueTimer
