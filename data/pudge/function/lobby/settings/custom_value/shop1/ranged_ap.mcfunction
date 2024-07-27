execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $RangedAPCost shop = @s value
scoreboard players set $RangedAP.State lobbysigns -1
execute unless score $RangedAPCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.ranged_ap.set.1"},{"score":{"name":"$RangedAPCost","objective":"shop"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.ranged_ap.set.2","color": "gold"}]
execute if score $RangedAPCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.ranged_ap.disable.1"},{"translate":"text.lobby.settings.signs.custom.ranged_ap.disable.2","color": "red"}]

tag @s remove editing
tag @s remove editing.RangedAP
scoreboard players reset @s customValueTimer
