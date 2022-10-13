execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $RetractCost shop = @s value
scoreboard players set $Retract.State lobbysigns -1
execute unless score $RetractCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Gyro-Balanced Retraction Coils cost set to "},{"score":{"name":"$RetractCost","objective":"shop"},"color":"dark_green","bold": true},{"text":" gold","color": "gold"},{"text":"!"}]
execute if score $RetractCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Gyro-Balanced Retraction Coils has been"},{"text":" disabled","color": "red"},{"text":"."}]

tag @s remove editing
tag @s remove editing.Retract
scoreboard players reset @s customValueTimer
