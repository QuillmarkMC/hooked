execute if score @s value matches ..0 run scoreboard players set @s value 0
execute if score @s value matches 7.. run scoreboard players set @s value 6
scoreboard players operation $MaxInventoryUpgrades var = @s value
scoreboard players set $MaxInventoryUpgrades.State lobbysigns -1
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.max_upgrades.1"},{"score":{"name":"$MaxInventoryUpgrades","objective":"var"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.max_upgrades.2"}]

tag @s remove editing
tag @s remove editing.MaxInventoryUpgrades
scoreboard players reset @s customValueTimer
