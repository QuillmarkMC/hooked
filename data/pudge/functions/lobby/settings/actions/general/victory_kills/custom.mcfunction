execute store success score $Temp lobbysigns if entity @s[tag=editing]

execute if score $Temp lobbysigns matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Use the command \""},{"text":"/trigger value set x","clickEvent":{"action":"suggest_command","value":"trigger value set "}},{"text":"\" where x is the custom value you want to set."}]
execute if score $Temp lobbysigns matches 1 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"You are already entering a custom value!"}]

execute if score $Temp lobbysigns matches 0 run tag @s add editing
execute if score $Temp lobbysigns matches 0 run tag @s add editing.VictoryKills
execute if score $Temp lobbysigns matches 0 run scoreboard players enable @s value
