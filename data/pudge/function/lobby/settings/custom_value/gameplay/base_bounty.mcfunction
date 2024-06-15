execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $BaseBounty var = @s value
scoreboard players set $BaseBounty.State lobbysigns -1
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Base kill reward set to "},{"score":{"name":"$BaseBounty","objective":"var"},"color":"dark_green","bold": true},{"text":" gold","color": "gold"},{"text":"!"}]

tag @s remove editing
tag @s remove editing.BaseBounty
scoreboard players reset @s customValueTimer
