execute store success score $Temp lobbysigns if entity @s[tag=editing]

execute if score $Temp lobbysigns matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Use the command \""},{"text":"/trigger value set x","clickEvent":{"action":"suggest_command","value":"/trigger value set "},"hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","italic":true,"color":"yellow"}]},"color": "gold","underlined": true},{"text":"\" where x is the custom value you want to set."}]
execute if score $Temp lobbysigns matches 1 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"You are already entering a custom value!"}]
execute at @s run playsound block.note_block.pling ambient @s ~ ~ ~

execute if score $Temp lobbysigns matches 0 run tag @s add editing
execute if score $Temp lobbysigns matches 0 run tag @s add editing.Haste
execute if score $Temp lobbysigns matches 0 run scoreboard players enable @s value
execute if score $Temp lobbysigns matches 0 run scoreboard players operation @s customValueTimer = $CustomTimeoutLength customValueTimer
