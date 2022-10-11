scoreboard players operation $VictoryType lobbysigns *= #-1 math

#execute if score $VictoryType lobbysigns matches 1 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Victory type changed to "},{"text":"Kills","color": "dark_green","bold": true},{"text":"!"}]
#execute if score $VictoryType lobbysigns matches -1 run tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Victory type changed to "},{"text":"Time","color": "dark_green","bold": true},{"text":"!"}]
