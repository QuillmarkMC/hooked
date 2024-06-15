#select new map
scoreboard players operation $Temp lobbysigns = $LoadMap var
execute if score @s lobbysigns matches 200 run scoreboard players set $LoadMap var 1

execute if score $Temp lobbysigns = $LoadMap var run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"No change, that map was already selected!"}]
execute unless score $Temp lobbysigns = $LoadMap var if score @s lobbysigns matches 200 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"You have selected the map "},{"text":"Forest","color": "dark_green","bold": true},{"text":"!"}]