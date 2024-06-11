execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $GrabCost shop = @s value
scoreboard players set $Grab.State lobbysigns -1
execute unless score $GrabCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Anchor Arms cost set to "},{"score":{"name":"$GrabCost","objective":"shop"},"color":"dark_green","bold": true},{"text":" gold","color": "gold"},{"text":"!"}]
execute if score $GrabCost shop matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Anchor Arms has been"},{"text":" disabled","color": "red"},{"text":"."}]

tag @s remove editing
tag @s remove editing.Grab
scoreboard players reset @s customValueTimer
