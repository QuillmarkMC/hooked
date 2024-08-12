execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $GoatCost shop = @s value
scoreboard players set $Goat.State lobbysigns -1
execute unless score $GoatCost shop matches 0 run tellraw @s [{"text": ""},{"translate": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.goat.set.1"},{"score":{"name":"$GoatCost","objective":"shop"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.goat.set.2","color": "gold"}]
execute if score $GoatCost shop matches 0 run tellraw @s [{"text": ""},{"translate": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.goat.disable.1"},{"translate":"text.lobby.settings.signs.custom.goat.disable.2","color": "red"}]

tag @s remove editing
tag @s remove editing.Goat
scoreboard players reset @s customValueTimer
