execute if score @s value matches ..0 run scoreboard players set @s value 1
scoreboard players operation $IncomeCycleSeconds lobbysigns = @s value
scoreboard players set $IncomeCycle.State lobbysigns -1
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.income_cycle.1"},{"score":{"name":"$IncomeCycleSeconds","objective":"lobbysigns"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.income_cycle.2"}]

function pudge:lobby/settings/actions/gameplay/income_cycle/convert
tag @s remove editing
tag @s remove editing.IncomeCycle
scoreboard players reset @s customValueTimer
