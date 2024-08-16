execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $LifestealCost shop = @s value
scoreboard players set $Lifesteal.State lobbysigns -1
execute unless score $LifestealCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.lifesteal.set.1"},{"score":{"name":"$LifestealCost","objective":"shop"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.lifesteal.set.2","color": "gold"}]
execute if score $LifestealCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.lifesteal.disable.1"},{"translate":"text.lobby.settings.signs.custom.lifesteal.disable.2","color": "red"}]

tag @s remove editing
tag @s remove editing.Lifesteal
scoreboard players reset @s customValueTimer
