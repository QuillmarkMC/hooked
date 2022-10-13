execute if score @s value matches ..0 run scoreboard players set @s value 0
execute if score @s value matches 7.. run scoreboard players set @s value 6
scoreboard players operation $MaxInventoryUpgrades var = @s value
scoreboard players set $MaxInventoryUpgrades.State lobbysigns -1
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Maximum number of unique abilities set to "},{"score":{"name":"$MaxInventoryUpgrades","objective":"var"},"color":"dark_green","bold": true},{"text":"!"}]

tag @s remove editing
tag @s remove editing.MaxInventoryUpgrades
scoreboard players reset @s customValueTimer
