execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $IncomeAmount gold = @s value
scoreboard players set $IncomeAmount.State lobbysigns -1
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.income_amount.1"},{"score":{"name":"$IncomeAmount","objective":"gold"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.income_amount.2","color": "gold"}]

tag @s remove editing
tag @s remove editing.IncomeAmount
scoreboard players reset @s customValueTimer
