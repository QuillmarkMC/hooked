execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $MeleeDamageCost shop = @s value
scoreboard players set $MeleeDamage.State lobbysigns -1
execute unless score $MeleeDamageCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.melee_damage.set.1"},{"score":{"name":"$MeleeDamageCost","objective":"shop"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.melee_damage.set.2","color": "gold"}]
execute if score $MeleeDamageCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.melee_damage.disable.1"},{"translate":"text.lobby.settings.signs.custom.melee_damage.disable.2","color": "red"}]

tag @s remove editing
tag @s remove editing.MeleeDamage
scoreboard players reset @s customValueTimer
