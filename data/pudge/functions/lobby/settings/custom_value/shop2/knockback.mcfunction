execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $KnockbackCost shop = @s value
scoreboard players set $Knockback.State lobbysigns -1
execute unless score $KnockbackCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Stick of Suffering cost set to "},{"score":{"name":"$KnockbackCost","objective":"shop"},"color":"dark_green","bold": true},{"text":" gold","color": "gold"},{"text":"!"}]
execute if score $KnockbackCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Stick of Suffering has been"},{"text":" disabled","color": "red"},{"text":"."}]

tag @s remove editing
tag @s remove editing.Knockback
scoreboard players reset @s customValueTimer
