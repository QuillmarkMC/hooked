execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $HealCost shop = @s value
scoreboard players set $Heal.State lobbysigns -1
execute unless score $HealCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.heal.set.1"},{"score":{"name":"$HealCost","objective":"shop"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.heal.set.2","color": "gold"}]
execute if score $HealCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.heal.disable.1"},{"translate":"text.lobby.settings.signs.custom.heal.disable.2","color": "red"}]

tag @s remove editing
tag @s remove editing.Heal
scoreboard players reset @s customValueTimer
