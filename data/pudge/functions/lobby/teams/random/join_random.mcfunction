scoreboard players set #Temp lobbyvar 0
execute store success score #Temp lobbyvar if entity @s[team=random]
execute if score #Temp lobbyvar matches 1 run team leave @s
execute if score #Temp lobbyvar matches 0 run team join random

execute if score #Temp lobbyvar matches 1 run tellraw @s [{"text": "[!] ","color": "yellow","bold": true},{"text": "You left your team!","color": "white","bold": false}]
execute if score #Temp lobbyvar matches 0 run tellraw @s [{"text": "[!] ","color": "yellow","bold": true},{"text": "You will be assigned a ","color": "white","bold": false},{"text": "RANDOM","color": "light_purple","bold": true},{"text": " team at the start of the match!","color": "white","bold": false}]
execute at @s run playsound block.bell.use neutral @s ~ ~ ~
