execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $HookCDCost shop = @s value
scoreboard players set $HookCD.State lobbysigns -1
execute unless score $HookCDCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.hook_cd.set.1"},{"score":{"name":"$HookCDCost","objective":"shop"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.hook_cd.set.2","color": "gold"}]
execute if score $HookCDCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.hook_cd.disable.1"},{"translate":"text.lobby.settings.signs.custom.hook_cd.disable.2","color": "red"}]

tag @s remove editing
tag @s remove editing.HookCD
scoreboard players reset @s customValueTimer
