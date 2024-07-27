#select new map
scoreboard players operation $Temp lobbysigns = $LoadMap var
execute if score @s lobbysigns matches 200 run scoreboard players set $LoadMap var 1

execute if score $Temp lobbysigns = $LoadMap var run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.actions.change_map.error"}]
execute unless score $Temp lobbysigns = $LoadMap var if score @s lobbysigns matches 200 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.actions.change_map.forest.1"},{"translate":"text.lobby.settings.actions.change_map.forest.2","color": "dark_green","bold": true}]