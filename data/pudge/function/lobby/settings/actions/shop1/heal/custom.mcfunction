execute store success score $Temp lobbysigns if entity @s[tag=editing]

execute if score $Temp lobbysigns matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.actions.custom.1"},{"translate":"text.lobby.settings.actions.custom.2","click_event":{"action":"suggest_command","command":"/trigger value set "},"hover_event":{"action":"show_text","value":[{"translate":"text.lobby.settings.actions.custom.3","italic":true,"color":"yellow"}]},"color": "gold","underlined": true},{"translate":"text.lobby.settings.actions.custom.4"}]
execute if score $Temp lobbysigns matches 1 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.actions.custom.error"}]
execute at @s run playsound block.note_block.pling ambient @s ~ ~ ~

execute if score $Temp lobbysigns matches 0 run tag @s add editing
execute if score $Temp lobbysigns matches 0 run tag @s add editing.Heal
execute if score $Temp lobbysigns matches 0 run scoreboard players enable @s value
execute if score $Temp lobbysigns matches 0 run scoreboard players operation @s customValueTimer = $CustomTimeoutLength customValueTimer
