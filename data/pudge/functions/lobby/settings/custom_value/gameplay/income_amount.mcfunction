execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $IncomeAmount shop = @s value
scoreboard players set $IncomeAmount.State lobbysigns -1
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Income amount set to "},{"score":{"name":"$IncomeAmount","objective":"shop"},"color":"dark_green","bold": true},{"text":" gold","color": "gold"},{"text":"!"}]

tag @s remove editing
tag @s remove editing.IncomeAmount
scoreboard players reset @s customValueTimer
