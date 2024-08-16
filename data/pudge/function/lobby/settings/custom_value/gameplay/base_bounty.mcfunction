execute if score @s value matches ..0 run scoreboard players set @s value 0
scoreboard players operation $BaseBounty var = @s value
scoreboard players set $BaseBounty.State lobbysigns -1
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.bounty.1"},{"score":{"name":"$BaseBounty","objective":"var"},"color":"dark_green","bold": true},{"translate":"text.lobby.settings.signs.custom.bounty.2","color": "gold"}]

tag @s remove editing
tag @s remove editing.BaseBounty
scoreboard players reset @s customValueTimer
