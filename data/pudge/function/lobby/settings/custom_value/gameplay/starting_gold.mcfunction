execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $StartingGold gold = @s value
scoreboard players set $StartingGold.State lobbysigns -1
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.starting_gold.1"},{"score":{"name":"$StartingGold","objective":"gold"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.starting_gold.2","color": "gold"}]

tag @s remove editing
tag @s remove editing.StartingGold
scoreboard players reset @s customValueTimer
