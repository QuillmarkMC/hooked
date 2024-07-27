execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $HookDamageCost shop = @s value
scoreboard players set $HookDamage.State lobbysigns -1
execute unless score $HookDamageCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.hook_damage.set.1"},{"score":{"name":"$HookDamageCost","objective":"shop"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.hook_damage.set.2","color": "gold"}]
execute if score $HookDamageCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.hook_damage.disable.1"},{"translate":"text.lobby.settings.signs.custom.hook_damage.disable.2","color": "red"}]

tag @s remove editing
tag @s remove editing.HookDamage
scoreboard players reset @s customValueTimer
